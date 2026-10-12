02c52e0c  sub sp,sp,#0x30
02c52e10  stp x30,x21,[sp, #0x10]
02c52e14  stp x20,x19,[sp, #0x20]
02c52e18  adrp x21,0x625c000
02c52e1c  mov w19,w1
02c52e20  mov x20,x0
02c52e24  ldrb w8,[x21, #0x175]
02c52e28  tbnz w8,#0x0,0x02c52e7c
02c52e2c  adrp x0,0x5e58000
02c52e30  ldr x0,[x0, #0xf08]
02c52e34  bl 0x029f5a50
02c52e38  adrp x0,0x5e5e000
02c52e3c  ldr x0,[x0, #0x528]
02c52e40  bl 0x029f5a50
02c52e44  adrp x0,0x5e63000
02c52e48  ldr x0,[x0, #0x5c0]
02c52e4c  bl 0x029f5a50
02c52e50  adrp x0,0x5e63000
02c52e54  ldr x0,[x0, #0x5c8]
02c52e58  bl 0x029f5a50
02c52e5c  adrp x0,0x5e63000
02c52e60  ldr x0,[x0, #0x5d0]
02c52e64  bl 0x029f5a50
02c52e68  adrp x0,0x5e59000
02c52e6c  ldr x0,[x0, #0x50]
02c52e70  bl 0x029f5a50
02c52e74  mov w8,#0x1
02c52e78  strb w8,[x21, #0x175]
02c52e7c  cmp w19,#0x8
02c52e80  b.cs 0x02c52f5c
02c52e84  ldr x8,[x20, #0x20]
02c52e88  cbz x8,0x02c52fb0
02c52e8c  ldr w9,[x8, #0x18]
02c52e90  cmp w9,w19
02c52e94  b.ls 0x02c52fb4
02c52e98  add x8,x8,w19, UXTW  #0x3
02c52e9c  ldr x21,[x8, #0x20]
02c52ea0  cbz x21,0x02c52fb0
02c52ea4  adrp x8,0x5e5e000
02c52ea8  adrp x10,0x5e63000
02c52eac  adrp x11,0x5e63000
02c52eb0  ldr x8,[x8, #0x528]
02c52eb4  ldr w9,[x21, #0x10]
02c52eb8  ldr x10,[x10, #0x5c0]
02c52ebc  ldr x11,[x11, #0x5d0]
02c52ec0  ldr x0,[x8]
02c52ec4  cmp w9,#0x0
02c52ec8  csel x8,x10,x11,eq
02c52ecc  ldr w9,[x0, #0xe4]
02c52ed0  ldr x19,[x8]
02c52ed4  cbnz w9,0x02c52edc
02c52ed8  bl 0x029f5bd0
02c52edc  mov x0,x19
02c52ee0  mov w1,#0x1
02c52ee4  mov w2,wzr
02c52ee8  mov w3,#0x1
02c52eec  mov w4,wzr
02c52ef0  mov x5,xzr
02c52ef4  mov x6,xzr
02c52ef8  mov w7,#0x1
02c52efc  str xzr,[sp]
02c52f00  bl 0x02bccb00
02c52f04  mov x1,xzr
02c52f08  mov x20,x0
02c52f0c  bl 0x046c0604
02c52f10  tbz w0,#0x0,0x02c52f6c
02c52f14  adrp x8,0x5e63000
02c52f18  mov x1,x19
02c52f1c  mov x2,xzr
02c52f20  ldr x8,[x8, #0x5c8]
02c52f24  ldr x0,[x8]
02c52f28  bl 0x046b2d44
02c52f2c  adrp x8,0x5e58000
02c52f30  mov x20,x0
02c52f34  ldr x8,[x8, #0xf08]
02c52f38  ldr x8,[x8]
02c52f3c  ldr w9,[x8, #0xe4]
02c52f40  cbnz w9,0x02c52f4c
02c52f44  mov x0,x8
02c52f48  bl 0x029f5bd0
02c52f4c  mov x0,x20
02c52f50  mov x1,xzr
02c52f54  bl 0x0579a8d0
02c52f58  b 0x02c52f9c
02c52f5c  adrp x8,0x5e59000
02c52f60  ldr x8,[x8, #0x50]
02c52f64  ldr x19,[x8]
02c52f68  b 0x02c52f9c
02c52f6c  adrp x8,0x5e58000
02c52f70  add x1,sp,#0xc
02c52f74  ldr x8,[x8, #0xa10]
02c52f78  ldr w9,[x21, #0x14]
02c52f7c  ldr x0,[x8, #0x48]
02c52f80  str w9,[sp, #0xc]
02c52f84  bl 0x029f5bd8
02c52f88  mov x1,x0
02c52f8c  mov x0,x20
02c52f90  mov x2,xzr
02c52f94  bl 0x046b6c0c
02c52f98  mov x19,x0
02c52f9c  mov x0,x19
02c52fa0  ldp x20,x19,[sp, #0x20]
02c52fa4  ldp x30,x21,[sp, #0x10]
02c52fa8  add sp,sp,#0x30
02c52fac  ret
02c52fb0  bl 0x029f5cfc
02c52fb4  bl 0x029f5d04
