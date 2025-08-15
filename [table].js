import { useRouter } from 'next/router';
import { useEffect, useMemo, useState } from 'react';
import { supabase } from '../../lib/supabase';
import schemas from '../../schemas.json';

export default function Browse(){
  const router = useRouter();
  const { table } = router.query;
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [q, setQ] = useState('');
  const [editingRow, setEditingRow] = useState(null);
  const meta = schemas[table] || { columns: {} };
  const cols = Object.keys(meta.columns || {});

  async function load(){
    if (!table) return;
    setLoading(true);
    const { data, error } = await supabase.from(table).select('*').limit(2000);
    if (!error) setRows(data || []);
    setLoading(false);
  }
  useEffect(()=>{ load(); }, [table]);

  const filtered = useMemo(()=>{
    if (!q) return rows;
    const term = q.toLowerCase();
    return rows.filter(r => cols.some(c => String(r[c] ?? '').toLowerCase().includes(term)));
  }, [q, rows, cols]);

  async function saveRow(e){
    e.preventDefault();
    const form = new FormData(e.currentTarget);
    const obj = {}; cols.forEach(c => obj[c] = form.get(c) ?? null);
    const pk = meta.primary_key || 'id';
    const { error } = await supabase.from(table).update(obj).eq(pk, editingRow[pk]);
    if (!error){ setEditingRow(null); load(); }
  }

  return (
    <main style={{padding:24,fontFamily:'system-ui'}}>
      <h1 style={{marginBottom:8}}>{table}</h1>
      <input placeholder="Search..." value={q} onChange={e=>setQ(e.target.value)} style={{padding:8,borderRadius:8,width:'100%',maxWidth:420}} />
      <div style={{margin:'12px 0'}}>Total: {filtered.length}</div>

      {editingRow && (
        <form onSubmit={saveRow} style={{padding:12,border:'1px solid #ddd',borderRadius:12,marginBottom:12}}>
          <h3>Edit</h3>
          {cols.map(c => (
            <div key={c} style={{margin:'8px 0'}}>
              <label style={{display:'block',fontWeight:600}}>{c}</label>
              <input name={c} defaultValue={editingRow[c] ?? ''} style={{padding:8,borderRadius:8,width:'100%'}} />
            </div>
          ))}
          <button type="submit">Save</button>{" "}
          <button type="button" onClick={()=>setEditingRow(null)}>Cancel</button>
        </form>
      )}

      {loading ? <p>Loading…</p> : (
        <div style={{overflow:'auto', maxHeight:'70vh', border:'1px solid #eee', borderRadius:12}}>
          <table cellPadding="6">
            <thead style={{position:'sticky', top:0, background:'#fafafa'}}>
              <tr>{cols.map(c => <th key={c} style={{textAlign:'left'}}>{c}</th>)}<th>Actions</th></tr>
            </thead>
            <tbody>
              {filtered.map((r,i)=> (
                <tr key={i}>
                  {cols.map(c => <td key={c}>{String(r[c] ?? '')}</td>)}
                  <td>
                    <button onClick={()=>setEditingRow(r)}>Edit</button>{" "}
                    <button onClick={async ()=>{
                      const pk = meta.primary_key || 'id';
                      if (!confirm('Delete this record?')) return;
                      await supabase.from(table).delete().eq(pk, r[pk]);
                      load();
                    }}>Delete</button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </main>
  );
}
