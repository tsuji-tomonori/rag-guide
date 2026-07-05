---
name: paper-audio-guide-zundamon-ja
description: Create Japanese 5-10 minute Zundamon MP3 audio guides for paper summary directories under pdf/P001, pdf/P002, etc. Use when the user asks for a paper audio guide, narration script, VOICEVOX/Zundamon read-aloud MP3, or says requests like "002について音声ガイドを作成して" in this rag-guide repository.
---

# Paper Audio Guide Zundamon JA

## Overview

Create a concise Japanese explanatory narration and a VOICEVOX Zundamon MP3 for one paper directory such as `pdf/P002`. The user should be able to ask only `002について音声ガイドを作成して`; resolve that to `P002`.

## Workflow

1. Resolve the target ID.
   - Accept `002`, `P002`, `pdf/P002`, or similar.
   - Normalize to uppercase `Pnnn`.
   - Work under `pdf/{ID}/`.
2. Build source context.
   - Prefer `pdf/{ID}/{ID}_summary.png` for the visual one-page summary.
   - Read `pdf/{ID}.md` when readable; if mojibake appears, use the summary image and page images under `pdf/{ID}/`.
   - Inspect page images if the summary image is missing or too sparse.
3. Write two text artifacts.
   - `pdf/{ID}/{ID}_narration_script.md`: human-readable Japanese script with title, target, and expected duration.
   - `pdf/{ID}/{ID}_narration_voicevox.txt`: VOICEVOX-friendly text. Replace hard-to-read acronyms with katakana readings where useful. Use Zundamon tone ending in `なのだ` without overdoing jokes.
4. Keep the script length appropriate for 5-10 minutes.
   - Aim for roughly 7,000-10,000 Japanese characters in `*_voicevox.txt`.
   - Cover: paper/topic, problem, method, experiment setup, key results, limitations, practical reading, and short summary.
5. Prepare the environment.
   - Run `powershell -ExecutionPolicy Bypass -File .\tools\ensure_audio_guide_env.ps1`.
   - Use the printed bundled Python path, or default to `C:\Users\20160\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe` when present.
6. Generate audio.
   - Generate WAV with `tools/generate_voicevox_audio.py`.
   - Convert WAV to MP3 with `tools/wav_to_mp3.py`.
   - Delete the WAV after MP3 conversion unless the user requests it.
7. Verify.
   - Compute duration from the WAV before deleting it, or from the source WAV if kept.
   - Confirm final MP3 exists and is non-empty.
   - Stop the `rag-guide-voicevox` container when no further audio generation is planned.

## Commands

Use these from the repository root, replacing `P002` as needed:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\ensure_audio_guide_env.ps1

& 'C:\Users\20160\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' `
  .\tools\generate_voicevox_audio.py `
  --text .\pdf\P002\P002_narration_voicevox.txt `
  --out-wav .\pdf\P002\P002_narration_zundamon.wav `
  --speaker-name 'ずんだもん' `
  --style-name 'ノーマル' `
  --speed-scale 1.08 `
  --pause-length 0.42 `
  --max-chars 250

& 'C:\Users\20160\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' `
  .\tools\wav_to_mp3.py `
  --in-wav .\pdf\P002\P002_narration_zundamon.wav `
  --out-mp3 .\pdf\P002\P002_narration_zundamon.mp3 `
  --bit-rate 128
```

Duration check:

```powershell
& 'C:\Users\20160\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' -c "import wave; p=r'.\pdf\P002\P002_narration_zundamon.wav'; w=wave.open(p,'rb'); d=w.getnframes()/w.getframerate(); print(f'{int(d//60)}m {int(d%60)}s')"
```

Cleanup:

```powershell
Remove-Item -LiteralPath .\pdf\P002\P002_narration_zundamon.wav -Force
docker stop rag-guide-voicevox
```

## Output Contract

Always leave these files:

- `pdf/{ID}/{ID}_narration_script.md`
- `pdf/{ID}/{ID}_narration_voicevox.txt`
- `pdf/{ID}/{ID}_narration_zundamon.mp3`

In the final response, report the MP3 path, script path, duration, and whether the VOICEVOX container was stopped. Mention the required credit: `VOICEVOX:ずんだもん`.
