import TurndownService from 'turndown';
import { gfm } from 'turndown-plugin-gfm';

/** Copy the rendered MDX content, including component-generated tables and commands. */
export async function pageMarkdown(body: HTMLElement | null, title: string): Promise<string> {
  if (!body) throw new Error('Page content is missing');
  const content = body.cloneNode(true) as HTMLElement;
  // Keep code text before discarding syntax-highlighting and copy-button wrappers.
  content.querySelectorAll('.expressive-code').forEach((frame) => {
    const original = frame.querySelector('pre');
    if (!original) return;
    const pre = document.createElement('pre');
    const code = document.createElement('code');
    const lines = original.querySelectorAll('.ec-line .code');
    code.textContent = lines.length
      ? Array.from(lines, (line) => line.textContent ?? '').join('\n')
      : original.querySelector('code')?.textContent ?? original.textContent;
    const language = original.getAttribute('data-language');
    if (language) code.className = `language-${language}`;
    pre.appendChild(code);
    frame.parentNode?.replaceChild(pre, frame);
  });
  content.querySelectorAll('button, script, style, input, dialog, [hidden], [data-pagefind-ignore], .sl-anchor-link, .checkpoint-sync').forEach((node) => node.parentNode?.removeChild(node));
  content.querySelectorAll<HTMLAnchorElement>('a[href]').forEach((link) => { link.href = new URL(link.getAttribute('href')!, location.href).href; });
  content.querySelectorAll<HTMLImageElement>('img[src]').forEach((img) => { img.src = new URL(img.getAttribute('src')!, location.href).href; });
  const converter = new TurndownService({ headingStyle: 'atx', codeBlockStyle: 'fenced', bulletListMarker: '-' });
  converter.use(gfm);
  return `# ${title}\n\n${converter.turndown(content)}\n`;
}
