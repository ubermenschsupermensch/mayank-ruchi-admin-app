import JSZip from 'jszip';
import Papa from 'papaparse';
import schemas from '../../schemas.json';
import { supabaseAdmin } from '../../lib/supabase';

export default async function handler(req, res){
  try{
    const { from, to } = req.query;
    if(!from || !to) return res.status(400).json({ error: 'from and to (YYYY-MM-DD) are required' });
    const zip = new JSZip();
    for (const [table, meta] of Object.entries(schemas)){
      const dateCol = meta.date_column;
      let query = supabaseAdmin.from(table).select('*');
      if (dateCol){
        query = query.gte(dateCol, from).lte(dateCol, to);
      }
      const { data } = await query;
      const csv = Papa.unparse(data || []);
      zip.file(`${table}.csv`, csv);
    }
    const zipBuf = await zip.generateAsync({ type: 'nodebuffer' });
    const filename = `backup_${from}_to_${to}.zip`;
    res.setHeader('Content-Type','application/zip');
    res.setHeader('Content-Disposition',`attachment; filename="${filename}"`);
    res.send(zipBuf);
  }catch(e){
    res.status(500).json({ error: e.message });
  }
}
