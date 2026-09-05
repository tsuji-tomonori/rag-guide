import { slides, timings } from '../data/rag-seminar';
type State = { index: number; minutes: 30 | 40; elapsed: number; started: number | null };
type Command = 'previous' | 'next' | 'first' | 'last' | 'timer' | 'reset';
export function initSeminar() {
  const get = <T extends HTMLElement>(id: string) => document.getElementById(id) as T;
  const url = new URL(location.href);
  const presenter = url.searchParams.get('presenter') === '1';
  const session = url.searchParams.get('session') || crypto.randomUUID();
  url.searchParams.set('session', session);
  history.replaceState(null, '', url);
  let state: State = { index: 0, minutes: url.searchParams.get('duration') === '30' ? 30 : 40, elapsed: 0, started: null };
  const sections = Array.from(document.querySelectorAll<HTMLElement>('[data-slide]'));
  // Keep links shared before the six-chapter reorganization useful.
  const aliases: Record<string, string> = { 'two-layers': 'four-stages', 'stage-layer-map': 'four-stages', question: 'problems', query: 'batch', chunking: 'batch', reranking: 'context-packing' };
  const indexFromHash = () => {
    const id = location.hash.slice(1);
    return slides.findIndex((slide) => slide.id === (aliases[id] ?? id));
  };
  const overview = get<HTMLDialogElement>('overview');
  const help = get<HTMLDialogElement>('help');
  let channel: BroadcastChannel | null = null;
  let lastSync = 0;
  let noticeTimeout: ReturnType<typeof setTimeout>;
  let presenterWindow: Window | null = null;
  let renderedIndex = -1;
  const format = (seconds: number) => `${String(Math.floor(Math.max(0, seconds) / 60)).padStart(2, '0')}:${String(Math.floor(Math.max(0, seconds) % 60)).padStart(2, '0')}`;
  const elapsed = () => state.elapsed + (state.started === null ? 0 : Math.max(0, Date.now() - state.started));
  const notice = (text: string) => {
    get('notice').textContent = text; clearTimeout(noticeTimeout);
    noticeTimeout = setTimeout(() => { get('notice').textContent = ''; }, 7000);
  };
  const publish = () => channel?.postMessage({ type: 'state', state });
  function render() {
    sections.forEach((section, index) => { section.hidden = index !== state.index; });
    const slide = slides[state.index];
    get<HTMLButtonElement>('previous').disabled = state.index === 0;
    get<HTMLButtonElement>('next').disabled = state.index === slides.length - 1;
    get('slide-status').textContent = `${state.index + 1} / ${slides.length} · ${slide.section}`;
    get<HTMLProgressElement>('progress').value = state.index + 1;
    document.title = `${state.index + 1}. ${slide.title}｜RAG勉強会${presenter ? '（発表者）' : ''}`;
    document.querySelectorAll('[data-jump]').forEach((link) => {
      if (link.getAttribute('data-jump') === slide.id) link.setAttribute('aria-current', 'step');
      else link.removeAttribute('aria-current');
    });
    if (presenter) {
      if (renderedIndex !== state.index) get('speaker').scrollTop = 0;
      get('speaker-notes').textContent = slide.notes;
      get('speaker-expand').textContent = slide.expand;
      get('speaker-next').textContent = slides[state.index + 1]?.title ?? 'ここから質疑・意見交換へ';
      get<HTMLSelectElement>('duration').value = String(state.minutes);
      get('speaker-sources').replaceChildren(...slide.sources.map((source) => {
        const li = document.createElement('li'); const a = document.createElement('a');
        a.textContent = source.label; a.href = source.href; a.target = '_blank'; a.rel = 'noopener';
        li.appendChild(a); return li;
      }));
    }
    renderedIndex = state.index;
    renderClock();
  }
  function renderClock() {
    if (!presenter) return;
    const seconds = elapsed() / 1000;
    get('elapsed').textContent = format(seconds);
    const remaining = state.minutes * 60 - seconds;
    get('remaining').textContent = remaining < 0 ? `超過 ${format(-remaining)}` : format(remaining);
    get('timer-toggle').textContent = state.started === null ? (state.elapsed ? 'タイマー再開' : 'タイマー開始') : '一時停止';
    const timing = timings(state.minutes)[state.index];
    get('pacing').textContent = `このページの目安 ${format(timing.end - timing.start)} ｜ 開始 ${format(timing.start)} → 終了 ${format(timing.end)}`;
    get('connection').textContent = !channel ? 'このブラウザは画面の自動同期に対応していません。' : Date.now() - lastSync > 5000 ? '投影画面との同期を待っています。投影ウィンドウを開いたままにしてください。' : '投影画面と同期中';
  }
  function go(index: number, record = true) {
    if (!Number.isInteger(index)) return;
    state.index = Math.max(0, Math.min(index, slides.length - 1));
    const nextURL = new URL(location.href); nextURL.hash = slides[state.index].id;
    if (record && location.hash !== nextURL.hash) history.pushState(null, '', nextURL);
    else history.replaceState(null, '', nextURL);
    render(); get('deck').scrollTop = 0;
    if (!presenter) publish();
  }
  function apply(command: Command) {
    if (command === 'next') go(state.index + 1);
    else if (command === 'previous') go(state.index - 1);
    else if (command === 'first') go(0);
    else if (command === 'last') go(slides.length - 1);
    else {
      if (command === 'reset') { state.elapsed = 0; state.started = null; }
      else if (command === 'timer') { state.elapsed = elapsed(); state.started = state.started === null ? Date.now() : null; }
      renderClock(); publish();
    }
  }
  function command(action: Command) {
    if (presenter && channel) channel.postMessage({ type: 'command', action }); else apply(action);
  }
  function jump(index: number) {
    if (presenter && channel) channel.postMessage({ type: 'jump', index }); else go(index);
  }
  function hashChanged() {
    const index = indexFromHash();
    if (presenter && channel) jump(index < 0 ? 0 : index); else go(index < 0 ? 0 : index, false);
  }
  function openPresenter() {
    if (presenter) return;
    if (presenterWindow && !presenterWindow.closed) { presenterWindow.focus(); return; }
    const nextURL = new URL(location.href);
    nextURL.searchParams.set('presenter', '1'); nextURL.searchParams.set('duration', String(state.minutes));
    presenterWindow = window.open(nextURL, `rag-presenter-${session}`, 'popup,width=1400,height=900');
    if (!presenterWindow) notice('発表者画面を開けませんでした。このサイトのポップアップを許可して、もう一度押してください。');
  }
  async function fullscreen() {
    try {
      if (document.fullscreenElement) await document.exitFullscreen();
      else if (document.documentElement.requestFullscreen) await document.documentElement.requestFullscreen();
      else notice('このブラウザは全画面表示に対応していません。ブラウザの表示機能をご利用ください。');
    } catch { notice('全画面に切り替えられませんでした。ブラウザの表示機能をご利用ください。'); }
  }
  try {
    channel = new BroadcastChannel(`rag-seminar-${session}`);
    channel.onmessage = ({ data }) => {
      if (!data || typeof data !== 'object') return;
      if (presenter && data.type === 'state') {
        const incoming = data.state;
        if (!incoming || !Number.isInteger(incoming.index) || incoming.index < 0 || incoming.index >= slides.length || ![30, 40].includes(incoming.minutes) || !Number.isFinite(incoming.elapsed) || incoming.elapsed < 0 || !(incoming.started === null || Number.isFinite(incoming.started))) return;
        const changed = state.index !== incoming.index || state.minutes !== incoming.minutes;
        state = incoming; lastSync = Date.now();
        if (changed) go(state.index, false); else renderClock();
      } else if (!presenter) {
        if (data.type === 'request') publish();
        else if (data.type === 'command' && ['previous', 'next', 'first', 'last', 'timer', 'reset'].includes(data.action)) apply(data.action);
        else if (data.type === 'jump') go(data.index);
        else if (data.type === 'duration' && [30, 40].includes(data.minutes)) { state.minutes = data.minutes; publish(); }
      }
    };
  } catch { channel = null; }
  document.documentElement.classList.add('js');
  document.documentElement.classList.toggle('presenter', presenter);
  get('speaker').hidden = !presenter;
  const initialIndex = indexFromHash();
  go(initialIndex < 0 ? 0 : initialIndex, false);
  if (presenter) channel?.postMessage({ type: 'request' });
  get('previous').addEventListener('click', () => command('previous'));
  get('next').addEventListener('click', () => command('next'));
  get('presenter-open').addEventListener('click', openPresenter);
  get('fullscreen').addEventListener('click', fullscreen);
  document.addEventListener('fullscreenchange', () => { get('fullscreen').textContent = document.fullscreenElement ? '全画面を終了' : '全画面'; });
  get('overview-open').addEventListener('click', () => overview.showModal());
  get('help-open').addEventListener('click', () => help.showModal());
  document.querySelectorAll<HTMLElement>('[data-close]').forEach((button) => button.addEventListener('click', () => get<HTMLDialogElement>(button.getAttribute('data-close')!).close()));
  document.querySelectorAll<HTMLElement>('[data-jump]').forEach((link) => link.addEventListener('click', (event) => {
    event.preventDefault(); overview.close(); jump(slides.findIndex((slide) => slide.id === link.getAttribute('data-jump')));
  }));
  get('timer-toggle').addEventListener('click', () => command('timer'));
  get('timer-reset').addEventListener('click', () => command('reset'));
  get<HTMLSelectElement>('duration').addEventListener('change', (event) => {
    const minutes = Number((event.target as HTMLSelectElement).value) === 30 ? 30 : 40;
    if (presenter && channel) channel.postMessage({ type: 'duration', minutes }); else { state.minutes = minutes; renderClock(); }
  });
  window.addEventListener('hashchange', hashChanged);
  window.addEventListener('popstate', hashChanged);
  document.addEventListener('keydown', (event) => {
    if (event.defaultPrevented || event.ctrlKey || event.metaKey || event.altKey || overview.open || help.open || (event.target as HTMLElement).closest('input, textarea, select, [contenteditable]')) return;
    const key = event.key.toLowerCase();
    if ((key === ' ' || key === 'enter') && (event.target as HTMLElement).closest('button, a')) return;
    if (['arrowright', 'arrowdown', 'pagedown', ' '].includes(key) && !event.shiftKey) { event.preventDefault(); command('next'); }
    else if (['arrowleft', 'arrowup', 'pageup'].includes(key) || (key === ' ' && event.shiftKey)) { event.preventDefault(); command('previous'); }
    else if (key === 'home') { event.preventDefault(); command('first'); }
    else if (key === 'end') { event.preventDefault(); command('last'); }
    else if (key === 'f') { event.preventDefault(); void fullscreen(); }
    else if (key === 'p') { event.preventDefault(); openPresenter(); }
    else if (key === 'o') { event.preventDefault(); overview.showModal(); }
  });
  // The audience owns the clock; all speaker windows receive the same state.
  const interval = setInterval(() => { if (!presenter) publish(); renderClock(); }, 1000);
  window.addEventListener('pagehide', (event) => { if (!event.persisted) { clearInterval(interval); channel?.close(); } });
}
