import Link from 'next/link';
import schemas from '../schemas.json';
export default function Home(){
  const tables = Object.keys(schemas).sort();
  return (
    <main style={{padding:24,fontFamily:'system-ui',maxWidth:980,margin:'0 auto'}}>
      <h1 style={{marginBottom:4}}>Ruchi Admin Pro</h1>
      <p style={{color:'#555'}}>Browse data • Import CSV • Export backups</p>
      <div style={{display:'flex', gap:12, flexWrap:'wrap', margin:'16px 0'}}>
        {tables.map(t => (<Link key={t} href={`/browse/${t}`}><button style={{padding:'8px 12px',borderRadius:10}}>{t}</button></Link>))}
      </div>
      <div style={{display:'flex', gap:12, flexWrap:'wrap'}}>
        <Link href="/import"><button style={{padding:'10px 14px',borderRadius:12}}>📥 Import CSVs</button></Link>
        <Link href="/export"><button style={{padding:'10px 14px',borderRadius:12}}>🗄️ Export (ZIP)</button></Link>
        <Link href="/backups"><button style={{padding:'10px 14px',borderRadius:12}}>☁️ Daily Backups</button></Link>
      </div>
    </main>
  );
}
