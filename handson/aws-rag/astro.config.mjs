import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import { unified } from '@astrojs/markdown-remark';
import guideImages from './scripts/rehype-guide-images.mjs';

export default defineConfig({
  site: 'https://tsuji-tomonori.github.io',
  base: '/rag-guide',
  markdown: { processor: unified({ rehypePlugins: [guideImages] }) },
  integrations: [
    starlight({
      title: 'RAGエンジニアガイド',
      description:
        'RAGの設計・実装・評価・運用を学ぶガイドとAWSハンズオン',
      locales: {
        root: { label: '日本語', lang: 'ja' },
      },
      favicon: '/favicon.svg',
      logo: {
        light: './src/assets/logo-light.svg',
        dark: './src/assets/logo-dark.svg',
        replacesTitle: true,
      },
      social: [
        {
          icon: 'github',
          label: 'GitHub',
          href: 'https://github.com/tsuji-tomonori/rag-guide',
        },
      ],
      editLink: {
        baseUrl:
          'https://github.com/tsuji-tomonori/rag-guide/edit/main/handson/aws-rag/',
      },
      customCss: ['./src/styles/workshop.css', './src/styles/guide.css'],
      components: { PageTitle: './src/components/PageTitle.astro' },
      tableOfContents: { minHeadingLevel: 2, maxHeadingLevel: 3 },
      sidebar: [
        { label: 'はじめに', link: '/' },
        { label: 'RAGガイド本文', items: [{ autogenerate: { directory: 'guide' } }] },
        {
          label: 'AWS RAG ハンズオン',
          items: [
            { label: '0. 全体像と進め方', link: '/00-overview/' },
            { label: '1. CLI実行環境を準備', link: '/01-prepare-cli/' },
            { label: '2. AWS公式PDFをS3へ配置', link: '/02-upload-documents/' },
            { label: '3. S3 Vectorsを作成', link: '/03-create-vector-store/' },
            { label: '4. ナレッジベース用IAMロール', link: '/04-create-iam-role/' },
            { label: '5. Knowledge Baseを作成', link: '/05-create-knowledge-base/' },
            { label: '6. 文書を同期', link: '/06-sync-documents/' },
            { label: '7. Retrieveで検索', link: '/07-retrieve/' },
            { label: '8. Converseで回答生成', link: '/08-converse/' },
            { label: '9. KBで検索＋回答を一撃実行', link: '/09-improve-retrieval/' },
            { label: '10. リソースを削除', link: '/10-cleanup/' },
          ],
        },
        {
          label: 'リファレンス',
          items: [
            { label: 'AWSリソースのパラメータシート', link: '/parameters/' },
            { label: 'ハンズオン費用（1人1回）', link: '/cost/' },
            { label: 'トラブルシューティング', link: '/troubleshooting/' },
            { label: '構成値と公式資料', link: '/reference/' },
          ],
        },
      ],
    }),
  ],
});
