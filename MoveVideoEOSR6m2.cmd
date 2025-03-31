@echo off
setlocal enabledelayedexpansion

set source_folder=D:\Immagini\EOS R6 Mark II
set destination_folder=D:\Video\EOS R6 Mark II
set file_extension=.mp4

for /r "%source_folder%" %%i in (*%file_extension%) do (
    set "file=%%~nxi"
    move "%%i" "%destination_folder%\!file!"
)

echo Spostamento completato.
