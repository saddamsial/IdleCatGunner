02ba5d90  stp x30,x21,[sp, #-0x20]!
02ba5d94  stp x20,x19,[sp, #0x10]
02ba5d98  mov x20,x0
02ba5d9c  mov x19,x0
02ba5da0  mov w21,w1
02ba5da4  ldr x8,[x20, #0xd8]!
02ba5da8  cbz x8,0x02ba5dbc
02ba5dac  mov x0,x19
02ba5db0  mov x1,x8
02ba5db4  mov x2,xzr
02ba5db8  bl 0x057e237c
02ba5dbc  mov x0,x19
02ba5dc0  mov w1,w21
02ba5dc4  bl 0x02ba5df0
02ba5dc8  mov x1,x0
02ba5dcc  mov x0,x19
02ba5dd0  mov x2,xzr
02ba5dd4  bl 0x057e2120
02ba5dd8  mov x1,x0
02ba5ddc  mov x0,x20
02ba5de0  str x1,[x19, #0xd8]
02ba5de4  ldp x20,x19,[sp, #0x10]
02ba5de8  ldp x30,x21,[sp], #0x20
02ba5dec  b 0x029f59f4
