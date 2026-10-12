02cd35e8  str d14,[sp, #-0x50]!
02cd35ec  stp d13,d12,[sp, #0x10]
02cd35f0  stp d11,d10,[sp, #0x20]
02cd35f4  stp d9,d8,[sp, #0x30]
02cd35f8  stp x30,x19,[sp, #0x40]
02cd35fc  cbz x1,0x02cd3774
02cd3600  ldrb w8,[x1, #0x98]
02cd3604  ldr s9,[x1, #0x130]
02cd3608  mov x19,x1
02cd360c  ldr s10,[x1, #0x134]
02cd3610  ldr s8,[x1, #0x138]
02cd3614  cbnz w8,0x02cd3644
02cd3618  fmov s0,s9
02cd361c  fmov s1,s10
02cd3620  ldr s3,[x19, #0x124]
02cd3624  fmov s2,s8
02cd3628  ldr s4,[x19, #0x128]
02cd362c  ldr s5,[x19, #0x12c]
02cd3630  mov x1,x19
02cd3634  bl 0x02cd3210
02cd3638  fmov s9,s0
02cd363c  fmov s10,s1
02cd3640  fmov s8,s2
02cd3644  ldr w8,[x19, #0x148]
02cd3648  ldr s14,[x19, #0x124]
02cd364c  ldr s13,[x19, #0x128]
02cd3650  ldr s12,[x19, #0x12c]
02cd3654  cmp w8,#0x1
02cd3658  b.eq 0x02cd3744
02cd365c  cbnz w8,0x02cd373c
02cd3660  ldrb w8,[x19, #0xb0]
02cd3664  cbnz w8,0x02cd3744
02cd3668  mov w8,#0x43b40000
02cd366c  fmov s0,s9
02cd3670  fmov s11,w8
02cd3674  fmov s1,s11
02cd3678  bl 0x05afb260
02cd367c  fcmp s9,s11
02cd3680  fcsel s1,s0,s9,mi
02cd3684  fcsel s9,s0,s1,gt
02cd3688  fmov s0,s10
02cd368c  fmov s1,s11
02cd3690  bl 0x05afb260
02cd3694  fcmp s10,s11
02cd3698  fcsel s1,s0,s10,mi
02cd369c  fcsel s10,s0,s1,gt
02cd36a0  fmov s0,s8
02cd36a4  fmov s1,s11
02cd36a8  bl 0x05afb260
02cd36ac  fsub s1,s9,s14
02cd36b0  fcmp s8,s11
02cd36b4  mov w8,#0x43340000
02cd36b8  fsub s5,s10,s13
02cd36bc  fcsel s2,s0,s8,mi
02cd36c0  fsub s3,s11,s1
02cd36c4  fneg s4,s1
02cd36c8  fneg s6,s5
02cd36cc  fcsel s0,s0,s2,gt
02cd36d0  fcmp s1,#0.0
02cd36d4  fneg s2,s3
02cd36d8  fadd s3,s1,s11
02cd36dc  fcsel s4,s1,s4,gt
02cd36e0  fsub s0,s0,s12
02cd36e4  fcsel s2,s2,s3,gt
02cd36e8  fmov s3,w8
02cd36ec  fcmp s4,s3
02cd36f0  fsub s4,s11,s5
02cd36f4  fcsel s9,s2,s1,gt
02cd36f8  fcmp s5,#0.0
02cd36fc  fadd s2,s5,s11
02cd3700  fneg s1,s4
02cd3704  fcsel s4,s5,s6,gt
02cd3708  fcsel s1,s1,s2,gt
02cd370c  fsub s2,s11,s0
02cd3710  fcmp s4,s3
02cd3714  fneg s4,s0
02cd3718  fcsel s10,s1,s5,gt
02cd371c  fcmp s0,#0.0
02cd3720  fneg s1,s2
02cd3724  fadd s2,s0,s11
02cd3728  fcsel s4,s0,s4,gt
02cd372c  fcsel s1,s1,s2,gt
02cd3730  fcmp s4,s3
02cd3734  fcsel s8,s1,s0,gt
02cd3738  b 0x02cd3750
02cd373c  ldrb w8,[x19, #0xb0]
02cd3740  cbz w8,0x02cd3750
02cd3744  fsub s9,s9,s14
02cd3748  fsub s10,s10,s13
02cd374c  fsub s8,s8,s12
02cd3750  str s9,[x19, #0x13c]
02cd3754  ldp d13,d12,[sp, #0x10]
02cd3758  str s10,[x19, #0x140]
02cd375c  ldp d11,d10,[sp, #0x20]
02cd3760  str s8,[x19, #0x144]
02cd3764  ldp x30,x19,[sp, #0x40]
02cd3768  ldp d9,d8,[sp, #0x30]
02cd376c  ldr d14,[sp], #0x50
02cd3770  ret
02cd3774  bl 0x029f5cfc
