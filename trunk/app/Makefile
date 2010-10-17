# Makefile -- Makefile for util-linux Linux utilities
# Created: Sat Dec 26 20:09:40 1992
# Revised: Fri Oct  6 21:02:21 1995 by r.faith@ieee.org
# Copyright 1992, 1993, 1994, 1995 Rickard E. Faith (faith@cs.unc.edu)
#
#include ../make_include
#include ../MCONFIG
VERSION=2.10m
FLTFLAGS+=-s 64000

TARGETS =
TARGETS += stanford

all: $(TARGETS)

stanford: bubble.exe hanoi.exe matmul.exe perm.exe qsort.exe queen.exe sieve.exe

%.exe:%.c
	sparc-linux-gcc -g $^ -o $@
	sparc-linux-objdump $@ -D > $@.asm
#	llvm-gcc -O3 -emit-llvm $^.c -c -o $@.bc
#	rm coproc_dev_llvm.s -f
#	llc -march=sparc coproc_dev_llvm.bc -o coproc_dev_llvm.s
#	sparc-linux-gcc coproc_dev_llvm.s -o coproc_dev_llvm
	
.PHONY:	clean
clean:
	-rm -f *.o *~ core $(SBIN) *.elf *.gdb coproc_dev coproc_dev_llvm *.s

romfs:
	$(ROMFSINST) /home/coproc_dev/coproc_dev
	$(ROMFSINST) /home/coproc_dev/cvproc_dev_llvm
