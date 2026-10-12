02c03e2c  sub sp,sp,#0x60
02c03e30  stp d9,d8,[sp, #0x10]
02c03e34  stp x30,x25,[sp, #0x20]
02c03e38  stp x24,x23,[sp, #0x30]
02c03e3c  stp x22,x21,[sp, #0x40]
02c03e40  stp x20,x19,[sp, #0x50]
02c03e44  adrp x23,0x625b000
02c03e48  mov w19,w3
02c03e4c  mov w21,w2
02c03e50  ldrb w8,[x23, #0xe5a]
02c03e54  mov w22,w1
02c03e58  mov x20,x0
02c03e5c  tbnz w8,#0x0,0x02c03e74
02c03e60  adrp x0,0x5e61000
02c03e64  ldr x0,[x0, #0xf28]
02c03e68  bl 0x029f5a50
02c03e6c  mov w8,#0x1
02c03e70  strb w8,[x23, #0xe5a]
02c03e74  ldr x0,[x20, #0x50]
02c03e78  str wzr,[sp, #0x4]
02c03e7c  cbz x0,0x02c0409c
02c03e80  scvtf s0,w22
02c03e84  scvtf s1,w21
02c03e88  adrp x24,0x5e61000
02c03e8c  ldr x24,[x24, #0xf28]
02c03e90  mov x1,xzr
02c03e94  fdiv s0,s0,s1
02c03e98  bl 0x02c28290
02c03e9c  adrp x25,0x5e58000
02c03ea0  add x1,sp,#0x8
02c03ea4  ldr x25,[x25, #0xa10]
02c03ea8  ldr x23,[x20, #0x48]
02c03eac  str w22,[sp, #0x8]
02c03eb0  ldr x0,[x25, #0x48]
02c03eb4  bl 0x029f5bd8
02c03eb8  mov x22,x0
02c03ebc  ldr x0,[x25, #0x48]
02c03ec0  mov x1,sp
02c03ec4  str w21,[sp]
02c03ec8  bl 0x029f5bd8
02c03ecc  ldr x8,[x24]
02c03ed0  mov x2,x0
02c03ed4  mov x1,x22
02c03ed8  mov x3,xzr
02c03edc  mov x0,x8
02c03ee0  bl 0x046c1d14
02c03ee4  cbz x23,0x02c0409c
02c03ee8  ldr x8,[x23]
02c03eec  mov x1,x0
02c03ef0  mov x0,x23
02c03ef4  ldr x9,[x8, #0x558]
02c03ef8  ldr x2,[x8, #0x560]
02c03efc  blr x9
02c03f00  ldr x21,[x20, #0x30]
02c03f04  cmp w19,#0x3
02c03f08  add x0,x20,#0x24
02c03f0c  b.ne 0x02c03fe4
02c03f10  ldr s0,[x0]
02c03f14  adrp x22,0x625b000
02c03f18  fmov s9,0x3f000000
02c03f1c  ldrb w8,[x22, #0x95a]
02c03f20  scvtf s8,s0
02c03f24  cbnz w8,0x02c03f3c
02c03f28  adrp x0,0x5e59000
02c03f2c  ldr x0,[x0]
02c03f30  bl 0x029f5a50
02c03f34  mov w8,#0x1
02c03f38  strb w8,[x22, #0x95a]
02c03f3c  adrp x8,0x5e59000
02c03f40  fmul s9,s8,s9
02c03f44  ldr x8,[x8]
02c03f48  ldr x0,[x8]
02c03f4c  ldr w8,[x0, #0xe4]
02c03f50  cbnz w8,0x02c03f58
02c03f54  bl 0x029f5bd0
02c03f58  fcvt d8,s9
02c03f5c  add x0,sp,#0x8
02c03f60  fmov d0,d8
02c03f64  bl 0x05afb230
02c03f68  fcmp s9,#0.0
02c03f6c  b.ge 0x02c03f88
02c03f70  fmov d1,-0x4020000000000000
02c03f74  fcmp d0,d1
02c03f78  b.ne 0x02c03fb0
02c03f7c  ldr d0,[sp, #0x8]
02c03f80  fmov d1,-0x4010000000000000
02c03f84  b 0x02c03f9c
02c03f88  fmov d1,0x3fe0000000000000
02c03f8c  fcmp d0,d1
02c03f90  b.ne 0x02c03fbc
02c03f94  fmov d1,0x3ff0000000000000
02c03f98  ldr d0,[sp, #0x8]
02c03f9c  fcvtzs x8,d0
02c03fa0  fadd d1,d0,d1
02c03fa4  tst x8,#0x1
02c03fa8  fcsel d0,d0,d1,eq
02c03fac  b 0x02c03fc4
02c03fb0  fadd d0,d8,d1
02c03fb4  frintp d0,d0
02c03fb8  b 0x02c03fc4
02c03fbc  fadd d0,d8,d1
02c03fc0  frintm d0,d0
02c03fc4  mov x8,#0x7ff0000000000000
02c03fc8  fcvtzs w9,d0
02c03fcc  add x0,sp,#0x4
02c03fd0  fmov d1,x8
02c03fd4  mov w8,#0x80000000
02c03fd8  fcmp d0,d1
02c03fdc  csel w8,w8,w9,eq
02c03fe0  str w8,[sp, #0x4]
02c03fe4  mov x1,xzr
02c03fe8  bl 0x0484e6a4
02c03fec  cbz x21,0x02c0409c
02c03ff0  ldr x8,[x21]
02c03ff4  mov x1,x0
02c03ff8  mov x0,x21
02c03ffc  ldr x9,[x8, #0x558]
02c04000  ldr x2,[x8, #0x560]
02c04004  blr x9
02c04008  ldr x0,[x20, #0x58]
02c0400c  cbz x0,0x02c0409c
02c04010  cmp w19,#0x0
02c04014  mov x2,xzr
02c04018  cset w1,eq
02c0401c  bl 0x057dff3c
02c04020  ldr x0,[x20, #0x60]
02c04024  cbz x0,0x02c0409c
02c04028  cmp w19,#0x1
02c0402c  mov x2,xzr
02c04030  cset w1,eq
02c04034  bl 0x057dff3c
02c04038  ldr x0,[x20, #0x68]
02c0403c  cbz x0,0x02c0409c
02c04040  cmp w19,#0x2
02c04044  mov x2,xzr
02c04048  cset w1,eq
02c0404c  bl 0x057dff3c
02c04050  ldr x0,[x20, #0x70]
02c04054  cbz x0,0x02c0409c
02c04058  cmp w19,#0x3
02c0405c  mov x2,xzr
02c04060  cset w1,eq
02c04064  bl 0x057dff3c
02c04068  ldr x0,[x20, #0x88]
02c0406c  cbz x0,0x02c0409c
02c04070  cmp w19,#0x3
02c04074  mov x2,xzr
02c04078  cset w1,eq
02c0407c  bl 0x057dff3c
02c04080  ldp x20,x19,[sp, #0x50]
02c04084  ldp x22,x21,[sp, #0x40]
02c04088  ldp x24,x23,[sp, #0x30]
02c0408c  ldp x30,x25,[sp, #0x20]
02c04090  ldp d9,d8,[sp, #0x10]
02c04094  add sp,sp,#0x60
02c04098  ret
02c0409c  bl 0x029f5cfc
