import assert from 'node:assert/strict';
import { readFile, readdir } from 'node:fs/promises';
import vm from 'node:vm';
import ts from 'typescript';
import { createRequire } from 'node:module';
const require = createRequire(import.meta.url);
const { createWindow } = require('@mixmark-io/domino');
const source = await readFile('src/components/Checkpoint.astro', 'utf8');
const js = ts.transpileModule(source.split('<script>')[1].split('</script>')[0], {
  compilerOptions: { target: ts.ScriptTarget.ES2022 },
}).outputText;

function app(html, pathname, storage = new Map()) {
  const window = createWindow(html);
  const { document } = window;
  const proto = Object.getPrototypeOf(document.querySelectorAll('div'));
  if (!proto[Symbol.iterator]) proto[Symbol.iterator] = Array.prototype[Symbol.iterator];
  if (!proto.forEach) proto.forEach = Array.prototype.forEach;
  if (!window.Element.prototype.replaceChildren) window.Element.prototype.replaceChildren = function (...nodes) {
    while (this.firstChild) this.removeChild(this.firstChild);
    for (const node of nodes) this.appendChild(node);
  };
  window.location = { pathname };
  window.localStorage = { getItem: key => storage.get(key) ?? null, setItem: (key, value) => storage.set(key, value) };
  const context = vm.createContext({ window, document, CustomEvent: window.CustomEvent, CSS: { escape: value => value.replace(/["\\]/g, '\\$&') } });
  vm.runInContext(js, context);
  const event = document.createEvent('Event');
  event.initEvent('DOMContentLoaded', false, false);
  document.dispatchEvent(event);
  const inputs = () => Array.from(document.querySelectorAll('[data-check-source] input, .checkpoint-static input'));
  const mirrors = () => Array.from(document.querySelectorAll('[data-checkpoint-list] input'));
  function change(input, checked) {
    input.checked = checked;
    const event = document.createEvent('Event');
    event.initEvent('change', true, false);
    input.dispatchEvent(event);
  }
  return { document, inputs, mirrors, change, storage };
}

function verify(html, pathname) {
  const a = app(html, pathname);
  const inputs = a.inputs();
  assert(inputs.length > 0, pathname);
  assert.equal(new Set(inputs.map(i => i.dataset.checkKey)).size, inputs.length, pathname);
  for (let index = 0; index < inputs.length; index++) {
    a.change(inputs[index], true);
    assert.deepEqual(inputs.map(i => i.checked), inputs.map((_, j) => j === index), pathname);
    assert.deepEqual(a.mirrors().map(i => i.checked), inputs.map(i => i.checked), pathname);
    const restored = app(html, pathname, a.storage);
    assert.deepEqual(restored.inputs().map(i => i.checked), inputs.map(i => i.checked), pathname);
    a.change(a.mirrors()[index], false);
    assert(inputs.every(i => !i.checked), pathname);
  }
  for (const input of inputs) a.change(input, true);
  assert.equal(a.document.querySelector('[data-checkpoint-ok]').hidden, false, pathname);
  a.change(a.mirrors()[0], false);
  assert.equal(a.document.querySelector('[data-checkpoint-ok]').hidden, true, pathname);
  assert(app(html, pathname + 'other/', a.storage).inputs().every(i => !i.checked));
  return inputs.length;
}
let pages = 0;
let checks = 0;
for (const entry of await readdir('dist', { withFileTypes: true })) {
  if (!entry.isDirectory() || !/^\d\d-/.test(entry.name)) continue;
  const html = await readFile('dist/' + entry.name + '/index.html', 'utf8');
  checks += verify(html, '/rag-guide/' + entry.name + '/');
  pages++;
}
assert.equal(pages, 11);
const checkpoint = '<aside data-checkpoint><div class="checkpoint-static"></div><div data-checkpoint-sync><ul data-checkpoint-list></ul><span data-checkpoint-progress></span><p data-checkpoint-ok hidden></p></div></aside>';
const result = id => '<aside data-check-source ' + (id ? 'data-result-id="' + id + '"' : '') + '><div class="result-content"><ul><li>One</li><li>Two</li><li>Three</li></ul></div></aside>';
verify(result('duplicate') + result('duplicate') + checkpoint, '/duplicate/');
verify(result('result-2') + result('') + checkpoint, '/fallback-collision/');
verify(result('') + result('') + checkpoint, '/missing-ids/');
const legacy = new Map([['rag-handson-checks:/duplicate/', JSON.stringify({'/duplicate/:duplicate:1': true})]]);
assert(app(result('duplicate') + result('duplicate') + checkpoint, '/duplicate/', legacy).inputs().every(i => !i.checked));
for (const value of ['null', '[]', '"invalid"', '{broken']) {
  const storage = new Map([['rag-handson-checks:/invalid/', value]]);
  const a = app(result('unique') + checkpoint, '/invalid/', storage);
  a.change(a.inputs()[0], true);
  assert(a.inputs()[0].checked);
}
console.log('Checklist regression passed: ' + pages + ' pages, ' + checks + ' conditions; isolation, two-way sync, reload, completion, duplicate/fallback IDs and invalid storage.');
