02c36dcc  stp d9,d8,[sp, #-0x40]!
02c36dd0  str x30,[sp, #0x10]
02c36dd4  stp x22,x21,[sp, #0x20]
02c36dd8  stp x20,x19,[sp, #0x30]
02c36ddc  ldr w8,[x0, #0x10]
02c36de0  ldr x20,[x0, #0x20]
02c36de4  mov x19,x0
02c36de8  cmp w8,#0x1
02c36dec  b.eq 0x02c36e2c
02c36df0  cbnz w8,0x02c36f48
02c36df4  mov w8,#0xffffffff
02c36df8  str w8,[x19, #0x10]
02c36dfc  cbz x20,0x02c36fdc
02c36e00  ldp s0,s1,[x19, #0x28]
02c36e04  adrp x8,0x116c000
02c36e08  movi d8,#0x0
02c36e0c  str wzr,[x19, #0x40]
02c36e10  fabd s0,s0,s1
02c36e14  ldr s1,[x8, #0x88]
02c36e18  fmaxnm s0,s0,s1
02c36e1c  ldr s1,[x20, #0x8c]
02c36e20  fmul s0,s1,s0
02c36e24  str s0,[x19, #0x3c]
02c36e28  b 0x02c36e38
02c36e2c  ldp s0,s8,[x19, #0x3c]
02c36e30  mov w8,#0xffffffff
02c36e34  str w8,[x19, #0x10]
02c36e38  fcmp s8,s0
02c36e3c  b.pl 0x02c36f20
02c36e40  mov x0,xzr
02c36e44  bl 0x057ebb34
02c36e48  fadd s0,s8,s0
02c36e4c  str s0,[x19, #0x40]
02c36e50  cbz x20,0x02c36fdc
02c36e54  ldr x0,[x20, #0x48]
02c36e58  cbz x0,0x02c36fdc
02c36e5c  ldr s1,[x19, #0x3c]
02c36e60  movi d2,#0x0
02c36e64  mov x1,xzr
02c36e68  fdiv s0,s0,s1
02c36e6c  fmov s1,0x3f800000
02c36e70  fcmp s0,s1
02c36e74  fcsel s1,s1,s0,gt
02c36e78  fcmp s0,#0.0
02c36e7c  fcsel s0,s2,s1,mi
02c36e80  ldp s1,s3,[x19, #0x28]
02c36e84  fsub s1,s1,s3
02c36e88  fcmp s0,#0.0
02c36e8c  fcsel s9,s2,s0,mi
02c36e90  fmul s0,s1,s9
02c36e94  fadd s0,s3,s0
02c36e98  bl 0x02c28290
02c36e9c  ldp s0,s1,[x19, #0x34]
02c36ea0  adrp x22,0x625b000
02c36ea4  ldrb w8,[x22, #0x95a]
02c36ea8  ldr w21,[x19, #0x30]
02c36eac  scvtf s8,s0
02c36eb0  scvtf s0,s1
02c36eb4  fsub s0,s0,s8
02c36eb8  fmul s9,s0,s9
02c36ebc  cbnz w8,0x02c36ed4
02c36ec0  adrp x0,0x5e59000
02c36ec4  ldr x0,[x0]
02c36ec8  bl 0x029f5a50
02c36ecc  mov w8,#0x1
02c36ed0  strb w8,[x22, #0x95a]
02c36ed4  adrp x8,0x5e59000
02c36ed8  fadd s9,s9,s8
02c36edc  ldr x8,[x8]
02c36ee0  ldr x0,[x8]
02c36ee4  ldr w8,[x0, #0xe4]
02c36ee8  cbnz w8,0x02c36ef0
02c36eec  bl 0x029f5bd0
02c36ef0  fcvt d8,s9
02c36ef4  add x0,sp,#0x18
02c36ef8  fmov d0,d8
02c36efc  bl 0x05afb230
02c36f00  fcmp s9,#0.0
02c36f04  b.ge 0x02c36f50
02c36f08  fmov d1,-0x4020000000000000
02c36f0c  fcmp d0,d1
02c36f10  b.ne 0x02c36f78
02c36f14  ldr d0,[sp, #0x18]
02c36f18  fmov d1,-0x4010000000000000
02c36f1c  b 0x02c36f64
02c36f20  cbz x20,0x02c36fdc
02c36f24  ldr x0,[x20, #0x48]
02c36f28  cbz x0,0x02c36fdc
02c36f2c  ldr s0,[x19, #0x28]
02c36f30  mov x1,xzr
02c36f34  bl 0x02c28290
02c36f38  ldr w1,[x19, #0x30]
02c36f3c  ldr w2,[x19, #0x38]
02c36f40  mov x0,x20
02c36f44  bl 0x02c362b0
02c36f48  mov w0,wzr
02c36f4c  b 0x02c36fc8
02c36f50  fmov d1,0x3fe0000000000000
02c36f54  fcmp d0,d1
02c36f58  b.ne 0x02c36f84
02c36f5c  fmov d1,0x3ff0000000000000
02c36f60  ldr d0,[sp, #0x18]
02c36f64  fcvtzs x8,d0
02c36f68  fadd d1,d0,d1
02c36f6c  tst x8,#0x1
02c36f70  fcsel d0,d0,d1,eq
02c36f74  b 0x02c36f8c
02c36f78  fadd d0,d8,d1
02c36f7c  frintp d0,d0
02c36f80  b 0x02c36f8c
02c36f84  fadd d0,d8,d1
02c36f88  frintm d0,d0
02c36f8c  mov x8,#0x7ff0000000000000
02c36f90  fcvtzs w9,d0
02c36f94  mov x0,x20
02c36f98  fmov d1,x8
02c36f9c  mov w8,#0x80000000
02c36fa0  mov w1,w21
02c36fa4  fcmp d0,d1
02c36fa8  csel w2,w8,w9,eq
02c36fac  bl 0x02c362b0
02c36fb0  str xzr,[x19, #0x18]!
02c36fb4  mov x0,x19
02c36fb8  mov x1,xzr
02c36fbc  bl 0x029f59f4
02c36fc0  mov w0,#0x1
02c36fc4  stur w0,[x19, #-0x8]
02c36fc8  ldp x20,x19,[sp, #0x30]
02c36fcc  ldr x30,[sp, #0x10]
02c36fd0  ldp x22,x21,[sp, #0x20]
02c36fd4  ldp d9,d8,[sp], #0x40
02c36fd8  ret
02c36fdc  bl 0x029f5cfc
