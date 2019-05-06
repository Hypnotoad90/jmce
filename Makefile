# Use one of these targets to build:
# debug, beta, release, clean

# Variables and targets needed for build
include utilities/common.make

# PK3 files
pk3Files := \
	$(targetDir)/jmce_assets-$(targetSuffix).pk3 \
	$(targetDir)/jmce_maps-$(targetSuffix).pk3

$(targetDir):
	@$(MKDIR) $(MKDIRFLAGS) $@
$(targetDir)/jmce_assets-$(targetSuffix).pk3: jmce_assets | $(targetDir)
	@$(DEL) $(DELFLAGS) $@
	$(SEVENZA) $(SEVENZAFLAGS) $@ ./$</*
$(targetDir)/jmce_maps-$(targetSuffix).pk3: jmce_maps | $(targetDir)
	@$(DEL) $(DELFLAGS) $@
	$(SEVENZA) $(SEVENZAFLAGS) $@ ./$</*

# Build target
build: $(pk3Files)

# Clean target
clean: cleanCommon
	@echo Clean operation complete.

