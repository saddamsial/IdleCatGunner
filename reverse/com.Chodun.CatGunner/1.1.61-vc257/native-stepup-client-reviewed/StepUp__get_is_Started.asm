02ca2784  stp x30,x21,[sp, #-0x20]!
02ca2788  stp x20,x19,[sp, #0x10]
02ca278c  adrp x21,0x625c000
02ca2790  adrp x20,0x5e59000
02ca2794  mov x19,x0
02ca2798  ldrb w8,[x21, #0x494]
02ca279c  ldr x20,[x20, #0x7d0]
02ca27a0  tbnz w8,#0x0,0x02ca27b8
02ca27a4  adrp x0,0x5e59000
02ca27a8  ldr x0,[x0, #0x7d0]
02ca27ac  bl 0x029f5a50
02ca27b0  mov w8,#0x1
02ca27b4  strb w8,[x21, #0x494]
02ca27b8  ldr x0,[x20]
02ca27bc  ldr x19,[x19, #0x40]
02ca27c0  ldr w8,[x0, #0xe4]
02ca27c4  cbnz w8,0x02ca27cc
02ca27c8  bl 0x029f5bd0
02ca27cc  mov x0,x19
02ca27d0  ldp x20,x19,[sp, #0x10]
02ca27d4  mov x1,xzr
02ca27d8  mov x2,xzr
02ca27dc  ldp x30,x21,[sp], #0x20
02ca27e0  b 0x048331a0
