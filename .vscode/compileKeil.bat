@echo off
set KEIL_BIN_FOLDER=D:\Keil5\C51\BIN

cls
echo Keil Compiler batch by leioukupo
echo Compiler path is %KEIL_BIN_FOLDER%

cd /d "%1\build"

call "%KEIL_BIN_FOLDER%\C51.EXE" "%2\%3.c" 
move "%2\%3.LST" "%1\build" > NUL || goto failed
move "%2\%3.OBJ" "%1\build" > NUL || goto failed

call "%KEIL_BIN_FOLDER%\BL51.EXE" "%1\build\%3.OBJ" TO %3 
call "%KEIL_BIN_FOLDER%\OH51.EXE" "%1\build\%3" || goto failed
move %1\build\%3 %1\obj
move %1\build\%3.LST %1/obj
move %1\build\%3.OBJ %1/obj
move %1\build\%3.M51 %1/obj

echo Compiled successfully: build\%3.hex
exit 0

:failed
set ERRCODE=%errorlevel%
echo Compilation Failed: Code %ERRCODE%
exit %ERRCODE%