02ca98f4  sub sp,sp,#0x170
02ca98f8  str d8,[sp, #0x140]
02ca98fc  stp x29,x30,[sp, #0x150]
02ca9900  stp x20,x19,[sp, #0x160]
02ca9904  adrp x20,0x625c000
02ca9908  mov x19,x0
02ca990c  ldrb w8,[x20, #0x4fc]
02ca9910  tbnz w8,#0x0,0x02ca9928
02ca9914  adrp x0,0x5e5d000
02ca9918  ldr x0,[x0, #0x338]
02ca991c  bl 0x029f5a50
02ca9920  mov w8,#0x1
02ca9924  strb w8,[x20, #0x4fc]
02ca9928  movi v0.2D,#0x0
02ca992c  ldr w1,[x19, #0x30]
02ca9930  add x8,sp,#0x120
02ca9934  stp q0,q0,[sp, #0xa0]
02ca9938  stp q0,q0,[sp, #0xc0]
02ca993c  stp q0,q0,[sp, #0xe0]
02ca9940  stp q0,q0,[sp, #0x100]
02ca9944  stp q0,q0,[sp, #0x120]
02ca9948  bl 0x02ca9510
02ca994c  add x8,sp,#0x80
02ca9950  mov w0,wzr
02ca9954  mov x1,xzr
02ca9958  bl 0x046544b8
02ca995c  ldp q0,q1,[sp, #0x80]
02ca9960  add x0,sp,#0x120
02ca9964  add x1,sp,#0xe0
02ca9968  mov x2,xzr
02ca996c  stp q0,q1,[sp, #0xe0]
02ca9970  bl 0x0465468c
02ca9974  tbz w0,#0x0,0x02ca9980
02ca9978  mov w19,#0x64
02ca997c  b 0x02ca9ac4
02ca9980  adrp x8,0x5e5d000
02ca9984  ldr x8,[x8, #0x338]
02ca9988  ldr x0,[x8]
02ca998c  ldr w8,[x0, #0xe4]
02ca9990  cbnz w8,0x02ca9998
02ca9994  bl 0x029f5bd0
02ca9998  add x8,sp,#0x80
02ca999c  mov x0,xzr
02ca99a0  bl 0x02b808d4
02ca99a4  ldp q0,q1,[sp, #0x80]
02ca99a8  add x8,sp,#0x60
02ca99ac  mov w0,#0x64
02ca99b0  mov x1,xzr
02ca99b4  mov w19,#0x64
02ca99b8  stp q0,q1,[sp, #0xe0]
02ca99bc  bl 0x046544b8
02ca99c0  ldp q0,q1,[sp, #0x60]
02ca99c4  add x8,sp,#0x40
02ca99c8  add x0,sp,#0xe0
02ca99cc  add x1,sp,#0xc0
02ca99d0  mov x2,xzr
02ca99d4  stp q0,q1,[sp, #0xc0]
02ca99d8  bl 0x04658538
02ca99dc  ldp q0,q1,[sp, #0x40]
02ca99e0  add x8,sp,#0x20
02ca99e4  add x0,sp,#0xa0
02ca99e8  add x1,sp,#0x120
02ca99ec  mov x2,xzr
02ca99f0  stp q0,q1,[sp, #0xa0]
02ca99f4  bl 0x046587e8
02ca99f8  ldp q0,q1,[sp, #0x20]
02ca99fc  mov x8,sp
02ca9a00  mov w0,#0x64
02ca9a04  mov x1,xzr
02ca9a08  stp q0,q1,[sp, #0x100]
02ca9a0c  bl 0x046544b8
02ca9a10  ldp q0,q1,[sp]
02ca9a14  add x0,sp,#0x100
02ca9a18  add x1,sp,#0xe0
02ca9a1c  mov x2,xzr
02ca9a20  stp q0,q1,[sp, #0xe0]
02ca9a24  bl 0x04654530
02ca9a28  tbnz w0,#0x0,0x02ca9ac4
02ca9a2c  add x8,sp,#0x80
02ca9a30  mov w0,wzr
02ca9a34  mov x1,xzr
02ca9a38  bl 0x046544b8
02ca9a3c  ldp q0,q1,[sp, #0x80]
02ca9a40  add x0,sp,#0x100
02ca9a44  add x1,sp,#0xe0
02ca9a48  mov x2,xzr
02ca9a4c  stp q0,q1,[sp, #0xe0]
02ca9a50  bl 0x0465468c
02ca9a54  mov w19,wzr
02ca9a58  tbnz w0,#0x0,0x02ca9ac4
02ca9a5c  add x0,sp,#0x100
02ca9a60  mov x1,xzr
02ca9a64  bl 0x046573a8
02ca9a68  fmov d8,d0
02ca9a6c  adrp x19,0x625b000
02ca9a70  ldrb w8,[x19, #0xa65]
02ca9a74  cbnz w8,0x02ca9a8c
02ca9a78  adrp x0,0x5e59000
02ca9a7c  ldr x0,[x0]
02ca9a80  bl 0x029f5a50
02ca9a84  mov w8,#0x1
02ca9a88  strb w8,[x19, #0xa65]
02ca9a8c  adrp x8,0x5e59000
02ca9a90  fcvt s8,d8
02ca9a94  ldr x8,[x8]
02ca9a98  ldr x0,[x8]
02ca9a9c  ldr w8,[x0, #0xe4]
02ca9aa0  cbnz w8,0x02ca9aa8
02ca9aa4  bl 0x029f5bd0
02ca9aa8  frintm s0,s8
02ca9aac  mov w8,#0x7f800000
02ca9ab0  fcvtms w9,s8
02ca9ab4  fmov s1,w8
02ca9ab8  mov w8,#0x80000000
02ca9abc  fcmp s0,s1
02ca9ac0  csel w19,w8,w9,eq
02ca9ac4  mov w0,w19
02ca9ac8  ldp x20,x19,[sp, #0x160]
02ca9acc  ldp x29,x30,[sp, #0x150]
02ca9ad0  ldr d8,[sp, #0x140]
02ca9ad4  add sp,sp,#0x170
02ca9ad8  ret
