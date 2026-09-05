"""Render manuscript diagrams as deterministic SVGs with print-sized labels.

The diagrams are code-native illustrations, not edits of the existing artwork.
Coordinates and text are checked before a figure is emitted.
"""
from __future__ import annotations

import json
from html import escape
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "assets/images/v5"


def text(x: int, y: int, value: str, size: int = 34, anchor: str = "start", bold: bool = False) -> str:
    return (f'<text x="{x}" y="{y}" font-size="{size}" text-anchor="{anchor}" '
            f'font-weight="{700 if bold else 400}">{escape(value)}</text>')


def arrow(points: str) -> str:
    return f'<path d="{points}" fill="none" stroke="#333" stroke-width="5" marker-end="url(#arrow)"/>'


def card(x: int, y: int, title: str, lines: list[str], width: int = 620, height: int = 290) -> str:
    pieces = [f'<rect x="{x}" y="{y}" width="{width}" height="{height}" rx="16" fill="#fafafa" stroke="#444" stroke-width="3"/>',
              text(x + 28, y + 52, title, 36, bold=True)]
    for i, line in enumerate(lines):
        units = sum(0.56 if c.isascii() else 1 for c in line)
        if units * 34 > width - 56:
            raise ValueError(f"Diagram label too wide: {line}")
        if 105 + i * 43 > height - 15:
            raise ValueError(f"Too many diagram lines: {title}")
        pieces.append(text(x + 28, y + 105 + i * 43, line))
    return "".join(pieces)


def render(name: str, spec: dict) -> str:
    body = [text(55, 65, spec["title"], 38, bold=True)]
    kind = spec.get("kind", "flow")
    if kind == "layers":
        body += [text(55,150,"Batch Layer：資料を準備する",36, bold=True),
                 text(55,570,"Real-time Layer：質問へ応答する",36,bold=True)]
        for x,title,lines in [(55,"資料",["原文・版・権限"]),(515,"検索前処理",["解析 → 分割", "埋め込みを作成"]),(975,"検索索引",["語とベクトル", "出典と権限を保持"])]:
            body.append(card(x,200,title,lines,370,230))
        for x,title,lines in [(55,"質問の準備",["省略を補う", "検索条件を作る"]),(515,"検索・選別",["索引から候補取得", "並べ替えて整形"]),(975,"生成",["根拠から回答", "引用・回答保留"])]:
            body.append(card(x,630,title,lines,370,230))
        for y in [315,745]:
            body.extend([arrow(f"M430 {y} L505 {y}"),arrow(f"M890 {y} L965 {y}")])
        body.append(arrow("M1160 435 L1160 485 L700 485 L700 618"))
        body.append(text(760,530,"準備済みの索引を参照",32))
        body.extend([text(55,930,"質問の準備も検索前処理。権限管理・評価・版管理は両方の層を通す。",32)])
        height=975
    elif kind == "tree":
        for x1, y1, x2, y2 in [(700,250,365,375),(700,250,1035,375),
                                 (365,505,200,650),(365,505,530,650),
                                 (1035,505,870,650),(1035,505,1200,650)]:
            body.append(arrow(f"M{x1} {y1} L{x2} {y2}"))
        body.append(card(420,120,"全体の要約",["文書群の主な話題"],560,130))
        body.append(card(95,375,"グループAの要約",["A・Bの共通する話題"],540,130))
        body.append(card(765,375,"グループBの要約",["C・Dの共通する話題"],540,130))
        for x, label in zip([70,400,740,1070],["原文A","原文B","原文C","原文D"]):
            body.append(card(x,650,label,["出典を保持"],260,140))
        body += [text(55,850,"構築：原文 → 集合 → 要約を繰り返す",34),
                 text(55,900,"検索：原文と要約を同じ候補集合で探せる",34),
                 text(55,950,"RAPTORのソフトクラスタリングでは複数の集合へ所属できる",32)]
        height = 990
    elif kind == "hnsw":
        body += [text(55,140,"上の層：少数の点から近い領域へ進む",36),
                 text(55,445,"下の層：近くの点を詳しく調べる",36)]
        for a,b in [(180,580),(580,1080)]:body.append(arrow(f"M{a+55} 250 L{b-55} 250"))
        body.append(arrow("M1080 307 L1080 500"))
        for x1,y1,x2,y2 in [(150,590,430,560),(430,560,740,625),(740,625,1080,555),
                            (1080,555,1220,745),(740,625,840,790),(430,560,420,800)]:
            body.append(f'<path d="M{x1} {y1} L{x2} {y2}" stroke="#aaa" stroke-width="4"/>')
        body.append(arrow("M1040 565 L790 614"))
        body.append(arrow("M764 665 L814 748"))
        for x,y,label in [(180,250,"A"),(580,250,"D"),(1080,250,"F"),
                          (150,590,"A"),(430,560,"B"),(740,625,"C"),(1080,555,"F"),
                          (1220,745,"G"),(840,790,"H"),(420,800,"D")]:
            body.append(f'<circle cx="{x}" cy="{y}" r="48" fill="white" stroke="#333" stroke-width="4"/>')
            body.append(text(x,y+13,label,38,"middle",True))
        body += [text(920,850,"質問に近い候補H",34),text(55,930,"点＝文書ベクトル、線＝近傍関係、太い矢印＝探索経路の例",32),
                 text(55,980,"下の層では候補集合を保って探索する。探索幅で速度と回収率を調整。",32)]
        height=1020
    elif kind == "rrf":
        rows = [["候補","疎検索の順位","密検索の順位","RRFスコア"],
                ["A","1","3","0.03227"],["B","2","1","0.03252"],["C","3","2","0.03200"]]
        for i,row in enumerate(rows):
            y=130+i*105
            body.append(f'<rect x="55" y="{y}" width="1290" height="105" fill="{"#e8e8e8" if i==0 else "white"}" stroke="#888" stroke-width="2"/>')
            for j,cell in enumerate(row):body.append(text(215+j*323,y+66,cell,34,"middle",i==0))
        body += [text(55,630,"各順位rから 1 / (60 + r) を計算し、候補ごとに合計",36),
                 text(55,705,"B：1/62 + 1/61 = 0.03252 → 統合後は1位",36),
                 arrow("M700 750 L700 805"),
                 text(700,870,"統合順位：B → A → C",42,"middle",True),
                 text(55,940,"説明用の数値。定数60は比較実験で調整する設定値。",32)]
        height=990
    else:
        nodes=spec['nodes']
        if len(nodes)!=4:raise ValueError(name)
        positions=[(55,120),(725,120),(55,510),(725,510)]
        body += [arrow("M678 265 L716 265"),arrow("M678 655 L716 655")]
        if kind != "dual":
            body.append(arrow("M1035 416 L1035 460 L365 460 L365 502"))
        for i,((x,y),node) in enumerate(zip(positions,nodes)):
            body.append(card(x,y,f"{i+1}  {node[0]}",node[1:]))
        notes=[]
        for line in spec.get('notes',[]):
            current='';units=0
            for char in line:
                unit=0.56 if char.isascii() else 1
                if units+unit>39:
                    notes.append(current);current='';units=0
                current+=char;units+=unit
            if current:notes.append(current)
        for i,line in enumerate(notes):
            body.append(text(55,870+i*48,line,32))
        height=910+max(0,len(notes)-1)*48
    return (f'<svg xmlns="http://www.w3.org/2000/svg" width="1400" height="{height}" viewBox="0 0 1400 {height}">'
            '<defs><marker id="arrow" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto" markerUnits="userSpaceOnUse"><path d="M0,0 L10,5 L0,10 Z" fill="#333"/></marker></defs>'
            '<rect width="100%" height="100%" fill="white"/>'
            '<g font-family="Noto Sans CJK JP, sans-serif" fill="#111">'+''.join(body)+'</g></svg>\n')


def main() -> None:
    OUT.mkdir(exist_ok=True,parents=True)
    specs=json.loads((ROOT/'print/diagrams.json').read_text())
    for name,spec in specs.items():
        (OUT/(name+'.svg')).write_text(render(name,spec))
    print(f'Rendered {len(specs)} code-native diagrams')


if __name__=='__main__':main()
