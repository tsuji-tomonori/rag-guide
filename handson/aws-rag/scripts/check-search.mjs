import { readFile } from 'node:fs/promises';
const root = new URL('../dist/pagefind/', import.meta.url).pathname;
globalThis.fetch = async input => {
  const file = root + new URL(input, 'https://example.test').pathname.split('/pagefind/')[1];
  return new Response(await readFile(file));
};
const pagefind = await import(root + 'pagefind.js');
await pagefind.options({ basePath: '/pagefind/', baseUrl: '/rag-guide/', language: 'ja' });
for (const term of ['埋め込み', '再ランキング', 'BM25', 'S3 Vectors', 'RetrieveAndGenerate', 'KB', 'Knowledge Bases', 'ナレッジベース']) {
 const result = await pagefind.search(term);
 const first = result.results[0] && await result.results[0].data();
 if (first && (!first.excerpt || !first.meta.title || !first.url.startsWith('/rag-guide/'))) throw new Error('Invalid search result: ' + term);
 console.log(term, result.results.length, first?.url, first?.meta?.title);
 if (!result.results.length) throw new Error('No results: ' + term);
}
