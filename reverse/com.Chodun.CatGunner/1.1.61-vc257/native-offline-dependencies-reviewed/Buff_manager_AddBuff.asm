02c376dc  stp x30,x19,[sp, #-0x10]!
02c376e0  ldr x8,[x0, #0x38]
02c376e4  cbz x8,0x02c37734
02c376e8  ldr w9,[x8, #0x18]
02c376ec  cmp w9,w1
02c376f0  b.ls 0x02c37738
02c376f4  add x8,x8,w1, SXTW  #0x2
02c376f8  mov w9,#0x43960000
02c376fc  mov x19,x0
02c37700  fmov s1,w9
02c37704  mov w9,#0x44610000
02c37708  ldr s0,[x8, #0x20]
02c3770c  fadd s0,s0,s1
02c37710  fmov s1,w9
02c37714  fminnm s0,s0,s1
02c37718  str s0,[x8, #0x20]
02c3771c  bl 0x02c3773c
02c37720  mov x0,x19
02c37724  bl 0x02c3788c
02c37728  mov x0,x19
02c3772c  ldp x30,x19,[sp], #0x10
02c37730  b 0x02c378dc
02c37734  bl 0x029f5cfc
02c37738  bl 0x029f5d04
