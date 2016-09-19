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

python %PYLIBDIR%\iomGenJoinDD.py %*



goto :eof
:usage
echo ----------------------------------------------------------------------------------
echo IO Manager Generation Tools Version 1.0
echo Joining Excel ICD with DD-RP Map
echo Usage: iomGenJoinDD outputfile excelicd ddrpmapfile
echo ----------------------------------------------------------------------------------
echo Example 1: iomGenJoinDD pfd-center-iom.xlsx HF_IDUCENTER-icd.xlsx  pfd-ddrp-map.xlsx
echo            Will create the output file pfd-center-iom.xlsx by joining 
echo            HF_ICDCENTER-icd.xlsx with pfd-ddrp-map.xlsx
echo Example 2: iomGenJoinDD fdas-l1-iom.xlsx FDAS_L1-icd.xlsx ATA*.xlsx
echo            Will create the output file fdas-l1-iom.xlsx by joining 
echo            FDAS_L1-icd.xlsx with all excel files matching the wildcard
