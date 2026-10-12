02c34dc0  sub sp,sp,#0x50
02c34dc4  stp x30,x23,[sp, #0x20]
02c34dc8  stp x22,x21,[sp, #0x30]
02c34dcc  stp x20,x19,[sp, #0x40]
02c34dd0  adrp x19,0x625c000
02c34dd4  adrp x20,0x5e5a000
02c34dd8  ldrb w8,[x19, #0x59]
02c34ddc  ldr x20,[x20, #0x180]
02c34de0  str x1,[sp, #0x18]
02c34de4  tbnz w8,#0x0,0x02c34e20
02c34de8  adrp x0,0x5e5a000
02c34dec  ldr x0,[x0, #0x180]
02c34df0  bl 0x029f5a50
02c34df4  adrp x0,0x5e5e000
02c34df8  ldr x0,[x0, #0x6d0]
02c34dfc  bl 0x029f5a50
02c34e00  adrp x0,0x5e62000
02c34e04  ldr x0,[x0, #0x128]
02c34e08  bl 0x029f5a50
02c34e0c  adrp x0,0x5e63000
02c34e10  ldr x0,[x0, #0x140]
02c34e14  bl 0x029f5a50
02c34e18  mov w8,#0x1
02c34e1c  strb w8,[x19, #0x59]
02c34e20  ldr x0,[x20]
02c34e24  ldr w8,[x0, #0xe4]
02c34e28  cbnz w8,0x02c34e30
02c34e2c  bl 0x029f5bd0
02c34e30  add x0,sp,#0x18
02c34e34  mov x1,xzr
02c34e38  bl 0x048681f8
02c34e3c  mov x8,#0x7ff0000000000000
02c34e40  fcvtzs w9,d0
02c34e44  add x0,sp,#0x18
02c34e48  fmov d1,x8
02c34e4c  mov w8,#0x80000000
02c34e50  mov x1,xzr
02c34e54  fcmp d0,d1
02c34e58  csel w21,w8,w9,eq
02c34e5c  bl 0x0486814c
02c34e60  mov w20,w0
02c34e64  add x0,sp,#0x18
02c34e68  mov x1,xzr
02c34e6c  bl 0x04868194
02c34e70  cmp w21,#0x1
02c34e74  mov w19,w0
02c34e78  b.lt 0x02c34ee4
02c34e7c  adrp x22,0x5e58000
02c34e80  adrp x23,0x5e63000
02c34e84  add x1,sp,#0x14
02c34e88  ldr x22,[x22, #0xa10]
02c34e8c  ldr x23,[x23, #0x140]
02c34e90  str w21,[sp, #0x14]
02c34e94  ldr x0,[x22, #0x48]
02c34e98  bl 0x029f5bd8
02c34e9c  mov x21,x0
02c34ea0  ldr x0,[x22, #0x48]
02c34ea4  add x1,sp,#0x10
02c34ea8  str w20,[sp, #0x10]
02c34eac  bl 0x029f5bd8
02c34eb0  mov x20,x0
02c34eb4  ldr x0,[x22, #0x48]
02c34eb8  add x1,sp,#0xc
02c34ebc  str w19,[sp, #0xc]
02c34ec0  bl 0x029f5bd8
02c34ec4  ldr x8,[x23]
02c34ec8  mov x3,x0
02c34ecc  mov x1,x21
02c34ed0  mov x2,x20
02c34ed4  mov x4,xzr
02c34ed8  mov x0,x8
02c34edc  bl 0x046c1d58
02c34ee0  b 0x02c34f70
02c34ee4  cmp w20,#0x1
02c34ee8  b.lt 0x02c34f3c
02c34eec  adrp x21,0x5e58000
02c34ef0  add x1,sp,#0x14
02c34ef4  ldr x21,[x21, #0xa10]
02c34ef8  str w20,[sp, #0x14]
02c34efc  ldr x0,[x21, #0x48]
02c34f00  bl 0x029f5bd8
02c34f04  mov x20,x0
02c34f08  ldr x0,[x21, #0x48]
02c34f0c  add x1,sp,#0x10
02c34f10  str w19,[sp, #0x10]
02c34f14  bl 0x029f5bd8
02c34f18  adrp x8,0x5e62000
02c34f1c  mov x2,x0
02c34f20  mov x1,x20
02c34f24  ldr x8,[x8, #0x128]
02c34f28  mov x3,xzr
02c34f2c  ldr x8,[x8]
02c34f30  mov x0,x8
02c34f34  bl 0x046c1d14
02c34f38  b 0x02c34f70
02c34f3c  adrp x8,0x5e58000
02c34f40  add x1,sp,#0x14
02c34f44  ldr x8,[x8, #0xa10]
02c34f48  str w19,[sp, #0x14]
02c34f4c  ldr x0,[x8, #0x48]
02c34f50  bl 0x029f5bd8
02c34f54  adrp x8,0x5e5e000
02c34f58  mov x1,x0
02c34f5c  mov x2,xzr
02c34f60  ldr x8,[x8, #0x6d0]
02c34f64  ldr x8,[x8]
02c34f68  mov x0,x8
02c34f6c  bl 0x046b6c0c
02c34f70  ldp x20,x19,[sp, #0x40]
02c34f74  ldp x22,x21,[sp, #0x30]
02c34f78  ldp x30,x23,[sp, #0x20]
02c34f7c  add sp,sp,#0x50
02c34f80  ret
