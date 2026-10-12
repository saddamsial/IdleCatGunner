02ca91c4  stp x30,x21,[sp, #-0x20]!
02ca91c8  stp x20,x19,[sp, #0x10]
02ca91cc  adrp x21,0x625c000
02ca91d0  adrp x20,0x5e5d000
02ca91d4  mov x19,x0
02ca91d8  ldrb w8,[x21, #0x4f6]
02ca91dc  ldr x20,[x20, #0x338]
02ca91e0  tbnz w8,#0x0,0x02ca91f8
02ca91e4  adrp x0,0x5e5d000
02ca91e8  ldr x0,[x0, #0x338]
02ca91ec  bl 0x029f5a50
02ca91f0  mov w8,#0x1
02ca91f4  strb w8,[x21, #0x4f6]
02ca91f8  ldr x0,[x20]
02ca91fc  ldr w8,[x0, #0xe4]
02ca9200  cbnz w8,0x02ca920c
02ca9204  bl 0x029f5bd0
02ca9208  ldr x0,[x20]
02ca920c  ldr x8,[x0, #0xb8]
02ca9210  ldrb w9,[x8]
02ca9214  cbz w9,0x02ca92c4
02ca9218  ldr w9,[x0, #0xe4]
02ca921c  cbnz w9,0x02ca922c
02ca9220  bl 0x029f5bd0
02ca9224  ldr x8,[x20]
02ca9228  ldr x8,[x8, #0xb8]
02ca922c  mov x0,x19
02ca9230  mov w1,#0x3
02ca9234  strb wzr,[x8]
02ca9238  bl 0x02ca86cc
02ca923c  ldr x0,[x19, #0x80]
02ca9240  cbz x0,0x02ca92d0
02ca9244  ldp w8,w9,[x19, #0x58]
02ca9248  sub w8,w9,w8
02ca924c  scvtf s1,w9
02ca9250  scvtf s0,w8
02ca9254  fdiv s0,s0,s1
02ca9258  bl 0x02ca90e8
02ca925c  ldr x0,[x19, #0x40]
02ca9260  cbz x0,0x02ca92d0
02ca9264  mov w1,#0x1
02ca9268  mov x2,xzr
02ca926c  mov w19,#0x1
02ca9270  bl 0x057dff3c
02ca9274  adrp x20,0x625b000
02ca9278  ldrb w8,[x20, #0xa57]
02ca927c  cbnz w8,0x02ca9290
02ca9280  adrp x0,0x5e5d000
02ca9284  ldr x0,[x0, #0xd70]
02ca9288  bl 0x029f5a50
02ca928c  strb w19,[x20, #0xa57]
02ca9290  adrp x8,0x5e5d000
02ca9294  ldr x8,[x8, #0xd70]
02ca9298  ldr x8,[x8]
02ca929c  ldr x8,[x8, #0xb8]
02ca92a0  ldr x0,[x8]
02ca92a4  cbz x0,0x02ca92d0
02ca92a8  ldp x20,x19,[sp, #0x10]
02ca92ac  fmov s0,0x3f800000
02ca92b0  mov w1,#0xc
02ca92b4  mov x2,xzr
02ca92b8  mov x3,xzr
02ca92bc  ldp x30,x21,[sp], #0x20
02ca92c0  b 0x02c1f10c
02ca92c4  ldp x20,x19,[sp, #0x10]
02ca92c8  ldp x30,x21,[sp], #0x20
02ca92cc  ret
02ca92d0  bl 0x029f5cfc
