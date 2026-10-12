02c37ce4  stp d9,d8,[sp, #-0x60]!
02c37ce8  str x30,[sp, #0x10]
02c37cec  stp x26,x25,[sp, #0x20]
02c37cf0  stp x24,x23,[sp, #0x30]
02c37cf4  stp x22,x21,[sp, #0x40]
02c37cf8  stp x20,x19,[sp, #0x50]
02c37cfc  adrp x20,0x625c000
02c37d00  adrp x24,0x5e5d000
02c37d04  mov x19,x0
02c37d08  ldrb w8,[x20, #0x80]
02c37d0c  ldr x24,[x24, #0x4c0]
02c37d10  tbnz w8,#0x0,0x02c37d4c
02c37d14  adrp x0,0x5e63000
02c37d18  ldr x0,[x0, #0x1a0]
02c37d1c  bl 0x029f5a50
02c37d20  adrp x0,0x5e5d000
02c37d24  ldr x0,[x0, #0x4c0]
02c37d28  bl 0x029f5a50
02c37d2c  adrp x0,0x5e59000
02c37d30  ldr x0,[x0, #0x1c0]
02c37d34  bl 0x029f5a50
02c37d38  adrp x0,0x5e59000
02c37d3c  ldr x0,[x0, #0x50]
02c37d40  bl 0x029f5a50
02c37d44  mov w8,#0x1
02c37d48  strb w8,[x20, #0x80]
02c37d4c  ldr x0,[x24]
02c37d50  adrp x26,0x5e59000
02c37d54  ldr w8,[x0, #0xe4]
02c37d58  ldr x26,[x26, #0x1c0]
02c37d5c  cbnz w8,0x02c37d68
02c37d60  bl 0x029f5bd0
02c37d64  ldr x0,[x24]
02c37d68  ldr x8,[x26]
02c37d6c  ldr x9,[x0, #0xb8]
02c37d70  ldr w10,[x8, #0xe4]
02c37d74  ldr x20,[x9]
02c37d78  cbnz w10,0x02c37d84
02c37d7c  mov x0,x8
02c37d80  bl 0x029f5bd0
02c37d84  mov x0,x20
02c37d88  mov x1,xzr
02c37d8c  mov x2,xzr
02c37d90  bl 0x057e14b4
02c37d94  tbnz w0,#0x0,0x02c37e60
02c37d98  cbz x20,0x02c37fe0
02c37d9c  ldp x21,x22,[x19, #0x20]
02c37da0  mov x0,x20
02c37da4  mov w1,#0x1
02c37da8  bl 0x02c37494
02c37dac  adrp x25,0x5e63000
02c37db0  mov w23,w0
02c37db4  ldr x25,[x25, #0x1a0]
02c37db8  ldr x8,[x25]
02c37dbc  ldr w9,[x8, #0xe4]
02c37dc0  cbnz w9,0x02c37dcc
02c37dc4  mov x0,x8
02c37dc8  bl 0x029f5bd0
02c37dcc  and w2,w23,#0x1
02c37dd0  mov x0,x21
02c37dd4  mov x1,x22
02c37dd8  bl 0x02c38568
02c37ddc  ldp x21,x22,[x19, #0x30]
02c37de0  mov x0,x20
02c37de4  mov w1,#0x2
02c37de8  bl 0x02c37494
02c37dec  and w2,w0,#0x1
02c37df0  mov x0,x21
02c37df4  mov x1,x22
02c37df8  bl 0x02c38568
02c37dfc  ldp x21,x22,[x19, #0x40]
02c37e00  mov x0,x20
02c37e04  mov w1,wzr
02c37e08  bl 0x02c37494
02c37e0c  and w2,w0,#0x1
02c37e10  mov x0,x21
02c37e14  mov x1,x22
02c37e18  bl 0x02c38568
02c37e1c  ldp x22,x21,[x19, #0x50]
02c37e20  mov x0,x20
02c37e24  bl 0x02c375b8
02c37e28  and w2,w0,#0x1
02c37e2c  mov x0,x21
02c37e30  mov x1,x22
02c37e34  bl 0x02c38568
02c37e38  ldr x0,[x26]
02c37e3c  ldr x21,[x19, #0x60]
02c37e40  ldr w8,[x0, #0xe4]
02c37e44  cbnz w8,0x02c37e4c
02c37e48  bl 0x029f5bd0
02c37e4c  mov x0,x21
02c37e50  mov x1,xzr
02c37e54  mov x2,xzr
02c37e58  bl 0x057e14b4
02c37e5c  tbz w0,#0x0,0x02c37e7c
02c37e60  ldp x20,x19,[sp, #0x50]
02c37e64  ldr x30,[sp, #0x10]
02c37e68  ldp x22,x21,[sp, #0x40]
02c37e6c  ldp x24,x23,[sp, #0x30]
02c37e70  ldp x26,x25,[sp, #0x20]
02c37e74  ldp d9,d8,[sp], #0x60
02c37e78  ret
02c37e7c  adrp x21,0x625c000
02c37e80  ldrb w8,[x21, #0xbd]
02c37e84  cbnz w8,0x02c37e9c
02c37e88  adrp x0,0x5e5d000
02c37e8c  ldr x0,[x0, #0x920]
02c37e90  bl 0x029f5a50
02c37e94  mov w8,#0x1
02c37e98  strb w8,[x21, #0xbd]
02c37e9c  adrp x21,0x5e5d000
02c37ea0  ldr x21,[x21, #0x920]
02c37ea4  ldr x0,[x21]
02c37ea8  ldr w8,[x0, #0xe4]
02c37eac  cbnz w8,0x02c37eb8
02c37eb0  bl 0x029f5bd0
02c37eb4  ldr x0,[x21]
02c37eb8  ldr x8,[x0, #0xb8]
02c37ebc  ldrb w8,[x8, #0xb]
02c37ec0  cbz w8,0x02c37ee8
02c37ec4  ldr x0,[x19, #0x60]
02c37ec8  cbz x0,0x02c37fe0
02c37ecc  adrp x8,0x5e59000
02c37ed0  ldr x8,[x8, #0x50]
02c37ed4  ldr x9,[x0]
02c37ed8  ldr x1,[x8]
02c37edc  ldr x2,[x9, #0x560]
02c37ee0  ldr x3,[x9, #0x558]
02c37ee4  b 0x02c37fa4
02c37ee8  mov w8,#0x7f7fffff
02c37eec  mov x21,xzr
02c37ef0  movi d9,#0x0
02c37ef4  fmov s8,w8
02c37ef8  ldr x0,[x25]
02c37efc  ldr w8,[x0, #0xe4]
02c37f00  cbnz w8,0x02c37f0c
02c37f04  bl 0x029f5bd0
02c37f08  ldr x0,[x25]
02c37f0c  ldr x8,[x0, #0xb8]
02c37f10  ldr x8,[x8]
02c37f14  cbz x8,0x02c37fe0
02c37f18  ldrsw x9,[x8, #0x18]
02c37f1c  cmp x21,x9
02c37f20  b.ge 0x02c37f70
02c37f24  ldr w9,[x0, #0xe4]
02c37f28  cbnz w9,0x02c37f40
02c37f2c  bl 0x029f5bd0
02c37f30  ldr x8,[x25]
02c37f34  ldr x8,[x8, #0xb8]
02c37f38  ldr x8,[x8]
02c37f3c  cbz x8,0x02c37fe0
02c37f40  ldr w9,[x8, #0x18]
02c37f44  cmp x21,x9
02c37f48  b.cs 0x02c37fe4
02c37f4c  add x8,x8,x21, LSL #0x2
02c37f50  mov x0,x20
02c37f54  ldr w1,[x8, #0x20]
02c37f58  bl 0x02c3752c
02c37f5c  fcmp s0,s8
02c37f60  add x21,x21,#0x1
02c37f64  fccmp s0,s9,#0x4,mi
02c37f68  fcsel s8,s0,s8,gt
02c37f6c  b 0x02c37ef8
02c37f70  mov w8,#0x7f7fffff
02c37f74  ldr x19,[x19, #0x60]
02c37f78  fmov s0,w8
02c37f7c  fcmp s8,s0
02c37f80  b.ne 0x02c37fc0
02c37f84  adrp x8,0x5e59000
02c37f88  ldr x8,[x8, #0x50]
02c37f8c  ldr x1,[x8]
02c37f90  cbz x19,0x02c37fe0
02c37f94  ldr x8,[x19]
02c37f98  mov x0,x19
02c37f9c  ldr x2,[x8, #0x560]
02c37fa0  ldr x3,[x8, #0x558]
02c37fa4  ldp x20,x19,[sp, #0x50]
02c37fa8  ldr x30,[sp, #0x10]
02c37fac  ldp x22,x21,[sp, #0x40]
02c37fb0  ldp x24,x23,[sp, #0x30]
02c37fb4  ldp x26,x25,[sp, #0x20]
02c37fb8  ldp d9,d8,[sp], #0x60
02c37fbc  br x3
02c37fc0  ldr x0,[x24]
02c37fc4  ldr w8,[x0, #0xe4]
02c37fc8  cbnz w8,0x02c37fd0
02c37fcc  bl 0x029f5bd0
02c37fd0  fmov s0,s8
02c37fd4  bl 0x02c3804c
02c37fd8  mov x1,x0
02c37fdc  cbnz x19,0x02c37f94
02c37fe0  bl 0x029f5cfc
02c37fe4  bl 0x029f5d04
