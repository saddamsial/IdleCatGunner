02b9c358  stp d13,d12,[sp, #-0x50]!
02b9c35c  stp d11,d10,[sp, #0x10]
02b9c360  stp d9,d8,[sp, #0x20]
02b9c364  stp x30,x21,[sp, #0x30]
02b9c368  stp x20,x19,[sp, #0x40]
02b9c36c  adrp x19,0x625b000
02b9c370  mov x20,x0
02b9c374  ldrb w8,[x19, #0x9bc]
02b9c378  tbnz w8,#0x0,0x02b9c390
02b9c37c  adrp x0,0x5e5e000
02b9c380  ldr x0,[x0, #0x368]
02b9c384  bl 0x029f5a50
02b9c388  mov w8,#0x1
02b9c38c  strb w8,[x19, #0x9bc]
02b9c390  ldr w21,[x20, #0x10]
02b9c394  cbz w21,0x02b9c414
02b9c398  cmp w21,#0x1
02b9c39c  b.ne 0x02b9c4e4
02b9c3a0  ldr x19,[x20, #0x20]
02b9c3a4  mov w8,#0xffffffff
02b9c3a8  str w8,[x20, #0x10]
02b9c3ac  cbz x19,0x02b9c504
02b9c3b0  ldr s8,[x19, #0x20]
02b9c3b4  mov x0,xzr
02b9c3b8  bl 0x057ebabc
02b9c3bc  fadd s9,s8,s0
02b9c3c0  ldrb w8,[x19, #0x38]
02b9c3c4  str s9,[x19, #0x20]
02b9c3c8  cbz w8,0x02b9c4e4
02b9c3cc  fmov s1,0x3f000000
02b9c3d0  ldr s0,[x19, #0x30]
02b9c3d4  fmul s1,s0,s1
02b9c3d8  fcmp s9,s1
02b9c3dc  b.ls 0x02b9c438
02b9c3e0  fcmp s9,s0
02b9c3e4  b.ls 0x02b9c464
02b9c3e8  mov x0,x19
02b9c3ec  mov x1,xzr
02b9c3f0  str wzr,[x19, #0x20]
02b9c3f4  strb wzr,[x19, #0x38]
02b9c3f8  bl 0x057dc0f8
02b9c3fc  cbz x0,0x02b9c504
02b9c400  ldp s1,s2,[x19, #0x40]
02b9c404  mov x1,xzr
02b9c408  ldr s0,[x19, #0x3c]
02b9c40c  bl 0x057ee3b4
02b9c410  b 0x02b9c4e4
02b9c414  str xzr,[x20, #0x18]!
02b9c418  mov w8,#0xffffffff
02b9c41c  mov x0,x20
02b9c420  mov x1,xzr
02b9c424  stur w8,[x20, #-0x8]
02b9c428  bl 0x029f59f4
02b9c42c  mov w8,#0x1
02b9c430  stur w8,[x20, #-0x8]
02b9c434  b 0x02b9c4e4
02b9c438  ldr s10,[x19, #0x44]
02b9c43c  ldur d8,[x19, #0x3c]
02b9c440  mov x0,x19
02b9c444  ldur d11,[x19, #0x24]
02b9c448  ldr s12,[x19, #0x2c]
02b9c44c  mov x1,xzr
02b9c450  ldr s13,[x19, #0x34]
02b9c454  bl 0x057dc0f8
02b9c458  cbz x0,0x02b9c504
02b9c45c  fdiv s0,s9,s13
02b9c460  b 0x02b9c490
02b9c464  ldr s10,[x19, #0x2c]
02b9c468  ldur d8,[x19, #0x24]
02b9c46c  mov x0,x19
02b9c470  ldur d11,[x19, #0x3c]
02b9c474  ldr s12,[x19, #0x44]
02b9c478  mov x1,xzr
02b9c47c  ldr s13,[x19, #0x34]
02b9c480  bl 0x057dc0f8
02b9c484  cbz x0,0x02b9c504
02b9c488  fsub s0,s9,s13
02b9c48c  fdiv s0,s0,s13
02b9c490  fmov s1,0x3f800000
02b9c494  movi d2,#0x0
02b9c498  mov x1,xzr
02b9c49c  fsub s3,s12,s10
02b9c4a0  fcmp s0,s1
02b9c4a4  fcsel s1,s1,s0,gt
02b9c4a8  fcmp s0,#0.0
02b9c4ac  fcsel s0,s2,s1,mi
02b9c4b0  fmul s1,s3,s0
02b9c4b4  fadd s2,s10,s1
02b9c4b8  fsub v1.2S,v11.2S,v8.2S
02b9c4bc  fmul v0.2S,v1.2S,v0.S[0x0]
02b9c4c0  fadd v0.2S,v8.2S,v0.2S
02b9c4c4  dup s1,v0.S[0x1]
02b9c4c8  bl 0x057ee3b4
02b9c4cc  adrp x8,0x5e5e000
02b9c4d0  mov x0,x19
02b9c4d4  mov x2,xzr
02b9c4d8  ldr x8,[x8, #0x368]
02b9c4dc  ldr x1,[x8]
02b9c4e0  bl 0x057e1df4
02b9c4e4  cmp w21,#0x0
02b9c4e8  ldp x20,x19,[sp, #0x40]
02b9c4ec  ldp x30,x21,[sp, #0x30]
02b9c4f0  cset w0,eq
02b9c4f4  ldp d9,d8,[sp, #0x20]
02b9c4f8  ldp d11,d10,[sp, #0x10]
02b9c4fc  ldp d13,d12,[sp], #0x50
02b9c500  ret
02b9c504  bl 0x029f5cfc
