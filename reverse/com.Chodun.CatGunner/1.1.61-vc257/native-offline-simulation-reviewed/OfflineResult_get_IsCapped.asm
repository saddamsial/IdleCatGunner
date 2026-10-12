02c0b3b4  fmov s0,0x3f800000
02c0b3b8  ldp s2,s1,[x0, #0x10]
02c0b3bc  fadd s0,s2,s0
02c0b3c0  fcmp s1,s0
02c0b3c4  cset w0,gt
02c0b3c8  ret
