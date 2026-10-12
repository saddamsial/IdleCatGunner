02c61d20  str x30,[sp, #-0x20]!
02c61d24  stp x20,x19,[sp, #0x10]
02c61d28  adrp x20,0x625c000
02c61d2c  mov x19,x0
02c61d30  ldrb w8,[x20, #0x226]
02c61d34  tbnz w8,#0x0,0x02c61d4c
02c61d38  adrp x0,0x5e63000
02c61d3c  ldr x0,[x0, #0x850]
02c61d40  bl 0x029f5a50
02c61d44  mov w8,#0x1
02c61d48  strb w8,[x20, #0x226]
02c61d4c  ldrb w8,[x19, #0x86]
02c61d50  cbz w8,0x02c61d64
02c61d54  strb wzr,[x19, #0xb0]
02c61d58  ldp x20,x19,[sp, #0x10]
02c61d5c  ldr x30,[sp], #0x20
02c61d60  ret
02c61d64  ldrb w8,[x19, #0xb0]
02c61d68  cbz w8,0x02c61d58
02c61d6c  ldrb w8,[x19, #0x84]
02c61d70  strb wzr,[x19, #0xb0]
02c61d74  cbnz w8,0x02c61d58
02c61d78  adrp x8,0x5e63000
02c61d7c  ldr x8,[x8, #0x850]
02c61d80  ldr x8,[x8]
02c61d84  ldr x8,[x8, #0xb8]
02c61d88  ldr x0,[x8]
02c61d8c  cbz x0,0x02c61d94
02c61d90  bl 0x02c5ffcc
02c61d94  mov x0,x19
02c61d98  bl 0x02c60fe0
02c61d9c  mov x0,x19
02c61da0  bl 0x02c61dcc
02c61da4  mov x1,x0
02c61da8  mov x0,x19
02c61dac  mov x2,xzr
02c61db0  bl 0x057e2120
02c61db4  str x0,[x19, #0xa8]!
02c61db8  mov x1,x0
02c61dbc  mov x0,x19
02c61dc0  ldp x20,x19,[sp, #0x10]
02c61dc4  ldr x30,[sp], #0x20
02c61dc8  b 0x029f59f4
