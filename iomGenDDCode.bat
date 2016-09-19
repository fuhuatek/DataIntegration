@echo off
if "%*"   == ""     ( goto :usage )
if "%1"   == "help" ( goto :usage )
if "%1"   == "-h"   ( goto :usage )
if "%1"   == "/h"   ( goto :usage )
if "%1"   == "/?"   ( goto :usage )
if "%1"   == "?"    ( goto :usage )
rem ---------------------------------------------------------------------

set OUTFILE=%1
set XLSICD=%2
set MAPFILES=%3
set PYLIBDIR=%~d0%~p0\..\lib\python

rem ---------------------------------------------------------------------

python %PYLIBDIR%\iomGenDDCode.py %*



goto :eof
:usage
echo ----------------------------------------------------------------------------------
echo IO Manager Generation Tools Version 1.0
echo Generating DD C Code Structure for debugging
echo Usage: iomGenDDCode outputfile ddmapXMLfile
echo ----------------------------------------------------------------------------------
echo Example 1: iomGenDDCode fdas-input-dd.h inddmap.xml
echo            Will create the output file fdas-input-dd.h from inddmap.xml
