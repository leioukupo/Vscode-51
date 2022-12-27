@echo off & setlocal enabledelayedexpansion
set file_name_str=
set KEIL_BIN_FOLDER=D:\Keil\C51\BIN
for /f "delims=" %%i in ('dir /b *.OBJ') do (set file_name_str=!file_name_str! %%i,)
set file_name_str=!file_name_str:~0,-1!
echo %file_name_str%
call "%KEIL_BIN_FOLDER%\BL51.EXE" "%file_name_str%" TO %1%
call "%KEIL_BIN_FOLDER%\OH51.EXE" "%1%"
