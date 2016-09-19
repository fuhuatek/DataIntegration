rem Generation of IOM binaries and port configuration
set A=%1
set V=%2

set ICDDIR=C:\C919DS\CDS_SYS\70_ICD\MAP-APP-ICD
set XLSFILE="%ICDDIR%\%A%-icd-map%V%.xlsx"
set MAPFILE=C:\C919DS\CDS_SW\04_Models\412_HDD\41210_PFD\head\Behaviour\PFDTotal\ads2code\

rem ads3 python %LIBDIR%/iomgentools/iomGenAll %ICDDIR%\PFD\

pause