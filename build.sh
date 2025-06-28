#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# build.sh
#   • ./build.sh                → gabungkan SEMUA src/*.md (urut alami)
#   • ./build.sh 01.md          → compile hanya src/01.md
#   • ./build.sh 01.md 03.md    → compile dua berkas, urut sesuai argumen
# ─────────────────────────────────────────────────────────────────────────────
set -euo pipefail

# Emoji
EMOJI_FIND='🔍'; EMOJI_CAT='📝'; EMOJI_BUILD='📦'
EMOJI_CLEAN='🧹'; EMOJI_DONE='🎉'; EMOJI_ERR='❌'
EMOJI_OK='✅'

# Lokasi template & metadata
TEMPLATE="template/eisvogel.latex"
METAFILE="template/metadata.yaml"

OUTPUT_PDF="labsheet.pdf"
TMP_MD="temp_markdown.md"
MD_FILES=()

###############################################################################
# 0. Cek kebutuhan tool utama
###############################################################################
echo -e "${EMOJI_FIND}  Mengecek kebutuhan tool utama..."
TOOLS=(
  "pandoc"
  "xelatex"
  "pandoc-crossref"
)

PANDOC_VERSION=$(pandoc --version | head -n1 | awk '{print $2}')
PANDOC_MAJOR=$(echo "$PANDOC_VERSION" | cut -d. -f1)
PANDOC_MINOR=$(echo "$PANDOC_VERSION" | cut -d. -f2)

for tool in "${TOOLS[@]}"; do
  if command -v "$tool" >/dev/null 2>&1; then
    echo -e "  ${EMOJI_OK}  $tool: $($tool --version | head -n1)"
  else
    echo -e "  ${EMOJI_ERR}  $tool tidak ditemukan! Harap install terlebih dahulu."
    exit 1
  fi
done

# Cek citeproc hanya jika pandoc < 2.11
if (( PANDOC_MAJOR < 2 )) || { (( PANDOC_MAJOR == 2 )) && (( PANDOC_MINOR < 11 )); }; then
  if command -v pandoc-citeproc >/dev/null 2>&1; then
    echo -e "  ${EMOJI_OK}  pandoc-citeproc: $(pandoc-citeproc --version | head -n1)"
  elif command -v citeproc >/dev/null 2>&1; then
    echo -e "  ${EMOJI_OK}  citeproc: $(citeproc --version | head -n1) (pengganti pandoc-citeproc)"
  else
    echo -e "  ${EMOJI_ERR}  pandoc-citeproc & citeproc tidak ditemukan! Harap install salah satu."
    exit 1
  fi
else
  echo -e "  ${EMOJI_OK}  citeproc: terintegrasi di Pandoc ($PANDOC_VERSION)"
fi

# Cek pandoc-latex-environment (Python filter)
if command -v pip >/dev/null 2>&1; then
  PLE_VERSION=$(pip show pandoc-latex-environment 2>/dev/null | awk '/^Version: /{print $2}')
else
  PLE_VERSION="-"
fi
if python3 -c "import pandoc_latex_environment" 2>/dev/null; then
  if [[ -n "$PLE_VERSION" ]]; then
    echo -e "  ${EMOJI_OK}  pandoc-latex-environment: $PLE_VERSION"
  else
    echo -e "  ${EMOJI_OK}  pandoc-latex-environment: (versi tidak terdeteksi)"
  fi
else
  echo -e "  ${EMOJI_ERR}  pandoc-latex-environment tidak ditemukan! Install dengan: pip install pandoc-latex-environment"
  exit 1
fi

###############################################################################
# 1. Tentukan berkas sumber
###############################################################################
if [[ $# -eq 0 ]]; then
  echo -e "${EMOJI_FIND}  Mengumpulkan semua *.md di src/ (hanya root, urut alami)…"
  while IFS= read -r f; do MD_FILES+=("$f"); done < \
    <(find src -maxdepth 1 -type f -name '*.md' | sort -V)
else
  echo -e "${EMOJI_FIND}  Mengumpulkan berkas sesuai argumen…"
  for arg in "$@"; do
    if [[ -f "$arg" ]]; then
      MD_FILES+=("$arg")
    elif [[ -f "src/$arg" ]]; then
      MD_FILES+=("src/$arg")
    else
      FOUND=$(find src -maxdepth 1 -type f -name "$arg" | head -n1)
      if [[ -z "$FOUND" ]]; then
        echo -e "${EMOJI_ERR}  Berkas “$arg” tidak ditemukan."; exit 1
      fi
      MD_FILES+=("$FOUND")
    fi
  done
fi

###############################################################################
# 2. Gabungkan ke satu berkas temporer
###############################################################################
echo -e "${EMOJI_CAT}  Menggabungkan ke ${TMP_MD}"
cat /dev/null > "$TMP_MD"   # kosongkan dulu
for f in "${MD_FILES[@]}"; do
  cat "$f" >> "$TMP_MD"
  echo -e "\n" >> "$TMP_MD" # pastikan ada pemisah baris
done

###############################################################################
# 3. Hapus PDF lama (jika ada)
###############################################################################
echo -e "${EMOJI_CLEAN}  Menghapus ${OUTPUT_PDF} lama (jika ada)…"
rm -f "$OUTPUT_PDF"

###############################################################################
# 4. Bangun PDF dengan Pandoc
###############################################################################
echo -e "${EMOJI_BUILD}  Membangun ${OUTPUT_PDF} dengan Pandoc…"
pandoc "$TMP_MD" \
  -o "$OUTPUT_PDF" \
  --from markdown \
  --template "$TEMPLATE" \
  --metadata-file "$METAFILE" \
  --pdf-engine=xelatex \
  --top-level-division=chapter \
  --number-sections \
  --resource-path=".:src:src/image:src/*/image" \
  --listings \
  -F pandoc-latex-environment \
  -F pandoc-crossref \
  --citeproc

###############################################################################
# 5. Bersih-bersih
###############################################################################
echo -e "${EMOJI_CLEAN}  Menghapus berkas temporer…"
rm -f "$TMP_MD"

echo -e "${EMOJI_DONE}  Selesai! PDF berada di ./${OUTPUT_PDF}"
