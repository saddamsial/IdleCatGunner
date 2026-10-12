02c74dd4  stp d9,d8,[sp, #-0x40]!
02c74dd8  str x30,[sp, #0x10]
02c74ddc  stp x22,x21,[sp, #0x20]
02c74de0  stp x20,x19,[sp, #0x30]
02c74de4  adrp x20,0x625c000
02c74de8  mov x19,x0
02c74dec  ldrb w8,[x20, #0x2e5]
02c74df0  tbnz w8,#0x0,0x02c74e14
02c74df4  adrp x0,0x5e63000
02c74df8  ldr x0,[x0, #0x170]
02c74dfc  bl 0x029f5a50
02c74e00  adrp x0,0x5e5d000
02c74e04  ldr x0,[x0, #0x5e8]
02c74e08  bl 0x029f5a50
02c74e0c  mov w8,#0x1
02c74e10  strb w8,[x20, #0x2e5]
02c74e14  ldr w8,[x19, #0x10]
02c74e18  ldr x20,[x19, #0x20]
02c74e1c  cmp w8,#0x1
02c74e20  b.eq 0x02c74f6c
02c74e24  cbnz w8,0x02c750a4
02c74e28  adrp x8,0x5e63000
02c74e2c  mov w9,#0xffffffff
02c74e30  mov w1,#0x3
02c74e34  ldr x8,[x8, #0x170]
02c74e38  str w9,[x19, #0x10]
02c74e3c  ldr x0,[x8]
02c74e40  bl 0x029f5b40
02c74e44  adrp x22,0x5e5d000
02c74e48  mov x21,x0
02c74e4c  mov w1,#0x2
02c74e50  ldr x22,[x22, #0x5e8]
02c74e54  ldr x8,[x22]
02c74e58  mov x0,x8
02c74e5c  bl 0x029f5b40
02c74e60  cbz x0,0x02c75190
02c74e64  ldr w8,[x0, #0x18]
02c74e68  mov x1,x0
02c74e6c  cbz w8,0x02c75194
02c74e70  mov w9,#0x6666
02c74e74  cmp w8,#0x1
02c74e78  movk w9,#0x3f86, LSL #16
02c74e7c  str w9,[x1, #0x20]
02c74e80  b.eq 0x02c75194
02c74e84  mov w8,#0xd70a
02c74e88  movk w8,#0x3da3, LSL #16
02c74e8c  str w8,[x1, #0x24]
02c74e90  cbz x21,0x02c75190
02c74e94  ldr w8,[x21, #0x18]
02c74e98  cbz w8,0x02c75194
02c74e9c  mov x0,x21
02c74ea0  str x1,[x0, #0x20]!
02c74ea4  bl 0x029f59f4
02c74ea8  ldr x0,[x22]
02c74eac  mov w1,#0x2
02c74eb0  bl 0x029f5b40
02c74eb4  cbz x0,0x02c75190
02c74eb8  ldr w8,[x0, #0x18]
02c74ebc  mov x1,x0
02c74ec0  cbz w8,0x02c75194
02c74ec4  mov w9,#0xe148
02c74ec8  cmp w8,#0x1
02c74ecc  movk w9,#0x3f7a, LSL #16
02c74ed0  str w9,[x1, #0x20]
02c74ed4  b.eq 0x02c75194
02c74ed8  mov w8,#0xc28f
02c74edc  movk w8,#0x3d75, LSL #16
02c74ee0  str w8,[x1, #0x24]
02c74ee4  ldr w8,[x21, #0x18]
02c74ee8  tst w8,#0xfffffffe
02c74eec  b.eq 0x02c75194
02c74ef0  mov x0,x21
02c74ef4  str x1,[x0, #0x28]!
02c74ef8  bl 0x029f59f4
02c74efc  ldr x0,[x22]
02c74f00  mov w1,#0x2
02c74f04  bl 0x029f5b40
02c74f08  cbz x0,0x02c75190
02c74f0c  ldr w8,[x0, #0x18]
02c74f10  mov x1,x0
02c74f14  cbz w8,0x02c75194
02c74f18  mov w9,#0x3f800000
02c74f1c  cmp w8,#0x1
02c74f20  str w9,[x1, #0x20]
02c74f24  b.eq 0x02c75194
02c74f28  ldr w8,[x21, #0x18]
02c74f2c  mov w9,#0xcccd
02c74f30  movk w9,#0x3d4c, LSL #16
02c74f34  cmp w8,#0x2
02c74f38  str w9,[x1, #0x24]
02c74f3c  b.ls 0x02c75194
02c74f40  mov x0,x21
02c74f44  str x1,[x0, #0x30]!
02c74f48  bl 0x029f59f4
02c74f4c  mov x22,x19
02c74f50  mov x1,x21
02c74f54  str x21,[x22, #0x28]!
02c74f58  mov x0,x22
02c74f5c  bl 0x029f59f4
02c74f60  mov w8,wzr
02c74f64  str wzr,[x22, #0x8]
02c74f68  b 0x02c7505c
02c74f6c  ldp s0,s8,[x19, #0x4c]
02c74f70  mov w8,#0xffffffff
02c74f74  str w8,[x19, #0x10]
02c74f78  b 0x02c75018
02c74f7c  cbz x20,0x02c75190
02c74f80  mov x0,x20
02c74f84  mov x1,xzr
02c74f88  bl 0x057dc0f8
02c74f8c  cbz x0,0x02c75190
02c74f90  mov x1,xzr
02c74f94  bl 0x057ef578
02c74f98  ldr x8,[x19, #0x28]
02c74f9c  stp s0,s1,[x19, #0x34]
02c74fa0  str s2,[x19, #0x3c]
02c74fa4  cbz x8,0x02c75190
02c74fa8  ldrsw x9,[x19, #0x30]
02c74fac  ldr w10,[x8, #0x18]
02c74fb0  cmp w9,w10
02c74fb4  b.cs 0x02c75194
02c74fb8  add x10,x8,x9, LSL #0x3
02c74fbc  ldr x11,[x10, #0x20]!
02c74fc0  cbz x11,0x02c75190
02c74fc4  ldr w12,[x11, #0x18]
02c74fc8  cbz w12,0x02c75194
02c74fcc  ldr d0,[x20, #0xf8]
02c74fd0  ldr s1,[x11, #0x20]
02c74fd4  ldr s2,[x20, #0x100]
02c74fd8  fmul v0.2S,v0.2S,v1.S[0x0]
02c74fdc  fmul s1,s2,s1
02c74fe0  str d0,[x19, #0x40]
02c74fe4  str s1,[x19, #0x48]
02c74fe8  ldr w8,[x8, #0x18]
02c74fec  cmp w9,w8
02c74ff0  b.cs 0x02c75194
02c74ff4  ldr x8,[x10]
02c74ff8  cbz x8,0x02c75190
02c74ffc  ldr w9,[x8, #0x18]
02c75000  tst w9,#0xfffffffe
02c75004  b.eq 0x02c75194
02c75008  ldr s0,[x8, #0x24]
02c7500c  movi d8,#0x0
02c75010  str wzr,[x19, #0x50]
02c75014  str s0,[x19, #0x4c]
02c75018  fcmp s8,s0
02c7501c  b.mi 0x02c750ac
02c75020  cbz x20,0x02c75190
02c75024  mov x0,x20
02c75028  mov x1,xzr
02c7502c  bl 0x057dc0f8
02c75030  cbz x0,0x02c75190
02c75034  ldp s1,s2,[x19, #0x44]
02c75038  mov x1,xzr
02c7503c  ldr s0,[x19, #0x40]
02c75040  bl 0x057ef654
02c75044  ldr w8,[x19, #0x30]
02c75048  stur xzr,[x19, #0x3c]
02c7504c  stur xzr,[x19, #0x34]
02c75050  add w8,w8,#0x1
02c75054  stur xzr,[x19, #0x44]
02c75058  str w8,[x19, #0x30]
02c7505c  ldr x9,[x19, #0x28]
02c75060  cbz x9,0x02c75190
02c75064  ldr w9,[x9, #0x18]
02c75068  cmp w8,w9
02c7506c  b.lt 0x02c74f7c
02c75070  cbz x20,0x02c75190
02c75074  mov x0,x20
02c75078  mov x1,xzr
02c7507c  bl 0x057dc0f8
02c75080  cbz x0,0x02c75190
02c75084  ldp s1,s2,[x20, #0xfc]
02c75088  mov x1,xzr
02c7508c  ldr s0,[x20, #0xf8]
02c75090  bl 0x057ef654
02c75094  add x0,x20,#0x108
02c75098  mov x1,xzr
02c7509c  str xzr,[x20, #0x108]
02c750a0  bl 0x029f59f4
02c750a4  mov w0,wzr
02c750a8  b 0x02c7517c
02c750ac  mov x0,xzr
02c750b0  bl 0x057ebb34
02c750b4  fadd s8,s8,s0
02c750b8  str s8,[x19, #0x50]
02c750bc  cbz x20,0x02c75190
02c750c0  ldr s9,[x19, #0x4c]
02c750c4  mov x0,x20
02c750c8  mov x1,xzr
02c750cc  bl 0x057dc0f8
02c750d0  cbz x0,0x02c75190
02c750d4  fdiv s0,s8,s9
02c750d8  fmov s1,0x3f800000
02c750dc  movi d3,#0x0
02c750e0  fmov s4,0x40400000
02c750e4  mov x1,xzr
02c750e8  fcmp s0,s1
02c750ec  fcsel s2,s1,s0,gt
02c750f0  fcmp s0,#0.0
02c750f4  fcsel s0,s3,s2,mi
02c750f8  fcmp s0,#0.0
02c750fc  fcsel s0,s3,s0,mi
02c75100  fadd s2,s0,s0
02c75104  fmul s4,s0,s4
02c75108  fmul s2,s0,s2
02c7510c  fmul s4,s0,s4
02c75110  fmul s0,s0,s2
02c75114  fsub s0,s4,s0
02c75118  ldr s4,[x19, #0x48]
02c7511c  fsub s2,s1,s0
02c75120  fmul s2,s2,s3
02c75124  fadd s0,s0,s2
02c75128  ldr d2,[x19, #0x40]
02c7512c  fcmp s0,s1
02c75130  fcsel s1,s1,s0,gt
02c75134  fcmp s0,#0.0
02c75138  ldur d0,[x19, #0x34]
02c7513c  fsub v2.2S,v2.2S,v0.2S
02c75140  fcsel s1,s3,s1,mi
02c75144  ldr s3,[x19, #0x3c]
02c75148  fsub s4,s4,s3
02c7514c  fmul v2.2S,v2.2S,v1.S[0x0]
02c75150  fmul s1,s1,s4
02c75154  fadd v0.2S,v0.2S,v2.2S
02c75158  fadd s2,s3,s1
02c7515c  dup s1,v0.S[0x1]
02c75160  bl 0x057ef654
02c75164  str xzr,[x19, #0x18]!
02c75168  mov x0,x19
02c7516c  mov x1,xzr
02c75170  bl 0x029f59f4
02c75174  mov w0,#0x1
02c75178  stur w0,[x19, #-0x8]
02c7517c  ldp x20,x19,[sp, #0x30]
02c75180  ldr x30,[sp, #0x10]
02c75184  ldp x22,x21,[sp, #0x20]
02c75188  ldp d9,d8,[sp], #0x40
02c7518c  ret
02c75190  bl 0x029f5cfc
02c75194  bl 0x029f5d04
