02ca5d70  stp x30,x21,[sp, #-0x20]!
02ca5d74  stp x20,x19,[sp, #0x10]
02ca5d78  adrp x21,0x625c000
02ca5d7c  adrp x20,0x5e5d000
02ca5d80  mov x19,x0
02ca5d84  ldrb w8,[x21, #0x4c3]
02ca5d88  ldr x20,[x20, #0x920]
02ca5d8c  tbnz w8,#0x0,0x02ca5da4
02ca5d90  adrp x0,0x5e5d000
02ca5d94  ldr x0,[x0, #0x920]
02ca5d98  bl 0x029f5a50
02ca5d9c  mov w8,#0x1
02ca5da0  strb w8,[x21, #0x4c3]
02ca5da4  ldr x0,[x20]
02ca5da8  ldr w20,[x19, #0x20]
02ca5dac  ldr w8,[x0, #0xe4]
02ca5db0  cbnz w8,0x02ca5db8
02ca5db4  bl 0x029f5bd0
02ca5db8  mov w0,w20
02ca5dbc  mov x1,xzr
02ca5dc0  bl 0x02c9b870
02ca5dc4  mov w20,w0
02ca5dc8  mov x0,x19
02ca5dcc  mov x1,xzr
02ca5dd0  bl 0x057dc1c8
02ca5dd4  cbz x0,0x02ca5df0
02ca5dd8  mov w8,#0x1
02ca5ddc  mov x2,xzr
02ca5de0  bic w1,w8,w20
02ca5de4  ldp x20,x19,[sp, #0x10]
02ca5de8  ldp x30,x21,[sp], #0x20
02ca5dec  b 0x057dff3c
02ca5df0  bl 0x029f5cfc
