/** Avoid fetching every full-size figure when opening a long chapter. */
export default function guideImages() {
  return function walk(node) {
    if (node.type === 'element' && node.tagName === 'img' && String(node.properties?.src).startsWith('/rag-guide/guide-assets/')) {
      node.properties.loading = 'lazy';
      node.properties.decoding = 'async';
    }
    for (const child of node.children ?? []) walk(child);
  };
}
