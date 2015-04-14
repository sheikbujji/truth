1. Processor

- Downloads Leon3 from the Gaisler website (used version: grlib-gpl-1.1.0-b4102)
- Configures Leon3:

> $ cd designs/leon3-altera-ep2s60-ddr

> $ make config

- Opens created Quartus project (filename: leon3mp.qpf)
> then synthesizes, implements, and generates program file
> to generate an FPGA program image file

- Behavioral simulation setup using the file under designs/leon3-digilient-xup instead of one for altera for simulation

> $ make vsim (to generate testbench.mpf)

> $ make soft (to build ROM and RAM images)

> $ make ahbrom (to generate the AHBROM.vhd file)

2. Cross-Compiler

2.1. LLVM

- Download llvm package and unTAR it
- Configures the llvm package

> $ ../llvm/configure --prefix=<install path> --enable-optimized --enable-assertions
> $ make
> $ make install

- Download GCC front-end for llvm and unTAR it
- Configures the GCC front-end

> $ ../llvm-gcc-4.2/configure --prefix=/usr/local --enable-languages=c,c++ --enable-checking --enable-llvm=$PWD/../llvm-objects --disable-bootstrap --disable-multilib

2.2. BCC

- There is a prebuilt compiler for SPARC/Leon3 that can be downloaded from the Gaisler website.



# Compiler #

## Compiler for SPARC/Leon3 ##

## Debugger for SPARC/Leon3 ##

1. Install Xilinx USB Driver

http://sourceforge.net/apps/trac/libusb-win32/wiki

# Linux for SPARC/Leon3 #

Download snapgear

Fix a bug

In file "~/snapgear-2.6-p36c/vendors/gaisler/leon3mmu/Makefile" line:

CROSS\_COMPILER\_ROOT = $(shell which $(CROSS\_COMPILE)gcc |sed -e
's/bin\/sparc-linux-gcc//')

must be replaced for:

CROSS\_COMPILER\_ROOT = /opt/sparc-linux-3.4.4/

## GNU-MIPS ##

  * Installs GMP 4.3.2

> configure
> make
> make install

  * Installs MPFR 2.3.2

> configure --target=mips-elf
> make
> make install

  * Installs Binutil 2.19

> configure --target=mips-elf --prefix=/usr/local/mips-elf
> make
> make install

  * Installs GCC 4.3.2

> configure --with-newlib --without-headers --enable-languages="c" --target=mips-elf --prefix=/usr/local/mips-elf --with-gnu-ld --with-gnu-as --disable-libssp --with-mpfr
> make
> make install