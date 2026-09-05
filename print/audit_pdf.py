"""Inspect PDF text bounds and locate pages for visual review (Poppler required)."""
import collections
import json
import subprocess
import sys
import tempfile
import xml.etree.ElementTree as ET
from pathlib import Path

pdf = Path(sys.argv[1] if len(sys.argv) > 1 else 'dist/rag-engineering-guide.pdf').resolve()
with tempfile.TemporaryDirectory() as directory:
    output = Path(directory) / 'pages.xml'
    subprocess.run(['pdftohtml', '-xml', '-hidden', '-i', '-zoom', '1', str(pdf), str(output)],
                   check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    tree = ET.parse(output)
fonts = {}
outside = []
samples = collections.defaultdict(list)
sizes = collections.Counter()
links = 0
outline = collections.Counter(''.join(item.itertext()).strip() for item in tree.getroot().findall('.//outline/item'))
for page in tree.getroot().findall('page'):
    number = int(page.get('number'))
    for font in page.findall('fontspec'):
        fonts[font.get('id')] = int(font.get('size'))
    page_text = ''.join(''.join(item.itertext()) for item in page.findall('text')).replace(' ', '')
    for label in ['表1-1', '図2-1', '図2-6', '図3-6', '図4-8', '表10-2', '表10-8',
                  '図9-13', '図9-14', '参考文献', '索引', '奥付']:
        if label in page_text:
            samples[label].append(number)
    for item in page.findall('text'):
        text = ''.join(item.itertext())
        left, top, width = (int(item.get(key)) for key in ['left', 'top', 'width'])
        if text.strip() and (left < 55 or left + width > 540) and 65 < top < 765:
            outside.append({'page': number, 'left': left, 'right': left + width, 'text': text})
        sizes[fonts[item.get('font')]] += len(text)
        links += len(item.findall('.//a'))
print(json.dumps({'pages': len(tree.getroot().findall('page')), 'text_outside_body_width': outside,
                  'font_size_characters': dict(sorted(sizes.items())), 'link_segments': links,
                  'backmatter_outline_entries': {label: outline[label] for label in ['参考文献', '索引', '奥付']},
                  'sample_pages': samples}, ensure_ascii=False, indent=2))
if outside or any(outline[label] != 1 for label in ['参考文献', '索引', '奥付']):
    raise SystemExit('PDF layout or backmatter outline audit failed')
