# Ruchi Admin Pro (Upgraded)

- UUID schema (`id`), `legacy_id`, timestamps
- Browser CSV importer (drag & drop)
- Search, filter, inline edit
- Export by date range (ZIP of CSVs)
- Daily backups to Supabase Storage (Vercel Cron)

## Setup
1) **Supabase** → SQL editor → paste `schema.sql` → RUN
2) **Vercel** → New Project → add env:
   - NEXT_PUBLIC_SUPABASE_URL
   - NEXT_PUBLIC_SUPABASE_ANON_KEY
   - SUPABASE_SERVICE_ROLE_KEY
3) Import: visit `/import` and drop your CSVs.
