import { useState } from 'react';
export default function Backups(){
  const [status, setStatus] = useState('');
  async function runDaily(){
    setStatus('Running...');
    const res = await fetch('/api/backup-daily');
    const js = await res.json();
    setStatus(js.ok ? `Saved to ${js.stored}` : (js.error || 'Error'));
  }
  return (
    <main style={{padding:24,fontFamily:'system-ui'}}>
      <h1>Daily Backup</h1>
      <p>Run it now (also scheduled daily via Vercel Cron).</p>
      <button onClick={runDaily}>Run Backup Now</button>
      <div style={{marginTop:12}}>{status}</div>
    </main>
  );
}
