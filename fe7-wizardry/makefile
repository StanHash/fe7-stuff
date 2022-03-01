CACHE_DIR := .cache_dir
$(shell mkdir -p $(CACHE_DIR) > /dev/null)

# ====================
# = TOOL DEFINITIONS =
# ====================

include $(DEVKITARM)/base_tools

TOOLS_DIR := tools

EA_DIR := $(TOOLS_DIR)/EventAssembler

EA                := $(EA_DIR)/ColorzCore
EADEP             := $(EA_DIR)/ea-dep
PARSEFILE         := $(EA_DIR)/Tools/ParseFile
PORTRAITFORMATTER := $(EA_DIR)/Tools/PortraitFormatter
PNG2DMP           := $(EA_DIR)/Tools/Png2Dmp
COMPRESS          := $(EA_DIR)/Tools/compress
LYN               := $(EA_DIR)/Tools/lyn

FE7_GBA := $(TOOLS_DIR)/fe7-us.gba
FE7_REF := $(TOOLS_DIR)/fe7-us.s
FE7_SYM := $(TOOLS_DIR)/fe7-us.sym

# ===============
# = MAIN TARGET =
# ===============

HACK_GBA := hack.gba
MAIN_EVENT := main.event

hack: $(HACK_GBA)

.PHONY: hack

MAIN_DEPENDS := $(shell $(EADEP) $(MAIN_EVENT) -I $(EA_DIR) --add-missings)

$(HACK_GBA): $(FE7_GBA) $(MAIN_EVENT) $(MAIN_DEPENDS)
	cp -f $(FE7_GBA) $(HACK_GBA)
	$(EA) A FE7 -input:$(MAIN_EVENT) -output:$(HACK_GBA) || rm -f $(HACK_GBA)

# ==================
# = OBJECTS & DMPS =
# ==================

LYN_REFERENCE := $(FE7_REF:.s=.o)

# OBJ to event
%.lyn.event: %.o $(LYN_REFERENCE)
	$(LYN) $< $(LYN_REFERENCE) > $@

# OBJ to DMP rule
%.dmp: %.o
	$(OBJCOPY) -S $< -O binary $@

# ========================
# = ASSEMBLY/COMPILATION =
# ========================

# Setting C/ASM include directories up
INCLUDE_DIRS := wizardry/include
INCFLAGS     := $(foreach dir, $(INCLUDE_DIRS), -I "$(dir)")

# setting up compilation flags
ARCH    := -mcpu=arm7tdmi -mthumb -mthumb-interwork
CFLAGS  := $(ARCH) $(INCFLAGS) -Wall -Wextra -O2 -mtune=arm7tdmi -mlong-calls
ASFLAGS := $(ARCH) $(INCFLAGS)

# defining dependency flags
CDEPFLAGS = -MMD -MT "$*.o" -MT "$*.asm" -MF "$(CACHE_DIR)/$(notdir $*).d" -MP
SDEPFLAGS = --MD "$(CACHE_DIR)/$(notdir $*).d"

# ASM to OBJ rule
%.o: %.s
	$(AS) $(ASFLAGS) $(SDEPFLAGS) -I $(dir $<) $< -o $@

# C to ASM rule
%.o: %.c
	$(CC) $(CFLAGS) $(CDEPFLAGS) -g -c $< -o $@

# C to ASM rule
%.asm: %.c
	$(CC) $(CFLAGS) $(CDEPFLAGS) -S $< -o $@ -fverbose-asm

# Avoid make deleting objects it thinks it doesn't need anymore
# Without this make may fail to detect some files as being up to date
.PRECIOUS: %.o;

-include $(wildcard $(CACHE_DIR)/*.d)
