@echo off
if "%VSVARSALLPATH%"=="" set VSVARSALLPATH=c:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat
echo Setting VS Path
call "%VSVARSALLPATH%"
echo Building Help Project
call make htmlhelp
copy theme.js .\_build\htmlhelp\_static\js\theme.js
echo Building CHM File
hhc .\_build\htmlhelp\x64dbgdoc.hhp
copy .\_build\htmlhelp\x64dbgdoc.chm x64dbg.chm
echo Finished
