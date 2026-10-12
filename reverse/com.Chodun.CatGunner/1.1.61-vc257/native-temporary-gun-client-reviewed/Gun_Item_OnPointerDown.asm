02c71680  ldrb w8,[x0, #0x79]
02c71684  cbz w8,0x02c7168c
02c71688  ret
02c7168c  stp x30,x19,[sp, #-0x10]!
02c71690  mov w8,#0x100
02c71694  mov x19,x0
02c71698  strh w8,[x0, #0xb8]
02c7169c  bl 0x02c714e8
02c716a0  ldp s2,s3,[x19, #0x80]
02c716a4  mov x0,x19
02c716a8  ldp s0,s1,[x19, #0xf8]
02c716ac  ldr s4,[x19, #0x100]
02c716b0  fmul s0,s0,s2
02c716b4  fmul s1,s1,s2
02c716b8  fmul s2,s4,s2
02c716bc  bl 0x02c716e4
02c716c0  mov x1,x0
02c716c4  mov x0,x19
02c716c8  mov x2,xzr
02c716cc  bl 0x057e2120
02c716d0  mov x1,x0
02c716d4  add x0,x19,#0x108
02c716d8  str x1,[x19, #0x108]
02c716dc  ldp x30,x19,[sp], #0x10
02c716e0  b 0x029f59f4
