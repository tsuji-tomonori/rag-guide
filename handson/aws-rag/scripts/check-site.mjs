import assert from 'node:assert/strict';
import { readFile, readdir } from 'node:fs/promises';
import path from 'node:path';
import { createRequire } from 'node:module';
// Turndown's server DOM is also used to check the built HTML without a browser.
const require = createRequire(import.meta.url);
const { createWindow } = require('@mixmark-io/domino');
const { pageMarkdown } = await import('../src/scripts/page-markdown.ts');
const dist = path.resolve('dist');
async function htmlFiles(directory) {
  const files = [];
  for (const entry of await readdir(directory, { withFileTypes: true })) {
    const file = path.join(directory, entry.name);
    if (entry.isDirectory()) files.push(...await htmlFiles(file));
    else if (entry.name.endsWith('.html')) files.push(file);
  }
  return files;
}
const documents = new Map();
for (const file of await htmlFiles(dist)) documents.set(file, createWindow(await readFile(file, 'utf8')).document);
const failures = [];
let pages = 0;
for (const [file, document] of documents) {
  if (file.endsWith('/404.html')) continue;
  pages++;
  assert(document.querySelector('[data-copy-markdown]'), `Copy button missing: ${file}`);
  const content = document.querySelector('.sl-markdown-content');
  assert(content, `Body missing: ${file}`);
  for (const element of content.querySelectorAll('a[href], img[src]')) {
    const target = element.getAttribute('href') ?? element.getAttribute('src');
    if (!target.startsWith('/rag-guide/')) continue;
    const url = new URL(target, 'https://tsuji-tomonori.github.io');
    const relative = decodeURI(url.pathname.slice('/rag-guide/'.length));
    const destination = path.join(dist, relative, url.pathname.endsWith('/') ? 'index.html' : '');
    if (element.tagName === 'IMG') {
      try { assert((await readFile(destination)).length > 0); } catch { failures.push(`Image: ${file}: ${target}`); }
    } else {
      const linked = documents.get(destination);
      if (!linked) failures.push(`Link: ${file}: ${target}`);
      else if (url.hash && !linked.getElementById(decodeURIComponent(url.hash.slice(1)))) failures.push(`Anchor: ${file}: ${target}`);
    }
  }
  if (file.includes('/guide/')) {
    const copy = document.querySelector('[data-page-markdown]').value;
    assert(copy.startsWith('# '), `Canonical Markdown missing: ${file}`);
    assert(!copy.includes('title:'), `Frontmatter leaked: ${file}`);
  }
}
assert(pages >= 30, 'Expected guide and existing hands-on pages');
assert.deepEqual(failures, []);
// Rendered MDX must copy actual commands and tables, without UI controls or JSX.
const commandFile = path.join(dist, '01-prepare-cli/index.html');
const document = documents.get(commandFile);
globalThis.document = document;
globalThis.location = new URL('https://tsuji-tomonori.github.io/rag-guide/01-prepare-cli/');
const markdown = await pageMarkdown(document.querySelector('.sl-markdown-content'), document.querySelector('h1').textContent);
assert(markdown.includes('aws sts get-caller-identity'));
assert(markdown.includes('[CHECK]'));
assert(!markdown.includes('<Command'));
assert(!markdown.includes('Copy to clipboard'));
const parameters = documents.get(path.join(dist, 'parameters/index.html'));
const tableMarkdown = await pageMarkdown(parameters.querySelector('.sl-markdown-content'), 'Parameters');
assert(tableMarkdown.includes('|'));
assert(tableMarkdown.includes('RAG_RUN_ID'));
for (const [file, document] of documents) {
  if (file.includes('/guide/') || file.endsWith('/404.html')) continue;
  globalThis.document = document;
  const text = await pageMarkdown(document.querySelector('.sl-markdown-content'), document.querySelector('h1').textContent);
  for (const pre of document.querySelectorAll('.sl-markdown-content .expressive-code pre')) {
    const code = Array.from(pre.querySelectorAll('.ec-line .code'), (line) => line.textContent ?? '').join('\n').trim();
    if (code) assert(text.includes(code), `Command changed during copy: ${file}`);
  }
}
console.log(`Checked ${pages} pages: copy controls, internal links/anchors, images, guide sources and rendered MDX commands/tables.`);
