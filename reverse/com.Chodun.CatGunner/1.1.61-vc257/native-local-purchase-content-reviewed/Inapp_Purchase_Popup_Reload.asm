02ca6150  stp x30,x21,[sp, #-0x20]!
02ca6154  stp x20,x19,[sp, #0x10]
02ca6158  adrp x21,0x625c000
02ca615c  adrp x20,0x5e5d000
02ca6160  mov x19,x0
02ca6164  ldrb w8,[x21, #0x4c9]
02ca6168  ldr x20,[x20, #0x920]
02ca616c  tbnz w8,#0x0,0x02ca6184
02ca6170  adrp x0,0x5e5d000
02ca6174  ldr x0,[x0, #0x920]
02ca6178  bl 0x029f5a50
02ca617c  mov w8,#0x1
02ca6180  strb w8,[x21, #0x4c9]
02ca6184  ldr x0,[x20]
02ca6188  ldr w20,[x19, #0x20]
02ca618c  ldr w8,[x0, #0xe4]
02ca6190  cbnz w8,0x02ca6198
02ca6194  bl 0x029f5bd0
02ca6198  mov w0,w20
02ca619c  mov x1,xzr
02ca61a0  bl 0x02c9b870
02ca61a4  mov w20,w0
02ca61a8  mov x0,x19
02ca61ac  mov x1,xzr
02ca61b0  bl 0x057dc1c8
02ca61b4  cbz x0,0x02ca61d0
02ca61b8  mov w8,#0x1
02ca61bc  mov x2,xzr
02ca61c0  bic w1,w8,w20
02ca61c4  ldp x20,x19,[sp, #0x10]
02ca61c8  ldp x30,x21,[sp], #0x20
02ca61cc  b 0x057dff3c
02ca61d0  bl 0x029f5cfc
