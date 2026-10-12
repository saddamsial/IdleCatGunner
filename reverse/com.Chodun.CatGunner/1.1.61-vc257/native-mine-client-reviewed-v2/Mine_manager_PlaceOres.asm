02c4a790  stp x30,x21,[sp, #-0x20]!
02c4a794  stp x20,x19,[sp, #0x10]
02c4a798  adrp x20,0x625c000
02c4a79c  adrp x21,0x5e63000
02c4a7a0  mov x19,x0
02c4a7a4  ldrb w8,[x20, #0x11a]
02c4a7a8  ldr x21,[x21, #0x3c8]
02c4a7ac  tbnz w8,#0x0,0x02c4a7c4
02c4a7b0  adrp x0,0x5e63000
02c4a7b4  ldr x0,[x0, #0x3c8]
02c4a7b8  bl 0x029f5a50
02c4a7bc  mov w8,#0x1
02c4a7c0  strb w8,[x20, #0x11a]
02c4a7c4  ldr x0,[x21]
02c4a7c8  bl 0x029f5cec
02c4a7cc  mov x1,xzr
02c4a7d0  mov x20,x0
02c4a7d4  bl 0x04893238
02c4a7d8  mov x0,x20
02c4a7dc  mov x1,x19
02c4a7e0  str wzr,[x20, #0x10]
02c4a7e4  str x19,[x0, #0x20]!
02c4a7e8  bl 0x029f59f4
02c4a7ec  mov x0,x20
02c4a7f0  ldp x20,x19,[sp, #0x10]
02c4a7f4  ldp x30,x21,[sp], #0x20
02c4a7f8  ret
