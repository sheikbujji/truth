
prom.exe:     file format elf32-sparc

Disassembly of section .text:

00000000 <_text_start>:
   0:	91 d0 20 00 	ta  0
   4:	81 d8 20 00 	flush  %g0
   8:	03 00 00 04 	sethi  %hi(0x1000), %g1
   c:	82 10 60 e0 	or  %g1, 0xe0, %g1	! 10e0 <__DTOR_END__+0xf10>
  10:	81 88 40 00 	mov  %g1, %psr
  14:	81 90 00 00 	mov  %g0, %wim
  18:	81 98 00 00 	mov  %g0, %tbr
  1c:	81 80 00 00 	mov  %g0, %y
  20:	01 00 00 00 	nop 
  24:	07 20 00 03 	sethi  %hi(0x80000c00), %g3
  28:	86 10 e1 00 	or  %g3, 0x100, %g3	! 80000d00 <LEON_REG+0xd00>
  2c:	03 00 00 04 	sethi  %hi(0x1000), %g1
  30:	82 10 62 34 	or  %g1, 0x234, %g1	! 1234 <__DTOR_END__+0x1064>
  34:	05 00 00 04 	sethi  %hi(0x1000), %g2
  38:	84 10 a2 34 	or  %g2, 0x234, %g2	! 1234 <__DTOR_END__+0x1064>
  3c:	8b b0 40 02 	cpop1  [ %g1 + %g2 ], %g5
  40:	83 b8 40 02 	cpop2  [ %g1 + %g2 ], %g1
  44:	c2 20 c0 00 	st  %g1, [ %g3 ]
  48:	c8 00 c0 00 	ld  [ %g3 ], %g4
  4c:	07 20 00 03 	sethi  %hi(0x80000c00), %g3
  50:	86 10 e1 00 	or  %g3, 0x100, %g3	! 80000d00 <LEON_REG+0xd00>
  54:	07 20 00 03 	sethi  %hi(0x80000c00), %g3
  58:	86 10 e1 00 	or  %g3, 0x100, %g3	! 80000d00 <LEON_REG+0xd00>
  5c:	03 00 00 04 	sethi  %hi(0x1000), %g1
  60:	82 10 62 34 	or  %g1, 0x234, %g1	! 1234 <__DTOR_END__+0x1064>
  64:	05 00 00 04 	sethi  %hi(0x1000), %g2
  68:	84 10 a2 34 	or  %g2, 0x234, %g2	! 1234 <__DTOR_END__+0x1064>
  6c:	80 a0 40 02 	cmp  %g1, %g2
  70:	12 80 00 02 	bne  78 <error>
  74:	01 00 00 00 	nop 

00000078 <error>:
  78:	81 d8 20 00 	flush  %g0
  7c:	03 00 00 04 	sethi  %hi(0x1000), %g1
  80:	82 10 60 e0 	or  %g1, 0xe0, %g1	! 10e0 <__DTOR_END__+0xf10>
  84:	81 88 40 00 	mov  %g1, %psr
  88:	81 90 00 00 	mov  %g0, %wim
  8c:	81 98 00 00 	mov  %g0, %tbr
  90:	81 80 00 00 	mov  %g0, %y
  94:	01 00 00 00 	nop 
  98:	03 00 20 40 	sethi  %hi(0x810000), %g1
  9c:	82 10 60 0f 	or  %g1, 0xf, %g1	! 81000f <RAM_SIZE+0x41000f>
  a0:	c2 a0 00 40 	sta  %g1, [ %g0 ] (2)
  a4:	87 44 40 00 	rd  %asr17, %g3
  a8:	86 08 e0 1f 	and  %g3, 0x1f, %g3
  ac:	88 10 00 00 	mov  %g0, %g4
  b0:	8a 10 00 00 	mov  %g0, %g5
  b4:	8c 10 00 00 	mov  %g0, %g6
  b8:	8e 10 00 00 	mov  %g0, %g7
  bc:	a0 10 00 00 	mov  %g0, %l0
  c0:	a2 10 00 00 	mov  %g0, %l1
  c4:	a4 10 00 00 	mov  %g0, %l2
  c8:	a6 10 00 00 	mov  %g0, %l3
  cc:	a8 10 00 00 	mov  %g0, %l4
  d0:	aa 10 00 00 	mov  %g0, %l5
  d4:	ac 10 00 00 	mov  %g0, %l6
  d8:	ae 10 00 00 	mov  %g0, %l7
  dc:	90 10 00 00 	mov  %g0, %o0
  e0:	92 10 00 00 	mov  %g0, %o1
  e4:	94 10 00 00 	mov  %g0, %o2
  e8:	96 10 00 00 	mov  %g0, %o3
  ec:	98 10 00 00 	mov  %g0, %o4
  f0:	9a 10 00 00 	mov  %g0, %o5
  f4:	9c 10 00 00 	mov  %g0, %sp
  f8:	9e 10 00 00 	mov  %g0, %o7
  fc:	86 a0 e0 01 	deccc  %g3
 100:	16 bf ff ef 	bge  bc <error+0x44>
 104:	81 e0 00 00 	save 
 108:	82 10 20 02 	mov  2, %g1
 10c:	81 90 40 00 	mov  %g1, %wim
 110:	03 00 00 04 	sethi  %hi(0x1000), %g1
 114:	82 10 60 e0 	or  %g1, 0xe0, %g1	! 10e0 <__DTOR_END__+0xf10>
 118:	81 88 40 00 	mov  %g1, %psr
 11c:	01 00 00 00 	nop 
 120:	01 00 00 00 	nop 
 124:	01 00 00 00 	nop 
 128:	83 48 00 00 	rd  %psr, %g1
 12c:	83 30 60 0c 	srl  %g1, 0xc, %g1
 130:	80 88 60 01 	btst  1, %g1
 134:	02 80 00 19 	be  198 <_fsrxx+0x8>
 138:	01 00 00 00 	nop 
 13c:	07 00 00 00 	sethi  %hi(0), %g3
 140:	86 10 e1 90 	or  %g3, 0x190, %g3	! 190 <_fsrxx>
 144:	c1 08 c0 00 	ld  [ %g3 ], %fsr
 148:	c1 18 c0 00 	ldd  [ %g3 ], %f0
 14c:	c5 18 c0 00 	ldd  [ %g3 ], %f2
 150:	c9 18 c0 00 	ldd  [ %g3 ], %f4
 154:	cd 18 e0 08 	ldd  [ %g3 + 8 ], %f6
 158:	d1 18 c0 00 	ldd  [ %g3 ], %f8
 15c:	d5 18 c0 00 	ldd  [ %g3 ], %f10
 160:	d9 18 c0 00 	ldd  [ %g3 ], %f12
 164:	dd 18 c0 00 	ldd  [ %g3 ], %f14
 168:	e1 18 c0 00 	ldd  [ %g3 ], %f16
 16c:	e5 18 c0 00 	ldd  [ %g3 ], %f18
 170:	e9 18 c0 00 	ldd  [ %g3 ], %f20
 174:	ed 18 c0 00 	ldd  [ %g3 ], %f22
 178:	f1 18 c0 00 	ldd  [ %g3 ], %f24
 17c:	f5 18 c0 00 	ldd  [ %g3 ], %f26
 180:	f9 18 c0 00 	ldd  [ %g3 ], %f28
 184:	10 80 00 05 	b  198 <_fsrxx+0x8>
 188:	fd 18 c0 00 	ldd  [ %g3 ], %f30
 18c:	01 00 00 00 	nop 

00000190 <_fsrxx>:
	...
 198:	05 00 00 08 	sethi  %hi(0x2000), %g2
 19c:	82 10 00 00 	mov  %g0, %g1
 1a0:	3d 10 03 ff 	sethi  %hi(0x400ffc00), %fp
 1a4:	bc 17 a3 e0 	or  %fp, 0x3e0, %fp	! 400fffe0 <_data_start+0xfffe0>
 1a8:	bc 27 80 01 	sub  %fp, %g1, %fp
 1ac:	9c 27 a0 60 	sub  %fp, 0x60, %sp
 1b0:	03 10 00 00 	sethi  %hi(0x40000000), %g1
 1b4:	81 c0 40 00 	jmp  %g1
 1b8:	01 00 00 00 	nop 
 1bc:	01 00 00 00 	nop 

000001c0 <__CTOR_LIST__>:
	...

000001c8 <__CTOR_END__>:
	...
