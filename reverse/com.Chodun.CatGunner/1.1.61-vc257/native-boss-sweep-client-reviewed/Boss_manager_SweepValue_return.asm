02c46f94  sub sp,sp,#0x170
02c46f98  str d8,[sp, #0x140]
02c46f9c  stp x29,x30,[sp, #0x150]
02c46fa0  stp x20,x19,[sp, #0x160]
02c46fa4  adrp x20,0x625c000
02c46fa8  mov x19,x0
02c46fac  ldrb w8,[x20, #0xe8]
02c46fb0  tbnz w8,#0x0,0x02c46fc8
02c46fb4  adrp x0,0x5e5d000
02c46fb8  ldr x0,[x0, #0x338]
02c46fbc  bl 0x029f5a50
02c46fc0  mov w8,#0x1
02c46fc4  strb w8,[x20, #0xe8]
02c46fc8  movi v0.2D,#0x0
02c46fcc  ldr w1,[x19, #0x20]
02c46fd0  add x8,sp,#0x120
02c46fd4  mov x0,x19
02c46fd8  stp q0,q0,[sp, #0xa0]
02c46fdc  stp q0,q0,[sp, #0xc0]
02c46fe0  stp q0,q0,[sp, #0xe0]
02c46fe4  stp q0,q0,[sp, #0x100]
02c46fe8  stp q0,q0,[sp, #0x120]
02c46fec  bl 0x02c46c8c
02c46ff0  add x8,sp,#0x80
02c46ff4  mov w0,wzr
02c46ff8  mov x1,xzr
02c46ffc  bl 0x046544b8
02c47000  ldp q0,q1,[sp, #0x80]
02c47004  add x0,sp,#0x120
02c47008  add x1,sp,#0xe0
02c4700c  mov x2,xzr
02c47010  stp q0,q1,[sp, #0xe0]
02c47014  bl 0x0465468c
02c47018  tbz w0,#0x0,0x02c47024
02c4701c  mov w19,#0x64
02c47020  b 0x02c47168
02c47024  adrp x8,0x5e5d000
02c47028  ldr x8,[x8, #0x338]
02c4702c  ldr x0,[x8]
02c47030  ldr w8,[x0, #0xe4]
02c47034  cbnz w8,0x02c4703c
02c47038  bl 0x029f5bd0
02c4703c  add x8,sp,#0x80
02c47040  mov x0,xzr
02c47044  bl 0x02b80d74
02c47048  ldp q0,q1,[sp, #0x80]
02c4704c  add x8,sp,#0x60
02c47050  mov w0,#0x64
02c47054  mov x1,xzr
02c47058  mov w19,#0x64
02c4705c  stp q0,q1,[sp, #0xe0]
02c47060  bl 0x046544b8
02c47064  ldp q0,q1,[sp, #0x60]
02c47068  add x8,sp,#0x40
02c4706c  add x0,sp,#0xe0
02c47070  add x1,sp,#0xc0
02c47074  mov x2,xzr
02c47078  stp q0,q1,[sp, #0xc0]
02c4707c  bl 0x04658538
02c47080  ldp q0,q1,[sp, #0x40]
02c47084  add x8,sp,#0x20
02c47088  add x0,sp,#0xa0
02c4708c  add x1,sp,#0x120
02c47090  mov x2,xzr
02c47094  stp q0,q1,[sp, #0xa0]
02c47098  bl 0x046587e8
02c4709c  ldp q0,q1,[sp, #0x20]
02c470a0  mov x8,sp
02c470a4  mov w0,#0x64
02c470a8  mov x1,xzr
02c470ac  stp q0,q1,[sp, #0x100]
02c470b0  bl 0x046544b8
02c470b4  ldp q0,q1,[sp]
02c470b8  add x0,sp,#0x100
02c470bc  add x1,sp,#0xe0
02c470c0  mov x2,xzr
02c470c4  stp q0,q1,[sp, #0xe0]
02c470c8  bl 0x04654530
02c470cc  tbnz w0,#0x0,0x02c47168
02c470d0  add x8,sp,#0x80
02c470d4  mov w0,wzr
02c470d8  mov x1,xzr
02c470dc  bl 0x046544b8
02c470e0  ldp q0,q1,[sp, #0x80]
02c470e4  add x0,sp,#0x100
02c470e8  add x1,sp,#0xe0
02c470ec  mov x2,xzr
02c470f0  stp q0,q1,[sp, #0xe0]
02c470f4  bl 0x0465468c
02c470f8  mov w19,wzr
02c470fc  tbnz w0,#0x0,0x02c47168
02c47100  add x0,sp,#0x100
02c47104  mov x1,xzr
02c47108  bl 0x046573a8
02c4710c  fmov d8,d0
02c47110  adrp x19,0x625b000
02c47114  ldrb w8,[x19, #0xa65]
02c47118  cbnz w8,0x02c47130
02c4711c  adrp x0,0x5e59000
02c47120  ldr x0,[x0]
02c47124  bl 0x029f5a50
02c47128  mov w8,#0x1
02c4712c  strb w8,[x19, #0xa65]
02c47130  adrp x8,0x5e59000
02c47134  fcvt s8,d8
02c47138  ldr x8,[x8]
02c4713c  ldr x0,[x8]
02c47140  ldr w8,[x0, #0xe4]
02c47144  cbnz w8,0x02c4714c
02c47148  bl 0x029f5bd0
02c4714c  frintm s0,s8
02c47150  mov w8,#0x7f800000
02c47154  fcvtms w9,s8
02c47158  fmov s1,w8
02c4715c  mov w8,#0x80000000
02c47160  fcmp s0,s1
02c47164  csel w19,w8,w9,eq
02c47168  mov w0,w19
02c4716c  ldp x20,x19,[sp, #0x160]
02c47170  ldp x29,x30,[sp, #0x150]
02c47174  ldr d8,[sp, #0x140]
02c47178  add sp,sp,#0x170
02c4717c  ret
