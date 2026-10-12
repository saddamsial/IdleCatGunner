02c51d80  sub sp,sp,#0xb0
02c51d84  str x30,[sp, #0x80]
02c51d88  stp x22,x21,[sp, #0x90]
02c51d8c  stp x20,x19,[sp, #0xa0]
02c51d90  adrp x22,0x625c000
02c51d94  adrp x21,0x5e5d000
02c51d98  mov w20,w0
02c51d9c  ldrb w9,[x22, #0x1c1]
02c51da0  ldr x21,[x21, #0xd40]
02c51da4  mov x19,x8
02c51da8  tbnz w9,#0x0,0x02c51dcc
02c51dac  adrp x0,0x5e5d000
02c51db0  ldr x0,[x0, #0xd40]
02c51db4  bl 0x029f5a50
02c51db8  adrp x0,0x5e5e000
02c51dbc  ldr x0,[x0, #0x70]
02c51dc0  bl 0x029f5a50
02c51dc4  mov w8,#0x1
02c51dc8  strb w8,[x22, #0x1c1]
02c51dcc  movi v0.2D,#0x0
02c51dd0  ldr x8,[x21]
02c51dd4  ldr x8,[x8, #0xb8]
02c51dd8  stp q0,q0,[sp, #0x40]
02c51ddc  stp q0,q0,[sp, #0x60]
02c51de0  ldr x8,[x8]
02c51de4  cbz x8,0x02c51e84
02c51de8  ldr x8,[x8, #0x20]
02c51dec  cbz x8,0x02c51e84
02c51df0  ldr w9,[x8, #0x18]
02c51df4  cmp w9,w20
02c51df8  b.ls 0x02c51e88
02c51dfc  add x8,x8,w20, SXTW  #0x3
02c51e00  ldr x8,[x8, #0x20]
02c51e04  cbz x8,0x02c51e84
02c51e08  adrp x9,0x5e5e000
02c51e0c  ldr x9,[x9, #0x70]
02c51e10  ldp q0,q1,[x8, #0x20]
02c51e14  ldr x0,[x9]
02c51e18  stp q0,q1,[sp, #0x60]
02c51e1c  ldr w8,[x0, #0xe4]
02c51e20  cbnz w8,0x02c51e28
02c51e24  bl 0x029f5bd0
02c51e28  mov w0,w20
02c51e2c  bl 0x02c51cc8
02c51e30  tbz w0,#0x0,0x02c51e68
02c51e34  add x8,sp,#0x20
02c51e38  mov w0,#0xa
02c51e3c  mov x1,xzr
02c51e40  bl 0x046544b8
02c51e44  ldp q0,q1,[sp, #0x20]
02c51e48  mov x8,sp
02c51e4c  add x0,sp,#0x60
02c51e50  add x1,sp,#0x40
02c51e54  mov x2,xzr
02c51e58  stp q0,q1,[sp, #0x40]
02c51e5c  bl 0x04658538
02c51e60  ldp q0,q1,[sp]
02c51e64  b 0x02c51e6c
02c51e68  ldp q0,q1,[sp, #0x60]
02c51e6c  stp q0,q1,[x19]
02c51e70  ldp x20,x19,[sp, #0xa0]
02c51e74  ldp x22,x21,[sp, #0x90]
02c51e78  ldr x30,[sp, #0x80]
02c51e7c  add sp,sp,#0xb0
02c51e80  ret
02c51e84  bl 0x029f5cfc
02c51e88  bl 0x029f5d04
