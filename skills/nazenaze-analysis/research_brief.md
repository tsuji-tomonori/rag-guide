# なぜなぜ分析に関する調査メモ

## 調査の結論

なぜなぜ分析は、問題を素早く深掘りする入口として有用だが、単独で厳密な根本原因分析を保証する手法ではない。研究・ガイドラインを総合すると、実務で使うには次の補強が必要である。

1. 問題定義を事実で固定する。
2. ブレーンストーミングではなく、調査・証拠確認と組み合わせる。
3. 複数原因を許容し、分岐した因果ツリーで扱う。
4. 人のミスで止めず、作業条件、局所要因、組織要因まで掘る。
5. 教育・注意喚起だけで終えず、システム変更・設計変更・検出強化など強い対策に接続する。
6. 重大・複雑な事案では、RCA、FTA、FMEA、WBA、HFACS、SEIPS、変更分析などと併用する。

## 主要文献・ガイドラインと実務示唆

| 出典 | 内容 | 実務示唆 |
|---|---|---|
| Institute for Healthcare Improvement, “5 Whys: Finding the Root Cause” | 5 Whysを根本原因探索のツールとして紹介しつつ、複数根本原因があり得ること、視点が違うと答えが違うこと、包括的にはRCA2を参照すべきことを明記。 | 5 Whysは入口。単一原因に固定せず、分岐と視点差を扱う。 |
| Lean Enterprise Institute, “5 Whys” | 5 Whysは症状を越えて根本原因を探る実践であり、数字の5自体が本質ではなく、原因に到達して除去するまで問うと説明。 | 「5回で止める」運用を禁止し、終了条件で判断する。 |
| 日本品質管理学会, JSQC-Std 62-001「RCA/根本原因分析」 | RCAを、人の不適切な行動、局所要因、組織要因との関係を分析して未然防止の改善点を見つける方法と定義。なぜなぜ分析は自由度が大きく、知識・経験が不足すると表層的分析や論理飛躍になり得ると指摘。 | 局所要因・組織要因を必須レーンにし、論理飛躍チェックを入れる。 |
| Barsalou & Starzyńska (2023), “Inquiry into the Use of Five Whys in Industry” | ポーランドの組織への調査で、5 Whysの用途と併用ツールを分析。調査を伴う使い方とブレーンストーミング的使い方を区別し、石川図が最もよく併用される品質ツールだと報告。 | 事実調査なしの会議室分析を避け、石川図や因果ツリーと併用する。 |
| Tsuchiya et al. (2005), “Analysis of medical accidents using the Why Why Why Analysis” | 放射線業務の医療事故分析で、Why Why Why Analysisは初心者にも展開しやすく、事故だけでなく苦情にも対応でき、実務改善に有用と評価。 | 導入・教育用には有用。ただし初心者向けほどチェックリストで質を担保する。 |
| Gangidi (2018), “A systematic approach to RCA using 3 × 5 Why’s technique” | 従来の5 Whysに、発生、人的要因、システム要因の3レーンを加える3×5 Whysを提案。高次の方針・管理判断などシステム原因に到達しやすいと説明。 | 発生・人・組織の3レーンをスキルの標準手順にする。 |
| Card (2017), “The problem with 5 whys” | 医療安全の文脈で、5 Whysは教育ツールとしての価値はあるが、複雑な事故では問題を単純化し、プロセスがどう失敗するかの理解を制限し得ると批判。 | 複雑事象では5 Whys単独で結論を出さず、複数因果・システム分析に拡張する。 |
| Peerally et al. (2017), “The problem with root cause analysis” | RCAの課題として、単一点原因への不適切な焦点、分析品質の低さ、フィードバック不足などを整理。 | 分析終了条件とフォローアップ計画を必須にする。 |
| Kwok et al. (2020), “Evaluation of effectiveness of RCA recommendations in Hong Kong public hospitals” | 香港の43公立病院等で214件のRCA報告をレビュー。760件の勧告のうち82%が弱い勧告で、教育・研修が多かった。訓練、ヒューマンファクター専門性、安全文化、集約分析が改善策として示唆された。 | 「教育・注意喚起のみ」を禁止パターンにし、対策強度と効果測定を必須化する。 |
| Ito et al. (2022), “Improved root cause analysis supporting resilient production systems” | 生産システムのRCAに関する体系的レビューで、専門性不足、従業員バイアス、データ品質不良、データ統合不足など14課題と、可視化、協働基盤、機械学習等17の促進要因を整理。 | データ品質、バイアス、可視化、共同レビューを手順に組み込む。 |
| Doggett (2005), “Root Cause Analysis: A Framework for Tool Selection” | CED、ID、CRTなどのRCAツールの性能特性と選定枠組みを提示。原因カテゴリ、相互依存、因果関係、グループ所見の完全性などを考慮すべきとする。 | なぜなぜ分析だけに固定せず、問題の複雑さに応じてツール選定する。 |

## Skill設計への反映

### 1. 「5回」ではなく終了条件で止める

調査では、5回という数字は手法を説明しやすくする目安であり、分析の十分性を保証しない。Skillでは、原因が「証拠で支えられ、因果リンクが妥当で、対策可能で、再発リスクを下げられる」状態を終了条件にした。

### 2. 単線ではなく分岐構造にする

複雑な問題は、発生原因、流出原因、検知遅れ、影響拡大原因が異なる。単一のWhyチェーンにすると、重要な因果経路が落ちる。Skillでは、最初から因果ツリー形式を標準にした。

### 3. 発生・人・組織の3レーンを標準化する

Gangidiの3×5 Whys、JSQCの局所要因・組織要因の区分、医療安全研究のシステム思考を統合し、技術・プロセス、人・作業条件、システム・組織の3レーンを必須にした。

### 4. 証拠テストと反事実テストを入れる

なぜなぜ分析の弱点は、参加者の知識・先入観に依存し、論理飛躍が起きやすい点である。Skillでは、各リンクに証拠、反事実、十分性、非飛躍、対策可能性を確認するテストを入れた。

### 5. 対策強度を明示する

RCA研究では、教育、周知、注意喚起など弱い対策に偏りやすいことが示されている。Skillでは、設計変更、ガード、自動検知、標準・承認・変更管理、チェックリスト、教育という強度順に対策を評価する。

### 6. フォローアップを必須にする

分析レポートだけで終わると、組織学習に接続しない。Skillでは、効果指標、期限、責任者、レビュー日、水平展開をアウトプットに含めた。

## 参考文献・URL

1. Institute for Healthcare Improvement. 5 Whys: Finding the Root Cause. https://www.ihi.org/library/tools/5-whys-finding-root-cause
2. Lean Enterprise Institute. 5 Whys. https://www.lean.org/lexicon-terms/5-whys/
3. 日本品質管理学会. CD-JSQC-Std 62-001 RCA/根本原因分析. https://jsqc.org/wp/wp-content/uploads/2024/05/CD-JSQC-Std-62-001_rca.pdf
4. Barsalou, M., & Starzyńska, B. (2023). Inquiry into the Use of Five Whys in Industry. Quality Innovation Prosperity, 27(1), 62–78. DOI: 10.12776/qip.v27i1.1771
5. Tsuchiya, H., et al. (2005). Analysis of medical accidents using the "Why Why Why Analysis". Nihon Hoshasen Gijutsu Gakkai Zasshi, 61(12), 1638–1644. DOI: 10.6009/jjrt.kj00004022975
6. Gangidi, P. (2018). A systematic approach to root cause analysis using 3 × 5 why’s technique. International Journal of Lean Six Sigma, 10(1), 295–310. DOI: 10.1108/IJLSS-10-2017-0114
7. Card, A. J. (2017). The problem with ‘5 whys’. BMJ Quality & Safety, 26(8), 671–677. DOI: 10.1136/bmjqs-2016-005849
8. Peerally, M. F., Carr, S., Waring, J., & Dixon-Woods, M. (2017). The problem with root cause analysis. BMJ Quality & Safety, 26(5), 417–422. DOI: 10.1136/bmjqs-2016-005511
9. Kwok, Y. T. A., Mah, A. P. Y., & Pang, K. M. C. (2020). Our first review: an evaluation of effectiveness of root cause analysis recommendations in Hong Kong public hospitals. BMC Health Services Research, 20, 507. DOI: 10.1186/s12913-020-05356-6
10. Ito, A., Hagström, M., Bokrantz, J., Skoogh, A., Nawcki, M., Gandhi, K., Bergsjö, D., & Bärring, M. (2022). Improved root cause analysis supporting resilient production systems. Journal of Manufacturing Systems, 64, 468–478. DOI: 10.1016/j.jmsy.2022.07.015
11. Doggett, A. M. (2005). Root Cause Analysis: A Framework for Tool Selection. Quality Management Journal, 12(4), 34–45. DOI: 10.1080/10686967.2005.11919269
