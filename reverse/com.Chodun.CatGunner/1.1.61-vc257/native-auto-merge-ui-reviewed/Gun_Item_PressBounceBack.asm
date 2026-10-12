02c71894  stp x30,x21,[sp, #-0x20]!
02c71898  stp x20,x19,[sp, #0x10]
02c7189c  adrp x20,0x625c000
02c718a0  adrp x21,0x5e63000
02c718a4  mov x19,x0
02c718a8  ldrb w8,[x20, #0x2cd]
02c718ac  ldr x21,[x21, #0xb88]
02c718b0  tbnz w8,#0x0,0x02c718c8
02c718b4  adrp x0,0x5e63000
02c718b8  ldr x0,[x0, #0xb88]
02c718bc  bl 0x029f5a50
02c718c0  mov w8,#0x1
02c718c4  strb w8,[x20, #0x2cd]
02c718c8  ldr x0,[x21]
02c718cc  bl 0x029f5cec
02c718d0  mov x1,xzr
02c718d4  mov x20,x0
02c718d8  bl 0x04893238
02c718dc  mov x0,x20
02c718e0  mov x1,x19
02c718e4  str wzr,[x20, #0x10]
02c718e8  str x19,[x0, #0x20]!
02c718ec  bl 0x029f59f4
02c718f0  mov x0,x20
02c718f4  ldp x20,x19,[sp, #0x10]
02c718f8  ldp x30,x21,[sp], #0x20
02c718fc  ret
