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

python %PYLIBDIR%\iomGenExcel.py  %*

goto :eof

:usage
echo IO Mangager Config Generation Tools
echo Generate Hosted Function Excel ICD from XML ICDs
echo ---------------------------------------------------------------------------------------
echo Usage: iomGenExcel -o outputname [--merge] HFNAME1 HFNAME2 ... -- xmlIcdPath
echo Example: iomGenExcel HF_IDUCENTER HF_IDULEFTOUTBOARD HF_IDULEFTINBOARD HF_IDURIGHTOUTBOARD HF_IDURIGHTINBOARD -- %ICDDIR%
echo             will generate one excel ICD file for each hosted function
echo          iomGenExcel --merge -o HF_IDU HF_IDUCENTER HF_IDULEFTOUTBOARD HF_IDULEFTINBOARD HF_IDURIGHTOUTBOARD HF_IDURIGHTINBOARD -- %ICDDIR%
echo             will generate one merged excel ICD file for all hosted functions under the name HF_IDU-icd.xlsx