02c8c484  stp x30,x21,[sp, #-0x20]!
02c8c488  stp x20,x19,[sp, #0x10]
02c8c48c  adrp x20,0x625c000
02c8c490  adrp x21,0x5e63000
02c8c494  mov x19,x0
02c8c498  ldrb w8,[x20, #0x3b5]
02c8c49c  ldr x21,[x21, #0xf38]
02c8c4a0  tbnz w8,#0x0,0x02c8c4b8
02c8c4a4  adrp x0,0x5e63000
02c8c4a8  ldr x0,[x0, #0xf38]
02c8c4ac  bl 0x029f5a50
02c8c4b0  mov w8,#0x1
02c8c4b4  strb w8,[x20, #0x3b5]
02c8c4b8  ldr x0,[x21]
02c8c4bc  bl 0x029f5cec
02c8c4c0  mov x1,xzr
02c8c4c4  mov x20,x0
02c8c4c8  bl 0x04893238
02c8c4cc  mov x0,x20
02c8c4d0  mov x1,x19
02c8c4d4  str wzr,[x20, #0x10]
02c8c4d8  str x19,[x0, #0x20]!
02c8c4dc  bl 0x029f59f4
02c8c4e0  mov x0,x20
02c8c4e4  ldp x20,x19,[sp, #0x10]
02c8c4e8  ldp x30,x21,[sp], #0x20
02c8c4ec  ret
