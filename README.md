# Delcom Courses (SvelteKit 3 + Svelte 5 + TypeScript)

Aplikasi kursus berbasis Delcom Open API (<https://open-api.delcom.org/docs/1.0/api-courses>).

## Menjalankan

```bash
bun install
bun run dev            # http://localhost:3005
bun run build && PORT=3005 bun start
bun run test:coverage  # threshold 100%
```

`.env`: `VITE_DELCOM_BASEURL=https://open-api.delcom.org/api/v1`, `APP_PORT=3005` untuk server development. Saat production, adapter Node memakai `PORT` (Docker default `3005`).

## Catatan teknis

- Adapter dipilih di `vite.config.ts`: Netlify memakai `@sveltejs/adapter-netlify` saat `NETLIFY` tersedia; lingkungan lain memakai `@sveltejs/adapter-node`.
- Server Node membaca `PORT` (default Node adapter: `3000`); Dockerfile menetapkan `PORT=3005` dan menjalankan `node build/index.js`.
- Mutasi menyalakan bendera di `coursesStore`; halaman memuat ulang data saat bendera menyala.
