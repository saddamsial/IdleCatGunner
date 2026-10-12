02c63f94  stp x29,x30,[sp, #-0x60]!
02c63f98  stp x28,x27,[sp, #0x10]
02c63f9c  stp x26,x25,[sp, #0x20]
02c63fa0  stp x24,x23,[sp, #0x30]
02c63fa4  stp x22,x21,[sp, #0x40]
02c63fa8  stp x20,x19,[sp, #0x50]
02c63fac  adrp x23,0x625c000
02c63fb0  adrp x22,0x5e5d000
02c63fb4  mov x20,x2
02c63fb8  ldrb w8,[x23, #0x23e]
02c63fbc  ldr x22,[x22, #0xd38]
02c63fc0  mov x19,x1
02c63fc4  mov x21,x0
02c63fc8  tbnz w8,#0x0,0x02c64004
02c63fcc  adrp x0,0x5e5d000
02c63fd0  ldr x0,[x0, #0xd38]
02c63fd4  bl 0x029f5a50
02c63fd8  adrp x0,0x5e62000
02c63fdc  ldr x0,[x0, #0xfe8]
02c63fe0  bl 0x029f5a50
02c63fe4  adrp x0,0x5e63000
02c63fe8  ldr x0,[x0, #0x128]
02c63fec  bl 0x029f5a50
02c63ff0  adrp x0,0x5e59000
02c63ff4  ldr x0,[x0, #0x1c0]
02c63ff8  bl 0x029f5a50
02c63ffc  mov w8,#0x1
02c64000  strb w8,[x23, #0x23e]
02c64004  mov x0,x19
02c64008  mov x1,xzr
02c6400c  str xzr,[x19]
02c64010  bl 0x029f59f4
02c64014  mov x0,x20
02c64018  mov x1,xzr
02c6401c  str xzr,[x20]
02c64020  bl 0x029f59f4
02c64024  ldr x8,[x22]
02c64028  ldr x8,[x8, #0xb8]
02c6402c  ldr x8,[x8]
02c64030  cbz x8,0x02c641a4
02c64034  adrp x27,0x5e59000
02c64038  mov w29,wzr
02c6403c  mov w26,#0x1
02c64040  ldr x27,[x27, #0x1c0]
02c64044  ldr x22,[x8, #0x90]
02c64048  ldr x8,[x21, #0x20]
02c6404c  cbz x8,0x02c641a4
02c64050  mov x23,xzr
02c64054  mov w28,wzr
02c64058  ldr w9,[x8, #0x18]
02c6405c  cmp w28,w9
02c64060  b.ge 0x02c6414c
02c64064  b.cs 0x02c641a8
02c64068  add x8,x8,w28, SXTW  #0x3
02c6406c  ldr x24,[x8, #0x20]
02c64070  cbz x24,0x02c641a4
02c64074  ldrb w8,[x24, #0x48]
02c64078  cbz w8,0x02c6413c
02c6407c  ldr w8,[x24, #0x40]
02c64080  cmp w8,w29
02c64084  b.ne 0x02c6413c
02c64088  ldrb w8,[x24, #0x84]
02c6408c  cbnz w8,0x02c6413c
02c64090  ldrb w8,[x24, #0x86]
02c64094  cbnz w8,0x02c6413c
02c64098  ldrb w8,[x24, #0x49]
02c6409c  cbnz w8,0x02c6413c
02c640a0  ldr x0,[x27]
02c640a4  ldr x25,[x21, #0x40]
02c640a8  ldr w8,[x0, #0xe4]
02c640ac  cbnz w8,0x02c640b4
02c640b0  bl 0x029f5bd0
02c640b4  mov x0,x24
02c640b8  mov x1,x25
02c640bc  mov x2,xzr
02c640c0  bl 0x057e14b4
02c640c4  tbnz w0,#0x0,0x02c6413c
02c640c8  ldr w1,[x24, #0x44]
02c640cc  tbnz w1,#0x1f,0x02c6413c
02c640d0  cbz x22,0x02c641a4
02c640d4  ldr w8,[x22, #0x18]
02c640d8  cmp w1,w8
02c640dc  b.ge 0x02c6413c
02c640e0  adrp x8,0x5e63000
02c640e4  mov x0,x22
02c640e8  ldr x8,[x8, #0x128]
02c640ec  ldr x2,[x8]
02c640f0  bl 0x044f7718
02c640f4  cmp w0,w29
02c640f8  b.ne 0x02c6413c
02c640fc  ldr x0,[x27]
02c64100  ldr w8,[x0, #0xe4]
02c64104  cbnz w8,0x02c6410c
02c64108  bl 0x029f5bd0
02c6410c  mov x0,x23
02c64110  mov x1,xzr
02c64114  mov x2,xzr
02c64118  bl 0x057e14b4
02c6411c  tbz w0,#0x0,0x02c64128
02c64120  mov x23,x24
02c64124  b 0x02c6413c
02c64128  cbz x23,0x02c641a4
02c6412c  ldr w8,[x23, #0x44]
02c64130  ldr w9,[x24, #0x44]
02c64134  cmp w8,w9
02c64138  b.ne 0x02c64180
02c6413c  ldr x8,[x21, #0x20]
02c64140  add w28,w28,#0x1
02c64144  cbnz x8,0x02c64058
02c64148  b 0x02c641a4
02c6414c  cmp w29,#0xb
02c64150  add w29,w29,#0x1
02c64154  cset w26,cc
02c64158  cmp w29,#0xc
02c6415c  b.ne 0x02c6404c
02c64160  and w0,w26,#0x1
02c64164  ldp x20,x19,[sp, #0x50]
02c64168  ldp x22,x21,[sp, #0x40]
02c6416c  ldp x24,x23,[sp, #0x30]
02c64170  ldp x26,x25,[sp, #0x20]
02c64174  ldp x28,x27,[sp, #0x10]
02c64178  ldp x29,x30,[sp], #0x60
02c6417c  ret
02c64180  mov x0,x20
02c64184  mov x1,x23
02c64188  str x23,[x20]
02c6418c  bl 0x029f59f4
02c64190  mov x0,x19
02c64194  mov x1,x24
02c64198  str x24,[x19]
02c6419c  bl 0x029f59f4
02c641a0  b 0x02c64160
02c641a4  bl 0x029f5cfc
02c641a8  bl 0x029f5d04
