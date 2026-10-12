02c44d84  stp x30,x21,[sp, #-0x20]!
02c44d88  stp x20,x19,[sp, #0x10]
02c44d8c  adrp x20,0x625c000
02c44d90  adrp x21,0x5e63000
02c44d94  mov x19,x0
02c44d98  ldrb w8,[x20, #0xd2]
02c44d9c  ldr x21,[x21, #0x2e0]
02c44da0  tbnz w8,#0x0,0x02c44db8
02c44da4  adrp x0,0x5e63000
02c44da8  ldr x0,[x0, #0x2e0]
02c44dac  bl 0x029f5a50
02c44db0  mov w8,#0x1
02c44db4  strb w8,[x20, #0xd2]
02c44db8  ldr x0,[x21]
02c44dbc  bl 0x029f5cec
02c44dc0  mov x1,xzr
02c44dc4  mov x20,x0
02c44dc8  bl 0x04893238
02c44dcc  mov x0,x20
02c44dd0  mov x1,x19
02c44dd4  str wzr,[x20, #0x10]
02c44dd8  str x19,[x0, #0x20]!
02c44ddc  bl 0x029f59f4
02c44de0  mov x0,x20
02c44de4  ldp x20,x19,[sp, #0x10]
02c44de8  ldp x30,x21,[sp], #0x20
02c44dec  ret
