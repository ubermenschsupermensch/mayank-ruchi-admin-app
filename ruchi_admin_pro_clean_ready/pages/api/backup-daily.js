import JSZip from 'jszip';
import Papa from 'papaparse';
import schemas from '../../schemas.json';
import { supabaseAdmin } from '../../lib/supabase';

export default async function handler(req, res){
  try{
    const now = new Date();
    const y = now.getUTCFullYear();
    const m = String(now.getUTCMonth()+1).padStart(2,'0');
    const d = String(now.getUTCDate()).padStart(2,'0');
    const day = `${y}-${m}-${d}`;
    const zip = new JSZip();
    for (const [table, meta] of Object.entries(schemas)){
      const { data } = await supabaseAdmin.from(table).select('*');
      const csv = Papa.unparse(data || []);
      zip.file(`${table}.csv`, csv);
    }
    const zipBuf = await zip.generateAsync({ type: 'nodebuffer' });
    const bucket = 'backups';
    await supabaseAdmin.storage.createBucket(bucket, { public: false }).catch(()=>{});
    const filePath = `${day}.zip`;
    await supabaseAdmin.storage.from(bucket).upload(filePath, zipBuf, { contentType: 'application/zip', upsert: true });
    res.status(200).json({ ok: true, stored: `${bucket}/${filePath}` });
  }catch(e){
    res.status(500).json({ error: e.message });
  }
}
