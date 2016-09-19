@echo off
if "%*" == ""     ( goto :usage  )
if "%1" == "help" ( goto :usage  )
if "%1" == "?" ( goto :usage  )
if "%1" == "-h" ( goto :usage  )
if "%1" == "/h" ( goto :usage  )
if "%1" == "/?" ( goto :usage  )
if "%1" == "--help" ( goto :usage  )
rem ---------------------------------------------------------------------------------------

set PYLIBDIR=%~d0%~p0../lib/python

python %PYLIBDIR%\iomGenXml.py  %*

goto :eof

:usage
echo IO Mangager Config Generation Tools
echo Generate Hosted Function Excel ICD from XML ICDs
echo ---------------------------------------------------------------------------------------
echo Usage: iomGenXml -o outputname [--indd file]* [--outdd file*] xmlIcd