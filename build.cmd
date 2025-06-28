@echo off
REM build.cmd - Build labsheet PDF for Windows (run in CMD)

REM Emoji for Windows CMD (simple text)
set "EMOJI_FIND=[FIND]"
set "EMOJI_CAT=[CAT]"
set "EMOJI_BUILD=[BUILD]"
set "EMOJI_CLEAN=[CLEAN]"
set "EMOJI_DONE=[DONE]"
set "EMOJI_ERR=[ERR]"
set "EMOJI_OK=[OK]"

set "TEMPLATE=template/eisvogel.latex"
set "METAFILE=template/metadata.yaml"
set "OUTPUT_PDF=labsheet.pdf"
set "TMP_MD=temp_markdown.md"

REM 0. Cek kebutuhan tool utama
%EMOJI_FIND%  Mengecek kebutuhan tool utama...
for %%T in (pandoc xelatex pandoc-crossref) do (
    where %%T >nul 2>nul && echo   %EMOJI_OK%  %%T: OK || (echo   %EMOJI_ERR%  %%T tidak ditemukan! & exit /b 1)
)

REM Cek pandoc-latex-environment (Python filter)
where pip >nul 2>nul && for /f "tokens=2 delims=: " %%V in ('pip show pandoc-latex-environment 2^>nul ^| findstr /B /C:"Version:"') do set PLE_VERSION=%%V
python -c "import pandoc_latex_environment" 2>nul && echo   %EMOJI_OK%  pandoc-latex-environment: %PLE_VERSION% || (echo   %EMOJI_ERR%  pandoc-latex-environment tidak ditemukan! Install dengan: pip install pandoc-latex-environment & exit /b 1)

REM 1. Tentukan berkas sumber
if "%*"=="" (
    echo %EMOJI_FIND%  Mengumpulkan semua *.md di src/ (hanya root, urut alami)…
    dir /b /on src\*.md > filelist.txt
) else (
    echo %EMOJI_FIND%  Mengumpulkan berkas sesuai argumen…
    > filelist.txt (
        for %%A in (%*) do (
            if exist "%%A" (echo %%A) else if exist "src\%%A" (echo src\%%A) else (echo %EMOJI_ERR%  Berkas "%%A" tidak ditemukan. & exit /b 1)
        )
    )
)

REM 2. Gabungkan ke satu berkas temporer
copy nul %TMP_MD% >nul
for /f "usebackq delims=" %%F in (filelist.txt) do (
    type "%%F" >> %TMP_MD%
    echo.>> %TMP_MD%
)
del filelist.txt

REM 3. Hapus PDF lama (jika ada)
echo %EMOJI_CLEAN%  Menghapus %OUTPUT_PDF% lama (jika ada)…
del /q %OUTPUT_PDF% 2>nul

REM 4. Bangun PDF dengan Pandoc
echo %EMOJI_BUILD%  Membangun %OUTPUT_PDF% dengan Pandoc…
pandoc %TMP_MD% -o %OUTPUT_PDF% --from markdown --template %TEMPLATE% --metadata-file %METAFILE% --pdf-engine=xelatex --top-level-division=chapter --number-sections --resource-path=".;src;src/image;src/*/image" --listings -F pandoc-latex-environment -F pandoc-crossref --citeproc

REM 5. Bersih-bersih
echo %EMOJI_CLEAN%  Menghapus berkas temporer…
del /q %TMP_MD% 2>nul

echo %EMOJI_DONE%  Selesai! PDF berada di .\%OUTPUT_PDF%
