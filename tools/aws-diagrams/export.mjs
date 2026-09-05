/** Render the editable XML with the native mxGraph engine (used by draw.io).
 * npm ci; npx playwright install firefox; npm run generate
 * Optional NODE_PATH resolves preinstalled dependencies in managed runtimes.
 */
import {createRequire} from 'node:module';
import {readFile,writeFile,mkdir,copyFile} from 'node:fs/promises';
import path from 'node:path';
import {fileURLToPath} from 'node:url';
import {spawnSync} from 'node:child_process';
const require=createRequire(import.meta.url);
const {firefox}=require('playwright');
const mxRoot=path.dirname(require.resolve('mxgraph/package.json'));
const root=path.resolve(path.dirname(fileURLToPath(import.meta.url)),'../..');
const dir=path.join(root,'assets/diagrams/aws');
const manifest=JSON.parse(await readFile(path.join(dir,'manifest.json'),'utf8'));
const browser=await firefox.launch({headless:true, ...(process.env.FIREFOX_PATH ? {executablePath:process.env.FIREFOX_PATH} : {})});
const page=await browser.newPage({viewport:{width:1240,height:1800},deviceScaleFactor:1});
await page.setContent('<html><head><meta charset="utf-8"></head><body style="margin:0"><div id="graph" style="position:relative;width:1200px;height:1800px"></div></body></html>');
await page.evaluate(()=>{window.mxBasePath='';window.mxLoadResources=false;window.mxLoadStylesheets=false;});
await page.addScriptTag({path:path.join(mxRoot,'javascript/mxClient.min.js')});
const validations=[];
for(const item of manifest){
 const xml=await readFile(path.join(dir,item.name+'.drawio'),'utf8');
 const out=await page.evaluate(async ({xml,item})=>{
  const container=document.getElementById('graph');container.innerHTML='';container.style.height=item.height+'px';
  const graph=new mxGraph(container);graph.setEnabled(false);
  const doc=mxUtils.parseXml(xml);
  new mxCodec(doc).decode(doc.getElementsByTagName('mxGraphModel')[0],graph.getModel());
  graph.refresh();
  const model=graph.getModel();
  const cells=Object.values(model.cells);
  const edges=cells.filter(c=>c.edge);
  if(edges.some(c=>!c.source||!c.target))throw Error('Dangling edge');
  // Check group movement using the actual graph model, then restore it.
  const group=cells.find(c=>c.vertex&&model.getChildCount(c)>1);
  let movement=true;
  if(group){const child=model.getChildAt(group,0);const before=graph.view.getState(child);const x=before.x,y=before.y;
   graph.moveCells([group],10,20);const after=graph.view.getState(child);movement=after.x===x+10&&after.y===y+20;
   graph.moveCells([group],-10,-20);
  }
  if(!movement)throw Error('Group children do not follow');
  const svgDoc=mxUtils.createXmlDocument();
  const svg=svgDoc.createElementNS(mxConstants.NS_SVG,'svg');
  svg.setAttribute('xmlns',mxConstants.NS_SVG);svg.setAttribute('xmlns:xlink',mxConstants.NS_XLINK);
  svg.setAttribute('width',item.width);svg.setAttribute('height',item.height);svg.setAttribute('viewBox',`0 0 ${item.width} ${item.height}`);
  const title=svgDoc.createElementNS(mxConstants.NS_SVG,'title');title.textContent=item.title;svg.appendChild(title);
  const bg=svgDoc.createElementNS(mxConstants.NS_SVG,'rect');bg.setAttribute('width','100%');bg.setAttribute('height','100%');bg.setAttribute('fill','#FFFFFF');svg.appendChild(bg);
  svgDoc.appendChild(svg);const canvas=new mxSvgCanvas2D(svg);
  new mxImageExport().drawState(graph.getView().getState(model.getRoot()),canvas);
  return {svg:mxUtils.getXml(svg),validation:{name:item.name,vertices:cells.filter(c=>c.vertex).length,edges:edges.length,group_movement:movement,external_images:[...svg.querySelectorAll('image')].filter(i=>!(i.getAttributeNS(mxConstants.NS_XLINK,'href')||i.getAttribute('href')||'').startsWith('data:')).length}};
 },{xml,item});
 await writeFile(path.join(dir,item.name+'.svg'),out.svg+'\n');
 const png=path.join(dir,item.name+'.png');
 const r=spawnSync('inkscape',[path.join(dir,item.name+'.svg'),'--export-type=png','--export-width=2400','--export-filename='+png],{encoding:'utf8'});
 if(r.status!==0)throw Error(r.stderr);
 validations.push(out.validation);
 if(item.name.startsWith('aws-rag')){
  const pub=path.join(root,'handson/aws-rag/public/images');await mkdir(pub,{recursive:true});
  await copyFile(path.join(dir,item.name+'.svg'),path.join(pub,item.name+'.svg'));
  const native=path.join(root,'handson/aws-rag/diagrams');await mkdir(native,{recursive:true});
  await copyFile(path.join(dir,item.name+'.drawio'),path.join(native,item.name+'.drawio'));
  await mkdir(path.join(root,'handson/aws-rag/public/diagrams'),{recursive:true});
  await copyFile(path.join(dir,item.name+'.drawio'),path.join(root,'handson/aws-rag/public/diagrams',item.name+'.drawio'));
 }else{
  await mkdir(path.join(root,'assets/images/v4'),{recursive:true});
  await copyFile(png,path.join(root,'assets/images/v4',item.name+'.png'));
 }
 console.log(item.name);
}
await writeFile(path.join(dir,'validation.json'),JSON.stringify({engine:'mxGraph 4.2.2 / Firefox',diagrams:validations},null,2)+'\n');
await browser.close();
