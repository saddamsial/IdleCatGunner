02c91d0c  str x30,[sp, #-0x30]!
02c91d10  stp x22,x21,[sp, #0x10]
02c91d14  stp x20,x19,[sp, #0x20]
02c91d18  adrp x20,0x625c000
02c91d1c  mov x19,x0
02c91d20  ldrb w8,[x20, #0x3fc]
02c91d24  tbnz w8,#0x0,0x02c91d54
02c91d28  adrp x0,0x5e59000
02c91d2c  ldr x0,[x0, #0x1c0]
02c91d30  bl 0x029f5a50
02c91d34  adrp x0,0x5e5d000
02c91d38  ldr x0,[x0, #0x920]
02c91d3c  bl 0x029f5a50
02c91d40  adrp x0,0x5e63000
02c91d44  ldr x0,[x0, #0x460]
02c91d48  bl 0x029f5a50
02c91d4c  mov w8,#0x1
02c91d50  strb w8,[x20, #0x3fc]
02c91d54  ldrb w8,[x19, #0x40]
02c91d58  cbnz w8,0x02c91de0
02c91d5c  adrp x21,0x5e5d000
02c91d60  ldr x21,[x21, #0x920]
02c91d64  ldr x0,[x21]
02c91d68  ldr w8,[x0, #0xe4]
02c91d6c  cbnz w8,0x02c91d74
02c91d70  bl 0x029f5bd0
02c91d74  adrp x22,0x625b000
02c91d78  ldrb w8,[x22, #0x960]
02c91d7c  cbnz w8,0x02c91d94
02c91d80  adrp x0,0x5e5d000
02c91d84  ldr x0,[x0, #0x920]
02c91d88  bl 0x029f5a50
02c91d8c  mov w8,#0x1
02c91d90  strb w8,[x22, #0x960]
02c91d94  ldr x0,[x21]
02c91d98  ldr w8,[x0, #0xe4]
02c91d9c  cbnz w8,0x02c91da8
02c91da0  bl 0x029f5bd0
02c91da4  ldr x0,[x21]
02c91da8  adrp x8,0x5e59000
02c91dac  ldr x8,[x8, #0x1c0]
02c91db0  ldr x9,[x0, #0xb8]
02c91db4  ldr x8,[x8]
02c91db8  ldr x20,[x9]
02c91dbc  ldr w10,[x8, #0xe4]
02c91dc0  cbnz w10,0x02c91dcc
02c91dc4  mov x0,x8
02c91dc8  bl 0x029f5bd0
02c91dcc  mov x0,x20
02c91dd0  mov x1,xzr
02c91dd4  mov x2,xzr
02c91dd8  bl 0x057e14b4
02c91ddc  tbz w0,#0x0,0x02c91df0
02c91de0  ldp x20,x19,[sp, #0x20]
02c91de4  ldp x22,x21,[sp, #0x10]
02c91de8  ldr x30,[sp], #0x30
02c91dec  ret
02c91df0  ldr x0,[x21]
02c91df4  ldr w8,[x0, #0xe4]
02c91df8  cbnz w8,0x02c91e00
02c91dfc  bl 0x029f5bd0
02c91e00  ldrb w8,[x22, #0x960]
02c91e04  cbnz w8,0x02c91e1c
02c91e08  adrp x0,0x5e5d000
02c91e0c  ldr x0,[x0, #0x920]
02c91e10  bl 0x029f5a50
02c91e14  mov w8,#0x1
02c91e18  strb w8,[x22, #0x960]
02c91e1c  ldr x0,[x21]
02c91e20  ldr w8,[x0, #0xe4]
02c91e24  cbnz w8,0x02c91e30
02c91e28  bl 0x029f5bd0
02c91e2c  ldr x0,[x21]
02c91e30  ldr x8,[x0, #0xb8]
02c91e34  ldr x0,[x8]
02c91e38  cbz x0,0x02c91e68
02c91e3c  adrp x8,0x5e63000
02c91e40  ldr x8,[x8, #0x460]
02c91e44  ldrb w9,[x19, #0x24]
02c91e48  ldr w1,[x19, #0x20]
02c91e4c  ldp x20,x19,[sp, #0x20]
02c91e50  ldr x8,[x8]
02c91e54  ldp x22,x21,[sp, #0x10]
02c91e58  cmp w9,#0x0
02c91e5c  csel x2,xzr,x8,eq
02c91e60  ldr x30,[sp], #0x30
02c91e64  b 0x02c91e6c
02c91e68  bl 0x029f5cfc
