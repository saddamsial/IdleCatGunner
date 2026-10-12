02c81d20  stp d9,d8,[sp, #-0x40]!
02c81d24  str x30,[sp, #0x10]
02c81d28  stp x22,x21,[sp, #0x20]
02c81d2c  stp x20,x19,[sp, #0x30]
02c81d30  adrp x20,0x625c000
02c81d34  mov x19,x0
02c81d38  ldrb w8,[x20, #0x35c]
02c81d3c  tbnz w8,#0x0,0x02c81d60
02c81d40  adrp x0,0x5e63000
02c81d44  ldr x0,[x0, #0x170]
02c81d48  bl 0x029f5a50
02c81d4c  adrp x0,0x5e5d000
02c81d50  ldr x0,[x0, #0x5e8]
02c81d54  bl 0x029f5a50
02c81d58  mov w8,#0x1
02c81d5c  strb w8,[x20, #0x35c]
02c81d60  ldr w8,[x19, #0x10]
02c81d64  ldr x20,[x19, #0x20]
02c81d68  cmp w8,#0x1
02c81d6c  b.eq 0x02c81f88
02c81d70  cbnz w8,0x02c820ac
02c81d74  adrp x8,0x5e63000
02c81d78  mov w9,#0xffffffff
02c81d7c  mov w1,#0x5
02c81d80  ldr x8,[x8, #0x170]
02c81d84  str w9,[x19, #0x10]
02c81d88  ldr x0,[x8]
02c81d8c  bl 0x029f5b40
02c81d90  adrp x22,0x5e5d000
02c81d94  mov x21,x0
02c81d98  mov w1,#0x2
02c81d9c  ldr x22,[x22, #0x5e8]
02c81da0  ldr x8,[x22]
02c81da4  mov x0,x8
02c81da8  bl 0x029f5b40
02c81dac  cbz x21,0x02c82198
02c81db0  ldr w8,[x21, #0x18]
02c81db4  cbz w8,0x02c8219c
02c81db8  mov x1,x0
02c81dbc  mov x0,x21
02c81dc0  str x1,[x0, #0x20]!
02c81dc4  bl 0x029f59f4
02c81dc8  ldr x0,[x22]
02c81dcc  mov w1,#0x2
02c81dd0  bl 0x029f5b40
02c81dd4  cbz x0,0x02c82198
02c81dd8  ldr w8,[x0, #0x18]
02c81ddc  mov x1,x0
02c81de0  cbz w8,0x02c8219c
02c81de4  mov w9,#0xcccd
02c81de8  cmp w8,#0x1
02c81dec  movk w9,#0x3f8c, LSL #16
02c81df0  str w9,[x1, #0x20]
02c81df4  b.eq 0x02c8219c
02c81df8  mov w8,#0x999a
02c81dfc  movk w8,#0x3e19, LSL #16
02c81e00  str w8,[x1, #0x24]
02c81e04  ldr w8,[x21, #0x18]
02c81e08  tst w8,#0xfffffffe
02c81e0c  b.eq 0x02c8219c
02c81e10  mov x0,x21
02c81e14  str x1,[x0, #0x28]!
02c81e18  bl 0x029f59f4
02c81e1c  ldr x0,[x22]
02c81e20  mov w1,#0x2
02c81e24  bl 0x029f5b40
02c81e28  cbz x0,0x02c82198
02c81e2c  ldr w8,[x0, #0x18]
02c81e30  mov x1,x0
02c81e34  cbz w8,0x02c8219c
02c81e38  mov w9,#0x3333
02c81e3c  cmp w8,#0x1
02c81e40  movk w9,#0x3f73, LSL #16
02c81e44  str w9,[x1, #0x20]
02c81e48  b.eq 0x02c8219c
02c81e4c  ldr w8,[x21, #0x18]
02c81e50  mov w9,#0xd70a
02c81e54  movk w9,#0x3da3, LSL #16
02c81e58  cmp w8,#0x2
02c81e5c  str w9,[x1, #0x24]
02c81e60  b.ls 0x02c8219c
02c81e64  mov x0,x21
02c81e68  str x1,[x0, #0x30]!
02c81e6c  bl 0x029f59f4
02c81e70  ldr x0,[x22]
02c81e74  mov w1,#0x2
02c81e78  bl 0x029f5b40
02c81e7c  cbz x0,0x02c82198
02c81e80  ldr w8,[x0, #0x18]
02c81e84  mov x1,x0
02c81e88  cbz w8,0x02c8219c
02c81e8c  mov w9,#0x8f5c
02c81e90  cmp w8,#0x1
02c81e94  movk w9,#0x3f82, LSL #16
02c81e98  str w9,[x1, #0x20]
02c81e9c  b.eq 0x02c8219c
02c81ea0  mov w8,#0xc28f
02c81ea4  movk w8,#0x3d75, LSL #16
02c81ea8  str w8,[x1, #0x24]
02c81eac  ldr w8,[x21, #0x18]
02c81eb0  tst w8,#0xfffffffc
02c81eb4  b.eq 0x02c8219c
02c81eb8  mov x0,x21
02c81ebc  str x1,[x0, #0x38]!
02c81ec0  bl 0x029f59f4
02c81ec4  ldr x0,[x22]
02c81ec8  mov w1,#0x2
02c81ecc  bl 0x029f5b40
02c81ed0  cbz x0,0x02c82198
02c81ed4  ldr w8,[x0, #0x18]
02c81ed8  mov x1,x0
02c81edc  cbz w8,0x02c8219c
02c81ee0  mov w9,#0x3f800000
02c81ee4  cmp w8,#0x1
02c81ee8  str w9,[x1, #0x20]
02c81eec  b.eq 0x02c8219c
02c81ef0  ldr w8,[x21, #0x18]
02c81ef4  mov w9,#0xcccd
02c81ef8  movk w9,#0x3d4c, LSL #16
02c81efc  cmp w8,#0x4
02c81f00  str w9,[x1, #0x24]
02c81f04  b.ls 0x02c8219c
02c81f08  mov x0,x21
02c81f0c  str x1,[x0, #0x40]!
02c81f10  bl 0x029f59f4
02c81f14  mov x0,x19
02c81f18  mov x1,x21
02c81f1c  str x21,[x0, #0x28]!
02c81f20  bl 0x029f59f4
02c81f24  cbz x20,0x02c82198
02c81f28  mov x0,x20
02c81f2c  mov x1,xzr
02c81f30  bl 0x057dc0f8
02c81f34  adrp x22,0x625b000
02c81f38  mov x21,x0
02c81f3c  ldrb w8,[x22, #0x26f]
02c81f40  cbnz w8,0x02c81f58
02c81f44  adrp x0,0x5e58000
02c81f48  ldr x0,[x0, #0xbf8]
02c81f4c  bl 0x029f5a50
02c81f50  mov w8,#0x1
02c81f54  strb w8,[x22, #0x26f]
02c81f58  cbz x21,0x02c82198
02c81f5c  adrp x8,0x5e58000
02c81f60  mov x0,x21
02c81f64  mov x1,xzr
02c81f68  ldr x8,[x8, #0xbf8]
02c81f6c  ldr x8,[x8]
02c81f70  ldr x8,[x8, #0xb8]
02c81f74  ldp s1,s2,[x8, #0x4]
02c81f78  ldr s0,[x8]
02c81f7c  bl 0x057ef654
02c81f80  mov w21,#0x1
02c81f84  b 0x02c82064
02c81f88  ldp s0,s8,[x19, #0x4c]
02c81f8c  mov w8,#0xffffffff
02c81f90  str w8,[x19, #0x10]
02c81f94  b 0x02c82024
02c81f98  cbz x0,0x02c82198
02c81f9c  mov x1,xzr
02c81fa0  bl 0x057ef578
02c81fa4  ldr x8,[x19, #0x28]
02c81fa8  stp s0,s1,[x19, #0x34]
02c81fac  str s2,[x19, #0x3c]
02c81fb0  cbz x8,0x02c82198
02c81fb4  ldrsw x9,[x19, #0x30]
02c81fb8  ldr w10,[x8, #0x18]
02c81fbc  cmp w9,w10
02c81fc0  b.cs 0x02c8219c
02c81fc4  add x10,x8,x9, LSL #0x3
02c81fc8  ldr x11,[x10, #0x20]!
02c81fcc  cbz x11,0x02c82198
02c81fd0  ldr w12,[x11, #0x18]
02c81fd4  cbz w12,0x02c8219c
02c81fd8  ldr d0,[x20, #0xc0]
02c81fdc  ldr s1,[x11, #0x20]
02c81fe0  ldr s2,[x20, #0xc8]
02c81fe4  fmul v0.2S,v0.2S,v1.S[0x0]
02c81fe8  fmul s1,s2,s1
02c81fec  str d0,[x19, #0x40]
02c81ff0  str s1,[x19, #0x48]
02c81ff4  ldr w8,[x8, #0x18]
02c81ff8  cmp w9,w8
02c81ffc  b.cs 0x02c8219c
02c82000  ldr x8,[x10]
02c82004  cbz x8,0x02c82198
02c82008  ldr w9,[x8, #0x18]
02c8200c  tst w9,#0xfffffffe
02c82010  b.eq 0x02c8219c
02c82014  ldr s0,[x8, #0x24]
02c82018  movi d8,#0x0
02c8201c  str wzr,[x19, #0x50]
02c82020  str s0,[x19, #0x4c]
02c82024  fcmp s8,s0
02c82028  b.mi 0x02c820b4
02c8202c  cbz x20,0x02c82198
02c82030  mov x0,x20
02c82034  mov x1,xzr
02c82038  bl 0x057dc0f8
02c8203c  cbz x0,0x02c82198
02c82040  ldp s1,s2,[x19, #0x44]
02c82044  mov x1,xzr
02c82048  ldr s0,[x19, #0x40]
02c8204c  bl 0x057ef654
02c82050  ldr w8,[x19, #0x30]
02c82054  stur xzr,[x19, #0x3c]
02c82058  stur xzr,[x19, #0x34]
02c8205c  add w21,w8,#0x1
02c82060  stur xzr,[x19, #0x44]
02c82064  ldr x8,[x19, #0x28]
02c82068  str w21,[x19, #0x30]
02c8206c  cbz x8,0x02c82198
02c82070  ldr w22,[x8, #0x18]
02c82074  mov x0,x20
02c82078  mov x1,xzr
02c8207c  bl 0x057dc0f8
02c82080  cmp w21,w22
02c82084  b.lt 0x02c81f98
02c82088  cbz x0,0x02c82198
02c8208c  ldp s1,s2,[x20, #0xc4]
02c82090  mov x1,xzr
02c82094  ldr s0,[x20, #0xc0]
02c82098  bl 0x057ef654
02c8209c  str xzr,[x20, #0xd8]!
02c820a0  mov x0,x20
02c820a4  mov x1,xzr
02c820a8  bl 0x029f59f4
02c820ac  mov w0,wzr
02c820b0  b 0x02c82184
02c820b4  mov x0,xzr
02c820b8  bl 0x057ebabc
02c820bc  fadd s8,s8,s0
02c820c0  str s8,[x19, #0x50]
02c820c4  cbz x20,0x02c82198
02c820c8  ldr s9,[x19, #0x4c]
02c820cc  mov x0,x20
02c820d0  mov x1,xzr
02c820d4  bl 0x057dc0f8
02c820d8  cbz x0,0x02c82198
02c820dc  fdiv s0,s8,s9
02c820e0  fmov s1,0x3f800000
02c820e4  movi d3,#0x0
02c820e8  fmov s4,0x40400000
02c820ec  mov x1,xzr
02c820f0  fcmp s0,s1
02c820f4  fcsel s2,s1,s0,gt
02c820f8  fcmp s0,#0.0
02c820fc  fcsel s0,s3,s2,mi
02c82100  fcmp s0,#0.0
02c82104  fcsel s0,s3,s0,mi
02c82108  fadd s2,s0,s0
02c8210c  fmul s4,s0,s4
02c82110  fmul s2,s0,s2
02c82114  fmul s4,s0,s4
02c82118  fmul s0,s0,s2
02c8211c  fsub s0,s4,s0
02c82120  ldr s4,[x19, #0x48]
02c82124  fsub s2,s1,s0
02c82128  fmul s2,s2,s3
02c8212c  fadd s0,s0,s2
02c82130  ldr d2,[x19, #0x40]
02c82134  fcmp s0,s1
02c82138  fcsel s1,s1,s0,gt
02c8213c  fcmp s0,#0.0
02c82140  ldur d0,[x19, #0x34]
02c82144  fsub v2.2S,v2.2S,v0.2S
02c82148  fcsel s1,s3,s1,mi
02c8214c  ldr s3,[x19, #0x3c]
02c82150  fsub s4,s4,s3
02c82154  fmul v2.2S,v2.2S,v1.S[0x0]
02c82158  fmul s1,s1,s4
02c8215c  fadd v0.2S,v0.2S,v2.2S
02c82160  fadd s2,s3,s1
02c82164  dup s1,v0.S[0x1]
02c82168  bl 0x057ef654
02c8216c  str xzr,[x19, #0x18]!
02c82170  mov x0,x19
02c82174  mov x1,xzr
02c82178  bl 0x029f59f4
02c8217c  mov w0,#0x1
02c82180  stur w0,[x19, #-0x8]
02c82184  ldp x20,x19,[sp, #0x30]
02c82188  ldr x30,[sp, #0x10]
02c8218c  ldp x22,x21,[sp, #0x20]
02c82190  ldp d9,d8,[sp], #0x40
02c82194  ret
02c82198  bl 0x029f5cfc
02c8219c  bl 0x029f5d04
