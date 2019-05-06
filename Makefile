# Use one of these targets to build:
# debug, beta, release, clean

# Variables and targets needed for build
include utilities/common.make

# PK3 files
jmceAssetsContents = $(shell $(FIND) jmce_assets $(FINDFLAGS) -newer $(targetDir)/jmce_assets-$(targetSuffix).pk3 2>/dev/null)
jmceMapsContents = $(shell $(FIND) jmce_maps $(FINDFLAGS) -newer $(targetDir)/jmce_maps-$(targetSuffix).pk3 2>/dev/null)

pk3Files := \
	$(targetDir)/jmce_assets-$(targetSuffix).pk3 \
	$(targetDir)/jmce_maps-$(targetSuffix).pk3

$(targetDir):
	@$(MKDIR) $(MKDIRFLAGS) $@
$(targetDir)/jmce_assets-$(targetSuffix).pk3: jmce_assets $(jmceAssetsContents) | $(targetDir)
	@$(DEL) $(DELFLAGS) $@
	$(SEVENZA) $(SEVENZAFLAGS) $@ ./$</*
$(targetDir)/jmce_maps-$(targetSuffix).pk3: jmce_maps $(jmceMapsContents) | $(targetDir)
	@$(DEL) $(DELFLAGS) $@
	$(SEVENZA) $(SEVENZAFLAGS) $@ ./$</*

# Build target
build: $(pk3Files)

# Clean target
clean: cleanCommon
	@echo Clean operation complete.

