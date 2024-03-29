CHERI_OUTPUT = /root/cheri/output
CHERI_SRC = /root/cheri/cheribsd
SDK_DIR = $(CHERI_OUTPUT)/sdk

CHERIBSD_PURE_ROOT256 = $(CHERI_OUTPUT)/rootfs-purecap256
CHERIBSD_PURE_ROOT128 = $(CHERI_OUTPUT)/rootfs-purecap128
CHERIBSD_HYB_ROOT128 = $(CHERI_OUTPUT)/rootfs128


CLANG = $(SDK_DIR)/bin/clang
CXX = $(SDK_DIR)/bin/clang++
OBJDUMP = $(SDK_DIR)/bin/cheri-unknown-freebsd-objdump

SYSROOT_PURE = $(CHERIBSD_PURE_ROOT128)
SYSROOT_HYB = $(CHERIBSD_HYB_ROOT128)
#SYSROOT_HYB = $(CHERIBSD_HYB_ROOT256)

OPT_SYSROOT_PURE = --sysroot=$(SYSROOT_PURE)
OPT_SYSROOT_HYB = --sysroot=$(SYSROOT_HYB)

OPT_TARGET = -target cheri-unknown-freebsd -msoft-float
OPT_TOOLCHAIN = -B$(SDK_DIR)

OPT_LIBS = -lcheri

OPTS = $(OPT_TOOLCHAIN) $(OPT_TARGET) 
OPTS += $(OPT_INC)
OPTS += $(OPT_LIBS)

#OPT_COMPILE = -Wl,-z,notext -fPIC
#OPTS += $(OPT_COMPILE)

OPTS_PURE = $(OPT_SYSROOT_PURE) $(OPTS) -mabi=purecap
#OPTS_PURE = $(OPTS)
OPTS_HYB = $(OPT_SYSROOT_HYB) $(OPTS)

TARGET_BIN = share

SRC = util.c sandboxes.S $(TARGET_BIN).c

SSH_PORT_PURE ?= 8023
SSH_PORT_HYB ?= 8022
SSH_SERVER = root@localhost

all: hyb

pure: compile-pure disas-pure send-pure

hyb: compile-hyb disas-hyb send-hyb


compile-pure: $(SRC) asm-pure
	$(CLANG) -v $(OPTS_PURE) $(SRC) -o $(TARGET_BIN).exe

compile-hyb: $(SRC) asm-hyb
	$(CLANG) -v $(OPTS_HYB) $(SRC) -S -emit-llvm
	$(CLANG) -v $(OPTS_HYB) $(SRC) -o $(TARGET_BIN).exe


asm-pure:
	$(CLANG) -v $(OPTS_PURE) -S -msoft-float $(TARGET_BIN).c -o $(TARGET_BIN)-pure.asm

asm-hyb:
	$(CLANG) -v $(OPTS_HYB) -S -msoft-float $(TARGET_BIN).c -o $(TARGET_BIN)-hyb.asm


cpp:
	$(CLANG) -v $(OPTS) -E -msoft-float $(TARGET_BIN).c

disas-pure:
	$(OBJDUMP) --arch-name=cheri --arch=cheri -d $(TARGET_BIN).exe > $(TARGET_BIN).exe-pure.disas
disas-hyb:
	$(OBJDUMP) --arch-name=cheri --arch=cheri -d $(TARGET_BIN).exe > $(TARGET_BIN).exe-hyb.disas

send-pure:
	scp -P $(SSH_PORT_PURE) $(TARGET_BIN).exe $(SSH_SERVER):/root/

send-hyb:
	scp -P $(SSH_PORT_HYB) $(TARGET_BIN).exe $(SSH_SERVER):/root/
run:
	#ssh $(SSH_SERVER) -p $(SSH_PORT_PURE) /root/$(TARGET_BIN).exe

clean:
	rm *.exe *.asm *.disas



