02c61dcc  stp x30,x21,[sp, #-0x20]!
02c61dd0  stp x20,x19,[sp, #0x10]
02c61dd4  adrp x20,0x625c000
02c61dd8  adrp x21,0x5e63000
02c61ddc  mov x19,x0
02c61de0  ldrb w8,[x20, #0x228]
02c61de4  ldr x21,[x21, #0x888]
02c61de8  tbnz w8,#0x0,0x02c61e00
02c61dec  adrp x0,0x5e63000
02c61df0  ldr x0,[x0, #0x888]
02c61df4  bl 0x029f5a50
02c61df8  mov w8,#0x1
02c61dfc  strb w8,[x20, #0x228]
02c61e00  ldr x0,[x21]
02c61e04  bl 0x029f5cec
02c61e08  mov x1,xzr
02c61e0c  mov x20,x0
02c61e10  bl 0x04893238
02c61e14  mov x0,x20
02c61e18  mov x1,x19
02c61e1c  str wzr,[x20, #0x10]
02c61e20  str x19,[x0, #0x20]!
02c61e24  bl 0x029f59f4
02c61e28  mov x0,x20
02c61e2c  ldp x20,x19,[sp, #0x10]
02c61e30  ldp x30,x21,[sp], #0x20
02c61e34  ret
