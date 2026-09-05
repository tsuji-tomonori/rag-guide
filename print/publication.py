"""Cross references, a complete subject index, and readable print tables."""

from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LINK = re.compile(r"(?<!!)\[([^\]\n]+)\]\((https?://[^\s)]+)\)")
BOLD = re.compile(r"\*\*([^*\n]+)\*\*")
CAPTION = re.compile(r"(?:[図表]\d|アルゴリズム図A\d)")


def tex(value: str) -> str:
    escapes = {"\\": r"\textbackslash{}", "{": r"\{", "}": r"\}",
               "$": r"\$", "&": r"\&", "%": r"\%", "#": r"\#",
               "_": r"\_", "^": r"\textasciicircum{}", "~": r"\textasciitilde{}"}
    return "".join(escapes.get(char, char) for char in value)


class Publication:
    def __init__(self, sources: list[tuple[Path, bool]]) -> None:
        self.catalogue = json.loads((ROOT / "print/references.json").read_text())
        self.glossary = json.loads((ROOT / "print/terms.json").read_text())
        self.readings = json.loads((ROOT / "print/index-readings.json").read_text())
        self.entry_targets = json.loads((ROOT / "print/index-entries.json").read_text())
        self.current_source = None
        self.references: dict[str, str] = {}
        self.terms: set[str] = set(self.glossary)
        self.terms.update(self.entry_targets)
        self.indexed: set[str] = set()
        self.bold_terms: set[str] = set()
        self.table_count = 0
        self.index_occurrences: dict[str, int] = {}
        bibliography = ROOT / "docs/参考文献.md"
        for path, _ in sources + ([(bibliography, False)] if bibliography.exists() else []):
            source = path.read_text()
            for match in LINK.finditer(source):
                label, url = match.groups()
                if url not in self.catalogue:
                    raise ValueError(f"Missing bibliography record: {url} ({path})")
                if url not in self.references:
                    self.references[url] = f"R{len(self.references) + 1:03}"
                # Named techniques and papers should also be findable without bold type.
                label = label.replace("`", "")
                if re.fullmatch(r"[A-Za-z][A-Za-z0-9+:/ ._()\-]{0,39}", label):
                    self.terms.add(label)
            for term in BOLD.findall(source):
                if not CAPTION.match(term):
                    self.bold_terms.add(term)
                    self.terms.add(term)
        words = sorted(self.terms, key=lambda word: (-len(word), word))
        self.term_re = re.compile("|".join(re.escape(word) for word in words))

    def index(self, term: str) -> str:
        self.indexed.add(term)
        # makeindex uses !, @, |, and double quotes as syntax, even in UTF-8.
        def quote(value: str) -> str:
            return re.sub(r'([!@|\"])', r'"\1', value)
        display = tex(term)
        definition = self.entry_targets.get(term, {}).get("definition") or self.glossary.get(term, "")
        if definition:
            display += r"\newline {\small " + tex(definition.rstrip("。")) + "}"
        sort = term.casefold()
        for prefix in sorted(self.readings, key=len, reverse=True):
            if term.startswith(prefix):
                sort = self.readings[prefix] + term[len(prefix):].casefold()
                break
        sort = "".join(chr(ord(c) - 0x60) if "ァ" <= c <= "ヶ" else c for c in sort)
        key = quote(sort) + "@" + quote(display) + "|hyperpage"
        return r"\index{" + key + "}"

    def indexes(self, line: str, heading: bool = False) -> str:
        visible = LINK.sub(lambda match: match[1], line)
        visible = re.sub(r"!\[[^\]]*\]\([^)]*\)", "", visible)
        emphasized = set(BOLD.findall(visible)) & self.terms
        # An expanded name also defines its abbreviation (e.g. 相互順位統合...RRF).
        for phrase in BOLD.findall(visible) + ([visible] if heading else []):
            for alias in self.glossary:
                if re.search(r"(?<![A-Za-z0-9_])" + re.escape(alias) + r"(?![A-Za-z0-9_])", phrase):
                    emphasized.add(alias)
        found = set(emphasized)
        for match in self.term_re.finditer(visible):
            term = match.group()
            before = visible[match.start() - 1:match.start()] if match.start() else ""
            after = visible[match.end():match.end() + 1]
            if term[0].isascii() and re.match(r"[A-Za-z0-9_]", before):
                continue
            if term[-1].isascii() and re.match(r"[A-Za-z0-9_]", after):
                continue
            found.add(term)
        output = []
        for term in sorted(found):
            count = self.index_occurrences.get(term, 0)
            # Point to definitions and main explanations, rather than hundreds of passing mentions.
            if term in emphasized or count < (10 if heading else 3):
                output.append(self.index(term))
                self.index_occurrences[term] = count + 1
        return "".join(output)

    def section_indexes(self, source: Path) -> str:
        """Retain the definition destinations from main's manually curated index."""
        try:
            relative = source.relative_to(Path(__file__).resolve().parents[1] / "docs").as_posix()
        except ValueError:
            return ""
        return "".join(self.index(term) for term, entry in self.entry_targets.items()
                       if entry["target"] == relative)

    def prose(self, line: str) -> str:
        if re.match(r"\*\*表\d", line):
            return r"\Needspace{5\baselineskip}" + "\n\n" + line
        if not line.strip() or line.startswith(("#", "![")) or CAPTION.match(line.removeprefix("**")):
            return line
        indexes = self.indexes(line)
        line = LINK.sub(lambda match: match[0] + r"\ragcite{" + self.references[match[2]] + "}", line)
        return line + indexes

    def inline(self, value: str) -> str:
        """Small Markdown inline renderer for wrapping table cells."""
        token = re.compile(r"`([^`]+)`|\*\*([^*]+)\*\*|\[([^\]]+)\]\(([^)]+)\)")
        output, end = [], 0
        for match in token.finditer(value):
            output.append(tex(value[end:match.start()]))
            if match[1] is not None:
                # Text font plus discretionary breaks keeps long API names readable.
                code = re.sub(r"(?<=[a-z])(?=[A-Z])", r"\\allowbreak{}", tex(match[1]))
                output.append(r"{\sffamily " + code + "}")
            elif match[2] is not None:
                output.append(r"\textbf{" + tex(match[2]) + "}")
            else:
                if match[4].endswith(".md") and self.current_source is not None:
                    from build import render_local_reference
                    output.append(render_local_reference(self.current_source, tex(match[3]), match[4]))
                else:
                    output.append(tex(match[3]))
                if match[4] in self.references:
                    output.append(r"\ragcite{" + self.references[match[4]] + "}")
            end = match.end()
        output.append(tex(value[end:]))
        output.append(self.indexes(value))
        return "".join(output)

    def table(self, lines: list[str]) -> str:
        rows = [[cell.strip() for cell in line.strip().strip("|").split("|")] for line in lines]
        rows = [row for row in rows if not all(re.fullmatch(r":?-+:?", cell) for cell in row)]
        n = len(rows[0])
        if n > 3:
            raise ValueError("Reorganize tables with more than three columns in the manuscript")
        if any(len(row) != n for row in rows):
            raise ValueError("Unequal table row widths")
        weights = [max(sum(0.55 if char.isascii() else 1 for char in row[i]) for row in rows) ** 0.6 for i in range(n)]
        total = sum(weights)
        fractions = [0.18 + (1 - 0.18 * n) * weight / total for weight in weights]
        spec = "@{}" + "".join(
            r">{\raggedright\arraybackslash}p{\dimexpr" + f"{fraction:.5f}" + r"\linewidth-"
            + f"{2 * (n - 1) / n:.5f}" + r"\tabcolsep\relax}" for fraction in fractions
        ) + "@{}"
        header = " & ".join(r"\textbf{" + self.inline(cell) + "}" for cell in rows[0]) + r" \\"
        output = [r"\begingroup", r"\fontsize{10.5}{15.5}\selectfont", r"\begin{longtable}{" + spec + "}",
                  r"\toprule", header, r"\midrule\endfirsthead", r"\toprule", header, r"\midrule\endhead",
                  r"\bottomrule\endfoot"]
        for row in rows[1:]:
            output.append(" & ".join(self.inline(cell) for cell in row) + r" \\ \addlinespace[3pt]")
        output.extend([r"\end{longtable}", r"\endgroup"])
        self.table_count += 1
        table_dir = ROOT / "print/build/tables"
        table_dir.mkdir(parents=True, exist_ok=True)
        table_path = table_dir / f"table-{self.table_count:03}.tex"
        table_path.write_text("\n".join(output) + "\n")
        return r"\input{" + table_path.relative_to(ROOT).as_posix() + "}"

    def write(self, build_dir: Path) -> None:
        output = [r"\chapter*{参考文献}", r"\label{bibliography}", r"\markboth{参考文献}{参考文献}", r"\addcontentsline{toc}{chapter}{参考文献}",
                  "本文で参照した論文と公式資料を、文献番号順に示します。",
                  r"\par\medskip"]
        for url, number in self.references.items():
            entry = self.catalogue[url]
            authors = entry.get("authors", [])
            author = ", ".join(authors[:3]) + (" ほか" if len(authors) > 3 else "")
            date = entry.get("year", "")
            venue = entry.get("venue", "")
            detail = "。".join(str(part) for part in [author, date, entry["title"], venue] if part)
            output.extend([r"\par\addvspace{0.65\baselineskip}\noindent\begin{minipage}{\linewidth}",
                           r"\phantomsection\label{ref:" + number + "}",
                           r"\textbf{[" + number + "]} " + tex(detail) + "。",
                           r"\par\nopagebreak[3]\noindent{\small\url{" + url + "}"])
            if entry.get("kind") == "web":
                output.append(r"\quad 確認日：" + tex(entry["checked"]))
            if entry.get("note"):
                output.append(r"\quad " + tex(entry["note"]))
            output.append(r"}\end{minipage}")
        (build_dir / "references.tex").write_text("\n".join(output) + "\n")
        missing = self.bold_terms - self.indexed
        # Some terms occur in headings only; record those next to the heading during normalization.
        if missing:
            raise ValueError("Bold terms missing from index: " + ", ".join(sorted(missing)))
        (build_dir / "publication-audit.json").write_text(json.dumps({
            "reference_count": len(self.references), "index_term_count": len(self.indexed),
            "bold_term_count": len(self.bold_terms), "missing_bold_terms": sorted(missing),
            "references": self.references, "index_terms": sorted(self.indexed),
        }, ensure_ascii=False, indent=2) + "\n")
