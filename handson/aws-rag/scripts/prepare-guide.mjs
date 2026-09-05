import { readdir, readFile, writeFile, mkdir, rm, copyFile } from 'node:fs/promises';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const site = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const root = path.resolve(site, '../..');
const docs = path.join(root, 'docs');
const output = path.join(site, 'src/content/docs/guide');
const publicImages = path.join(site, 'public/guide-assets');
const base = '/rag-guide';
const route = (slug) => `${base}/guide/${slug}/`;
const read = (file) => readFile(file, 'utf8');
const chapters = (await readdir(docs, { withFileTypes: true }))
  .filter((entry) => entry.isDirectory() && /^\d+\./.test(entry.name))
  .sort((a, b) => parseInt(a.name) - parseInt(b.name));
const structure = await read(path.join(docs, '章構成.md'));
const titles = new Map([...structure.matchAll(/^## 第(\d+)章 (.+)$/gm)].map((m) => [Number(m[1]), `第${m[1]}章 ${m[2]}`]));
const pages = [];
const targets = new Map();
for (const chapter of chapters) {
  const number = parseInt(chapter.name);
  const directory = path.join(docs, chapter.name);
  const files = (await readdir(directory)).filter((name) => name.endsWith('.md') && name !== '序文.md');
  // Section order follows the authoritative outline, including chapter 9's reading order.
  const outline = structure.split(new RegExp(`^## 第${number}章 .+$`, 'm'))[1]?.split(/^## /m)[0] ?? '';
  const order = [...outline.matchAll(/^\s*- (\d+\.\d+)\./gm)].map((m) => m[1]);
  const sectionNumber = (name) => name.match(/^(\d+\.\d+)\./)?.[1];
  for (const file of files) {
    if (!order.includes(sectionNumber(file))) throw new Error(`Section missing from outline: ${file}`);
  }
  files.sort((a, b) => order.indexOf(sectionNumber(a)) - order.indexOf(sectionNumber(b)));
  if (files.length !== order.length) throw new Error(`Outline/source count mismatch: ${chapter.name}`);
  const slug = `chapter-${String(number).padStart(2, '0')}`;
  const sources = ['序文.md', ...files].map((name) => path.join(directory, name));
  for (const file of sources) targets.set(file, route(slug) + (file.endsWith('/序文.md') ? '' : `#section-${sectionNumber(path.basename(file)).replaceAll('.', '-')}`));
  pages.push({ slug, title: titles.get(number), order: number, sources });
}
for (const [name, slug, title, order] of [
  ['章構成.md', 'contents', '章構成', 11],
  ['参考文献.md', 'references', '参考文献', 12],
  ['索引.md', 'glossary', '索引・用語', 13],
]) {
  const file = path.join(docs, name);
  targets.set(file, route(slug));
  pages.push({ slug, title, order, sources: [file] });
}

await rm(output, { recursive: true, force: true });
await rm(publicImages, { recursive: true, force: true });
await mkdir(output, { recursive: true });
const images = new Set();
function rewriteLink(target, source) {
  if (/^(?:[a-z][a-z0-9+.-]*:|#|\/)/i.test(target)) return target;
  const [pathname, fragment] = target.split('#');
  const resolved = path.resolve(path.dirname(source), decodeURI(pathname));
  if (targets.has(resolved)) {
    const destination = targets.get(resolved);
    return fragment ? destination.split('#')[0] + '#' + fragment : destination;
  }
  const relative = path.relative(path.join(root, 'assets/images'), resolved);
  if (!relative.startsWith('..') && !path.isAbsolute(relative)) {
    images.add(resolved);
    return `${base}/guide-assets/${relative.split(path.sep).map(encodeURIComponent).join('/')}`;
  }
  throw new Error(`Unmapped local link: ${source}: ${target}`);
}
function transform(text, source, chapter) {
  let fence = null;
  let firstHeading = true;
  return text.split('\n').map((line) => {
    const marker = line.match(/^\s*(`{3,}|~{3,})/);
    if (marker) {
      if (!fence) fence = marker[1];
      else if (marker[1][0] === fence[0] && marker[1].length >= fence.length) fence = null;
      return line;
    }
    if (fence) return line;
    if (/^# /.test(line) && firstHeading) {
      firstHeading = false;
      if (!chapter || source.endsWith('/序文.md')) return '';
      const id = targets.get(source).split('#')[1];
      return `<span id="${id}" class="guide-section-anchor"></span>\n\n#${line}`;
    }
    if (chapter && /^#{1,5} /.test(line)) line = '#' + line;
    return line.replace(/(!?\[[^\]\n]*\])\(([^)\n]+)\)/g, (all, label, target) => {
      // Existing external URLs (which may include parentheses) are left intact.
      if (/^[a-z][a-z0-9+.-]*:/i.test(target)) return all;
      return `${label}(${rewriteLink(target, source)})`;
    });
  }).join('\n').trim();
}
for (const page of pages) {
  const content = (await Promise.all(page.sources.map(async (source) => transform(await read(source), source, page.slug.startsWith('chapter-'))))).join('\n\n');
  const editUrl = 'https://github.com/tsuji-tomonori/rag-guide/edit/main/' + page.sources[0].slice(root.length + 1);
  const frontmatter = `---\ntitle: ${JSON.stringify(page.title)}\nsidebar:\n  order: ${page.order}\neditUrl: ${JSON.stringify(editUrl)}\n---\n\n`;
  await writeFile(path.join(output, `${page.slug}.md`), frontmatter + content + '\n');
}
const introduction = `PDF版と同じ本文を、章ごとに読めます。左の章一覧と右のページ内目次から移動し、上の検索でガイドとハンズオンを横断検索できます。\n\n[PDFをダウンロード](https://github.com/tsuji-tomonori/rag-guide/releases/latest/download/rag-engineering-guide.pdf) · [公開済みPDFの一覧](https://github.com/tsuji-tomonori/rag-guide/releases) · [ハンズオンを始める](${base}/00-overview/)\n\n## 本文\n\n${pages.map((page) => `- [${page.title}](${route(page.slug)})`).join('\n')}\n\n## 調べる\n\n略称・正式名称・日本語表記を合わせて検索してください。例えば、KB / Knowledge Bases / ナレッジベース、Embedding / 埋め込み、Reranking / 再ランキングを本文で説明しています。\n`;
await writeFile(path.join(output, 'index.md'), `---\ntitle: RAGガイドを読む\nsidebar:\n  order: 0\neditUrl: false\n---\n\n${introduction}`);
for (const image of images) {
  const destination = path.join(publicImages, path.relative(path.join(root, 'assets/images'), image));
  await mkdir(path.dirname(destination), { recursive: true });
  await copyFile(image, destination);
}
console.log(`Prepared ${pages.length + 1} guide pages from ${targets.size} Markdown sources and ${images.size} shared figures.`);
