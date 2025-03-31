@echo off
setlocal enabledelayedexpansion

set source_folder=D:\Immages\Camera                         /paste here the path of the source folder (important to use \)/
set destination_folder=D:\Videos\Camera                     /paste here the path of the destination folder (important to use \)/
set file_extension=.mp4                                     /set here the type of the file you want to move (use the point first)/

for /r "%source_folder%" %%i in (*%file_extension%) do (
    set "file=%%~nxi"
    move "%%i" "%destination_folder%\!file!"
)

echo Moving complete.
