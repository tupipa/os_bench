CHERI_OUTPUT = /root/cheri/output
CHERI_SRC = /root/cheri/cheribsd
SDK_DIR = $(CHERI_OUTPUT)/sdk

CHERIBSD_ROOT256 = $(CHERI_OUTPUT)/rootfs-purecap256
CHERIBSD_ROOT128 = $(CHERI_OUTPUT)/rootfs-purecap128


CLANG = $(SDK_DIR)/bin/clang
CXX = $(SDK_DIR)/bin/clang++
SYSROOT = $(CHERIBSD_ROOT128)

OPT_SYSROOT = --sysroot=$(SYSROOT)
OPT_TARGET = -target cheri-unknown-freebsd -msoft-float
OPT_TOOLCHAIN = -B$(SDK_DIR)

OPTS = $(OPT_SYSROOT) $(OPT_TOOLCHAIN) $(OPT_TARGET) -mabi=sandbox

all:
	$(CLANG) -v $(OPTS) hello.c -o hello.exe


asm:
	$(CLANG) -v $(OPTS) -S -msoft-float hello.c
