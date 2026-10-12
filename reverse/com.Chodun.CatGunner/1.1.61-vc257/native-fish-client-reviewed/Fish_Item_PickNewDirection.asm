02c6197c  sub sp,sp,#0x40
02c61980  str x30,[sp, #0x20]
02c61984  stp x20,x19,[sp, #0x30]
02c61988  mov x19,x0
02c6198c  mov x0,xzr
02c61990  bl 0x057d569c
02c61994  fmov s1,0x3f000000
02c61998  adrp x8,0x116c000
02c6199c  adrp x9,0x116c000
02c619a0  mov x0,xzr
02c619a4  fcmp s0,s1
02c619a8  fmov s0,0xbf800000
02c619ac  fmov s1,0x3f800000
02c619b0  fcsel s0,s1,s0,gt
02c619b4  ldr s1,[x9, #0x190]
02c619b8  str q0,[sp, #0x10]
02c619bc  ldr s0,[x8, #0x1bc]
02c619c0  bl 0x057d55d4
02c619c4  adrp x20,0x625b000
02c619c8  ldrb w8,[x20, #0x52c]
02c619cc  cbnz w8,0x02c619ec
02c619d0  adrp x0,0x5e59000
02c619d4  ldr x0,[x0]
02c619d8  str q0,[sp]
02c619dc  bl 0x029f5a50
02c619e0  ldr q0,[sp]
02c619e4  mov w8,#0x1
02c619e8  strb w8,[x20, #0x52c]
02c619ec  adrp x8,0x5e59000
02c619f0  ldr x8,[x8]
02c619f4  ldr x0,[x8]
02c619f8  ldr w8,[x0, #0xe4]
02c619fc  cbnz w8,0x02c61a0c
02c61a00  str q0,[sp]
02c61a04  bl 0x029f5bd0
02c61a08  ldr q0,[sp]
02c61a0c  fmul s2,s0,s0
02c61a10  fmov s1,0x3f800000
02c61a14  adrp x8,0x116c000
02c61a18  fadd s1,s2,s1
02c61a1c  fsqrt s2,s1
02c61a20  ldr s1,[x8, #0x240]
02c61a24  fcmp s2,s1
02c61a28  b.le 0x02c61a40
02c61a2c  ldr q1,[sp, #0x10]
02c61a30  mov v1.S[0x1],v0.S[0x0]
02c61a34  dup v0.2S,v2.S[0x0]
02c61a38  fdiv v0.2S,v1.2S,v0.2S
02c61a3c  b 0x02c61a74
02c61a40  adrp x20,0x625b000
02c61a44  ldrb w8,[x20, #0x271]
02c61a48  cbnz w8,0x02c61a60
02c61a4c  adrp x0,0x5e59000
02c61a50  ldr x0,[x0, #0x608]
02c61a54  bl 0x029f5a50
02c61a58  mov w8,#0x1
02c61a5c  strb w8,[x20, #0x271]
02c61a60  adrp x8,0x5e59000
02c61a64  ldr x8,[x8, #0x608]
02c61a68  ldr x8,[x8]
02c61a6c  ldr x8,[x8, #0xb8]
02c61a70  ldr d0,[x8]
02c61a74  mov x0,x19
02c61a78  stur d0,[x19, #0xb4]
02c61a7c  ldr x30,[sp, #0x20]
02c61a80  ldp x20,x19,[sp, #0x30]
02c61a84  add sp,sp,#0x40
02c61a88  b 0x02c61768
