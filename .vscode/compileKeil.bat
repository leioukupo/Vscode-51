@echo off
@REM %1是工作区路径
@REM %2是文件路径
@REM %3不带后缀的文件名
set KEIL_BIN_FOLDER=D:\Keil\C51\BIN
set obj_list=
cls
echo Keil Compiler batch by leioukupo
echo Compiler path is %KEIL_BIN_FOLDER%

cd /d "%2"

for /f "delims=" %%i in ('dir /b *.c') do (call "%KEIL_BIN_FOLDER%\C51.EXE" "%%i")
for /f "delims=" %%i in ('dir /b *.LST') do (move "%%i" "%1\build" > NUL || goto failed)
for /f "delims=" %%i in ('dir /b *.OBJ') do (move "%%i" "%1\build" > NUL || goto failed)
echo "move over"
cd /d "%1\build"
call %1\.vscode\hex.bat %3
del %1\build\%3
for /f "delims=" %%i in ('dir /b *.LST') do (del %1\build\%%i )
for /f "delims=" %%i in ('dir /b *.OBJ') do (del %1\build\%%i )
for /f "delims=" %%i in ('dir /b *.M51') do (del %1\build\%%i )
echo Compiled successfully: build\%3.hex
exit 0

