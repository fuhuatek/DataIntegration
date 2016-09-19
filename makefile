ifdef INTEGRATION_HOME
include $(INTEGRATION_HOME)/BuildCommon/globals.cfg
else
TS_TOOL_ROOT	= C:/TechSAT
CP 				= cp
MKDIR 			= mkdir
endif

PYFILES= 	imtXmlReader.py \
			imtExcelRW.py \
			logger.py \
			bunch.py \
			xtraceback.py \
			stringtab.py \
			ads2GenConfig.py \
			ads2GenDeviceMapping.py \
			iomGenAds2Data.py  \
			iomGenAds2TestData.py  \
			vintGenConfig.py \
			iomGenVI.py \
			iomGenVIAds2.py	\
			iomGenConfig.py \
			iomMergemsgbuf.py\
			iomGenCommon.py \
			iomGenVxW.py \
			iomGenXml.py \
			iomGenBin.py \
			iomGenBinConst.py \
			iomGenBinEndian.py \
			iomGenBinAfdxOutput.py \
			iomGenBinAfdxInput.py \
			iomGenBinCan.py \
			iomGenBinA429.py \
			iomGenBinDio.py \
			iomGenExcel.py \
			iomGenJoinDD.py \
			iomGenIntDD.py \
			iomGenOffsetXml.py \
			iomGenIolist.py \
			iomGenIolistAlert.py \
			iomGenReadDD.py \
			iomGenDDOffset.py \
			iomGenDDCode.py	\
			iomMergeXml.py \
			iomMergeXmlClean.py \
			iomConvertCsvToExcel.py \
			iomGenSigtypes.py \
			iomGenConst.py

SCRIPTS = 	ads2GenConfig.bat \
			iomGenExcel.bat \
			iomGenXml.bat \
			iomGenJoinDD.bat \
			iomGenConfig.bat \
			iomGenDDOffset.bat \
			iomGenDDCode.bat
			
TEMPLATES = ads2genAFDX.tpl \
			ads2genCAN.tpl \
			ads2genA429.tpl \
			ads2genCVT.tpl
		
BINDIR	  = $(TS_TOOL_ROOT)/IOMGEN/bin
PYDIR	  = $(TS_TOOL_ROOT)/IOMGEN/lib/python

all: install

install: $(BINDIR) $(PYDIR)
	$(CP) -f $(PYFILES) $(PYDIR)
	$(CP) -f $(TEMPLATES) $(PYDIR)
	$(CP) -f $(SCRIPTS) $(BINDIR)
	
	
$(PYDIR):
	$(MKDIR) -p $(PYDIR)

$(BINDIR):
	$(MKDIR) -p $(BINDIR)

		
generateCode:
generateConfig:
build: