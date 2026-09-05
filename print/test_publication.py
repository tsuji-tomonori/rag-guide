"""Regression checks for the manuscript-to-PDF publishing pipeline."""
import json
import math
import re
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

import publication as module
from publication import Publication
from build import ordered_sources, normalize_markdown, referenced_images, PRINT_IMAGE_RE, PRINT_CAPTION_RE
from figures import render


class PublicationTests(unittest.TestCase):
    def setUp(self):
        self.sources = ordered_sources()
        self.publication = Publication(self.sources)

    def test_all_citations_have_metadata(self):
        for url in self.publication.references:
            entry = self.publication.catalogue[url]
            self.assertTrue(entry['title'], url)
            self.assertTrue(entry['authors'], url)
            self.assertTrue(entry['checked'], url)
            if entry['kind'] == 'paper':
                self.assertTrue(entry['year'], url)

    def test_all_bold_terms_and_named_algorithms_are_indexed(self):
        with tempfile.TemporaryDirectory() as directory, patch.object(module, 'ROOT', Path(directory)):
            for path, intro in self.sources:
                normalize_markdown(path, intro, self.publication)
        self.assertFalse(self.publication.bold_terms - self.publication.indexed)
        for term in ['HyDE', 'BM25', 'HNSW', 'RRF', 'MMR', 'SPLADE', 'ColBERT', 'RAPTOR', 'READ', 'Doc-REFRAG']:
            self.assertIn(term, self.publication.indexed)

    def test_tables_are_wrapped_without_scaling(self):
        with tempfile.TemporaryDirectory() as directory, patch.object(module, 'ROOT', Path(directory)):
            result = self.publication.table(['| API | 説明 |', '|---|---|', '| `RetrieveAndGenerate` | 検索と生成 |'])
            table = next(Path(directory).rglob('table-*.tex')).read_text()
        self.assertIn(r'\input{', result)
        self.assertIn(r'\fontsize{10.5}{15.5}', table)
        self.assertIn(r'\endhead', table)
        self.assertIn(r'\\', table)
        self.assertNotIn('resizebox', table)
        with self.assertRaises(ValueError):
            self.publication.table(['|a|b|c|d|', '|---|---|---|---|'])

    def test_code_fences_are_preserved(self):
        content = '# 見出し\n\n```text\n**RAG**\n| a | b |\n```\n'
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / '1.1.sample.md'
            path.write_text(content)
            result = normalize_markdown(path, False, self.publication)
        self.assertIn('```text\n**RAG**\n| a | b |\n```', result)

    def test_figure_numbers_and_references(self):
        captions = []
        mentions = set()
        for path, _ in self.sources:
            source = path.read_text()
            captions.extend(re.findall(r'^\*\*(図\d+-\d+)\s', source, re.M))
            mentions.update(re.findall(r'図\d+-\d+', source))
        self.assertEqual(len(captions), len(set(captions)))
        self.assertFalse(mentions - set(captions))
        counts = {}
        for caption in captions:
            chapter, number = caption.split('-')
            counts[chapter] = counts.get(chapter, 0) + 1
            self.assertEqual(int(number), counts[chapter])
        referenced_images(self.sources)

    def test_diagram_geometry_and_arithmetic(self):
        diagrams = json.loads((module.ROOT / 'print/diagrams.json').read_text())
        manuscript = '\n'.join(path.read_text() for path, _ in self.sources)
        for name, spec in diagrams.items():
            self.assertIn('<svg', render(name, spec))
            self.assertIn('/v5/' + name + '.svg', manuscript)
        idf = math.log(1 + (3 - 2 + .5) / (2 + .5))
        score = lambda f, length: idf * f * 2.2 / (f + 1.2 * (.25 + .75 * length / 12))
        self.assertAlmostEqual(score(2, 8), .713, places=3)
        self.assertAlmostEqual(score(1, 16), .414, places=3)
        self.assertGreater(1/62 + 1/61, 1/61 + 1/63)
        self.assertGreater(.5*.70 - .5*.20, .5*.85 - .5*.95)

    def test_index_points_to_explanations(self):
        p = self.publication
        occurrences = [p.indexes('HyDE') for _ in range(20)]
        self.assertEqual(sum(bool(x) for x in occurrences), 3)
        self.assertIn('HyDE', p.indexes('**HyDE**'))
        self.assertIn('rrf@RRF', p.indexes('**相互順位統合（Reciprocal Rank Fusion：RRF）**'))
        self.assertIn('けんさく@検索', p.index('検索'))

    def test_captions_survive_normalization(self):
        with tempfile.TemporaryDirectory() as directory, patch.object(module, 'ROOT', Path(directory)):
            for path, intro in self.sources:
                result = normalize_markdown(path, intro, self.publication)
                self.assertEqual(len(PRINT_IMAGE_RE.findall(result)), len(PRINT_CAPTION_RE.findall(result)), path)

    def test_curated_index_destinations_are_preserved(self):
        for term, entry in self.publication.entry_targets.items():
            target = module.ROOT / 'docs' / entry['target']
            self.assertTrue(target.is_file(), term)
            self.assertIn(self.publication.index(term), self.publication.section_indexes(target))

    def test_table_local_links_retain_page_references(self):
        source = next(path for path, _ in self.sources if path.name.startswith('2.1.'))
        self.publication.current_source = source
        result = self.publication.inline('[検索](2.3.検索の概要.md)')
        self.assertIn(r'\hyperref[sec:2.3]', result)
        self.assertIn(r'\pageref{sec:2.3}', result)


if __name__ == '__main__':
    unittest.main()
