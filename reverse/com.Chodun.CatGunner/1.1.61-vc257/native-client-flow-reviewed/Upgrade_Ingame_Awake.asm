02cb0d4c  str d8,[sp, #-0x30]!
02cb0d50  stp x30,x21,[sp, #0x10]
02cb0d54  stp x20,x19,[sp, #0x20]
02cb0d58  adrp x20,0x625c000
02cb0d5c  adrp x21,0x5e5a000
02cb0d60  mov x19,x0
02cb0d64  ldrb w8,[x20, #0x546]
02cb0d68  ldr x21,[x21, #0x710]
02cb0d6c  tbnz w8,#0x0,0x02cb0d84
02cb0d70  adrp x0,0x5e5a000
02cb0d74  ldr x0,[x0, #0x710]
02cb0d78  bl 0x029f5a50
02cb0d7c  mov w8,#0x1
02cb0d80  strb w8,[x20, #0x546]
02cb0d84  ldr x0,[x21]
02cb0d88  ldr s8,[x19, #0x90]
02cb0d8c  bl 0x029f5cec
02cb0d90  fmov s0,s8
02cb0d94  mov x1,xzr
02cb0d98  mov x20,x0
02cb0d9c  bl 0x057e84e0
02cb0da0  mov x0,x19
02cb0da4  mov x1,x20
02cb0da8  str x20,[x0, #0xd8]!
02cb0dac  bl 0x029f59f4
02cb0db0  ldr x0,[x21]
02cb0db4  ldr s8,[x19, #0x94]
02cb0db8  bl 0x029f5cec
02cb0dbc  fmov s0,s8
02cb0dc0  mov x1,xzr
02cb0dc4  mov x20,x0
02cb0dc8  bl 0x057e84e0
02cb0dcc  str x20,[x19, #0xe0]!
02cb0dd0  mov x0,x19
02cb0dd4  mov x1,x20
02cb0dd8  ldp x20,x19,[sp, #0x20]
02cb0ddc  ldp x30,x21,[sp, #0x10]
02cb0de0  ldr d8,[sp], #0x30
02cb0de4  b 0x029f59f4
