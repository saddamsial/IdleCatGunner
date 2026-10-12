02c8b42c  stp x30,x21,[sp, #-0x20]!
02c8b430  stp x20,x19,[sp, #0x10]
02c8b434  adrp x21,0x625c000
02c8b438  mov w19,w1
02c8b43c  mov x20,x0
02c8b440  ldrb w8,[x21, #0x3ab]
02c8b444  tbnz w8,#0x0,0x02c8b45c
02c8b448  adrp x0,0x5e62000
02c8b44c  ldr x0,[x0, #0x660]
02c8b450  bl 0x029f5a50
02c8b454  mov w8,#0x1
02c8b458  strb w8,[x21, #0x3ab]
02c8b45c  cmp w19,#0x2
02c8b460  b.hi 0x02c8b4cc
02c8b464  adrp x21,0x5e62000
02c8b468  ldr x21,[x21, #0x660]
02c8b46c  ldr x0,[x21]
02c8b470  ldr w8,[x0, #0xe4]
02c8b474  cbnz w8,0x02c8b480
02c8b478  bl 0x029f5bd0
02c8b47c  ldr x0,[x21]
02c8b480  ldr x8,[x0, #0xb8]
02c8b484  ldr x8,[x8, #0x8]
02c8b488  cbz x8,0x02c8b4dc
02c8b48c  ldr w9,[x8, #0x18]
02c8b490  cmp w9,w19
02c8b494  b.ls 0x02c8b4e0
02c8b498  ldr x9,[x20, #0x20]
02c8b49c  cbz x9,0x02c8b4dc
02c8b4a0  ldr w10,[x9, #0x18]
02c8b4a4  cmp w10,w19
02c8b4a8  b.ls 0x02c8b4e0
02c8b4ac  mov w10,w19
02c8b4b0  add x8,x8,x10, LSL #0x2
02c8b4b4  add x9,x9,x10, LSL #0x2
02c8b4b8  ldr w8,[x8, #0x20]
02c8b4bc  ldr w9,[x9, #0x20]
02c8b4c0  sub w8,w8,w9
02c8b4c4  bic w0,w8,w8, ASR #0x1f
02c8b4c8  b 0x02c8b4d0
02c8b4cc  mov w0,wzr
02c8b4d0  ldp x20,x19,[sp, #0x10]
02c8b4d4  ldp x30,x21,[sp], #0x20
02c8b4d8  ret
02c8b4dc  bl 0x029f5cfc
02c8b4e0  bl 0x029f5d04
