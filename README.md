# Labsheet Praktik PLC

Proyek ini menghasilkan PDF labsheet praktik PLC berbasis markdown dan Pandoc.

## Struktur Folder
- `src/` — Berisi file markdown (00.md, 01.md, dst) dan gambar (`src/image/` atau `src/XX/image/`)
- `template/` — Template LaTeX dan metadata

## Cara Pakai
1. **Install kebutuhan:**
   - Pandoc (https://pandoc.org/installing.html)
   - TeX Live (Linux/Windows) atau MacTeX (macOS) — pastikan `xelatex` tersedia
   - pandoc-crossref (https://github.com/lierdakil/pandoc-crossref/releases)

2. **Cek instalasi:**
   Jalankan:
   ```sh
   bash check.sh
   ```
   Pastikan semua tool utama ditemukan.

3. **Bangun PDF:**
   Jalankan:
   ```sh
   bash build.sh
   ```
   Hasil akan ada di `labsheet.pdf`.

- Untuk membangun hanya file tertentu:
   ```sh
   bash build.sh 01.md 02.md
   ```

## Catatan
- Gambar bisa diletakkan di `src/image/` atau `src/XX/image/`.
- Metadata dan template dapat disesuaikan di folder `template/`.
