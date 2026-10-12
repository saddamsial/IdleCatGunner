02cb1d6c  str x30,[sp, #-0x20]!
02cb1d70  stp x20,x19,[sp, #0x10]
02cb1d74  adrp x20,0x625c000
02cb1d78  adrp x19,0x5e5d000
02cb1d7c  ldrb w8,[x20, #0x56b]
02cb1d80  ldr x19,[x19, #0x920]
02cb1d84  tbnz w8,#0x0,0x02cb1da8
02cb1d88  adrp x0,0x5e5d000
02cb1d8c  ldr x0,[x0, #0x920]
02cb1d90  bl 0x029f5a50
02cb1d94  adrp x0,0x5e5d000
02cb1d98  ldr x0,[x0, #0x4e8]
02cb1d9c  bl 0x029f5a50
02cb1da0  mov w8,#0x1
02cb1da4  strb w8,[x20, #0x56b]
02cb1da8  ldr x0,[x19]
02cb1dac  ldr w8,[x0, #0xe4]
02cb1db0  cbnz w8,0x02cb1dbc
02cb1db4  bl 0x029f5bd0
02cb1db8  ldr x0,[x19]
02cb1dbc  ldr x8,[x0, #0xb8]
02cb1dc0  ldrb w8,[x8, #0xa]
02cb1dc4  cbz w8,0x02cb1dd8
02cb1dc8  ldp x20,x19,[sp, #0x10]
02cb1dcc  mov w0,#0x1
02cb1dd0  ldr x30,[sp], #0x20
02cb1dd4  ret
02cb1dd8  adrp x8,0x5e5d000
02cb1ddc  ldr x8,[x8, #0x4e8]
02cb1de0  ldr x0,[x8]
02cb1de4  ldr w8,[x0, #0xe4]
02cb1de8  cbnz w8,0x02cb1df0
02cb1dec  bl 0x029f5bd0
02cb1df0  ldp x20,x19,[sp, #0x10]
02cb1df4  ldr x30,[sp], #0x20
02cb1df8  b 0x02cb345c
