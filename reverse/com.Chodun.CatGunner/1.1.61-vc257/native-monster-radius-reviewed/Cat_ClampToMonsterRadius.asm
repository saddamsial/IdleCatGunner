02c3d234  sub sp,sp,#0x60
02c3d238  stp d11,d10,[sp, #0x20]
02c3d23c  stp d9,d8,[sp, #0x30]
02c3d240  stp x30,x21,[sp, #0x40]
02c3d244  stp x20,x19,[sp, #0x50]
02c3d248  adrp x20,0x625c000
02c3d24c  mov x19,x0
02c3d250  ldrb w8,[x20, #0x8f]
02c3d254  tbnz w8,#0x0,0x02c3d26c
02c3d258  adrp x0,0x5e63000
02c3d25c  ldr x0,[x0, #0x1d8]
02c3d260  bl 0x029f5a50
02c3d264  mov w8,#0x1
02c3d268  strb w8,[x20, #0x8f]
02c3d26c  mov x0,x19
02c3d270  mov x1,xzr
02c3d274  bl 0x057dc0f8
02c3d278  cbz x0,0x02c3d4a8
02c3d27c  mov x1,xzr
02c3d280  bl 0x057eed98
02c3d284  mov x0,x19
02c3d288  mov x1,xzr
02c3d28c  fmov s8,s0
02c3d290  bl 0x057dc0f8
02c3d294  cbz x0,0x02c3d4a8
02c3d298  adrp x20,0x5e63000
02c3d29c  mov x1,xzr
02c3d2a0  ldr x20,[x20, #0x1d8]
02c3d2a4  bl 0x057eed98
02c3d2a8  ldr x0,[x20]
02c3d2ac  fmov s9,s2
02c3d2b0  ldr w8,[x0, #0xe4]
02c3d2b4  cbnz w8,0x02c3d2c0
02c3d2b8  bl 0x029f5bd0
02c3d2bc  ldr x0,[x20]
02c3d2c0  ldr x8,[x0, #0xb8]
02c3d2c4  adrp x20,0x625b000
02c3d2c8  ldrb w9,[x20, #0xae8]
02c3d2cc  ldr s10,[x8, #0x54]
02c3d2d0  ldr s11,[x8, #0x5c]
02c3d2d4  cbnz w9,0x02c3d2ec
02c3d2d8  adrp x0,0x5e59000
02c3d2dc  ldr x0,[x0]
02c3d2e0  bl 0x029f5a50
02c3d2e4  mov w8,#0x1
02c3d2e8  strb w8,[x20, #0xae8]
02c3d2ec  adrp x20,0x5e59000
02c3d2f0  fsub s2,s8,s10
02c3d2f4  fsub s8,s9,s11
02c3d2f8  ldr x20,[x20]
02c3d2fc  ldr x0,[x20]
02c3d300  ldr w8,[x0, #0xe4]
02c3d304  cbnz w8,0x02c3d314
02c3d308  str q2,[sp, #0x10]
02c3d30c  bl 0x029f5bd0
02c3d310  ldr q2,[sp, #0x10]
02c3d314  fmul s0,s2,s2
02c3d318  fmul s1,s8,s8
02c3d31c  fadd s0,s0,s1
02c3d320  fsqrt s3,s0
02c3d324  fmov s0,0x41600000
02c3d328  fcmp s3,s0
02c3d32c  b.pl 0x02c3d348
02c3d330  ldp x20,x19,[sp, #0x50]
02c3d334  ldp x30,x21,[sp, #0x40]
02c3d338  ldp d9,d8,[sp, #0x30]
02c3d33c  ldp d11,d10,[sp, #0x20]
02c3d340  add sp,sp,#0x60
02c3d344  ret
02c3d348  adrp x21,0x625b000
02c3d34c  ldrb w8,[x21, #0x52e]
02c3d350  cbnz w8,0x02c3d370
02c3d354  adrp x0,0x5e59000
02c3d358  ldr x0,[x0]
02c3d35c  stp q3,q2,[sp]
02c3d360  bl 0x029f5a50
02c3d364  ldp q3,q2,[sp]
02c3d368  mov w8,#0x1
02c3d36c  strb w8,[x21, #0x52e]
02c3d370  ldr x0,[x20]
02c3d374  ldr w8,[x0, #0xe4]
02c3d378  cbnz w8,0x02c3d388
02c3d37c  stp q3,q2,[sp]
02c3d380  bl 0x029f5bd0
02c3d384  ldp q3,q2,[sp]
02c3d388  adrp x8,0x116c000
02c3d38c  ldr s0,[x8, #0x240]
02c3d390  fcmp s3,s0
02c3d394  b.le 0x02c3d3b0
02c3d398  movi d0,#0x0
02c3d39c  dup v1.2S,v3.S[0x0]
02c3d3a0  fdiv s8,s8,s3
02c3d3a4  mov v0.S[0x0],v2.S[0x0]
02c3d3a8  fdiv v0.2S,v0.2S,v1.2S
02c3d3ac  b 0x02c3d3e8
02c3d3b0  adrp x20,0x625b000
02c3d3b4  ldrb w8,[x20, #0x26f]
02c3d3b8  cbnz w8,0x02c3d3d0
02c3d3bc  adrp x0,0x5e58000
02c3d3c0  ldr x0,[x0, #0xbf8]
02c3d3c4  bl 0x029f5a50
02c3d3c8  mov w8,#0x1
02c3d3cc  strb w8,[x20, #0x26f]
02c3d3d0  adrp x8,0x5e58000
02c3d3d4  ldr x8,[x8, #0xbf8]
02c3d3d8  ldr x8,[x8]
02c3d3dc  ldr x8,[x8, #0xb8]
02c3d3e0  ldr d0,[x8]
02c3d3e4  ldr s8,[x8, #0x8]
02c3d3e8  str q0,[sp, #0x10]
02c3d3ec  ldr x0,[x19, #0x30]
02c3d3f0  cbz x0,0x02c3d4a8
02c3d3f4  mov x1,xzr
02c3d3f8  bl 0x0586b268
02c3d3fc  movi d3,#0x0
02c3d400  ldr q5,[sp, #0x10]
02c3d404  fmul s4,s8,s2
02c3d408  mov v3.S[0x0],v0.S[0x0]
02c3d40c  fmul v3.2S,v5.2S,v3.2S
02c3d410  faddp s3,v3.2S
02c3d414  fadd s3,s4,s3
02c3d418  fcmp s3,#0.0
02c3d41c  b.le 0x02c3d444
02c3d420  ldr x0,[x19, #0x30]
02c3d424  cbz x0,0x02c3d4a8
02c3d428  ldr q5,[sp, #0x10]
02c3d42c  fmul s4,s8,s3
02c3d430  mov x1,xzr
02c3d434  fmul s3,s3,s5
02c3d438  fsub s2,s2,s4
02c3d43c  fsub s0,s0,s3
02c3d440  bl 0x0586b344
02c3d444  mov x0,x19
02c3d448  mov x1,xzr
02c3d44c  bl 0x057dc0f8
02c3d450  mov x20,x0
02c3d454  mov x0,x19
02c3d458  mov x1,xzr
02c3d45c  bl 0x057dc0f8
02c3d460  cbz x0,0x02c3d4a8
02c3d464  mov x1,xzr
02c3d468  bl 0x057eed98
02c3d46c  cbz x20,0x02c3d4a8
02c3d470  fmov s0,0x41600000
02c3d474  ldr q2,[sp, #0x10]
02c3d478  mov x0,x20
02c3d47c  ldp x20,x19,[sp, #0x50]
02c3d480  mov x1,xzr
02c3d484  ldp x30,x21,[sp, #0x40]
02c3d488  fmul s2,s0,s2
02c3d48c  fmul s3,s8,s0
02c3d490  ldp d9,d8,[sp, #0x30]
02c3d494  fadd s0,s10,s2
02c3d498  fadd s2,s11,s3
02c3d49c  ldp d11,d10,[sp, #0x20]
02c3d4a0  add sp,sp,#0x60
02c3d4a4  b 0x057eee74
02c3d4a8  bl 0x029f5cfc
