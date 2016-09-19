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

python %PYLIBDIR%\iomGenConfig.py %*


goto :eof

:usage 
echo IO Manager Config Generation Tools
echo Generation of IOM Configuration, A653 Port Configuration and ADS2 Test System Configuration
echo Usage: iomGenConfig --bigendian or --littleendian  --indd inputddmap --outdd outputddmap --app FunctionName -o OutputDir excelIomFile
echo Where: excelIomFile is the output produced by iomGenJoinDD
echo        inputddmap and outputddmap are the files produced by iomGenDDOffset
echo        FunctionName is the name of the hosted application (IDU or HF), e.g. PFD, FDAS, etc.
echo        OutputDir is the name of a directory where all generated files shall be saved
echo Example: iomGenConfig  --bigendian --indd pfd-inddmap.xml --outdd pfd-outddmap.xml --app PFD -o PFDCENTER PFDCENTER-iom.xlsx
