02c452ec  str d10,[sp, #-0x40]!
02c452f0  stp d9,d8,[sp, #0x10]
02c452f4  stp x30,x21,[sp, #0x20]
02c452f8  stp x20,x19,[sp, #0x30]
02c452fc  adrp x21,0x625c000
02c45300  adrp x20,0x5e63000
02c45304  mov x19,x0
02c45308  ldrb w8,[x21, #0xd4]
02c4530c  ldr x20,[x20, #0x2f8]
02c45310  tbnz w8,#0x0,0x02c45328
02c45314  adrp x0,0x5e63000
02c45318  ldr x0,[x0, #0x2f8]
02c4531c  bl 0x029f5a50
02c45320  mov w8,#0x1
02c45324  strb w8,[x21, #0xd4]
02c45328  mov x0,xzr
02c4532c  bl 0x057d5788
02c45330  fmov s8,s0
02c45334  ldr x0,[x20]
02c45338  fmov s9,s1
02c4533c  ldr w8,[x0, #0xe4]
02c45340  cbnz w8,0x02c4534c
02c45344  bl 0x029f5bd0
02c45348  ldr x0,[x20]
02c4534c  ldr x8,[x0, #0xb8]
02c45350  mov x0,x19
02c45354  mov x1,xzr
02c45358  ldr s10,[x8]
02c4535c  bl 0x057dc0f8
02c45360  cbz x0,0x02c453a4
02c45364  mov w8,#0x42700000
02c45368  mov x1,xzr
02c4536c  fmov s0,w8
02c45370  fmul s9,s9,s0
02c45374  fmul s8,s8,s0
02c45378  bl 0x057eed98
02c4537c  ldr x8,[x20]
02c45380  fadd s0,s8,s10
02c45384  ldp x20,x19,[sp, #0x30]
02c45388  ldr x8,[x8, #0xb8]
02c4538c  ldp x30,x21,[sp, #0x20]
02c45390  ldr s2,[x8, #0x8]
02c45394  fadd s2,s9,s2
02c45398  ldp d9,d8,[sp, #0x10]
02c4539c  ldr d10,[sp], #0x40
02c453a0  ret
02c453a4  bl 0x029f5cfc
