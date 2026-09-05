// Exercise navigation/speaker/clock behavior in an isolated DOM, without a browser.
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import vm from 'node:vm';
import ts from 'typescript';
import { createRequire } from 'node:module';
import { slides, timings } from '../src/data/rag-seminar.ts';
const require = createRequire(import.meta.url);
const { createWindow } = require('@mixmark-io/domino');
const html = await readFile('dist/slides/rag-intro/index.html', 'utf8');
const js = ts.transpileModule(await readFile('src/scripts/seminar.ts', 'utf8'), { compilerOptions: { module: ts.ModuleKind.CommonJS, target: ts.ScriptTarget.ES2022 } }).outputText;
let now = 100000;
const channels = new Map();
class Channel {
  constructor(name) { this.name = name; this.onmessage = null; const group = channels.get(name) ?? new Set(); group.add(this); channels.set(name, group); }
  postMessage(data) { for (const peer of channels.get(this.name)) if (peer !== this) peer.onmessage?.({ data: structuredClone(data) }); }
  close() { channels.get(this.name).delete(this); }
}
function app(query = '?session=test', options = {}) {
  const window = createWindow(html);
  const document = window.document;
  const listPrototype = Object.getPrototypeOf(document.querySelectorAll('div'));
  if (!listPrototype[Symbol.iterator]) listPrototype[Symbol.iterator] = Array.prototype[Symbol.iterator];
  if (!listPrototype.forEach) listPrototype.forEach = Array.prototype.forEach;
  // Only browser platform APIs absent from Domino are supplied here.
  if (!window.Element.prototype.replaceChildren) window.Element.prototype.replaceChildren = function(...nodes) { while (this.firstChild) this.removeChild(this.firstChild); for (const node of nodes) this.appendChild(node); };
  for (const dialog of document.querySelectorAll('dialog')) { Object.defineProperty(dialog, 'showModal', { value: () => { dialog.open = true; } }); Object.defineProperty(dialog, 'close', { value: () => { dialog.open = false; } }); }
  let location = new URL(`https://example.com/rag-guide/slides/rag-intro/${query}`);
  const history = { pushState: (_s, _t, url) => { location = new URL(url, location); }, replaceState: (_s, _t, url) => { location = new URL(url, location); } };
  let popupURL;
  window.open = (url) => { popupURL = String(url); return null; };
  const intervalCallbacks = [];
  const context = vm.createContext({ document, window, URL, history, crypto: { randomUUID: () => 'generated' }, BroadcastChannel: options.noChannel ? class { constructor(){ throw new Error('unsupported'); } } : Channel, Date: class extends Date { static now(){ return now; } }, setTimeout: () => 1, clearTimeout() {}, setInterval: (fn) => { intervalCallbacks.push(fn); return 1; }, clearInterval() {}, exports: {}, require: () => ({ slides, timings }) });
  Object.defineProperty(context, 'location', { get: () => location });
  vm.runInContext(js, context); context.exports.initSeminar();
  function click(id) { const event = document.createEvent('Event'); event.initEvent('click', true, true); document.getElementById(id).dispatchEvent(event); }
  function key(value, target = document.body, extra = {}) { const event = document.createEvent('Event'); event.initEvent('keydown', true, true); Object.assign(event, { key: value, ...extra }); target.dispatchEvent(event); }
  return { document, click, key, index: () => [...document.querySelectorAll('[data-slide]')].findIndex(s => !s.hidden), location: () => location, popup: () => popupURL, tick: () => intervalCallbacks.forEach(fn => fn()), history, window };
}
const first = slides.findIndex(s => s.id === 'four-stages');
const last = slides.length - 1;
const audience = app('?session=one&duration=30#four-stages');
assert.equal(audience.index(), first);
assert(audience.document.getElementById('speaker').hidden);
const speaker = app('?session=one&presenter=1');
assert.equal(speaker.index(), first);
assert.equal(speaker.document.getElementById('duration').value, '30');
audience.click('next'); assert.equal(audience.index(), first + 1); assert.equal(speaker.index(), first + 1);
speaker.click('next'); assert.equal(audience.index(), first + 2); assert.equal(speaker.index(), first + 2);
audience.key('ArrowRight', audience.document.getElementById('next')); assert.equal(audience.index(), first + 3);
audience.key('Home'); assert.equal(audience.index(), 0); assert(audience.document.getElementById('previous').disabled);
audience.click('previous'); assert.equal(audience.index(), 0);
audience.key('End'); assert.equal(audience.index(), last); assert(audience.document.getElementById('next').disabled);
audience.click('next'); assert.equal(audience.index(), last);
audience.key(' ', audience.document.body, { shiftKey: true }); assert.equal(audience.index(), last - 1);
audience.key('PageUp'); assert.equal(audience.index(), last - 2);
audience.key('PageDown'); assert.equal(audience.index(), last - 1);
audience.key('ArrowRight', audience.document.body, { ctrlKey: true }); assert.equal(audience.index(), last - 1);
audience.click('overview-open'); audience.key('Home'); assert.equal(audience.index(), last - 1);
const link = audience.document.querySelector('[data-jump="retrieval"]');
const click = audience.document.createEvent('Event'); click.initEvent('click', true, true); link.dispatchEvent(click);
assert.equal(audience.index(), first + 2); assert.equal(speaker.index(), first + 2); assert(!audience.document.getElementById('overview').open);
assert.equal(audience.location().hash, '#retrieval');
speaker.click('timer-toggle'); now += 61000; speaker.tick();
assert.equal(speaker.document.getElementById('elapsed').textContent, '01:01');
speaker.click('timer-toggle'); now += 9000; speaker.tick();
assert.equal(speaker.document.getElementById('elapsed').textContent, '01:01');
speaker.click('timer-toggle'); now += 1000; speaker.tick();
assert.equal(speaker.document.getElementById('elapsed').textContent, '01:02');
speaker.click('timer-reset'); assert.equal(speaker.document.getElementById('elapsed').textContent, '00:00');
const select = speaker.document.getElementById('duration'); select.value = '40';
const change = speaker.document.createEvent('Event'); change.initEvent('change', true, true); select.dispatchEvent(change);
assert.equal(speaker.document.getElementById('remaining').textContent, '40:00');
const other = app('?session=two'); other.click('next'); assert.equal(audience.index(), first + 2);
audience.click('presenter-open'); assert(audience.popup().includes('presenter=1')); assert(audience.document.getElementById('notice').textContent.includes('ポップアップ'));
audience.click('fullscreen'); assert(audience.document.getElementById('notice').textContent.includes('全画面'));
for (const [alias, id] of Object.entries({'two-layers':'four-stages','stage-layer-map':'four-stages', question:'problems', query:'batch', chunking:'batch', reranking:'context-packing'})) {
  assert.equal(app(`?session=alias-${alias}#${alias}`).index(), slides.findIndex(s => s.id === id));
}
const invalid = app('?session=invalid#missing'); assert.equal(invalid.index(), 0);
const unsupported = app('?session=no-channel&presenter=1', { noChannel: true }); unsupported.click('next'); assert.equal(unsupported.index(), 1); assert(unsupported.document.getElementById('connection').textContent.includes('対応していません'));
console.log('DOM controls pass: direct links, boundaries, keyboard/button focus, dialogs, two-way speaker sync, session isolation, 30/40-minute clock, pause/resume/reset and unsupported-platform notices.');
