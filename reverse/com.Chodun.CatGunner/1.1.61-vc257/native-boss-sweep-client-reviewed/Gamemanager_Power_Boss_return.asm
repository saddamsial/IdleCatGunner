02b80d74  sub sp,sp,#0x1f0
02b80d78  stp d9,d8,[sp, #0x180]
02b80d7c  str x29,[sp, #0x190]
02b80d80  stp x30,x27,[sp, #0x1a0]
02b80d84  stp x26,x25,[sp, #0x1b0]
02b80d88  stp x24,x23,[sp, #0x1c0]
02b80d8c  stp x22,x21,[sp, #0x1d0]
02b80d90  stp x20,x19,[sp, #0x1e0]
02b80d94  adrp x20,0x625b000
02b80d98  adrp x22,0x5e5d000
02b80d9c  adrp x21,0x5e59000
02b80da0  ldrb w9,[x20, #0x8d1]
02b80da4  ldr x22,[x22, #0x5b0]
02b80da8  ldr x21,[x21, #0x1c0]
02b80dac  mov x19,x8
02b80db0  tbnz w9,#0x0,0x02b80dd4
02b80db4  adrp x0,0x5e5d000
02b80db8  ldr x0,[x0, #0x5b0]
02b80dbc  bl 0x029f5a50
02b80dc0  adrp x0,0x5e59000
02b80dc4  ldr x0,[x0, #0x1c0]
02b80dc8  bl 0x029f5a50
02b80dcc  mov w8,#0x1
02b80dd0  strb w8,[x20, #0x8d1]
02b80dd4  movi v0.2D,#0x0
02b80dd8  ldr x8,[x22]
02b80ddc  ldr x0,[x21]
02b80de0  ldr x8,[x8, #0xb8]
02b80de4  ldr w9,[x0, #0xe4]
02b80de8  stp q0,q0,[sp, #0xc0]
02b80dec  stp q0,q0,[sp, #0xe0]
02b80df0  stp q0,q0,[sp, #0x100]
02b80df4  stp q0,q0,[sp, #0x120]
02b80df8  stp q0,q0,[sp, #0x140]
02b80dfc  stp q0,q0,[sp, #0x160]
02b80e00  ldr x20,[x8, #0x8]
02b80e04  cbnz w9,0x02b80e0c
02b80e08  bl 0x029f5bd0
02b80e0c  mov x0,x20
02b80e10  mov x1,xzr
02b80e14  mov x2,xzr
02b80e18  bl 0x057e14b4
02b80e1c  tbnz w0,#0x0,0x02b80fb4
02b80e20  ldr x8,[x22]
02b80e24  ldr x8,[x8, #0xb8]
02b80e28  ldr x8,[x8, #0x8]
02b80e2c  cbz x8,0x02b80ff0
02b80e30  ldr x22,[x8, #0x20]
02b80e34  cbz x22,0x02b80fb4
02b80e38  add x8,sp,#0x160
02b80e3c  mov w0,wzr
02b80e40  mov x1,xzr
02b80e44  bl 0x046544b8
02b80e48  ldr x8,[x22, #0x18]
02b80e4c  cmp w8,#0x1
02b80e50  b.lt 0x02b80f9c
02b80e54  adrp x9,0x116c000
02b80e58  mov x23,xzr
02b80e5c  and x8,x8,#0xffffffff
02b80e60  ldr s9,[x9, #0x268]
02b80e64  add x24,x22,#0x20
02b80e68  mov w25,#0x42c80000
02b80e6c  mov w26,#0x7f800000
02b80e70  mov w27,#0x80000000
02b80e74  cmp x23,w8, UXTW 
02b80e78  b.cs 0x02b80ff4
02b80e7c  ldr x0,[x21]
02b80e80  ldr x20,[x24, x23, LSL #0x3]
02b80e84  ldr w8,[x0, #0xe4]
02b80e88  cbnz w8,0x02b80e90
02b80e8c  bl 0x029f5bd0
02b80e90  mov x0,x20
02b80e94  mov x1,xzr
02b80e98  mov x2,xzr
02b80e9c  bl 0x057e14b4
02b80ea0  tbnz w0,#0x0,0x02b80f8c
02b80ea4  cbz x20,0x02b80ff0
02b80ea8  mov x0,x20
02b80eac  mov x1,xzr
02b80eb0  bl 0x057dc1c8
02b80eb4  cbz x0,0x02b80ff0
02b80eb8  mov x1,xzr
02b80ebc  bl 0x057e00b4
02b80ec0  tbz w0,#0x0,0x02b80f8c
02b80ec4  mov x0,x20
02b80ec8  mov x1,xzr
02b80ecc  bl 0x02c39c0c
02b80ed0  fcmp s0,s9
02b80ed4  b.ls 0x02b80f8c
02b80ed8  add x8,sp,#0xa0
02b80edc  mov x0,x20
02b80ee0  mov x1,xzr
02b80ee4  fmov s8,s0
02b80ee8  bl 0x02c39c30
02b80eec  ldp q0,q1,[sp, #0xa0]
02b80ef0  add x8,sp,#0x80
02b80ef4  mov w0,#0x64
02b80ef8  mov x1,xzr
02b80efc  stp q0,q1,[sp, #0x140]
02b80f00  bl 0x046544b8
02b80f04  ldp q0,q1,[sp, #0x80]
02b80f08  add x8,sp,#0x60
02b80f0c  add x0,sp,#0x140
02b80f10  add x1,sp,#0x120
02b80f14  mov x2,xzr
02b80f18  stp q0,q1,[sp, #0x120]
02b80f1c  bl 0x04658538
02b80f20  fmov s0,w25
02b80f24  fmov s1,w26
02b80f28  mov x1,xzr
02b80f2c  fmul s0,s8,s0
02b80f30  fcvtzs w8,s0
02b80f34  fcmp s0,s1
02b80f38  ldp q0,q1,[sp, #0x60]
02b80f3c  csel w0,w27,w8,eq
02b80f40  add x8,sp,#0x40
02b80f44  stp q0,q1,[sp, #0x100]
02b80f48  bl 0x046544b8
02b80f4c  ldp q0,q1,[sp, #0x40]
02b80f50  add x8,sp,#0x20
02b80f54  add x0,sp,#0x100
02b80f58  add x1,sp,#0xe0
02b80f5c  mov x2,xzr
02b80f60  stp q0,q1,[sp, #0xe0]
02b80f64  bl 0x046587e8
02b80f68  ldp q0,q1,[sp, #0x20]
02b80f6c  mov x8,sp
02b80f70  add x0,sp,#0x160
02b80f74  add x1,sp,#0xc0
02b80f78  mov x2,xzr
02b80f7c  stp q0,q1,[sp, #0xc0]
02b80f80  bl 0x04658020
02b80f84  ldp q0,q1,[sp]
02b80f88  stp q0,q1,[sp, #0x160]
02b80f8c  ldr w8,[x22, #0x18]
02b80f90  add x23,x23,#0x1
02b80f94  cmp x23,w8, SXTW 
02b80f98  b.lt 0x02b80e74
02b80f9c  add x8,sp,#0xa0
02b80fa0  add x0,sp,#0x160
02b80fa4  mov w1,#0x5
02b80fa8  mov x2,xzr
02b80fac  bl 0x04658464
02b80fb0  b 0x02b80fc4
02b80fb4  add x8,sp,#0xa0
02b80fb8  mov w0,wzr
02b80fbc  mov x1,xzr
02b80fc0  bl 0x046544b8
02b80fc4  ldp q0,q1,[sp, #0xa0]
02b80fc8  ldr x29,[sp, #0x190]
02b80fcc  ldp x22,x21,[sp, #0x1d0]
02b80fd0  ldp x24,x23,[sp, #0x1c0]
02b80fd4  stp q0,q1,[x19]
02b80fd8  ldp x20,x19,[sp, #0x1e0]
02b80fdc  ldp x26,x25,[sp, #0x1b0]
02b80fe0  ldp x30,x27,[sp, #0x1a0]
02b80fe4  ldp d9,d8,[sp, #0x180]
02b80fe8  add sp,sp,#0x1f0
02b80fec  ret
02b80ff0  bl 0x029f5cfc
02b80ff4  bl 0x029f5d04
