02c4c8b8  str d8,[sp, #-0x30]!
02c4c8bc  stp x30,x21,[sp, #0x10]
02c4c8c0  stp x20,x19,[sp, #0x20]
02c4c8c4  fmov s8,s0
02c4c8c8  adrp x20,0x625c000
02c4c8cc  adrp x21,0x5e63000
02c4c8d0  ldrb w8,[x20, #0x12f]
02c4c8d4  ldr x21,[x21, #0x490]
02c4c8d8  mov x19,x0
02c4c8dc  tbnz w8,#0x0,0x02c4c8f4
02c4c8e0  adrp x0,0x5e63000
02c4c8e4  ldr x0,[x0, #0x490]
02c4c8e8  bl 0x029f5a50
02c4c8ec  mov w8,#0x1
02c4c8f0  strb w8,[x20, #0x12f]
02c4c8f4  ldr x0,[x21]
02c4c8f8  bl 0x029f5cec
02c4c8fc  mov x1,xzr
02c4c900  mov x20,x0
02c4c904  bl 0x04893238
02c4c908  mov x0,x20
02c4c90c  mov x1,x19
02c4c910  str wzr,[x20, #0x10]
02c4c914  str x19,[x0, #0x20]!
02c4c918  bl 0x029f59f4
02c4c91c  mov x0,x20
02c4c920  str s8,[x20, #0x28]
02c4c924  ldp x20,x19,[sp, #0x20]
02c4c928  ldp x30,x21,[sp, #0x10]
02c4c92c  ldr d8,[sp], #0x30
02c4c930  ret
