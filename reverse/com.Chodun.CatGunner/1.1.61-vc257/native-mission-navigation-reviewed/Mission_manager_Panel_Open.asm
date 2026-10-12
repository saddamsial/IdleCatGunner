02ba5420  stp x30,x21,[sp, #-0x20]!
02ba5424  stp x20,x19,[sp, #0x10]
02ba5428  adrp x20,0x625b000
02ba542c  mov x19,x0
02ba5430  ldrb w8,[x20, #0xa45]
02ba5434  tbnz w8,#0x0,0x02ba544c
02ba5438  adrp x0,0x5e5d000
02ba543c  ldr x0,[x0, #0x5b0]
02ba5440  bl 0x029f5a50
02ba5444  mov w8,#0x1
02ba5448  strb w8,[x20, #0xa45]
02ba544c  mov x0,x19
02ba5450  bl 0x02ba3ef4
02ba5454  ldr x0,[x19, #0x88]
02ba5458  cbz x0,0x02ba54c8
02ba545c  mov x1,xzr
02ba5460  bl 0x057dc1c8
02ba5464  cbz x0,0x02ba54c8
02ba5468  adrp x20,0x5e5d000
02ba546c  mov w1,#0x1
02ba5470  mov x2,xzr
02ba5474  ldr x20,[x20, #0x5b0]
02ba5478  mov w21,#0x1
02ba547c  bl 0x057dff3c
02ba5480  ldr x8,[x20]
02ba5484  mov x0,x19
02ba5488  ldr x8,[x8, #0xb8]
02ba548c  strb w21,[x8]
02ba5490  bl 0x02ba4028
02ba5494  ldr x0,[x19, #0xc8]
02ba5498  cbz x0,0x02ba54c8
02ba549c  fmov s0,0x3f800000
02ba54a0  mov x1,xzr
02ba54a4  bl 0x05abe0b8
02ba54a8  mov x0,x19
02ba54ac  bl 0x02ba54cc
02ba54b0  mov x1,x0
02ba54b4  mov x0,x19
02ba54b8  mov x2,xzr
02ba54bc  ldp x20,x19,[sp, #0x10]
02ba54c0  ldp x30,x21,[sp], #0x20
02ba54c4  b 0x057e2120
02ba54c8  bl 0x029f5cfc
