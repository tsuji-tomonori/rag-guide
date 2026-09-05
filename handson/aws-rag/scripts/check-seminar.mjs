import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { createRequire } from 'node:module';
import { slides, timings } from '../src/data/rag-seminar.ts';
const require = createRequire(import.meta.url);
const { createWindow } = require('@mixmark-io/domino');
const html = await readFile('dist/slides/rag-intro/index.html', 'utf8');
const document = createWindow(html).document;
assert.equal(document.querySelectorAll('[data-slide]').length, 22);
assert.equal(new Set(slides.map(s => s.id)).size, slides.length);
assert.equal(document.querySelectorAll('h1').length, 1);
assert(document.getElementById('speaker').hasAttribute('hidden'), 'Speaker notes must be hidden in audience HTML');
for (const slide of slides) {
  assert(document.getElementById(slide.id), `Missing slide: ${slide.id}`);
  assert(slide.notes.length > 40 && slide.expand.length > 10);
  assert(slide.sources.length > 0);
  if (slide.rows) assert(slide.rows.every(row => row.length === slide.headers.length));
  for (const source of slide.sources) {
    if (!source.href.startsWith('/rag-guide/')) continue;
    const target = new URL(source.href, 'https://example.com');
    const page = createWindow(await readFile(`dist/${target.pathname.slice('/rag-guide/'.length)}index.html`, 'utf8')).document;
    if (target.hash) assert(page.getElementById(target.hash.slice(1)), `Missing source section: ${source.href}`);
  }
}
for (const minutes of [30, 40]) {
  const plan = timings(minutes);
  assert.equal(plan[0].start, 0);
  assert.equal(plan.at(-1).end, minutes * 60);
  assert(plan.every((t, i) => t.end > t.start && (!i || t.start === plan[i-1].end)));
  assert.equal(plan.reduce((sum, t) => sum + t.end - t.start, 0), minutes * 60);
}
for (const file of ['dist/index.html', 'dist/guide/index.html']) {
  assert((await readFile(file, 'utf8')).includes('/rag-guide/seminar/'), `Missing seminar entry: ${file}`);
}
const entry = await readFile('dist/seminar/index.html', 'utf8');
assert(entry.includes('duration=30') && entry.includes('duration=40'));
console.log('Checked 22 slides, unique anchors, notes, source sections, entry points and exact 30/40-minute plans.');
