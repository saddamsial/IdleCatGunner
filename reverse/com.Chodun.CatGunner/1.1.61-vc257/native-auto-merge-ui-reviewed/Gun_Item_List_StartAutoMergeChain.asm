02c75d6c  str x30,[sp, #-0x30]!
02c75d70  stp x22,x21,[sp, #0x10]
02c75d74  stp x20,x19,[sp, #0x20]
02c75d78  adrp x20,0x625c000
02c75d7c  mov x19,x0
02c75d80  ldrb w8,[x20, #0x2f3]
02c75d84  tbnz w8,#0x0,0x02c75da8
02c75d88  adrp x0,0x5e5d000
02c75d8c  ldr x0,[x0, #0xd40]
02c75d90  bl 0x029f5a50
02c75d94  adrp x0,0x5e59000
02c75d98  ldr x0,[x0, #0x1c0]
02c75d9c  bl 0x029f5a50
02c75da0  mov w8,#0x1
02c75da4  strb w8,[x20, #0x2f3]
02c75da8  mov x20,x19
02c75dac  ldr x8,[x20, #0x48]!
02c75db0  cbnz x8,0x02c75e60
02c75db4  mov x0,x19
02c75db8  mov x1,xzr
02c75dbc  bl 0x057dc1c8
02c75dc0  cbz x0,0x02c75e70
02c75dc4  mov x1,xzr
02c75dc8  bl 0x057e00b4
02c75dcc  tbz w0,#0x0,0x02c75e60
02c75dd0  adrp x22,0x5e5d000
02c75dd4  adrp x8,0x5e59000
02c75dd8  ldr x22,[x22, #0xd40]
02c75ddc  ldr x8,[x8, #0x1c0]
02c75de0  ldr x9,[x22]
02c75de4  ldr x0,[x8]
02c75de8  ldr x8,[x9, #0xb8]
02c75dec  ldr w9,[x0, #0xe4]
02c75df0  ldr x21,[x8]
02c75df4  cbnz w9,0x02c75dfc
02c75df8  bl 0x029f5bd0
02c75dfc  mov x0,x21
02c75e00  mov x1,xzr
02c75e04  mov x2,xzr
02c75e08  bl 0x057e14b4
02c75e0c  tbnz w0,#0x0,0x02c75e60
02c75e10  ldr x8,[x22]
02c75e14  ldr x8,[x8, #0xb8]
02c75e18  ldr x0,[x8]
02c75e1c  cbz x0,0x02c75e70
02c75e20  mov x1,xzr
02c75e24  bl 0x02c69528
02c75e28  tbz w0,#0x0,0x02c75e60
02c75e2c  mov x0,x19
02c75e30  bl 0x02c767ac
02c75e34  mov x1,x0
02c75e38  mov x0,x19
02c75e3c  mov x2,xzr
02c75e40  bl 0x057e2120
02c75e44  mov x1,x0
02c75e48  mov x0,x20
02c75e4c  str x1,[x19, #0x48]
02c75e50  ldp x20,x19,[sp, #0x20]
02c75e54  ldp x22,x21,[sp, #0x10]
02c75e58  ldr x30,[sp], #0x30
02c75e5c  b 0x029f59f4
02c75e60  ldp x20,x19,[sp, #0x20]
02c75e64  ldp x22,x21,[sp, #0x10]
02c75e68  ldr x30,[sp], #0x30
02c75e6c  ret
02c75e70  bl 0x029f5cfc
