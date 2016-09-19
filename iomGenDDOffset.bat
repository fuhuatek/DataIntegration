@echo off
if "%*"   == ""     ( goto :usage )
if "%1"   == "help" ( goto :usage )
if "%1"   == "-h"   ( goto :usage )
if "%1"   == "/h"   ( goto :usage )
if "%1"   == "/?"   ( goto :usage )
if "%1"   == "?"    ( goto :usage )
rem ---------------------------------------------------------------------

set MODEL=%1
set MODELROOT=%2
set PYLIBDIR=%~d0%~p0\..\lib\python

rem ---------------------------------------------------------------------

python %PYLIBDIR%\iomGenDDOffset.py -m %MODEL% -r %MODELROOT%



goto :eof
:usage
echo ----------------------------------------------------------------------------------
echo IO Manager Generation Tools Version 1.0
echo Extract DD Offsets from SCADE Model
echo Usage: iomGenDDOffset model projectroot
echo ----------------------------------------------------------------------------------
echo Example: iomGenDDOffset SynopticUA C:\DATA\C919DS\1_SAVICC919_SVN\CDS_SW\04_Sources\407_Synoptics\head\Model\Behaviour
