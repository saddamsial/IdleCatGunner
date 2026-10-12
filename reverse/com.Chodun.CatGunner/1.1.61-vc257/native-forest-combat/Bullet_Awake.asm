02c652a0  stp x30,x21,[sp, #-0x20]!
02c652a4  stp x20,x19,[sp, #0x10]
02c652a8  adrp x20,0x625c000
02c652ac  adrp x21,0x5e61000
02c652b0  mov x19,x0
02c652b4  ldrb w8,[x20, #0x248]
02c652b8  ldr x21,[x21, #0x3d0]
02c652bc  tbnz w8,#0x0,0x02c652d4
02c652c0  adrp x0,0x5e61000
02c652c4  ldr x0,[x0, #0x3d0]
02c652c8  bl 0x029f5a50
02c652cc  mov w8,#0x1
02c652d0  strb w8,[x20, #0x248]
02c652d4  ldr x1,[x21]
02c652d8  mov x0,x19
02c652dc  bl 0x02fe5f2c
02c652e0  str x0,[x19, #0x80]!
02c652e4  mov x1,x0
02c652e8  mov x0,x19
02c652ec  ldp x20,x19,[sp, #0x10]
02c652f0  ldp x30,x21,[sp], #0x20
02c652f4  b 0x029f59f4
