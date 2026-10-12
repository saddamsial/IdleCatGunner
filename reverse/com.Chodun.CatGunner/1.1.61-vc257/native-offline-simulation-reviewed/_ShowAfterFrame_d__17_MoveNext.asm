02c0729c  stp x30,x21,[sp, #-0x20]!
02c072a0  stp x20,x19,[sp, #0x10]
02c072a4  ldr w20,[x0, #0x10]
02c072a8  mov x19,x0
02c072ac  cbz w20,0x02c072fc
02c072b0  cmp w20,#0x1
02c072b4  b.ne 0x02c0731c
02c072b8  ldr x21,[x19, #0x20]
02c072bc  mov w8,#0xffffffff
02c072c0  str w8,[x19, #0x10]
02c072c4  cbz x21,0x02c07330
02c072c8  ldr x0,[x21, #0x30]
02c072cc  cbz x0,0x02c07330
02c072d0  mov x1,xzr
02c072d4  bl 0x057dc1c8
02c072d8  cbz x0,0x02c07330
02c072dc  mov w1,#0x1
02c072e0  mov x2,xzr
02c072e4  bl 0x057dff3c
02c072e8  ldr x0,[x21, #0x30]
02c072ec  cbz x0,0x02c07330
02c072f0  ldp x2,x1,[x21, #0x38]
02c072f4  bl 0x02c07334
02c072f8  b 0x02c0731c
02c072fc  str xzr,[x19, #0x18]!
02c07300  mov w8,#0xffffffff
02c07304  mov x0,x19
02c07308  mov x1,xzr
02c0730c  stur w8,[x19, #-0x8]
02c07310  bl 0x029f59f4
02c07314  mov w8,#0x1
02c07318  stur w8,[x19, #-0x8]
02c0731c  cmp w20,#0x0
02c07320  ldp x20,x19,[sp, #0x10]
02c07324  cset w0,eq
02c07328  ldp x30,x21,[sp], #0x20
02c0732c  ret
02c07330  bl 0x029f5cfc
