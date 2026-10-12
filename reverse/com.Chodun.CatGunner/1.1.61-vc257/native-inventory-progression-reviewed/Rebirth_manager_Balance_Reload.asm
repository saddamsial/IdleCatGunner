02c86de4  str d10,[sp, #-0x80]!
02c86de8  stp d9,d8,[sp, #0x10]
02c86dec  stp x29,x30,[sp, #0x20]
02c86df0  stp x28,x27,[sp, #0x30]
02c86df4  stp x26,x25,[sp, #0x40]
02c86df8  stp x24,x23,[sp, #0x50]
02c86dfc  stp x22,x21,[sp, #0x60]
02c86e00  stp x20,x19,[sp, #0x70]
02c86e04  sub sp,sp,#0x320
02c86e08  adrp x20,0x625c000
02c86e0c  mov x19,x0
02c86e10  ldrb w8,[x20, #0x380]
02c86e14  tbnz w8,#0x0,0x02c86e44
02c86e18  adrp x0,0x5e63000
02c86e1c  ldr x0,[x0, #0x90]
02c86e20  bl 0x029f5a50
02c86e24  adrp x0,0x5e62000
02c86e28  ldr x0,[x0, #0xb8]
02c86e2c  bl 0x029f5a50
02c86e30  adrp x0,0x5e59000
02c86e34  ldr x0,[x0]
02c86e38  bl 0x029f5a50
02c86e3c  mov w8,#0x1
02c86e40  strb w8,[x20, #0x380]
02c86e44  movi v0.2D,#0x0
02c86e48  ldr x8,[x19, #0x20]
02c86e4c  stp q0,q0,[sp, #0x220]
02c86e50  stp q0,q0,[sp, #0x240]
02c86e54  stp q0,q0,[sp, #0x260]
02c86e58  stp q0,q0,[sp, #0x280]
02c86e5c  stp q0,q0,[sp, #0x2a0]
02c86e60  stp q0,q0,[sp, #0x2c0]
02c86e64  stp q0,q0,[sp, #0x2e0]
02c86e68  stp q0,q0,[sp, #0x300]
02c86e6c  cbz x8,0x02c8708c
02c86e70  ldr w9,[x8, #0x18]
02c86e74  cbz w9,0x02c87360
02c86e78  ldr x10,[x8, #0x20]
02c86e7c  cbz x10,0x02c8708c
02c86e80  mov w11,#0x4e20
02c86e84  cmp w9,#0x1
02c86e88  str w11,[x10, #0x28]
02c86e8c  b.eq 0x02c87360
02c86e90  ldr x10,[x8, #0x28]
02c86e94  cbz x10,0x02c8708c
02c86e98  cmp w9,#0x2
02c86e9c  str w11,[x10, #0x28]
02c86ea0  b.ls 0x02c87360
02c86ea4  ldr x8,[x8, #0x30]
02c86ea8  cbz x8,0x02c8708c
02c86eac  adrp x22,0x5e63000
02c86eb0  adrp x23,0x5e59000
02c86eb4  adrp x21,0x5e62000
02c86eb8  ldr x22,[x22, #0x90]
02c86ebc  ldr x23,[x23]
02c86ec0  ldr x21,[x21, #0xb8]
02c86ec4  mov w9,#0x4e20
02c86ec8  mov w1,#0x4e21
02c86ecc  mov w24,#0x4e21
02c86ed0  ldr x0,[x22]
02c86ed4  str w9,[x8, #0x28]
02c86ed8  bl 0x029f5b40
02c86edc  mov x20,x19
02c86ee0  mov x1,x0
02c86ee4  str x0,[x20, #0x28]!
02c86ee8  mov x0,x20
02c86eec  bl 0x029f59f4
02c86ef0  add x8,sp,#0x200
02c86ef4  mov w0,#0x1
02c86ef8  mov x1,xzr
02c86efc  bl 0x046544b8
02c86f00  ldp q0,q1,[sp, #0x200]
02c86f04  adrp x8,0x1170000
02c86f08  fmov d10,0x4008000000000000
02c86f0c  adrp x9,0x116f000
02c86f10  ldr d8,[x8, #0xa18]
02c86f14  ldr d9,[x9, #0xd58]
02c86f18  mov x25,xzr
02c86f1c  mov w26,#0x3a99
02c86f20  stp q0,q1,[sp, #0x300]
02c86f24  ldr x0,[x23]
02c86f28  ldr w8,[x0, #0xe4]
02c86f2c  cbnz w8,0x02c86f34
02c86f30  bl 0x029f5bd0
02c86f34  add x27,x25,#0x1
02c86f38  fmov d1,d8
02c86f3c  mov x0,xzr
02c86f40  scvtf d0,w27
02c86f44  bl 0x04852840
02c86f48  fmul d0,d0,d10
02c86f4c  add x8,sp,#0x200
02c86f50  mov x0,xzr
02c86f54  bl 0x04656c9c
02c86f58  ldp q0,q1,[sp, #0x200]
02c86f5c  cmp x25,x26
02c86f60  stp q0,q1,[sp, #0x2e0]
02c86f64  b.cc 0x02c86fd4
02c86f68  fmov d0,d9
02c86f6c  add x8,sp,#0x200
02c86f70  mov x0,xzr
02c86f74  bl 0x04656c9c
02c86f78  ldp q0,q1,[sp, #0x200]
02c86f7c  add x8,sp,#0x1e0
02c86f80  add x0,sp,#0x300
02c86f84  add x1,sp,#0x2c0
02c86f88  mov x2,xzr
02c86f8c  stp q0,q1,[sp, #0x2c0]
02c86f90  bl 0x04658538
02c86f94  ldp q0,q1,[sp, #0x1e0]
02c86f98  add x8,sp,#0x1c0
02c86f9c  add x0,sp,#0x2a0
02c86fa0  mov w1,#0x4
02c86fa4  mov x2,xzr
02c86fa8  stp q0,q1,[sp, #0x2a0]
02c86fac  bl 0x04658464
02c86fb0  ldp q0,q1,[sp, #0x1c0]
02c86fb4  add x8,sp,#0x1a0
02c86fb8  add x0,sp,#0x2e0
02c86fbc  add x1,sp,#0x300
02c86fc0  mov x2,xzr
02c86fc4  stp q0,q1,[sp, #0x300]
02c86fc8  bl 0x04658538
02c86fcc  ldp q0,q1,[sp, #0x1a0]
02c86fd0  stp q0,q1,[sp, #0x2e0]
02c86fd4  ldr x28,[x20]
02c86fd8  add x8,sp,#0x200
02c86fdc  add x0,sp,#0x2e0
02c86fe0  mov x1,xzr
02c86fe4  bl 0x0465a16c
02c86fe8  ldp q0,q1,[sp, #0x200]
02c86fec  add x8,sp,#0x1e0
02c86ff0  add x0,sp,#0x2c0
02c86ff4  mov w1,#0x3
02c86ff8  mov x2,xzr
02c86ffc  stp q0,q1,[sp, #0x2c0]
02c87000  bl 0x04658464
02c87004  cbz x28,0x02c8708c
02c87008  ldr w8,[x28, #0x18]
02c8700c  cmp x25,x8
02c87010  b.cs 0x02c87360
02c87014  add x8,x28,x25, LSL #0x5
02c87018  ldp q1,q0,[sp, #0x1e0]
02c8701c  mov x1,xzr
02c87020  add x0,x8,#0x20
02c87024  stp q1,q0,[x8, #0x20]
02c87028  bl 0x029f59f4
02c8702c  cmp x27,x24
02c87030  mov x25,x27
02c87034  b.ne 0x02c86f24
02c87038  ldr x8,[x19, #0x20]
02c8703c  cbz x8,0x02c8708c
02c87040  mov x23,xzr
02c87044  ldr w9,[x8, #0x18]
02c87048  cmp w23,w9
02c8704c  b.ge 0x02c87090
02c87050  cmp w23,w9
02c87054  b.cs 0x02c87360
02c87058  add x8,x8,x23, LSL #0x3
02c8705c  ldr x0,[x22]
02c87060  mov w1,#0x4e21
02c87064  ldr x20,[x8, #0x20]
02c87068  bl 0x029f5b40
02c8706c  cbz x20,0x02c8708c
02c87070  mov x1,x0
02c87074  str x0,[x20, #0x30]!
02c87078  mov x0,x20
02c8707c  bl 0x029f59f4
02c87080  ldr x8,[x19, #0x20]
02c87084  add x23,x23,#0x1
02c87088  cbnz x8,0x02c87044
02c8708c  bl 0x029f5cfc
02c87090  adrp x8,0x116f000
02c87094  mov x20,xzr
02c87098  mov w22,#0x4e21
02c8709c  ldr d8,[x8, #0xde8]
02c870a0  ldr x8,[x19, #0x20]
02c870a4  cbz x8,0x02c8708c
02c870a8  ldr w9,[x8, #0x18]
02c870ac  cbz w9,0x02c87360
02c870b0  ldr x8,[x8, #0x20]
02c870b4  cbz x8,0x02c8708c
02c870b8  fmov d0,d8
02c870bc  ldr x23,[x8, #0x30]
02c870c0  add x8,sp,#0x200
02c870c4  mov x0,xzr
02c870c8  bl 0x04656c9c
02c870cc  ldr x0,[x21]
02c870d0  ldp q0,q1,[sp, #0x200]
02c870d4  ldr w8,[x0, #0xe4]
02c870d8  stp q0,q1,[sp, #0x2c0]
02c870dc  cbnz w8,0x02c870e4
02c870e0  bl 0x029f5bd0
02c870e4  add x8,sp,#0x1e0
02c870e8  add x0,sp,#0x2c0
02c870ec  mov w1,w20
02c870f0  mov w2,#0x1
02c870f4  mov x3,xzr
02c870f8  bl 0x0465ef6c
02c870fc  ldp q0,q1,[sp, #0x1e0]
02c87100  add x8,sp,#0x1c0
02c87104  mov w0,#0x64
02c87108  mov x1,xzr
02c8710c  stp q0,q1,[sp, #0x2a0]
02c87110  bl 0x046544b8
02c87114  ldp q0,q1,[sp, #0x1c0]
02c87118  add x8,sp,#0x1a0
02c8711c  add x0,sp,#0x2a0
02c87120  add x1,sp,#0x280
02c87124  mov x2,xzr
02c87128  stp q0,q1,[sp, #0x280]
02c8712c  bl 0x04658538
02c87130  ldp q0,q1,[sp, #0x1a0]
02c87134  add x8,sp,#0x180
02c87138  mov w0,#0x64
02c8713c  mov x1,xzr
02c87140  stp q0,q1,[sp, #0x260]
02c87144  bl 0x046544b8
02c87148  ldp q0,q1,[sp, #0x180]
02c8714c  add x8,sp,#0x160
02c87150  add x0,sp,#0x260
02c87154  add x1,sp,#0x240
02c87158  mov x2,xzr
02c8715c  stp q0,q1,[sp, #0x240]
02c87160  bl 0x04658270
02c87164  ldp q0,q1,[sp, #0x160]
02c87168  add x8,sp,#0x140
02c8716c  add x0,sp,#0x220
02c87170  mov x1,xzr
02c87174  stp q0,q1,[sp, #0x220]
02c87178  bl 0x0465a16c
02c8717c  ldp q0,q1,[sp, #0x140]
02c87180  add x8,sp,#0x120
02c87184  add x0,sp,#0x220
02c87188  mov w1,#0x3
02c8718c  mov x2,xzr
02c87190  stp q0,q1,[sp, #0x220]
02c87194  bl 0x04658464
02c87198  cbz x23,0x02c8708c
02c8719c  ldr w8,[x23, #0x18]
02c871a0  cmp x20,x8
02c871a4  b.cs 0x02c87360
02c871a8  add x8,x23,x20, LSL #0x5
02c871ac  ldp q1,q0,[sp, #0x120]
02c871b0  mov x1,xzr
02c871b4  add x0,x8,#0x20
02c871b8  stp q1,q0,[x8, #0x20]
02c871bc  bl 0x029f59f4
02c871c0  ldr x8,[x19, #0x20]
02c871c4  cbz x8,0x02c8708c
02c871c8  ldr w9,[x8, #0x18]
02c871cc  tst w9,#0xfffffffe
02c871d0  b.eq 0x02c87360
02c871d4  ldr x8,[x8, #0x28]
02c871d8  cbz x8,0x02c8708c
02c871dc  add w0,w20,w20, LSL #0x2
02c871e0  ldr x23,[x8, #0x30]
02c871e4  add x8,sp,#0x100
02c871e8  mov x1,xzr
02c871ec  bl 0x046544b8
02c871f0  cbz x23,0x02c8708c
02c871f4  ldr w8,[x23, #0x18]
02c871f8  cmp x20,x8
02c871fc  b.cs 0x02c87360
02c87200  add x8,x23,x20, LSL #0x5
02c87204  ldp q1,q0,[sp, #0x100]
02c87208  mov x1,xzr
02c8720c  add x0,x8,#0x20
02c87210  stp q1,q0,[x8, #0x20]
02c87214  bl 0x029f59f4
02c87218  ldr x8,[x19, #0x20]
02c8721c  cbz x8,0x02c8708c
02c87220  ldr w9,[x8, #0x18]
02c87224  cmp w9,#0x2
02c87228  b.ls 0x02c87360
02c8722c  ldr x8,[x8, #0x30]
02c87230  cbz x8,0x02c8708c
02c87234  fmov d0,d8
02c87238  ldr x23,[x8, #0x30]
02c8723c  add x8,sp,#0xe0
02c87240  mov x0,xzr
02c87244  bl 0x04656c9c
02c87248  ldp q0,q1,[sp, #0xe0]
02c8724c  add x8,sp,#0xc0
02c87250  add x0,sp,#0x2c0
02c87254  mov w1,w20
02c87258  mov w2,#0x1
02c8725c  mov x3,xzr
02c87260  stp q0,q1,[sp, #0x2c0]
02c87264  bl 0x0465ef6c
02c87268  ldp q0,q1,[sp, #0xc0]
02c8726c  add x8,sp,#0xa0
02c87270  mov w0,#0x64
02c87274  mov x1,xzr
02c87278  stp q0,q1,[sp, #0x2a0]
02c8727c  bl 0x046544b8
02c87280  ldp q0,q1,[sp, #0xa0]
02c87284  add x8,sp,#0x80
02c87288  add x0,sp,#0x2a0
02c8728c  add x1,sp,#0x280
02c87290  mov x2,xzr
02c87294  stp q0,q1,[sp, #0x280]
02c87298  bl 0x04658538
02c8729c  ldp q0,q1,[sp, #0x80]
02c872a0  add x8,sp,#0x60
02c872a4  mov w0,#0x64
02c872a8  mov x1,xzr
02c872ac  stp q0,q1,[sp, #0x260]
02c872b0  bl 0x046544b8
02c872b4  ldp q0,q1,[sp, #0x60]
02c872b8  add x8,sp,#0x40
02c872bc  add x0,sp,#0x260
02c872c0  add x1,sp,#0x240
02c872c4  mov x2,xzr
02c872c8  stp q0,q1,[sp, #0x240]
02c872cc  bl 0x04658270
02c872d0  ldp q0,q1,[sp, #0x40]
02c872d4  add x8,sp,#0x20
02c872d8  add x0,sp,#0x220
02c872dc  mov x1,xzr
02c872e0  stp q0,q1,[sp, #0x220]
02c872e4  bl 0x0465a16c
02c872e8  ldp q0,q1,[sp, #0x20]
02c872ec  mov x8,sp
02c872f0  add x0,sp,#0x220
02c872f4  mov w1,#0x3
02c872f8  mov x2,xzr
02c872fc  stp q0,q1,[sp, #0x220]
02c87300  bl 0x04658464
02c87304  cbz x23,0x02c8708c
02c87308  ldr w8,[x23, #0x18]
02c8730c  cmp x20,x8
02c87310  b.cs 0x02c87360
02c87314  add x8,x23,x20, LSL #0x5
02c87318  ldp q1,q0,[sp]
02c8731c  mov x1,xzr
02c87320  add x0,x8,#0x20
02c87324  stp q1,q0,[x8, #0x20]
02c87328  bl 0x029f59f4
02c8732c  add x20,x20,#0x1
02c87330  cmp x20,x22
02c87334  b.ne 0x02c870a0
02c87338  add sp,sp,#0x320
02c8733c  ldp x20,x19,[sp, #0x70]
02c87340  ldp x22,x21,[sp, #0x60]
02c87344  ldp x24,x23,[sp, #0x50]
02c87348  ldp x26,x25,[sp, #0x40]
02c8734c  ldp x28,x27,[sp, #0x30]
02c87350  ldp x29,x30,[sp, #0x20]
02c87354  ldp d9,d8,[sp, #0x10]
02c87358  ldr d10,[sp], #0x80
02c8735c  ret
02c87360  bl 0x029f5d04
