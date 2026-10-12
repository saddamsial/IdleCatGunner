02c034d0  stp x30,x21,[sp, #-0x20]!
02c034d4  stp x20,x19,[sp, #0x10]
02c034d8  adrp x20,0x625b000
02c034dc  mov x19,x0
02c034e0  ldrb w8,[x20, #0xe56]
02c034e4  tbnz w8,#0x0,0x02c034fc
02c034e8  adrp x0,0x5e5a000
02c034ec  ldr x0,[x0, #0x710]
02c034f0  bl 0x029f5a50
02c034f4  mov w8,#0x1
02c034f8  strb w8,[x20, #0xe56]
02c034fc  ldr w21,[x19, #0x10]
02c03500  cmp w21,#0x1
02c03504  b.hi 0x02c03558
02c03508  ldr x0,[x19, #0x20]
02c0350c  mov w8,#0xffffffff
02c03510  str w8,[x19, #0x10]
02c03514  cbz x0,0x02c0356c
02c03518  mov x1,xzr
02c0351c  bl 0x02ba5c4c
02c03520  adrp x8,0x5e5a000
02c03524  ldr x8,[x8, #0x710]
02c03528  ldr x0,[x8]
02c0352c  bl 0x029f5cec
02c03530  fmov s0,0x40000000
02c03534  mov x1,xzr
02c03538  mov x20,x0
02c0353c  bl 0x057e84e0
02c03540  str x20,[x19, #0x18]!
02c03544  mov x0,x19
02c03548  mov x1,x20
02c0354c  bl 0x029f59f4
02c03550  mov w8,#0x1
02c03554  stur w8,[x19, #-0x8]
02c03558  ldp x20,x19,[sp, #0x10]
02c0355c  cmp w21,#0x2
02c03560  cset w0,cc
02c03564  ldp x30,x21,[sp], #0x20
02c03568  ret
02c0356c  bl 0x029f5cfc
