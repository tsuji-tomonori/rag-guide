# AWS RAG Hands-on site

AWS規範ガイダンス「RAGのオプションとアーキテクチャ」の日本語PDFをAWS CLIから`curl`で取得し、Amazon Bedrock Knowledge Bases、S3 Vectors、S3、ConverseでRAGを構築するAstro Starlight教材です。

## Local development

```bash
cd handson/aws-rag
npm ci
npm run dev
```

## Validation

```bash
npm run build
```

GitHub Pagesでは`https://tsuji-tomonori.github.io/rag-guide/`へ公開します。`main`へのpushで`.github/workflows/deploy-handson-pages.yml`がbuildとdeployを行います。
