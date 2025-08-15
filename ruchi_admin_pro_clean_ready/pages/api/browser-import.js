import Papa from 'papaparse';
import { supabaseAdmin } from '../../lib/supabase';
import schemas from '../../schemas.json';

export const config = { api: { bodyParser: false } };

function toSnake(s){
  return String(s || '').trim()
    .replace('🔒','')
    .replaceAll('/',' or ')
    .replaceAll('%',' pct ')
    .replace(/[^a-zA-Z0-9]+/g,'_')
    .replace(/_+/g,'_')
    .replace(/^_|_$/g,'')
    .toLowerCase();
}

export default async function handler(req, res){
  try{
    if (req.method !== 'POST') return res.status(405).end();
    const chunks = [];
    for await (const chunk of req) chunks.push(chunk);
    const buf = Buffer.concat(chunks);
    const str = buf.toString('utf8');
    const csv = str.split('\r\n\r\n').slice(1).join('\r\n\r\n').replace(/\r\n--.*/s,'');
    const parsed = Papa.parse(csv, { header: true, skipEmptyLines: true });
    const rows = parsed.data;
    if (!rows?.length) return res.status(400).json({ error: 'No rows' });
    const header = str.split('\r\n')[1] || '';
    const match = header.match(/filename="([^"]+)"/i);
    const fileName = match ? match[1] : 'upload.csv';
    const table = toSnake(fileName.replace(/\.csv$/i,''));
    if (!schemas[table]) return res.status(400).json({ error: 'Unknown table: ' + table });
    const cols = Object.keys(schemas[table].columns);
    const prepared = rows.map(r => {
      const obj = { legacy_id: r.row_id || null };
      for (const [k,v] of Object.entries(r)){
        const key = toSnake(k);
        if (cols.includes(key)) obj[key] = v;
      }
      return obj;
    });
    for (let i=0;i<prepared.length;i+=500){
      const slice = prepared.slice(i,i+500);
      const { error } = await supabaseAdmin.from(table).insert(slice, { returning: 'minimal' });
      if (error) return res.status(400).json({ error: error.message });
    }
    res.status(200).json({ ok: true, count: prepared.length, table });
  }catch(e){
    res.status(500).json({ error: e.message });
  }
}
