02c3804c  sub sp,sp,#0x50
02c38050  stp d9,d8,[sp, #0x10]
02c38054  stp x30,x23,[sp, #0x20]
02c38058  stp x22,x21,[sp, #0x30]
02c3805c  stp x20,x19,[sp, #0x40]
02c38060  fmov s8,s0
02c38064  adrp x19,0x625c000
02c38068  ldrb w8,[x19, #0x7b]
02c3806c  tbnz w8,#0x0,0x02c38090
02c38070  adrp x0,0x5e63000
02c38074  ldr x0,[x0, #0x1b0]
02c38078  bl 0x029f5a50
02c3807c  adrp x0,0x5e59000
02c38080  ldr x0,[x0, #0x50]
02c38084  bl 0x029f5a50
02c38088  mov w8,#0x1
02c3808c  strb w8,[x19, #0x7b]
02c38090  fcmp s8,#0.0
02c38094  b.pl 0x02c380a8
02c38098  adrp x8,0x5e59000
02c3809c  ldr x8,[x8, #0x50]
02c380a0  ldr x0,[x8]
02c380a4  b 0x02c3812c
02c380a8  mov w8,#0x42700000
02c380ac  adrp x20,0x5e63000
02c380b0  mov w19,#0x80000000
02c380b4  fmov s1,w8
02c380b8  mov w8,#0x7f800000
02c380bc  ldr x20,[x20, #0x1b0]
02c380c0  fmov s9,w8
02c380c4  fdiv s0,s8,s1
02c380c8  fcvtzs w9,s0
02c380cc  fcmp s0,s9
02c380d0  fmov s0,s8
02c380d4  csel w21,w19,w9,eq
02c380d8  bl 0x05afb260
02c380dc  adrp x22,0x5e58000
02c380e0  fcvtzs w8,s0
02c380e4  fcmp s0,s9
02c380e8  ldr x22,[x22, #0xa10]
02c380ec  add x1,sp,#0xc
02c380f0  str w21,[sp, #0xc]
02c380f4  ldr x0,[x22, #0x48]
02c380f8  csel w23,w19,w8,eq
02c380fc  bl 0x029f5bd8
02c38100  mov x19,x0
02c38104  ldr x0,[x22, #0x48]
02c38108  add x1,sp,#0x8
02c3810c  str w23,[sp, #0x8]
02c38110  bl 0x029f5bd8
02c38114  ldr x8,[x20]
02c38118  mov x2,x0
02c3811c  mov x1,x19
02c38120  mov x3,xzr
02c38124  mov x0,x8
02c38128  bl 0x046c1d14
02c3812c  ldp x20,x19,[sp, #0x40]
02c38130  ldp x22,x21,[sp, #0x30]
02c38134  ldp x30,x23,[sp, #0x20]
02c38138  ldp d9,d8,[sp, #0x10]
02c3813c  add sp,sp,#0x50
02c38140  ret
