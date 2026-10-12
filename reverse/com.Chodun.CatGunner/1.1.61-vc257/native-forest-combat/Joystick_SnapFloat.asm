02b87488  str d14,[sp, #-0x50]!
02b8748c  stp d13,d12,[sp, #0x8]
02b87490  stp d11,d10,[sp, #0x18]
02b87494  stp d9,d8,[sp, #0x28]
02b87498  str x30,[sp, #0x38]
02b8749c  stp x20,x19,[sp, #0x40]
02b874a0  fmov s8,s0
02b874a4  fcmp s0,#0.0
02b874a8  b.ne 0x02b874cc
02b874ac  fmov s0,s8
02b874b0  ldp x20,x19,[sp, #0x40]
02b874b4  ldr x30,[sp, #0x38]
02b874b8  ldp d9,d8,[sp, #0x28]
02b874bc  ldp d11,d10,[sp, #0x18]
02b874c0  ldp d13,d12,[sp, #0x8]
02b874c4  ldr d14,[sp], #0x50
02b874c8  ret
02b874cc  ldr w8,[x0, #0x28]
02b874d0  cbz w8,0x02b874f0
02b874d4  fcmp s8,#0.0
02b874d8  fmov s0,0x3f800000
02b874dc  b.gt 0x02b874b0
02b874e0  movi d0,#0x0
02b874e4  fmov s1,0xbf800000
02b874e8  fcsel s0,s0,s1,pl
02b874ec  b 0x02b874b0
02b874f0  adrp x20,0x625b000
02b874f4  ldp s9,s10,[x0, #0x58]
02b874f8  ldrb w8,[x20, #0x95c]
02b874fc  mov w19,w1
02b87500  cbnz w8,0x02b87518
02b87504  adrp x0,0x5e59000
02b87508  ldr x0,[x0, #0x608]
02b8750c  bl 0x029f5a50
02b87510  mov w8,#0x1
02b87514  strb w8,[x20, #0x95c]
02b87518  adrp x8,0x5e59000
02b8751c  adrp x20,0x625b000
02b87520  ldr x8,[x8, #0x608]
02b87524  ldrb w9,[x20, #0x95d]
02b87528  ldr x8,[x8]
02b8752c  ldr x8,[x8, #0xb8]
02b87530  ldp s11,s12,[x8, #0x10]
02b87534  cbnz w9,0x02b8754c
02b87538  adrp x0,0x5e59000
02b8753c  ldr x0,[x0]
02b87540  bl 0x029f5a50
02b87544  mov w8,#0x1
02b87548  strb w8,[x20, #0x95d]
02b8754c  fmul s0,s9,s9
02b87550  fmul s1,s10,s10
02b87554  adrp x20,0x5e59000
02b87558  fmul s2,s11,s11
02b8755c  fmul s3,s12,s12
02b87560  ldr x20,[x20]
02b87564  ldr x0,[x20]
02b87568  fadd s13,s0,s1
02b8756c  fadd s14,s2,s3
02b87570  ldr w8,[x0, #0xe4]
02b87574  cbnz w8,0x02b8757c
02b87578  bl 0x029f5bd0
02b8757c  fmul s0,s13,s14
02b87580  adrp x8,0x116b000
02b87584  movi d1,#0x0
02b87588  ldr s2,[x8, #0xe5c]
02b8758c  fsqrt s0,s0
02b87590  fcmp s0,s2
02b87594  b.mi 0x02b875e8
02b87598  fmul s1,s9,s11
02b8759c  fmul s2,s10,s12
02b875a0  ldr x0,[x20]
02b875a4  ldr w8,[x0, #0xe4]
02b875a8  fadd s1,s1,s2
02b875ac  fmov s2,0xbf800000
02b875b0  fdiv s0,s1,s0
02b875b4  fmov s1,0x3f800000
02b875b8  fcmp s0,s1
02b875bc  fcsel s1,s1,s0,gt
02b875c0  fcmp s0,s2
02b875c4  fcsel s9,s2,s1,mi
02b875c8  cbnz w8,0x02b875d0
02b875cc  bl 0x029f5bd0
02b875d0  fcvt d0,s9
02b875d4  bl 0x05afb290
02b875d8  fcvt s0,d0
02b875dc  adrp x8,0x116c000
02b875e0  ldr s1,[x8, #0x74]
02b875e4  fmul s1,s0,s1
02b875e8  cmp w19,#0x2
02b875ec  b.eq 0x02b87620
02b875f0  cmp w19,#0x1
02b875f4  b.ne 0x02b874ac
02b875f8  mov w8,#0x41b40000
02b875fc  movi d0,#0x0
02b87600  fmov s2,w8
02b87604  fcmp s1,s2
02b87608  b.mi 0x02b874b0
02b8760c  adrp x8,0x116b000
02b87610  ldr s2,[x8, #0xf98]
02b87614  fcmp s1,s2
02b87618  b.le 0x02b87644
02b8761c  b 0x02b874b0
02b87620  mov w8,#0x42870000
02b87624  fmov s0,w8
02b87628  fcmp s1,s0
02b8762c  b.le 0x02b87644
02b87630  mov w8,#0x42e10000
02b87634  movi d0,#0x0
02b87638  fmov s2,w8
02b8763c  fcmp s1,s2
02b87640  b.mi 0x02b874b0
02b87644  fcmp s8,#0.0
02b87648  fmov s0,0xbf800000
02b8764c  fmov s1,0x3f800000
02b87650  fcsel s0,s1,s0,gt
02b87654  b 0x02b874b0
