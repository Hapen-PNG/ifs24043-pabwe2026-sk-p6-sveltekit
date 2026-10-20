# Delcom Courses (SvelteKit 3 + Svelte 5 + TypeScript)

Aplikasi kursus berbasis Delcom Open API (<https://open-api.delcom.org/docs/1.0/api-courses>).

## Menjalankan

```bash
bun install
bun run dev            # http://localhost:3005
bun run build && bun start
bun run test:coverage  # threshold 100%
```

`.env`: `VITE_DELCOM_BASEURL=https://open-api.delcom.org/api/v1`, `APP_PORT=3005`.

## Catatan teknis

- Adapter dipilih di `vite.config.ts`: Netlify memakai `@sveltejs/adapter-netlify`, Vercel memakai `@sveltejs/adapter-vercel`, dan lingkungan lain memakai `@sveltejs/adapter-bun`.
- `svelte-adapter-bun` (pihak ketiga) tidak kompatibel dengan Kit 3, maka dipakai adapter resmi.
- Mutasi menyalakan bendera di `coursesStore`; halaman memuat ulang data saat bendera menyala.
