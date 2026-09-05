#!/usr/bin/env python3
"""Build explicit editable AWS diagrams. No icon guessing or auto layout."""
from pathlib import Path
import base64
import json
import subprocess
from PIL import ImageFont
FONT_PATH = subprocess.check_output(["fc-match", "-f", "%{file}", "Noto Sans CJK JP"], text=True)
import xml.etree.ElementTree as E

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / 'assets/diagrams/aws'
FONT = 'Noto Sans CJK JP'
INK, BLUE, MUTED = '#2B3A4A', '#5E7E96', '#526271'
ICONS = {'s3':'SimpleStorageService','vectors':'SimpleStorageServiceS3Vectors',
         'kb':'Bedrock','model':'Bedrock','agent':'BedrockAgentCore',
         'search':'OpenSearchService','iam':'IdentityandAccessManagement',
         'kms':'KeyManagementService','watch':'CloudWatch','trail':'CloudTrail','lambda':'Lambda'}
MANIFEST = []

class Diagram:
    def __init__(self, name, title, subtitle, height=850, legend='実線矢印：データの流れ。処理の担当をノード下に記載。'):
        self.name, self.title, self.height = name, title, height
        self.root = E.Element('mxfile', host='app.diagrams.net')
        page = E.SubElement(self.root,'diagram',id=name,name=title)
        model = E.SubElement(page,'mxGraphModel',grid='1',gridSize='10',page='1',pageScale='1',pageWidth='1200',pageHeight=str(height),background='#FFFFFF')
        self.r = E.SubElement(model,'root')
        E.SubElement(self.r,'mxCell',id='0');E.SubElement(self.r,'mxCell',id='1',parent='0')
        self.xy = {'1':(0,0)}
        self.text('title',title,40,24,1120,48,32,True)
        self.text('subtitle',subtitle,40,78,1120,40,22)
        self.text('legend',legend,40,height-52,1120,32,20)

    def cell(self, id, x,y,w,h,style,value='',parent='1'):
        assert id not in self.xy, id
        px,py=self.xy[parent]
        c=E.SubElement(self.r,'mxCell',id=id,value=value,style=style,parent=parent,vertex='1')
        E.SubElement(c,'mxGeometry',x=str(x-px),y=str(y-py),width=str(w),height=str(h),attrib={'as':'geometry'})
        self.xy[id]=(x,y)
        return id

    def text(self,id,value,x,y,w,h=34,size=22,bold=False,parent='1',align='left'):
        font = ImageFont.truetype(FONT_PATH, size)
        lines=[]
        for line in value.split('\n'):
            part=''; used=0
            for ch in line:
                cw=font.getlength(ch)
                if used+cw>w and part: lines.append(part); part=''; used=0
                part+=ch; used+=cw
            lines.append(part)
        value='\n'.join(lines)
        return self.cell(id,x,y,w,h,f'text;html=0;whiteSpace=wrap;align={align};verticalAlign=middle;fontFamily={FONT};fontSize={size};fontColor={INK};fontStyle={int(bold)};strokeColor=none;fillColor=none;spacing=0;',value,parent)

    def group(self,id,title,x,y,w,h,parent='1'):
        self.cell(id,x,y,w,h,'container=1;collapsible=0;rounded=0;html=0;fillColor=none;strokeColor=#ADB9C2;strokeWidth=1.5;',parent=parent)
        self.text(id+'-label',title,x+20,y+12,w-40,34,23,True,id)
        return id

    def node(self,id,kind,name,role,x,y,parent='1',w=240):
        self.cell(id,x-w/2,y,w,190,'container=1;collapsible=0;fillColor=none;strokeColor=none;',parent=parent)
        if kind:
            icon=OUT/'icons'/f'{ICONS[kind]}.png'
            data=base64.b64encode(icon.read_bytes()).decode()
            anchor=self.cell(id+'-icon',x-39,y,78,78,'shape=image;imageAspect=1;aspect=fixed;image=data:image/png,'+data+';',parent=id)
        else:
            anchor=self.cell(id+'-icon',x-min(w-20,260)/2,y,min(w-20,260),78,f'rounded=0;fillColor=#F0F4F6;strokeColor=#91A3B1;strokeWidth=1.5;fontFamily={FONT};fontSize=22;fontColor={INK};whiteSpace=wrap;html=0;',name,id)
        if kind:self.text(id+'-name',name,x-w/2,y+89,w,64,23,True,id,'center')
        self.text(id+'-role',role,x-w/2,y+(157 if kind else 105),w,55,20,False,id,'center')
        return anchor

    def edge(self,id,a,b,label='',points=(),exit=(1,.5),entry=(0,.5),dashed=False):
        style=f'edgeStyle=orthogonalEdgeStyle;rounded=0;html=0;strokeColor={BLUE};strokeWidth=2;endArrow=block;endFill=1;endSize=9;exitX={exit[0]};exitY={exit[1]};entryX={entry[0]};entryY={entry[1]};exitPerimeter=0;entryPerimeter=0;fontFamily={FONT};fontSize=20;fontColor={INK};labelBackgroundColor=#FFFFFF;dashed={int(dashed)};'
        c=E.SubElement(self.r,'mxCell',id=id,value=label,edge='1',source=a,target=b,parent='1',style=style)
        g=E.SubElement(c,'mxGeometry',relative='1',attrib={'as':'geometry'})
        if label:E.SubElement(g,'mxPoint',x='0',y='-20',attrib={'as':'offset'})
        if points:
            arr=E.SubElement(g,'Array',attrib={'as':'points'})
            for x,y in points:E.SubElement(arr,'mxPoint',x=str(x),y=str(y))

    def row(self,id,title,y,nodes,labels=None,h=280):
        self.group(id,title,40,y,1120,h)
        xs={1:[600],2:[330,870],3:[230,600,970],4:[180,460,740,1020]}[len(nodes)]
        anchors=[self.node(id+'-'+str(i),*n,x,y+65,id,w=310 if len(nodes)<4 else 250) for i,(x,n) in enumerate(zip(xs,nodes))]
        if labels is not None:
            for i,label in enumerate(labels):self.edge(id+'-edge'+str(i),anchors[i],anchors[i+1],label)
        return anchors

    def note(self,value,y):self.text('note'+str(y),value,60,y,1080,54,21)

    def save(self):
        E.indent(self.root)
        E.ElementTree(self.root).write(OUT/(self.name+'.drawio'),encoding='utf-8',xml_declaration=True)
        MANIFEST.append({'name':self.name,'title':self.title,'width':1200,'height':self.height})

S3=('s3','Amazon S3','原文・版・メタデータ')
KB=('kb','Amazon Bedrock\nKnowledge Bases','取り込み・検索を仲介')
VEC=('vectors','Amazon S3 Vectors','ベクトル索引・意味検索')
MODEL=('model','Amazon Bedrock','生成モデル / Converse')
APP=(None,'アプリケーション','質問・根拠・回答を制御')
OS=('search','Amazon OpenSearch\nServerless','語彙・ベクトル検索')

# Physical topology: API callers, not a fictitious S3 -> LLM data pipeline.
d=Diagram('aws-rag-physical-architecture','ハンズオン：リソースとAPI呼び出し','KB・埋め込みモデル・索引・生成モデルを分ける',1400,'実線：API呼び出し。破線：ロールの利用。APIの戻り値は省略。')
d.group('aws','AWS Cloud',290,130,870,1190)
d.group('region','AWS リージョン：ap-northeast-1',310,190,830,850,'aws')
cli=d.node('cli',None,'受講者 / AWS CLI','Retrieveの結果から\n根拠を手元で整形',155,430)
s3=d.node('source',*S3,530,265,'region')
emb=d.node('embedding','model','Amazon Bedrock','Titan Text Embeddings V2\n埋め込みモデル',930,265,'region',w=310)
kb=d.node('knowledge','kb','Amazon Bedrock\nKnowledge Bases','解析・分割・索引への接続',530,550,'region')
vec=d.node('index',*VEC,930,550,'region')
model=d.node('generation','model','Amazon Bedrock','Nova Lite / Converse',930,830,'region')
iam=d.node('role','iam','AWS IAM','KBのサービスロール\nグローバルリソース',530,1090,'aws')
d.edge('retrieve',cli,kb,'Retrieve',[(280,469),(280,589)])
d.edge('read-doc',kb,s3,'原文取得',[(350,589),(350,304)],exit=(0,.5),entry=(0,.5))
d.edge('embed',kb,emb,'埋め込み',[(735,589),(735,304)])
d.edge('write-search',kb,vec,'登録・検索')
d.edge('converse',cli,model,'根拠 + 質問 / Converse',[(30,469),(30,800),(790,800),(790,869)],exit=(0,.5))
d.edge('assume',kb,iam,'ロール利用',[(700,589),(700,1129)],exit=(1,.5),entry=(1,.5),dashed=True)
d.save()

d=Diagram('aws-rag-logical-architecture','ハンズオン：取り込みと検索・回答の流れ','同じKnowledge BaseとS3 Vectors indexを、取り込みと検索で利用する',1130)
d.row('batch','Batch Layer / 手順2〜6：質問より前に索引を作る',130,[S3,KB,('model','Amazon Bedrock','Titan V2で埋め込み'),VEC],['原文','チャンク','ベクトル'])
d.row('retrieve','Real-time Layer / 手順7〜8：根拠を整形して生成する',430,[('kb','Amazon Bedrock\nKnowledge Bases','Retrieve / S3 Vectors検索'),(None,'受講者','検索結果を選別\nEvidence Setを作成'),MODEL],['候補・出典','根拠 + 質問'])
d.row('rag','Real-time Layer / 手順9：一体型の経路と比較する',730,[(None,'受講者 / AWS CLI','RetrieveAndGenerate'),('kb','Amazon Bedrock\nKnowledge Bases','S3 Vectors検索\n生成モデル呼び出し'),(None,'回答・引用','同じ質問で手順8と比較')],['質問','生成結果'])
d.note('取り込みを管理するのはKnowledge Bases。手順7〜8の根拠整形は受講者が行う。',1020)
d.save()

d=Diagram('44-aws-four-stages-two-layers','四工程・二層をAWSへ対応づける','AWS Cloud / 論理構成：サービス名と担当する工程を対応させる')
d.row('batch','Batch Layer：検索前処理を先に実行する',130,[S3,KB,('model','Amazon Bedrock','埋め込みモデル'),VEC],['原文','チャンク','索引化'])
d.row('online','Real-time Layer：質問ごとに四工程を実行する',430,[(None,'① 検索前処理','アプリ：検索文・フィルター'),('kb','② 検索','Bedrock Knowledge Bases'),(None,'③ 検索後処理','アプリ：根拠の選別・整形'),('model','④ 生成','Bedrock / 回答・引用')],['検索文','候補','根拠'])
d.note('ベクトルストアは要件で選ぶ。図はS3 Vectorsの例。IAM・KMS・監視は両層に適用。',735);d.save()

d=Diagram('45-aws-resource-selection','AWSリソースを選ぶ四つの問い','判断の順序：管理範囲 → 文書 → 検索 → 生成・根拠の制御',850,'矢印は選定の順序。サービス間のAPI呼び出しは示さない。')
d.row('first','① 管理範囲と ② 文書の性質を決める',130,[('kb','どこまで任せる？','Managed KB /\nCustomer-managed KB'),('model','何を読み取る？','標準解析 / BDA /\n基盤モデル解析')],['次に確認'])
d.row('second','③ 検索要件と ④ 根拠制御の要件を決める',430,[('vectors','何を検索する？','意味：S3 Vectors\n語彙 + 意味：OpenSearch'),('kb','どこまで制御する？','RetrieveAndGenerate /\nRetrieve + Converse')],['次に確認'])
d.note('独自化する理由：複数検索器の統合、厳密なACL、根拠の採否・検証を制御したい。',735);d.save()

d=Diagram('46-aws-kb-management-boundary','Knowledge Baseの管理範囲を選ぶ','AWS Cloud / 保存・検索・モデルの運用を誰が持つか',1160,'線はデータの流れ。枠は管理範囲の比較であり、ネットワーク境界ではない。')
d.row('managed','A / Managed Knowledge Base：内部索引までAWSが管理',130,[S3,('kb','Amazon Bedrock\nManaged Knowledge Base','取り込み・保存・索引\n埋め込み・検索・再順位付け'),APP],['同期','候補・出典'])
d.row('customer','B / Customer-managed Knowledge Base：モデル・ストアを利用者が選ぶ',450,[S3,KB,VEC],['同期','登録・検索'])
d.note('B：埋め込みはAmazon Bedrockのモデルを指定。ストアはOpenSearch等も選択できる。',742)
d.row('direct','C / 個別構成：部品をつなぐ処理は利用者が実装',800,[(None,'独自パイプライン','原文取得・分割・同期'),('model','Amazon Bedrock','埋め込みモデル'),VEC],['チャンク','ベクトル']);d.save()

d=Diagram('47-aws-batch-ingestion-flow','原文から検索可能な索引を作る','AWS Cloud / Customer-managed Knowledge Baseの論理フロー')
d.row('ingest','① 原文の取り込み・解析・分割',130,[S3,('kb','Amazon Bedrock\nKnowledge Bases','データソース / 同期Job'),('kb','解析・チャンク分割','Knowledge Basesが管理\n解析器と方式を設定')],['同期','解析・分割'])
d.row('publish','② 埋め込み・書き込み・公開前の確認',430,[('model','Amazon Bedrock','選択した埋め込みモデル'),VEC,(None,'公開前チェック','同期完了・検索品質\n出典・版を確認')],['KBが登録','検証'])
d.note('上下段は同じ取り込みJobの続き。モデルを呼び出し索引へ登録するのはKnowledge Bases。',735);d.save()

d=Diagram('48-aws-vector-store-choice','検索要件でベクトルストアを選ぶ','AWS Cloud / ストアの比較：一方を選ぶ構成例',650,'比較図のため矢印なし。両ストアを直列に接続する意味ではない。')
d.row('choice','検索対象と評価条件を固定して比較する',130,[('vectors','Amazon S3 Vectors','意味類似を中心に検索\nベクトル + メタデータ'),('search','Amazon OpenSearch\nServerless','語彙一致 + 意味類似\nハイブリッド検索')],None,h=320)
d.note('Customer-managed KB + S3 Vectors：SEMANTIC。',475)
d.note('HYBRIDは対応ストア・テキスト項目の条件を確認する。Recall・応答時間・費用で比較。',530);d.save()

d=Diagram('49-aws-realtime-search-flow','質問を根拠候補へ変換する','AWS Cloud / Customer-managed Knowledge BaseでS3 Vectorsを検索')
d.row('request','① 検索文と閲覧条件を作る',130,[(None,'認証済みの質問','アプリが利用者属性を検証'),('kb','Amazon Bedrock\nKnowledge Bases','Retrieve / 文書フィルター'),('model','Amazon Bedrock','質問を埋め込みへ変換')],['検索文','質問'])
d.row('result','② 索引を検索して候補を返す',430,[VEC,('kb','Amazon Bedrock\nKnowledge Bases','出典・スコアを付けて返す'),(None,'アプリケーション','候補を確認し\n検索後処理へ渡す')],['検索結果','候補・出典'])
d.note('KBが上段の質問ベクトルで下段の索引を検索する。検索スコアは回答の確信度ではない。',735);d.save()

d=Diagram('50-aws-evidence-shaping-flow','検索候補から回答に使う根拠を作る','AWS Cloud / Rerankを使う場合の検索後処理')
d.row('rerank','① 関連性を並べ直す',130,[('kb','Amazon Bedrock\nKnowledge Bases','Retrieveの候補'),('model','Amazon Bedrock','Rerank / 任意'),(None,'業務規則で選別','版・信頼度・重複・矛盾\n利用者実装')],['候補 + 質問','並べ替え後'])
d.row('evidence','② 根拠を構造化して生成へ渡す',430,[(None,'Evidence Set','本文・出典・採否理由\n引用ID・回答可能性'),(None,'コンテキスト構築','順序・圧縮・トークン予算\n利用者実装'),MODEL],['採用根拠','根拠 + 質問'])
d.note('Rerankは候補内を並べ替える。検索で取得できなかった文書や根拠は追加しない。',735);d.save()

d=Diagram('51-aws-generation-control-paths','標準生成と根拠を制御する生成を分ける','AWS Cloud / 質問・回答の経路を比較する')
d.row('standard','標準経路 / Customer-managed Knowledge Base',130,[(None,'アプリケーション','RetrieveAndGenerate'),('kb','Amazon Bedrock\nKnowledge Bases','検索 → 任意Rerank →\n生成モデル呼び出し'),(None,'回答・引用','標準の生成結果を受領')],['質問','生成結果'])
d.row('separate','分離経路 / Managed または Customer-managed Knowledge Base',430,[('kb','Amazon Bedrock\nKnowledge Bases','Retrieve'),(None,'アプリケーション','Evidence Setを整形\n採否・矛盾・引用を記録'),MODEL],['候補','根拠 + 質問'])
d.note('Converseの呼び出し元はアプリケーション。S3 Vectorsから生成モデルへ直接接続しない。',735);d.save()

d=Diagram('52-aws-app-vs-agentcore','一巡のRAGとエージェントの実行を分ける','AWS Cloud / AgentCoreは実行基盤。検索のためにKnowledge Baseを組み合わせる',1150,'実線：API呼び出し。戻り値は省略。補助機能は要件に応じて追加する。')
d.row('simple','通常のRAG / アプリが検索と生成を順番につなぐ',130,[('lambda','AWS Lambda（例）','質問受付・根拠の制御'),KB,MODEL],None,h=330)
d.edge('simple-retrieve','simple-0-icon','simple-1-icon','Retrieve')
d.edge('simple-converse','simple-0-icon','simple-2-icon','根拠を整形 → Converse',[(60,234),(60,440),(1140,440),(1140,234)],exit=(0,.5),entry=(1,.5))
d.row('agent','Agentic RAG / ツール呼び出しを繰り返す構成例',475,[('agent','Amazon Bedrock\nAgentCore Runtime','エージェントを実行'),('agent','Amazon Bedrock\nAgentCore Gateway','ツール接続・呼び出し'),('kb','Amazon Bedrock\nManaged Knowledge Base','標準コネクターで検索')],['ツール呼出','検索'])
d.row('control','AgentCoreの補助機能 / 要件に応じて追加',795,[('agent','Memory / Identity','記憶・認証情報'),('agent','Policy','Gatewayのツール実行を統制'),('agent','Observability','モデル・ツールを追跡')],None,h=270)
d.save()

d=Diagram('53-aws-crosscutting-controls','認可・暗号化・観測を全工程に適用する','AWS Cloud / 横断する管理機能と、利用者が設計する運用規則',850,'各段は管理対象の対応。APIの呼び出し順を表す矢印は置かない。')
d.row('security','① アクセスとデータを保護する',130,[('iam','AWS IAM','API主体・ロール・権限'),('kms','AWS KMS','原文・索引・ログの暗号化'),(None,'文書・ツールの認可','フィルター・ACL・業務規則')],None)
d.row('operations','② 変更と実行を追跡する',430,[('watch','Amazon CloudWatch','ログ・指標・アラーム'),('trail','AWS CloudTrail','APIの監査記録'),(None,'評価・版・費用','回帰評価・公開条件\n設定版・費用配賦')],None)
d.note('Batch LayerとReal-time Layerの両方が対象。IAMだけで文書単位の閲覧権限は決まらない。',735);d.save()

d=Diagram('54-aws-reference-architectures','要件別に五つの構成を比較する','AWS Cloud / 検索基盤と呼び出し元の構成例',1700,'実線は検索API呼び出し。回答生成は呼び出し元からBedrockへ別途接続する。')
rows=[
('a','A / 運用対象を減らしたい',[(None,'アプリケーション','認証・根拠・生成を制御'),('kb','Amazon Bedrock\nManaged Knowledge Base','内部索引までAWSが管理')],['Retrieve']),
('b','B / 意味検索を中心にしたい',[APP,KB,VEC],['Retrieve','検索']),
('c','C / 語彙一致と意味類似を組み合わせたい',[APP,KB,OS],['Retrieve','検索']),
('d','D / 根拠・検索器・ACLを全面制御したい',[(None,'独自アプリケーション','埋め込み・統合・根拠を実装'),OS],['直接検索API']),
('e','E / 複数段階・ツール実行が必要',[('agent','Amazon Bedrock\nAgentCore Runtime','エージェントを実行'),('agent','Amazon Bedrock\nAgentCore Gateway','ツール接続'),('kb','Amazon Bedrock\nManaged Knowledge Base','検索コネクター')],['ツール呼出','検索'])]
for i,(id,title,nodes,labels) in enumerate(rows):d.row(id,title,130+i*300,nodes,labels)
d.save()

(OUT/'manifest.json').write_text(json.dumps(MANIFEST,ensure_ascii=False,indent=2)+'\n')
print(f'Wrote {len(MANIFEST)} editable diagrams')
