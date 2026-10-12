02c56c34  sub sp,sp,#0x1a0
02c56c38  str d8,[sp, #0x140]
02c56c3c  stp x29,x30,[sp, #0x150]
02c56c40  stp x26,x25,[sp, #0x160]
02c56c44  stp x24,x23,[sp, #0x170]
02c56c48  stp x22,x21,[sp, #0x180]
02c56c4c  stp x20,x19,[sp, #0x190]
02c56c50  adrp x21,0x625c000
02c56c54  adrp x23,0x5e5e000
02c56c58  mov w20,w0
02c56c5c  ldrb w9,[x21, #0x19b]
02c56c60  ldr x23,[x23, #0x70]
02c56c64  mov x19,x8
02c56c68  tbnz w9,#0x0,0x02c56cb0
02c56c6c  adrp x0,0x5e63000
02c56c70  ldr x0,[x0, #0x680]
02c56c74  bl 0x029f5a50
02c56c78  adrp x0,0x5e63000
02c56c7c  ldr x0,[x0, #0x688]
02c56c80  bl 0x029f5a50
02c56c84  adrp x0,0x5e63000
02c56c88  ldr x0,[x0, #0x690]
02c56c8c  bl 0x029f5a50
02c56c90  adrp x0,0x5e59000
02c56c94  ldr x0,[x0]
02c56c98  bl 0x029f5a50
02c56c9c  adrp x0,0x5e5e000
02c56ca0  ldr x0,[x0, #0x70]
02c56ca4  bl 0x029f5a50
02c56ca8  mov w8,#0x1
02c56cac  strb w8,[x21, #0x19b]
02c56cb0  movi v0.2D,#0x0
02c56cb4  ldr x8,[x23]
02c56cb8  ldr w9,[x8, #0xe4]
02c56cbc  stp q0,q0,[sp, #0xa0]
02c56cc0  stp q0,q0,[sp, #0xc0]
02c56cc4  stp q0,q0,[sp, #0xe0]
02c56cc8  cbnz w9,0x02c56cd8
02c56ccc  mov x0,x8
02c56cd0  bl 0x029f5bd0
02c56cd4  ldr x8,[x23]
02c56cd8  ldr x9,[x8, #0xb8]
02c56cdc  ldr x0,[x9, #0x28]
02c56ce0  cbz x0,0x02c56f7c
02c56ce4  adrp x25,0x5e59000
02c56ce8  adrp x24,0x5e63000
02c56cec  adrp x26,0x5e63000
02c56cf0  ldr x25,[x25]
02c56cf4  ldr x24,[x24, #0x690]
02c56cf8  ldr w10,[x0, #0x18]
02c56cfc  bic w20,w20,w20, ASR #0x1f
02c56d00  ldr x26,[x26, #0x680]
02c56d04  cbnz w10,0x02c56ed8
02c56d08  ldr w10,[x8, #0xe4]
02c56d0c  cbz w10,0x02c56d20
02c56d10  ldur q0,[x9, #0x8]
02c56d14  ldur q1,[x9, #0x18]
02c56d18  stp q0,q1,[sp, #0x80]
02c56d1c  b 0x02c56d44
02c56d20  mov x0,x8
02c56d24  bl 0x029f5bd0
02c56d28  ldr x8,[x23]
02c56d2c  ldr x8,[x8, #0xb8]
02c56d30  ldur q0,[x8, #0x8]
02c56d34  ldr x0,[x8, #0x28]
02c56d38  ldur q1,[x8, #0x18]
02c56d3c  stp q0,q1,[sp, #0x80]
02c56d40  cbz x0,0x02c56f7c
02c56d44  ldr w10,[x0, #0x1c]
02c56d48  ldr x8,[x0, #0x10]
02c56d4c  ldr x9,[x26]
02c56d50  add w10,w10,#0x1
02c56d54  str w10,[x0, #0x1c]
02c56d58  cbz x8,0x02c56f7c
02c56d5c  ldrsw x10,[x0, #0x18]
02c56d60  ldr w11,[x8, #0x18]
02c56d64  cmp w10,w11
02c56d68  b.cs 0x02c56d84
02c56d6c  ldp q0,q1,[sp, #0x80]
02c56d70  add x8,x8,x10, LSL #0x5
02c56d74  add w9,w10,#0x1
02c56d78  str w9,[x0, #0x18]
02c56d7c  stp q0,q1,[x8, #0x20]
02c56d80  b 0x02c56d94
02c56d84  ldr x8,[x9, #0x20]
02c56d88  ldp q0,q1,[sp, #0x80]
02c56d8c  add x1,sp,#0x120
02c56d90  b 0x02c56ec8
02c56d94  add x0,x8,#0x20
02c56d98  mov x1,xzr
02c56d9c  bl 0x029f59f4
02c56da0  b 0x02c56ed8
02c56da4  cbnz w9,0x02c56dc0
02c56da8  mov x0,x8
02c56dac  bl 0x029f5bd0
02c56db0  ldr x8,[x23]
02c56db4  ldr x8,[x8, #0xb8]
02c56db8  ldr x0,[x8, #0x28]
02c56dbc  cbz x0,0x02c56f7c
02c56dc0  ldr x8,[x25]
02c56dc4  ldr w21,[x0, #0x18]
02c56dc8  ldr w9,[x8, #0xe4]
02c56dcc  cbnz w9,0x02c56dd8
02c56dd0  mov x0,x8
02c56dd4  bl 0x029f5bd0
02c56dd8  sub w22,w21,#0x1
02c56ddc  fmov d0,0x3ff0000000000000
02c56de0  mov x0,xzr
02c56de4  scvtf d1,w22
02c56de8  bl 0x04852840
02c56dec  ldr x8,[x23]
02c56df0  ldr x8,[x8, #0xb8]
02c56df4  ldr x21,[x8, #0x28]
02c56df8  cbz x21,0x02c56f7c
02c56dfc  fmov d1,0x4008000000000000
02c56e00  ldr x2,[x24]
02c56e04  add x8,sp,#0x60
02c56e08  mov x0,x21
02c56e0c  mov w1,w22
02c56e10  fmul d8,d0,d1
02c56e14  bl 0x044bddc4
02c56e18  ldp q0,q1,[sp, #0x60]
02c56e1c  add x8,sp,#0x40
02c56e20  mov x0,xzr
02c56e24  stp q0,q1,[sp, #0xe0]
02c56e28  fmov d0,d8
02c56e2c  bl 0x04656c9c
02c56e30  ldp q0,q1,[sp, #0x40]
02c56e34  add x8,sp,#0x20
02c56e38  add x0,sp,#0xe0
02c56e3c  add x1,sp,#0xc0
02c56e40  mov x2,xzr
02c56e44  stp q0,q1,[sp, #0xc0]
02c56e48  bl 0x04658538
02c56e4c  ldp q0,q1,[sp, #0x20]
02c56e50  mov x8,sp
02c56e54  add x0,sp,#0xa0
02c56e58  mov w1,#0x3
02c56e5c  mov x2,xzr
02c56e60  stp q0,q1,[sp, #0xa0]
02c56e64  bl 0x04658464
02c56e68  ldp q0,q1,[sp]
02c56e6c  ldr x9,[x26]
02c56e70  stp q0,q1,[sp, #0x100]
02c56e74  ldr w10,[x21, #0x1c]
02c56e78  ldr x8,[x21, #0x10]
02c56e7c  add w10,w10,#0x1
02c56e80  str w10,[x21, #0x1c]
02c56e84  cbz x8,0x02c56f7c
02c56e88  ldrsw x10,[x21, #0x18]
02c56e8c  ldr w11,[x8, #0x18]
02c56e90  cmp w10,w11
02c56e94  b.cs 0x02c56eb8
02c56e98  add x8,x8,x10, LSL #0x5
02c56e9c  ldr q0,[sp, #0x100]
02c56ea0  add w9,w10,#0x1
02c56ea4  str w9,[x21, #0x18]
02c56ea8  str q0,[x8, #0x20]
02c56eac  ldr q0,[sp, #0x110]
02c56eb0  str q0,[x8, #0x30]
02c56eb4  b 0x02c56d94
02c56eb8  ldr x8,[x9, #0x20]
02c56ebc  ldp q0,q1,[sp, #0x100]
02c56ec0  add x1,sp,#0x120
02c56ec4  mov x0,x21
02c56ec8  ldr x8,[x8, #0xc0]
02c56ecc  ldr x2,[x8, #0x70]
02c56ed0  stp q0,q1,[sp, #0x120]
02c56ed4  bl 0x044be120
02c56ed8  ldr x8,[x23]
02c56edc  ldr w9,[x8, #0xe4]
02c56ee0  cbnz w9,0x02c56ef0
02c56ee4  mov x0,x8
02c56ee8  bl 0x029f5bd0
02c56eec  ldr x8,[x23]
02c56ef0  ldr x9,[x8, #0xb8]
02c56ef4  ldr x0,[x9, #0x28]
02c56ef8  cbz x0,0x02c56f7c
02c56efc  ldr w10,[x0, #0x18]
02c56f00  ldr w9,[x8, #0xe4]
02c56f04  cmp w10,w20
02c56f08  b.le 0x02c56da4
02c56f0c  cbnz w9,0x02c56f28
02c56f10  mov x0,x8
02c56f14  bl 0x029f5bd0
02c56f18  ldr x8,[x23]
02c56f1c  ldr x8,[x8, #0xb8]
02c56f20  ldr x0,[x8, #0x28]
02c56f24  cbz x0,0x02c56f7c
02c56f28  ldr x2,[x24]
02c56f2c  add x8,sp,#0x120
02c56f30  mov w1,w20
02c56f34  bl 0x044bddc4
02c56f38  ldp q0,q1,[sp, #0x120]
02c56f3c  add x8,sp,#0x100
02c56f40  add x0,sp,#0xe0
02c56f44  mov w1,#0x2
02c56f48  mov x2,xzr
02c56f4c  stp q0,q1,[sp, #0xe0]
02c56f50  bl 0x04658464
02c56f54  ldp q0,q1,[sp, #0x100]
02c56f58  ldr d8,[sp, #0x140]
02c56f5c  ldp x22,x21,[sp, #0x180]
02c56f60  ldp x24,x23,[sp, #0x170]
02c56f64  stp q0,q1,[x19]
02c56f68  ldp x20,x19,[sp, #0x190]
02c56f6c  ldp x26,x25,[sp, #0x160]
02c56f70  ldp x29,x30,[sp, #0x150]
02c56f74  add sp,sp,#0x1a0
02c56f78  ret
02c56f7c  bl 0x029f5cfc
