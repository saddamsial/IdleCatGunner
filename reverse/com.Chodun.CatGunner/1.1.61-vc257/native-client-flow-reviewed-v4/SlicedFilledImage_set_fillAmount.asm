02c28290  str d8,[sp, #-0x30]!
02c28294  stp x30,x21,[sp, #0x10]
02c28298  stp x20,x19,[sp, #0x20]
02c2829c  fmov s8,s0
02c282a0  adrp x21,0x625b000
02c282a4  adrp x20,0x5e62000
02c282a8  ldrb w8,[x21, #0xfc7]
02c282ac  ldr x20,[x20, #0xda8]
02c282b0  mov x19,x0
02c282b4  tbnz w8,#0x0,0x02c282cc
02c282b8  adrp x0,0x5e62000
02c282bc  ldr x0,[x0, #0xda8]
02c282c0  bl 0x029f5a50
02c282c4  mov w8,#0x1
02c282c8  strb w8,[x21, #0xfc7]
02c282cc  fmov s0,0x3f800000
02c282d0  movi d1,#0x0
02c282d4  ldr x1,[x20]
02c282d8  add x0,x19,#0xe4
02c282dc  fcmp s8,s0
02c282e0  fcsel s0,s0,s8,gt
02c282e4  fcmp s8,#0.0
02c282e8  fcsel s0,s1,s0,mi
02c282ec  bl 0x0332ee6c
02c282f0  tbz w0,#0x0,0x02c28314
02c282f4  ldr x8,[x19]
02c282f8  mov x0,x19
02c282fc  ldp x20,x19,[sp, #0x20]
02c28300  ldp x30,x21,[sp, #0x10]
02c28304  ldr x1,[x8, #0x300]
02c28308  ldr x2,[x8, #0x2f8]
02c2830c  ldr d8,[sp], #0x30
02c28310  br x2
02c28314  ldp x20,x19,[sp, #0x20]
02c28318  ldp x30,x21,[sp, #0x10]
02c2831c  ldr d8,[sp], #0x30
02c28320  ret
