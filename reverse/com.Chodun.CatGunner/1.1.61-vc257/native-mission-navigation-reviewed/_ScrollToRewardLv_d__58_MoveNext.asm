02c035e4  str d12,[sp, #-0x60]!
02c035e8  stp d11,d10,[sp, #0x10]
02c035ec  stp d9,d8,[sp, #0x20]
02c035f0  stp x30,x23,[sp, #0x30]
02c035f4  stp x22,x21,[sp, #0x40]
02c035f8  stp x20,x19,[sp, #0x50]
02c035fc  adrp x19,0x625b000
02c03600  mov x20,x0
02c03604  ldrb w8,[x19, #0xe57]
02c03608  tbnz w8,#0x0,0x02c0362c
02c0360c  adrp x0,0x5e5b000
02c03610  ldr x0,[x0, #0xe98]
02c03614  bl 0x029f5a50
02c03618  adrp x0,0x5e5c000
02c0361c  ldr x0,[x0, #0xf00]
02c03620  bl 0x029f5a50
02c03624  mov w8,#0x1
02c03628  strb w8,[x19, #0xe57]
02c0362c  ldr w23,[x20, #0x10]
02c03630  str xzr,[sp, #0x8]
02c03634  cbz w23,0x02c0379c
02c03638  cmp w23,#0x1
02c0363c  b.ne 0x02c037bc
02c03640  ldr x19,[x20, #0x20]
02c03644  mov w8,#0xffffffff
02c03648  str w8,[x20, #0x10]
02c0364c  cbz x19,0x02c037e0
02c03650  ldr x8,[x19, #0x98]
02c03654  cbz x8,0x02c037e0
02c03658  ldr x8,[x8, #0x18]
02c0365c  cbz x8,0x02c037bc
02c03660  mov x0,x19
02c03664  mov x1,xzr
02c03668  bl 0x02ba6b60
02c0366c  ldr x8,[x19, #0xc0]
02c03670  cbz x8,0x02c037e0
02c03674  ldr x9,[x19, #0x98]
02c03678  cbz x9,0x02c037e0
02c0367c  ldr w10,[x9, #0x18]
02c03680  cmp w0,w10
02c03684  b.cs 0x02c037e4
02c03688  add x9,x9,w0, SXTW  #0x3
02c0368c  ldr x0,[x9, #0x20]
02c03690  cbz x0,0x02c037e0
02c03694  adrp x9,0x5e5b000
02c03698  ldr x9,[x9, #0xe98]
02c0369c  ldr x20,[x8, #0x20]
02c036a0  ldr x1,[x9]
02c036a4  bl 0x02fe5f2c
02c036a8  ldr x8,[x19, #0xc0]
02c036ac  cbz x8,0x02c037e0
02c036b0  cbz x20,0x02c037e0
02c036b4  mov x21,x0
02c036b8  ldr x22,[x8, #0x40]
02c036bc  mov x0,x20
02c036c0  mov x1,xzr
02c036c4  bl 0x057ed9fc
02c036c8  cbz x22,0x02c037e0
02c036cc  mov x0,x22
02c036d0  mov x1,xzr
02c036d4  fmov s9,s2
02c036d8  bl 0x057ed9fc
02c036dc  cbz x21,0x02c037e0
02c036e0  mov x0,x21
02c036e4  mov x1,xzr
02c036e8  fmov s8,s2
02c036ec  bl 0x057eed98
02c036f0  adrp x8,0x5e5c000
02c036f4  fmov s10,s0
02c036f8  fmov s11,s1
02c036fc  ldr x8,[x8, #0xf00]
02c03700  fmov s12,s2
02c03704  ldr x0,[x8]
02c03708  ldr w8,[x0, #0xe4]
02c0370c  cbnz w8,0x02c03714
02c03710  bl 0x029f5bd0
02c03714  fmov s0,s10
02c03718  fmov s1,s11
02c0371c  mov x0,xzr
02c03720  fmov s2,s12
02c03724  mov x1,xzr
02c03728  bl 0x05aa16bc
02c0372c  add x2,sp,#0x8
02c03730  mov x0,x20
02c03734  mov x1,xzr
02c03738  mov x3,xzr
02c0373c  bl 0x05aa15c0
02c03740  ldr s10,[sp, #0x8]
02c03744  mov x0,x20
02c03748  mov x1,xzr
02c0374c  bl 0x057ed9fc
02c03750  fsub s1,s9,s8
02c03754  fcmp s1,#0.0
02c03758  b.ls 0x02c037bc
02c0375c  ldr x0,[x19, #0xc0]
02c03760  cbz x0,0x02c037e0
02c03764  fmov s2,0xbf000000
02c03768  fsub s0,s10,s0
02c0376c  mov x1,xzr
02c03770  fmul s2,s8,s2
02c03774  fadd s0,s0,s2
02c03778  movi d2,#0x0
02c0377c  fdiv s0,s0,s1
02c03780  fmov s1,0x3f800000
02c03784  fcmp s0,s1
02c03788  fcsel s1,s1,s0,gt
02c0378c  fcmp s0,#0.0
02c03790  fcsel s0,s2,s1,mi
02c03794  bl 0x05abe0a4
02c03798  b 0x02c037bc
02c0379c  str xzr,[x20, #0x18]!
02c037a0  mov w8,#0xffffffff
02c037a4  mov x0,x20
02c037a8  mov x1,xzr
02c037ac  stur w8,[x20, #-0x8]
02c037b0  bl 0x029f59f4
02c037b4  mov w8,#0x1
02c037b8  stur w8,[x20, #-0x8]
02c037bc  cmp w23,#0x0
02c037c0  ldp x20,x19,[sp, #0x50]
02c037c4  ldp x22,x21,[sp, #0x40]
02c037c8  cset w0,eq
02c037cc  ldp x30,x23,[sp, #0x30]
02c037d0  ldp d9,d8,[sp, #0x20]
02c037d4  ldp d11,d10,[sp, #0x10]
02c037d8  ldr d12,[sp], #0x60
02c037dc  ret
02c037e0  bl 0x029f5cfc
02c037e4  bl 0x029f5d04
