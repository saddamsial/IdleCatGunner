02c4efd0  sub sp,sp,#0x170
02c4efd4  str d8,[sp, #0x140]
02c4efd8  stp x29,x30,[sp, #0x150]
02c4efdc  stp x20,x19,[sp, #0x160]
02c4efe0  adrp x20,0x625c000
02c4efe4  mov x19,x0
02c4efe8  ldrb w8,[x20, #0x145]
02c4efec  tbnz w8,#0x0,0x02c4f004
02c4eff0  adrp x0,0x5e5d000
02c4eff4  ldr x0,[x0, #0x338]
02c4eff8  bl 0x029f5a50
02c4effc  mov w8,#0x1
02c4f000  strb w8,[x20, #0x145]
02c4f004  movi v0.2D,#0x0
02c4f008  add x8,sp,#0x120
02c4f00c  mov x0,x19
02c4f010  ldp w1,w2,[x19, #0x20]
02c4f014  stp q0,q0,[sp, #0xa0]
02c4f018  stp q0,q0,[sp, #0xc0]
02c4f01c  stp q0,q0,[sp, #0xe0]
02c4f020  stp q0,q0,[sp, #0x100]
02c4f024  stp q0,q0,[sp, #0x120]
02c4f028  bl 0x02c4ec08
02c4f02c  add x8,sp,#0x80
02c4f030  mov w0,wzr
02c4f034  mov x1,xzr
02c4f038  bl 0x046544b8
02c4f03c  ldp q0,q1,[sp, #0x80]
02c4f040  add x0,sp,#0x120
02c4f044  add x1,sp,#0xe0
02c4f048  mov x2,xzr
02c4f04c  stp q0,q1,[sp, #0xe0]
02c4f050  bl 0x0465468c
02c4f054  tbz w0,#0x0,0x02c4f060
02c4f058  mov w19,#0x64
02c4f05c  b 0x02c4f1a4
02c4f060  adrp x8,0x5e5d000
02c4f064  ldr x8,[x8, #0x338]
02c4f068  ldr x0,[x8]
02c4f06c  ldr w8,[x0, #0xe4]
02c4f070  cbnz w8,0x02c4f078
02c4f074  bl 0x029f5bd0
02c4f078  add x8,sp,#0x80
02c4f07c  mov x0,xzr
02c4f080  bl 0x02b80ff8
02c4f084  ldp q0,q1,[sp, #0x80]
02c4f088  add x8,sp,#0x60
02c4f08c  mov w0,#0x64
02c4f090  mov x1,xzr
02c4f094  mov w19,#0x64
02c4f098  stp q0,q1,[sp, #0xe0]
02c4f09c  bl 0x046544b8
02c4f0a0  ldp q0,q1,[sp, #0x60]
02c4f0a4  add x8,sp,#0x40
02c4f0a8  add x0,sp,#0xe0
02c4f0ac  add x1,sp,#0xc0
02c4f0b0  mov x2,xzr
02c4f0b4  stp q0,q1,[sp, #0xc0]
02c4f0b8  bl 0x04658538
02c4f0bc  ldp q0,q1,[sp, #0x40]
02c4f0c0  add x8,sp,#0x20
02c4f0c4  add x0,sp,#0xa0
02c4f0c8  add x1,sp,#0x120
02c4f0cc  mov x2,xzr
02c4f0d0  stp q0,q1,[sp, #0xa0]
02c4f0d4  bl 0x046587e8
02c4f0d8  ldp q0,q1,[sp, #0x20]
02c4f0dc  mov x8,sp
02c4f0e0  mov w0,#0x64
02c4f0e4  mov x1,xzr
02c4f0e8  stp q0,q1,[sp, #0x100]
02c4f0ec  bl 0x046544b8
02c4f0f0  ldp q0,q1,[sp]
02c4f0f4  add x0,sp,#0x100
02c4f0f8  add x1,sp,#0xe0
02c4f0fc  mov x2,xzr
02c4f100  stp q0,q1,[sp, #0xe0]
02c4f104  bl 0x04654530
02c4f108  tbnz w0,#0x0,0x02c4f1a4
02c4f10c  add x8,sp,#0x80
02c4f110  mov w0,wzr
02c4f114  mov x1,xzr
02c4f118  bl 0x046544b8
02c4f11c  ldp q0,q1,[sp, #0x80]
02c4f120  add x0,sp,#0x100
02c4f124  add x1,sp,#0xe0
02c4f128  mov x2,xzr
02c4f12c  stp q0,q1,[sp, #0xe0]
02c4f130  bl 0x0465468c
02c4f134  mov w19,wzr
02c4f138  tbnz w0,#0x0,0x02c4f1a4
02c4f13c  add x0,sp,#0x100
02c4f140  mov x1,xzr
02c4f144  bl 0x046573a8
02c4f148  fmov d8,d0
02c4f14c  adrp x19,0x625b000
02c4f150  ldrb w8,[x19, #0xa65]
02c4f154  cbnz w8,0x02c4f16c
02c4f158  adrp x0,0x5e59000
02c4f15c  ldr x0,[x0]
02c4f160  bl 0x029f5a50
02c4f164  mov w8,#0x1
02c4f168  strb w8,[x19, #0xa65]
02c4f16c  adrp x8,0x5e59000
02c4f170  fcvt s8,d8
02c4f174  ldr x8,[x8]
02c4f178  ldr x0,[x8]
02c4f17c  ldr w8,[x0, #0xe4]
02c4f180  cbnz w8,0x02c4f188
02c4f184  bl 0x029f5bd0
02c4f188  frintm s0,s8
02c4f18c  mov w8,#0x7f800000
02c4f190  fcvtms w9,s8
02c4f194  fmov s1,w8
02c4f198  mov w8,#0x80000000
02c4f19c  fcmp s0,s1
02c4f1a0  csel w19,w8,w9,eq
02c4f1a4  mov w0,w19
02c4f1a8  ldp x20,x19,[sp, #0x160]
02c4f1ac  ldp x29,x30,[sp, #0x150]
02c4f1b0  ldr d8,[sp, #0x140]
02c4f1b4  add sp,sp,#0x170
02c4f1b8  ret
