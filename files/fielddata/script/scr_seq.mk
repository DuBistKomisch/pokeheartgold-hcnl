# Use the assembler to build the scripts
# Framework for when we actually get around to script dumping
SCRIPT_DIR  := files/fielddata/script/scr_seq
SCRIPT_NARC := $(SCRIPT_DIR).narc
SCRIPT_SRCS := $(wildcard $(SCRIPT_DIR)/*.s)
SCRIPT_OBJS := $(SCRIPT_SRCS:%.s=%.o)
SCRIPT_BINS := $(SCRIPT_SRCS:%.s=%.bin)
SCRIPT_HEADS := $(SCRIPT_SRCS:%.s=%.h)

# Scripts now depend on msgdata
MSGDATA_MSG_DIR := files/msgdata/msg

define script_find_gmm_h
GMM_H := $(shell head -n5 $(1:%.bin=%.s) | grep -m1 "msgdata/msg/.*\.h" | cut -d'"' -f2)
ifneq ($(GMM_H),)
$(1): files/$(GMM_H)
endif
endef

$(foreach binfile,$(SCRIPT_BINS),$(eval $(call script_find_gmm_h,$(binfile))))

ifneq (1,0)
$(SCRIPT_BINS): MWASFLAGS += -DPM_ASM
ifeq ($(NODEP),)
SCRIPT_DEPS := $(SCRIPT_BINS:%.bin=%.d)
$(SCRIPT_DEPS):

$(SCRIPT_BINS): %.bin: %.s
$(SCRIPT_BINS): %.bin: %.s %.d
	@echo $(MAP_STEM)
	$(WINE) $(MWAS) $(MWASFLAGS) $(DEPFLAGS) -o $*.o $<
	@$(call fixdep,$*.d)
	@$(SED) -i 's/\.o/.bin/' $*.d
	$(OBJCOPY) -O binary --file-alignment 4 $*.o $@

include $(wildcard $(SCRIPT_DEPS))
else
$(SCRIPT_BINS): %.bin: %.s
	@echo $(MAP_STEM)
	$(WINE) $(MWAS) $(MWASFLAGS) -o $*.o $<
	$(OBJCOPY) -O binary --file-alignment 4 $*.o $@
endif
else
$(SCRIPT_BINS):
endif

$(SCRIPT_HEADS): %.h: %.bin

$(SCRIPT_NARC): $(SCRIPT_BINS) check_scripts

check_scripts:
ifeq ($(COMPARE),1)
	@$(SHA1SUM) --quiet -c $(PROJECT_ROOT)/scr_seq.sha1
endif

# Once this has been reversed, uncomment the below
FS_CLEAN_TARGETS += $(SCRIPT_NARC) $(SCRIPT_BINS)
