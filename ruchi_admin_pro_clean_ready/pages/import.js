import { useState } from 'react';
export default function Import(){
  const [logs, setLogs] = useState([]);
  function log(x){ setLogs(s => [...s, x]); }
  async function handleUpload(files){
    setLogs([]);
    for (const file of files){
      const form = new FormData();
      form.append('file', file);
      log(`Uploading ${file.name}...`);
      const res = await fetch('/api/browser-import', { method: 'POST', body: form });
      const js = await res.json();
      if (js.ok) log(`✅ Imported ${file.name}: ${js.count} rows into ${js.table}`);
      else log(`❌ ${file.name}: ${js.error}`);
    }
  }
  return (
    <main style={{padding:24,fontFamily:'system-ui'}}>
      <h1>Browser Import (CSV)</h1>
      <div onDragOver={e=>e.preventDefault()} onDrop={e=>{ e.preventDefault(); handleUpload(e.dataTransfer.files); }}
        style={{border:'2px dashed #888', padding:40, borderRadius:14, textAlign:'center', margin:'16px 0'}}>
        Drop CSV files here
      </div>
      <input type="file" multiple accept=".csv" onChange={e=>handleUpload(e.target.files)} />
      <pre style={{background:'#111',color:'#0f0',padding:12,borderRadius:10,marginTop:16,maxHeight:300,overflow:'auto'}}>
        {logs.join('\n')}
      </pre>
    </main>
  );
}
