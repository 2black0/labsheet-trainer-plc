#!/usr/bin/env bash
# check.sh - Cek kebutuhan tool dan versi untuk project ini

TOOLS=(
  "pandoc"
  "xelatex"
  "pandoc-crossref"
)

# Cek versi pandoc
PANDOC_VERSION=$(pandoc --version | head -n1 | awk '{print $2}')
PANDOC_MAJOR=$(echo "$PANDOC_VERSION" | cut -d. -f1)
PANDOC_MINOR=$(echo "$PANDOC_VERSION" | cut -d. -f2)

for tool in "${TOOLS[@]}"; do
  if command -v "$tool" >/dev/null 2>&1; then
    echo "[OK] $tool ditemukan: $($tool --version | head -n1)"
  else
    echo "[WARN] $tool tidak ditemukan!"
  fi
done

# Cek citeproc hanya jika pandoc < 2.11
if (( PANDOC_MAJOR < 2 )) || { (( PANDOC_MAJOR == 2 )) && (( PANDOC_MINOR < 11 )); }; then
  if command -v pandoc-citeproc >/dev/null 2>&1; then
    echo "[OK] pandoc-citeproc ditemukan: $(pandoc-citeproc --version | head -n1)"
  elif command -v citeproc >/dev/null 2>&1; then
    echo "[OK] citeproc ditemukan: $(citeproc --version | head -n1) (pengganti pandoc-citeproc)"
  else
    echo "[WARN] pandoc-citeproc & citeproc tidak ditemukan!"
  fi
else
  echo "[INFO] Citation processor sudah terintegrasi di Pandoc >= 2.11 (versi: $PANDOC_VERSION)"
fi
