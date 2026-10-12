02c63d7c  stp x30,x21,[sp, #-0x20]!
02c63d80  stp x20,x19,[sp, #0x10]
02c63d84  adrp x20,0x625c000
02c63d88  adrp x21,0x5e63000
02c63d8c  mov x19,x0
02c63d90  ldrb w8,[x20, #0x23c]
02c63d94  ldr x21,[x21, #0x910]
02c63d98  tbnz w8,#0x0,0x02c63db0
02c63d9c  adrp x0,0x5e63000
02c63da0  ldr x0,[x0, #0x910]
02c63da4  bl 0x029f5a50
02c63da8  mov w8,#0x1
02c63dac  strb w8,[x20, #0x23c]
02c63db0  ldr x0,[x21]
02c63db4  bl 0x029f5cec
02c63db8  mov x1,xzr
02c63dbc  mov x20,x0
02c63dc0  bl 0x04893238
02c63dc4  mov x0,x20
02c63dc8  mov x1,x19
02c63dcc  str wzr,[x20, #0x10]
02c63dd0  str x19,[x0, #0x20]!
02c63dd4  bl 0x029f59f4
02c63dd8  mov x0,x20
02c63ddc  ldp x20,x19,[sp, #0x10]
02c63de0  ldp x30,x21,[sp], #0x20
02c63de4  ret
