02ca10fc  str d8,[sp, #-0x20]!
02ca1100  stp x30,x19,[sp, #0x10]
02ca1104  mov x19,x0
02ca1108  bl 0x02ca0fa8
02ca110c  cmp w0,#0x1
02ca1110  b.lt 0x02ca1148
02ca1114  ldr s8,[x19, #0x24]
02ca1118  mov x0,x19
02ca111c  bl 0x02ca0fa8
02ca1120  scvtf s0,s8
02ca1124  scvtf s1,w0
02ca1128  movi d2,#0x0
02ca112c  fdiv s0,s0,s1
02ca1130  fmov s1,0x3f800000
02ca1134  fcmp s0,s1
02ca1138  fcsel s1,s1,s0,gt
02ca113c  fcmp s0,#0.0
02ca1140  fcsel s0,s2,s1,mi
02ca1144  b 0x02ca114c
02ca1148  movi d0,#0x0
02ca114c  ldp x30,x19,[sp, #0x10]
02ca1150  ldr d8,[sp], #0x20
02ca1154  ret
