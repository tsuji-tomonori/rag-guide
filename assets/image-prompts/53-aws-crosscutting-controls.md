# 図53: 全工程を横断する管理面

- 出力先: `assets/images/v4/53-aws-crosscutting-controls.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.6.安全に運用し変更する.md`
- 挿入位置: 節の導入直後
- 代替テキスト: 認可、暗号化、監視、評価、版管理、コスト管理を全工程へ通す図
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の管理面図。図44をスタイル参照とし、同じ配色、書体、余白を使う。タイトルは「全工程を横断する管理面」。

上段を「利用者・IdP」→「Application」→「Knowledge Base・Model」→「文書」→「Tool」と接続し、矢印の下に順番に「認証・IAM」「IAM・Resource Policy」「Metadata Filter・ACL」「IAM・Tool Policy」と表示する。上段を横断する帯として「KMS：原文・Index・Memory・Log」を置く。

下段に次の三本の全幅帯を置く。

- 「版：Source → Parser → Chunk → Embedding → Index → Prompt → Application」
- 「観測：trace_id・Metrics・Logs・Trace・Cost」
- 「Release gate：評価 → 切替 → 監視 → Rollback」

日本語と記号を正確に表示し、AWS公式ロゴ、写真、人物、グラデーション、交差する矢印、細かい脚注を使わない。
