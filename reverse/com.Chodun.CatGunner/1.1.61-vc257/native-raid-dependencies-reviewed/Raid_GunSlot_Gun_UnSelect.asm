02c5b474  stp x30,x21,[sp, #-0x20]!
02c5b478  stp x20,x19,[sp, #0x10]
02c5b47c  adrp x21,0x625c000
02c5b480  adrp x20,0x5e5e000
02c5b484  mov x19,x0
02c5b488  ldrb w8,[x21, #0x1db]
02c5b48c  ldr x20,[x20, #0x70]
02c5b490  tbnz w8,#0x0,0x02c5b4a8
02c5b494  adrp x0,0x5e5e000
02c5b498  ldr x0,[x0, #0x70]
02c5b49c  bl 0x029f5a50
02c5b4a0  mov w8,#0x1
02c5b4a4  strb w8,[x21, #0x1db]
02c5b4a8  ldr x0,[x20]
02c5b4ac  ldr w8,[x0, #0xe4]
02c5b4b0  cbnz w8,0x02c5b4bc
02c5b4b4  bl 0x029f5bd0
02c5b4b8  ldr x0,[x20]
02c5b4bc  ldr x8,[x0, #0xb8]
02c5b4c0  ldr x0,[x8]
02c5b4c4  cbz x0,0x02c5b4dc
02c5b4c8  ldr w1,[x19, #0x20]
02c5b4cc  ldp x20,x19,[sp, #0x10]
02c5b4d0  mov x2,xzr
02c5b4d4  ldp x30,x21,[sp], #0x20
02c5b4d8  b 0x02c58814
02c5b4dc  bl 0x029f5cfc
