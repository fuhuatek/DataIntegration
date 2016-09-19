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

python %PYLIBDIR%\ads2GenConfig.py %*


goto :eof

:usage 
echo ADS2 Config Generation Tools
echo Generation of ADS2 Configuration
echo Usage: ads2GenConfig -o OutputDir --deviceMap devMap --prefix outfileprefix --simmode sim/stim --msgmode raw/signals/params excelIomFile
echo Where: excelIomFile is the output produced by iomGenJoinDD
echo        OutputDir is the name of a directory where all generated files shall be saved
