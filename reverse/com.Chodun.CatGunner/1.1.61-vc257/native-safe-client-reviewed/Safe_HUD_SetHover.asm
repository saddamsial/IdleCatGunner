02c6b564  sub sp,sp,#0x30
02c6b568  str d8,[sp, #0x10]
02c6b56c  str x30,[sp, #0x18]
02c6b570  stp x20,x19,[sp, #0x20]
02c6b574  mov w20,w1
02c6b578  mov x19,x0
02c6b57c  bl 0x02c6b3f4
02c6b580  ldrb w9,[x19, #0x50]
02c6b584  and w8,w0,w20
02c6b588  and w8,w8,#0x1
02c6b58c  cmp w9,w8
02c6b590  b.ne 0x02c6b5a8
02c6b594  ldp x20,x19,[sp, #0x20]
02c6b598  ldr x30,[sp, #0x18]
02c6b59c  ldr d8,[sp, #0x10]
02c6b5a0  add sp,sp,#0x30
02c6b5a4  ret
02c6b5a8  strb w8,[x19, #0x50]
02c6b5ac  cbz w8,0x02c6b5d4
02c6b5b0  mov w0,#0x1e
02c6b5b4  mov x1,xzr
02c6b5b8  bl 0x02c17f8c
02c6b5bc  ldr d0,[x19, #0x38]
02c6b5c0  ldr s2,[x19, #0x30]
02c6b5c4  ldr s1,[x19, #0x40]
02c6b5c8  fmul v0.2S,v0.2S,v2.S[0x0]
02c6b5cc  fmul s8,s1,s2
02c6b5d0  b 0x02c6b5dc
02c6b5d4  ldr d0,[x19, #0x38]
02c6b5d8  ldr s8,[x19, #0x40]
02c6b5dc  str q0,[sp]
02c6b5e0  mov x20,x19
02c6b5e4  ldr x1,[x20, #0x48]!
02c6b5e8  cbz x1,0x02c6b5f8
02c6b5ec  mov x0,x19
02c6b5f0  mov x2,xzr
02c6b5f4  bl 0x057e237c
02c6b5f8  mov x0,x19
02c6b5fc  mov x1,xzr
02c6b600  bl 0x057dc1c8
02c6b604  cbz x0,0x02c6b688
02c6b608  mov x1,xzr
02c6b60c  bl 0x057e00b4
02c6b610  tbz w0,#0x0,0x02c6b644
02c6b614  ldr q0,[sp]
02c6b618  fmov s2,s8
02c6b61c  ldr s3,[x19, #0x34]
02c6b620  mov x0,x19
02c6b624  dup s1,v0.S[0x1]
02c6b628  bl 0x02c6b748
02c6b62c  mov x1,x0
02c6b630  mov x0,x19
02c6b634  mov x2,xzr
02c6b638  bl 0x057e2120
02c6b63c  mov x1,x0
02c6b640  b 0x02c6b66c
02c6b644  mov x0,x19
02c6b648  mov x1,xzr
02c6b64c  bl 0x057dc0f8
02c6b650  cbz x0,0x02c6b688
02c6b654  ldr q0,[sp]
02c6b658  fmov s2,s8
02c6b65c  mov x1,xzr
02c6b660  dup s1,v0.S[0x1]
02c6b664  bl 0x057ef654
02c6b668  mov x1,xzr
02c6b66c  mov x0,x20
02c6b670  str x1,[x20]
02c6b674  ldr x30,[sp, #0x18]
02c6b678  ldp x20,x19,[sp, #0x20]
02c6b67c  ldr d8,[sp, #0x10]
02c6b680  add sp,sp,#0x30
02c6b684  b 0x029f59f4
02c6b688  bl 0x029f5cfc
