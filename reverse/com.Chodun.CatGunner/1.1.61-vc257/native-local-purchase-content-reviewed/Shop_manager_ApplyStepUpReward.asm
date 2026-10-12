02c93c80  sub sp,sp,#0x30
02c93c84  stp x30,x21,[sp, #0x10]
02c93c88  stp x20,x19,[sp, #0x20]
02c93c8c  adrp x21,0x625c000
02c93c90  adrp x20,0x5e5d000
02c93c94  mov x19,x1
02c93c98  ldrb w8,[x21, #0x412]
02c93c9c  ldr x20,[x20, #0x920]
02c93ca0  tbnz w8,#0x0,0x02c93d24
02c93ca4  adrp x0,0x5e58000
02c93ca8  ldr x0,[x0, #0xf08]
02c93cac  bl 0x029f5a50
02c93cb0  adrp x0,0x5e5d000
02c93cb4  ldr x0,[x0, #0x338]
02c93cb8  bl 0x029f5a50
02c93cbc  adrp x0,0x5e5d000
02c93cc0  ldr x0,[x0, #0xd40]
02c93cc4  bl 0x029f5a50
02c93cc8  adrp x0,0x5e5e000
02c93ccc  ldr x0,[x0, #0x528]
02c93cd0  bl 0x029f5a50
02c93cd4  adrp x0,0x5e59000
02c93cd8  ldr x0,[x0, #0x1c0]
02c93cdc  bl 0x029f5a50
02c93ce0  adrp x0,0x5e5d000
02c93ce4  ldr x0,[x0, #0x920]
02c93ce8  bl 0x029f5a50
02c93cec  adrp x0,0x5e5e000
02c93cf0  ldr x0,[x0, #0x4b8]
02c93cf4  bl 0x029f5a50
02c93cf8  adrp x0,0x5e64000
02c93cfc  ldr x0,[x0, #0x2e8]
02c93d00  bl 0x029f5a50
02c93d04  adrp x0,0x5e64000
02c93d08  ldr x0,[x0, #0x2f0]
02c93d0c  bl 0x029f5a50
02c93d10  adrp x0,0x5e5e000
02c93d14  ldr x0,[x0, #0x7a0]
02c93d18  bl 0x029f5a50
02c93d1c  mov w8,#0x1
02c93d20  strb w8,[x21, #0x412]
02c93d24  ldr x0,[x20]
02c93d28  str wzr,[sp, #0xc]
02c93d2c  ldr w8,[x0, #0xe4]
02c93d30  cbnz w8,0x02c93d38
02c93d34  bl 0x029f5bd0
02c93d38  add x1,sp,#0xc
02c93d3c  mov x0,x19
02c93d40  bl 0x02c92c40
02c93d44  tbz w0,#0x0,0x02c93dc8
02c93d48  adrp x20,0x5e5e000
02c93d4c  adrp x19,0x5e59000
02c93d50  ldr x20,[x20, #0x4b8]
02c93d54  ldr x0,[x20]
02c93d58  ldr w8,[x0, #0xe4]
02c93d5c  ldr x19,[x19, #0x1c0]
02c93d60  cbnz w8,0x02c93d6c
02c93d64  bl 0x029f5bd0
02c93d68  ldr x0,[x20]
02c93d6c  ldr x8,[x19]
02c93d70  ldr x9,[x0, #0xb8]
02c93d74  ldr w10,[x8, #0xe4]
02c93d78  ldr x19,[x9]
02c93d7c  cbnz w10,0x02c93d88
02c93d80  mov x0,x8
02c93d84  bl 0x029f5bd0
02c93d88  mov x0,x19
02c93d8c  mov x1,xzr
02c93d90  mov x2,xzr
02c93d94  bl 0x057e14b4
02c93d98  tbz w0,#0x0,0x02c93dd0
02c93d9c  adrp x8,0x5e58000
02c93da0  ldr x8,[x8, #0xf08]
02c93da4  ldr x0,[x8]
02c93da8  ldr w8,[x0, #0xe4]
02c93dac  cbnz w8,0x02c93db4
02c93db0  bl 0x029f5bd0
02c93db4  adrp x8,0x5e64000
02c93db8  mov x1,xzr
02c93dbc  ldr x8,[x8, #0x2f0]
02c93dc0  ldr x0,[x8]
02c93dc4  bl 0x0579a8d0
02c93dc8  mov w0,wzr
02c93dcc  b 0x02c93f48
02c93dd0  ldr x0,[x20]
02c93dd4  ldr w8,[x0, #0xe4]
02c93dd8  cbnz w8,0x02c93de4
02c93ddc  bl 0x029f5bd0
02c93de0  ldr x0,[x20]
02c93de4  ldr x8,[x0, #0xb8]
02c93de8  ldr x9,[x8]
02c93dec  cbz x9,0x02c94010
02c93df0  ldr x9,[x9, #0x38]
02c93df4  cbz x9,0x02c94010
02c93df8  ldrsw x10,[sp, #0xc]
02c93dfc  ldr w11,[x9, #0x18]
02c93e00  cmp w10,w11
02c93e04  b.cs 0x02c94014
02c93e08  add x9,x9,x10
02c93e0c  ldrb w9,[x9, #0x20]
02c93e10  cbnz w9,0x02c93f44
02c93e14  ldr w9,[x0, #0xe4]
02c93e18  cbnz w9,0x02c93e28
02c93e1c  bl 0x029f5bd0
02c93e20  ldr x8,[x20]
02c93e24  ldr x8,[x8, #0xb8]
02c93e28  ldr x8,[x8, #0x8]
02c93e2c  cbz x8,0x02c94010
02c93e30  ldrsw x9,[sp, #0xc]
02c93e34  ldr w10,[x8, #0x18]
02c93e38  cmp w9,w10
02c93e3c  b.cs 0x02c94014
02c93e40  adrp x21,0x5e5d000
02c93e44  ldr x21,[x21, #0xd40]
02c93e48  ldr x10,[x21]
02c93e4c  ldr x10,[x10, #0xb8]
02c93e50  ldr x0,[x10]
02c93e54  cbz x0,0x02c94010
02c93e58  add x8,x8,x9, LSL #0x2
02c93e5c  mov x2,xzr
02c93e60  ldr w19,[x8, #0x20]
02c93e64  mov w1,w19
02c93e68  bl 0x02c6a570
02c93e6c  cmn w0,#0x1
02c93e70  b.eq 0x02c93f58
02c93e74  ldr x8,[x21]
02c93e78  ldr x8,[x8, #0xb8]
02c93e7c  ldr x0,[x8]
02c93e80  cbz x0,0x02c94010
02c93e84  mov w1,w19
02c93e88  mov x2,xzr
02c93e8c  bl 0x02c69e40
02c93e90  ldr x8,[x21]
02c93e94  ldr x8,[x8, #0xb8]
02c93e98  ldr x0,[x8]
02c93e9c  cbz x0,0x02c94010
02c93ea0  mov w1,w19
02c93ea4  mov x2,xzr
02c93ea8  bl 0x02c68ac8
02c93eac  ldr x0,[x20]
02c93eb0  ldr w8,[x0, #0xe4]
02c93eb4  cbnz w8,0x02c93ec0
02c93eb8  bl 0x029f5bd0
02c93ebc  ldr x0,[x20]
02c93ec0  ldr x8,[x0, #0xb8]
02c93ec4  ldr x8,[x8, #0x10]
02c93ec8  cbz x8,0x02c94010
02c93ecc  ldrsw x9,[sp, #0xc]
02c93ed0  ldr w10,[x8, #0x18]
02c93ed4  cmp w9,w10
02c93ed8  b.cs 0x02c94014
02c93edc  add x8,x8,x9, LSL #0x2
02c93ee0  ldr w19,[x8, #0x20]
02c93ee4  cmp w19,#0x1
02c93ee8  b.lt 0x02c93f14
02c93eec  adrp x8,0x5e5d000
02c93ef0  ldr x8,[x8, #0x338]
02c93ef4  ldr x0,[x8]
02c93ef8  ldr w8,[x0, #0xe4]
02c93efc  cbnz w8,0x02c93f04
02c93f00  bl 0x029f5bd0
02c93f04  mov w0,w19
02c93f08  mov x1,xzr
02c93f0c  bl 0x02b7ed10
02c93f10  ldr x0,[x20]
02c93f14  ldr w8,[x0, #0xe4]
02c93f18  cbnz w8,0x02c93f24
02c93f1c  bl 0x029f5bd0
02c93f20  ldr x0,[x20]
02c93f24  ldr x8,[x0, #0xb8]
02c93f28  ldr x0,[x8]
02c93f2c  cbz x0,0x02c94010
02c93f30  ldr w1,[sp, #0xc]
02c93f34  mov x2,xzr
02c93f38  bl 0x02ca343c
02c93f3c  mov x0,xzr
02c93f40  bl 0x02c0faf8
02c93f44  mov w0,#0x1
02c93f48  ldp x20,x19,[sp, #0x20]
02c93f4c  ldp x30,x21,[sp, #0x10]
02c93f50  add sp,sp,#0x30
02c93f54  ret
02c93f58  adrp x8,0x5e58000
02c93f5c  add x1,sp,#0x8
02c93f60  ldr x8,[x8, #0xa10]
02c93f64  ldr w9,[sp, #0xc]
02c93f68  ldr x0,[x8, #0x48]
02c93f6c  str w9,[sp, #0x8]
02c93f70  bl 0x029f5bd8
02c93f74  adrp x8,0x5e64000
02c93f78  mov x1,x0
02c93f7c  mov x2,xzr
02c93f80  ldr x8,[x8, #0x2e8]
02c93f84  ldr x8,[x8]
02c93f88  mov x0,x8
02c93f8c  bl 0x046b6c0c
02c93f90  adrp x8,0x5e58000
02c93f94  mov x19,x0
02c93f98  ldr x8,[x8, #0xf08]
02c93f9c  ldr x8,[x8]
02c93fa0  ldr w9,[x8, #0xe4]
02c93fa4  cbnz w9,0x02c93fb0
02c93fa8  mov x0,x8
02c93fac  bl 0x029f5bd0
02c93fb0  mov x0,x19
02c93fb4  mov x1,xzr
02c93fb8  bl 0x0579a8d0
02c93fbc  adrp x8,0x5e5e000
02c93fc0  ldr x8,[x8, #0x528]
02c93fc4  ldr x0,[x8]
02c93fc8  ldr w8,[x0, #0xe4]
02c93fcc  cbnz w8,0x02c93fd4
02c93fd0  bl 0x029f5bd0
02c93fd4  adrp x8,0x5e5e000
02c93fd8  mov w1,#0x1
02c93fdc  mov w2,wzr
02c93fe0  ldr x8,[x8, #0x7a0]
02c93fe4  mov w3,#0x1
02c93fe8  mov w4,wzr
02c93fec  mov x5,xzr
02c93ff0  mov x6,xzr
02c93ff4  mov w7,#0x1
02c93ff8  ldr x0,[x8]
02c93ffc  str xzr,[sp]
02c94000  bl 0x02bccb00
02c94004  mov x1,xzr
02c94008  bl 0x02c1dd54
02c9400c  b 0x02c93dc8
02c94010  bl 0x029f5cfc
02c94014  bl 0x029f5d04
