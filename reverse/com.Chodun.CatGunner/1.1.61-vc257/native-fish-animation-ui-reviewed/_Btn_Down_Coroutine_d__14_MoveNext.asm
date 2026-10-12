02b9b4cc  stp d13,d12,[sp, #-0x50]!
02b9b4d0  stp d11,d10,[sp, #0x10]
02b9b4d4  stp d9,d8,[sp, #0x20]
02b9b4d8  stp x30,x21,[sp, #0x30]
02b9b4dc  stp x20,x19,[sp, #0x40]
02b9b4e0  ldr w21,[x0, #0x10]
02b9b4e4  mov x20,x0
02b9b4e8  cbz w21,0x02b9b548
02b9b4ec  cmp w21,#0x1
02b9b4f0  b.ne 0x02b9b63c
02b9b4f4  ldr x19,[x20, #0x20]
02b9b4f8  mov w8,#0xffffffff
02b9b4fc  str w8,[x20, #0x10]
02b9b500  cbz x19,0x02b9b65c
02b9b504  ldrb w8,[x19, #0x30]
02b9b508  cbz w8,0x02b9b56c
02b9b50c  ldr s8,[x19, #0x20]
02b9b510  mov x0,xzr
02b9b514  bl 0x057ebabc
02b9b518  fadd s11,s8,s0
02b9b51c  ldr s12,[x19, #0x2c]
02b9b520  fcmp s11,s12
02b9b524  str s11,[x19, #0x20]
02b9b528  b.ls 0x02b9b5b0
02b9b52c  mov x0,x19
02b9b530  mov x1,xzr
02b9b534  bl 0x057dc0f8
02b9b538  cbz x0,0x02b9b65c
02b9b53c  ldr s2,[x19, #0x48]
02b9b540  ldr d0,[x19, #0x40]
02b9b544  b 0x02b9b618
02b9b548  str xzr,[x20, #0x18]!
02b9b54c  mov w8,#0xffffffff
02b9b550  mov x0,x20
02b9b554  mov x1,xzr
02b9b558  stur w8,[x20, #-0x8]
02b9b55c  bl 0x029f59f4
02b9b560  mov w8,#0x1
02b9b564  stur w8,[x20, #-0x8]
02b9b568  b 0x02b9b63c
02b9b56c  ldr s8,[x19, #0x24]
02b9b570  mov x0,xzr
02b9b574  bl 0x057ebabc
02b9b578  fadd s11,s8,s0
02b9b57c  ldr s12,[x19, #0x2c]
02b9b580  fcmp s11,s12
02b9b584  str s11,[x19, #0x24]
02b9b588  b.ls 0x02b9b5c4
02b9b58c  mov x0,x19
02b9b590  mov x1,xzr
02b9b594  bl 0x057dc0f8
02b9b598  cbz x0,0x02b9b65c
02b9b59c  ldp s1,s2,[x19, #0x38]
02b9b5a0  mov x1,xzr
02b9b5a4  ldr s0,[x19, #0x34]
02b9b5a8  bl 0x057ef654
02b9b5ac  b 0x02b9b63c
02b9b5b0  ldur d8,[x19, #0x34]
02b9b5b4  ldr d10,[x19, #0x40]
02b9b5b8  ldr s9,[x19, #0x3c]
02b9b5bc  ldr s13,[x19, #0x48]
02b9b5c0  b 0x02b9b5d4
02b9b5c4  ldr d8,[x19, #0x40]
02b9b5c8  ldur d10,[x19, #0x34]
02b9b5cc  ldr s9,[x19, #0x48]
02b9b5d0  ldr s13,[x19, #0x3c]
02b9b5d4  mov x0,x19
02b9b5d8  mov x1,xzr
02b9b5dc  bl 0x057dc0f8
02b9b5e0  cbz x0,0x02b9b65c
02b9b5e4  fdiv s0,s11,s12
02b9b5e8  fmov s1,0x3f800000
02b9b5ec  movi d2,#0x0
02b9b5f0  fcmp s0,s1
02b9b5f4  fcsel s1,s1,s0,gt
02b9b5f8  fcmp s0,#0.0
02b9b5fc  fsub s0,s13,s9
02b9b600  fcsel s1,s2,s1,mi
02b9b604  fsub v2.2S,v10.2S,v8.2S
02b9b608  fmul s0,s1,s0
02b9b60c  fmul v1.2S,v2.2S,v1.S[0x0]
02b9b610  fadd s2,s9,s0
02b9b614  fadd v0.2S,v8.2S,v1.2S
02b9b618  dup s1,v0.S[0x1]
02b9b61c  mov x1,xzr
02b9b620  bl 0x057ef654
02b9b624  mov x0,x19
02b9b628  bl 0x02b9b37c
02b9b62c  mov x1,x0
02b9b630  mov x0,x19
02b9b634  mov x2,xzr
02b9b638  bl 0x057e2120
02b9b63c  cmp w21,#0x0
02b9b640  ldp x20,x19,[sp, #0x40]
02b9b644  ldp x30,x21,[sp, #0x30]
02b9b648  cset w0,eq
02b9b64c  ldp d9,d8,[sp, #0x20]
02b9b650  ldp d11,d10,[sp, #0x10]
02b9b654  ldp d13,d12,[sp], #0x50
02b9b658  ret
02b9b65c  bl 0x029f5cfc
