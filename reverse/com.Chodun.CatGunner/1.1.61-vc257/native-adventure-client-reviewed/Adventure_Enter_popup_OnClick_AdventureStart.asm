02c33cdc  stp x30,x23,[sp, #-0x30]!
02c33ce0  stp x22,x21,[sp, #0x10]
02c33ce4  stp x20,x19,[sp, #0x20]
02c33ce8  adrp x20,0x625c000
02c33cec  mov x19,x0
02c33cf0  ldrb w8,[x20, #0x4e]
02c33cf4  tbnz w8,#0x0,0x02c33d24
02c33cf8  adrp x0,0x5e5d000
02c33cfc  ldr x0,[x0, #0xd28]
02c33d00  bl 0x029f5a50
02c33d04  adrp x0,0x5e63000
02c33d08  ldr x0,[x0, #0x120]
02c33d0c  bl 0x029f5a50
02c33d10  adrp x0,0x5e62000
02c33d14  ldr x0,[x0, #0xfd0]
02c33d18  bl 0x029f5a50
02c33d1c  mov w8,#0x1
02c33d20  strb w8,[x20, #0x4e]
02c33d24  ldr x8,[x19, #0xc8]
02c33d28  cbz x8,0x02c33e6c
02c33d2c  ldr w9,[x8, #0x18]
02c33d30  cbz w9,0x02c33e14
02c33d34  adrp x23,0x5e5d000
02c33d38  ldr x23,[x23, #0xd28]
02c33d3c  ldr x0,[x23]
02c33d40  ldr w9,[x0, #0xe4]
02c33d44  cbnz w9,0x02c33d58
02c33d48  bl 0x029f5bd0
02c33d4c  ldr x8,[x19, #0xc8]
02c33d50  cbz x8,0x02c33e6c
02c33d54  ldr x0,[x23]
02c33d58  ldr x9,[x0, #0xb8]
02c33d5c  ldr x0,[x9, #0x10]
02c33d60  cbz x0,0x02c33e6c
02c33d64  ldr w1,[x8, #0x18]
02c33d68  mov x2,xzr
02c33d6c  bl 0x02c2d494
02c33d70  tbz w0,#0x0,0x02c33e14
02c33d74  ldr x0,[x23]
02c33d78  ldr w8,[x0, #0xe4]
02c33d7c  cbnz w8,0x02c33d88
02c33d80  bl 0x029f5bd0
02c33d84  ldr x0,[x23]
02c33d88  ldr x8,[x19, #0xc8]
02c33d8c  cbz x8,0x02c33e6c
02c33d90  adrp x10,0x5e63000
02c33d94  ldr x9,[x0, #0xb8]
02c33d98  mov x0,x8
02c33d9c  ldr x10,[x10, #0x120]
02c33da0  ldp w21,w22,[x19, #0x20]
02c33da4  ldr x1,[x10]
02c33da8  ldr x20,[x9, #0x10]
02c33dac  bl 0x045c302c
02c33db0  cbz x20,0x02c33e6c
02c33db4  mov x3,x0
02c33db8  mov x0,x20
02c33dbc  mov w1,w21
02c33dc0  mov w2,w22
02c33dc4  mov x4,xzr
02c33dc8  bl 0x02c2d524
02c33dcc  ldr x8,[x23]
02c33dd0  ldr x8,[x8, #0xb8]
02c33dd4  ldr x8,[x8, #0x10]
02c33dd8  cbz x8,0x02c33e6c
02c33ddc  ldr x0,[x8, #0x40]
02c33de0  cbz x0,0x02c33e6c
02c33de4  ldr w1,[x19, #0x20]
02c33de8  bl 0x02c33e70
02c33dec  mov x0,x19
02c33df0  mov x1,xzr
02c33df4  bl 0x057dc1c8
02c33df8  cbz x0,0x02c33e6c
02c33dfc  ldp x20,x19,[sp, #0x20]
02c33e00  mov w1,wzr
02c33e04  ldp x22,x21,[sp, #0x10]
02c33e08  mov x2,xzr
02c33e0c  ldp x30,x23,[sp], #0x30
02c33e10  b 0x057dff3c
02c33e14  adrp x19,0x625b000
02c33e18  ldrb w8,[x19, #0xa57]
02c33e1c  cbnz w8,0x02c33e34
02c33e20  adrp x0,0x5e5d000
02c33e24  ldr x0,[x0, #0xd70]
02c33e28  bl 0x029f5a50
02c33e2c  mov w8,#0x1
02c33e30  strb w8,[x19, #0xa57]
02c33e34  adrp x8,0x5e5d000
02c33e38  ldr x8,[x8, #0xd70]
02c33e3c  ldr x8,[x8]
02c33e40  ldr x8,[x8, #0xb8]
02c33e44  ldr x0,[x8]
02c33e48  cbz x0,0x02c33e6c
02c33e4c  ldp x20,x19,[sp, #0x20]
02c33e50  fmov s0,0x3f800000
02c33e54  ldp x22,x21,[sp, #0x10]
02c33e58  mov w1,#0x5
02c33e5c  mov x2,xzr
02c33e60  mov x3,xzr
02c33e64  ldp x30,x23,[sp], #0x30
02c33e68  b 0x02c1f10c
02c33e6c  bl 0x029f5cfc
