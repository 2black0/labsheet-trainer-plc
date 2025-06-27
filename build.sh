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

# Lokasi template & metadata
TEMPLATE="template/eisvogel.latex"
METAFILE="template/metadata.yaml"

OUTPUT_PDF="book.pdf"
TMP_MD="temp_markdown.md"
MD_FILES=()

###############################################################################
# 1. Tentukan berkas sumber
###############################################################################
if [[ $# -eq 0 ]]; then
  echo -e "${EMOJI_FIND}  Mengumpulkan semua *.md di src/ (urut alami)…"
  while IFS= read -r f; do MD_FILES+=("$f"); done < \
    <(find src -type f -name '*.md' | sort -V)
else
  echo -e "${EMOJI_FIND}  Mengumpulkan berkas sesuai argumen…"
  for arg in "$@"; do
    if [[ -f "$arg" ]]; then
      MD_FILES+=("$arg")
    elif [[ -f "src/$arg" ]]; then
      MD_FILES+=("src/$arg")
    else
      FOUND=$(find src -type f -name "$arg" | head -n1)
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
  --resource-path=".:src" \
  --listings \
  -F pandoc-crossref \
  --citeproc

###############################################################################
# 5. Bersih-bersih
###############################################################################
echo -e "${EMOJI_CLEAN}  Menghapus berkas temporer…"
rm -f "$TMP_MD"

echo -e "${EMOJI_DONE}  Selesai! PDF berada di ./${OUTPUT_PDF}"
