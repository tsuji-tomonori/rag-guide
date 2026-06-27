#!/usr/bin/env bash
set -uo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MAX_JOBS="${MAX_JOBS:-10}"
RUN_DIR="${RUN_DIR:-/tmp/rag-guide-imagegen-run-$(date +%Y%m%d-%H%M%S)}"
GIT_LOCK="${GIT_LOCK:-/tmp/rag-guide-imagegen-git.lock}"
MODE="${MODE:-both}"
START_ID="${START_ID:-P003}"
IMAGEGEN_BACKEND="${IMAGEGEN_BACKEND:-auto}"
IMAGEGEN_CLI="${IMAGEGEN_CLI:-$HOME/.codex/skills/.system/imagegen/scripts/image_gen.py}"
SKIP_PREFLIGHT="${SKIP_PREFLIGHT:-0}"
DISABLE_GIT="${DISABLE_GIT:-0}"

usage() {
  cat <<'USAGE'
Usage: tools/run_paper_imagegen_codex_10.sh [--slides-only|--summary-only|--both]

Environment:
  MAX_JOBS   Parallel Codex sessions. Default: 10
  RUN_DIR    Runtime logs/prompts directory. Default: /tmp/rag-guide-imagegen-run-YYYYmmdd-HHMMSS
  GIT_LOCK   Lock file path for serialized git operations. Default: /tmp/rag-guide-imagegen-git.lock
  START_ID   First paper ID to process. Default: P003
  IMAGEGEN_BACKEND  auto|codex|cli. Default: auto
  IMAGEGEN_CLI      CLI fallback path. Default: ~/.codex/skills/.system/imagegen/scripts/image_gen.py
  SKIP_PREFLIGHT    Set to 1 to skip backend probe. Default: 0
  DISABLE_GIT       Set to 1 to prevent child Codex sessions from staging, committing, or pushing. Default: 0

Targets:
  pdf/P*.md files under the repository root whose ID is START_ID or later.
  The ID is the Markdown basename.
USAGE
}

while (($#)); do
  case "$1" in
    --slides-only)
      MODE="slides"
      ;;
    --summary-only)
      MODE="summary"
      ;;
    --both)
      MODE="both"
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
  shift
done

if ! [[ "$MAX_JOBS" =~ ^[1-9][0-9]*$ ]]; then
  echo "MAX_JOBS must be a positive integer: $MAX_JOBS" >&2
  exit 2
fi

mkdir -p "$RUN_DIR/prompts" "$RUN_DIR/logs" "$RUN_DIR/status"

discover_ids() {
  find "$REPO_ROOT/pdf" -maxdepth 1 -type f -name 'P*.md' -printf '%f\n' \
    | sed 's/\.md$//' \
    | sort -V \
    | awk -v start="$START_ID" 'substr($0, 2) + 0 >= substr(start, 2) + 0'
}

probe_codex_imagegen() {
  local probe_log="$RUN_DIR/codex-imagegen-probe.jsonl"
  local probe_prompt="built-in image_gen を使って、白背景に青い円が1つだけある簡単なテスト画像を1枚生成してください。shell は使わないでください。最終回答は短く。"

  printf '%s\n' "$probe_prompt" \
    | timeout 180 codex exec \
      --dangerously-bypass-approvals-and-sandbox \
      -C "$REPO_ROOT" \
      --json \
      - > "$probe_log" 2>&1 || true

  rg -q '"type":"image_generation_call"|image_generation_call' "$probe_log"
}

resolve_backend() {
  case "$IMAGEGEN_BACKEND" in
    auto|codex|cli)
      ;;
    *)
      echo "IMAGEGEN_BACKEND must be auto, codex, or cli: $IMAGEGEN_BACKEND" >&2
      return 2
      ;;
  esac

  if [[ "$IMAGEGEN_BACKEND" == "codex" ]]; then
    if [[ "$SKIP_PREFLIGHT" != "1" ]] && ! probe_codex_imagegen; then
      echo "codex exec did not emit an image_generation_call in preflight; refusing to run fake image generation." >&2
      return 1
    fi
    return 0
  fi

  if [[ "$IMAGEGEN_BACKEND" == "cli" ]]; then
    if [[ ! -x "$IMAGEGEN_CLI" && ! -f "$IMAGEGEN_CLI" ]]; then
      echo "IMAGEGEN_CLI not found: $IMAGEGEN_CLI" >&2
      return 1
    fi
    if [[ -z "${OPENAI_API_KEY:-}" ]]; then
      echo "OPENAI_API_KEY is required for IMAGEGEN_BACKEND=cli." >&2
      return 1
    fi
    return 0
  fi

  if [[ "$SKIP_PREFLIGHT" != "1" ]] && probe_codex_imagegen; then
    IMAGEGEN_BACKEND="codex"
    return 0
  fi

  if [[ -n "${OPENAI_API_KEY:-}" && -f "$IMAGEGEN_CLI" ]]; then
    IMAGEGEN_BACKEND="cli"
    return 0
  fi

  echo "No usable image generation backend found." >&2
  echo "- codex exec did not emit image_generation_call in preflight." >&2
  echo "- OPENAI_API_KEY is not set for CLI fallback." >&2
  return 1
}

write_prompt() {
  local id="$1"
  local prompt_file="$2"

  {
    cat <<EOF
あなたはこのリポジトリ上で動く Codex です。以下の対象 ID だけを処理してください。

対象 ID: ${id}
対象 Markdown: pdf/${id}.md
対象 PDF: pdf/${id}.pdf

並列実行中の制約:
- 対象 ID 以外の成果物を生成・編集・削除・stage しない。
- 画像生成バックエンド: ${IMAGEGEN_BACKEND}
- まず必ず以下のローカル skill ファイルを読む:
  - skills/paper-reading-slide-imagegen-ja/SKILL.md
  - skills/paper-reading-slide-imagegen-ja/references/layout-design-guidelines.md
  - skills/paper-onepage-summary-imagegen-ja/SKILL.md
  - skills/paper-onepage-summary-imagegen-ja/references/onepage-summary-guidelines.md
- IMAGEGEN_BACKEND=codex の場合、最終 PNG は built-in image_gen の生成結果からのみ作る。ローカル HTML/SVG/canvas/Pillow/matplotlib/reportlab 等で代替生成しない。
- IMAGEGEN_BACKEND=codex の場合、最終保存は必ずこの codex exec のセッションログにある対象 ID マーカー付き \`image_generation_call.result\` から行う。並列実行中に別 ID の画像を拾うため、\`$HOME/.codex/generated_images\` の最新ファイルをコピーして保存してはいけない。
- IMAGEGEN_BACKEND=codex の場合、対象 ID マーカー付き \`image_generation_call.result\` を確認できない時点で失敗として停止する。「生成した」と文章だけで済ませない。
- IMAGEGEN_BACKEND=cli の場合、最終 PNG は ${IMAGEGEN_CLI} の generate/generate-batch 出力からのみ作る。必要な 1920x1080 正規化は imagegen ラスタ出力への後処理だけ許可する。
- IMAGEGEN_BACKEND=cli の場合、2048x1152 等の対応サイズで生成し、最終成果物を 1920x1080 PNG に正規化する。
- 画像生成・保存・検証を途中で止めず、失敗時は原因をログに残す。画像生成が不可能な時は代替画像を作らず失敗する。
- 最終成果物は 1920x1080 PNG に正規化する。
- 既存のユーザー変更や他 ID の変更は戻さない。

EOF

    if [[ "$DISABLE_GIT" == "1" ]]; then
      cat <<EOF
- Git 操作は禁止。git add、git commit、git pull、git push、git rm、git restore、git checkout、rebase は行わない。
- 最終回答では、生成・保存・検証したファイルだけを報告する。

EOF
    else
      cat <<EOF
- Git 操作を行う場合は必ず \`flock -x ${GIT_LOCK} -c '...'\` で排他制御する。
- commit/push では \`pdf/${id}.md\`, \`pdf/${id}.pdf\`, \`pdf/${id}/\` だけを add 対象にする。
- push 前に必要なら排他ロック内で \`git pull --rebase --autostash\` を行い、同一 ID 以外の未完了ファイルは触らない。
- コミットメッセージは日本語で、対象 ID と生成内容が分かるものにする。

EOF
    fi

    if [[ "$MODE" == "both" || "$MODE" == "slides" ]]; then
      cat <<EOF
/goal \$paper-reading-slide-imagegen-ja を使用して、${id} の論文要約スライドを image_gen で全ページ再生成する。

入力:
- 要約Markdown: pdf/${id}.md
- 原典PDF: pdf/${id}.pdf
- 上位デザイン規定: レイアウト・デザイン規定.md

出力:
- pdf/${id}/${id}_01.png から連番で保存
- 16:9、1920x1080 PNG
$(if [[ "$DISABLE_GIT" == "1" ]]; then echo "- commit/push しない"; else echo "- commit push"; fi)

要件:
- 発表用ではなく、単体で読める読み物向けにする
- 各ページのタイトルは章名ではなく、そのページの要点・結論を明記する
- 全ページでタイトルのサイズ、色味、余白、ページ番号位置を統一する
- 背景 #F7F6F1、文字 #2B3A4A、アクセント #5E7E96、ページ番号 #9AA4AD を基本にする
- 1ページあたり 3〜5 個の情報ブロックと、理解を助ける図解・表・KPI・フロー図を入れる
- pdf/${id}.md の章構成を使う
- 「総評」「査読結果」「総合評価」などのレビュー・評価章は作成しない
- 必要に応じて pdf/${id}.pdf も確認する
- 生成後に、ファイル数、命名、1920x1080、ページ番号、総評除外、重複画像でないことを検証する

EOF
    fi

    if [[ "$MODE" == "both" || "$MODE" == "summary" ]]; then
      cat <<EOF
/goal \$paper-onepage-summary-imagegen-ja を使用して、画面ID ${id} の論文要約を1枚の image_gen 画像にまとめる。

入力:
- 要約Markdown: pdf/${id}.md
- 原典PDF: pdf/${id}.pdf
- 上位デザイン規定: レイアウト・デザイン規定.md

出力:
- pdf/${id}/${id}_summary.png
- 16:9、1920x1080 PNG
$(if [[ "$DISABLE_GIT" == "1" ]]; then echo "- commit/push しない"; else echo "- commit push"; fi)

要件:
- 複数スライドではなく、1枚で完結する読み物向け要約画像にする
- タイトルは論文名ではなく、論文全体の要点・結論を明記する
- 論文名、著者/会議、背景、中心主張、手法、実験設定、主要結果、制約または実用上の示唆を1枚に整理する
- 6〜8個の情報ブロックに分け、長文段落ではなく見出し+短文で読めるようにする
- 中央に手法図、右側または下部に結果/KPI/比較表を入れる
- 背景 #F7F6F1、文字 #2B3A4A、アクセント #5E7E96、補助文字 #9AA4AD を基本にする
- 「総評」「査読結果」「総合評価」などのレビュー・評価内容は入れない
- 必要に応じて pdf/${id}.pdf も確認する
- 生成後に、出力ファイル、1920x1080、1枚完結、除外内容の不在、読みやすさを検証する
EOF
    fi
  } > "$prompt_file"
}

run_one() {
  local id="$1"
  local prompt_file="$RUN_DIR/prompts/${id}.prompt.md"
  local log_file="$RUN_DIR/logs/${id}.jsonl"
  local last_file="$RUN_DIR/logs/${id}.last-message.txt"
  local status_file="$RUN_DIR/status/${id}.status"

  write_prompt "$id" "$prompt_file"
  echo "START $(date -Is) ${id}" | tee "$status_file"

  codex exec \
    --dangerously-bypass-approvals-and-sandbox \
    -C "$REPO_ROOT" \
    --json \
    -o "$last_file" \
    - < "$prompt_file" > "$log_file" 2>&1
  local code=$?

  if ((code == 0)); then
    echo "OK $(date -Is) ${id}" | tee -a "$status_file"
    return 0
  fi

  echo "FAIL $(date -Is) ${id} exit=${code}" | tee -a "$status_file"
  return "$code"
}

main() {
  cd "$REPO_ROOT" || exit 1

  mapfile -t ids < <(discover_ids)
  if ((${#ids[@]} == 0)); then
    echo "No targets found under pdf/P*.md" >&2
    exit 1
  fi

  printf '%s\n' "${ids[@]}" > "$RUN_DIR/targets.txt"
  if ! resolve_backend; then
    echo "Preflight failed. See $RUN_DIR/codex-imagegen-probe.jsonl when present." >&2
    exit 1
  fi

  {
    echo "run_dir=$RUN_DIR"
    echo "repo_root=$REPO_ROOT"
    echo "max_jobs=$MAX_JOBS"
    echo "mode=$MODE"
    echo "git_lock=$GIT_LOCK"
    echo "start_id=$START_ID"
    echo "imagegen_backend=$IMAGEGEN_BACKEND"
    echo "imagegen_cli=$IMAGEGEN_CLI"
    echo "disable_git=$DISABLE_GIT"
    echo "targets=${#ids[@]}"
    printf 'target=%s\n' "${ids[@]}"
  } > "$RUN_DIR/manifest.txt"

  echo "Run directory: $RUN_DIR"
  echo "Targets: ${#ids[@]}"
  echo "Parallel jobs: $MAX_JOBS"
  echo "Mode: $MODE"
  echo "Image generation backend: $IMAGEGEN_BACKEND"

  local active=0
  local failures=0
  local id

  for id in "${ids[@]}"; do
    run_one "$id" &
    active=$((active + 1))

    if ((active >= MAX_JOBS)); then
      if ! wait -n; then
        failures=$((failures + 1))
      fi
      active=$((active - 1))
    fi
  done

  while ((active > 0)); do
    if ! wait -n; then
      failures=$((failures + 1))
    fi
    active=$((active - 1))
  done

  echo "Completed with failures=$failures"
  exit "$failures"
}

main "$@"
