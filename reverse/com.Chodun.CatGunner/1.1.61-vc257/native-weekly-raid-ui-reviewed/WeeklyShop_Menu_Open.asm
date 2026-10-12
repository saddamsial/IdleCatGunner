02ca71a8  stp x30,x21,[sp, #-0x20]!
02ca71ac  stp x20,x19,[sp, #0x10]
02ca71b0  adrp x21,0x625c000
02ca71b4  mov w19,w1
02ca71b8  mov x20,x0
02ca71bc  ldrb w8,[x21, #0x4df]
02ca71c0  tbnz w8,#0x0,0x02ca71d8
02ca71c4  adrp x0,0x5e64000
02ca71c8  ldr x0,[x0, #0x9c0]
02ca71cc  bl 0x029f5a50
02ca71d0  mov w8,#0x1
02ca71d4  strb w8,[x21, #0x4df]
02ca71d8  ldr x0,[x20, #0x38]
02ca71dc  cbz x0,0x02ca7248
02ca71e0  mov w1,w19
02ca71e4  mov x2,xzr
02ca71e8  bl 0x02c27260
02ca71ec  mov x0,x20
02ca71f0  bl 0x02ca70d4
02ca71f4  cmp w19,#0x1
02ca71f8  str w19,[x20, #0x28]
02ca71fc  b.ne 0x02ca721c
02ca7200  adrp x19,0x5e64000
02ca7204  mov w1,wzr
02ca7208  mov x2,xzr
02ca720c  ldr x19,[x19, #0x9c0]
02ca7210  ldr x0,[x19]
02ca7214  bl 0x057d43f8
02ca7218  cbz w0,0x02ca7228
02ca721c  ldp x20,x19,[sp, #0x10]
02ca7220  ldp x30,x21,[sp], #0x20
02ca7224  ret
02ca7228  ldr x0,[x19]
02ca722c  mov w1,#0x1
02ca7230  mov x2,xzr
02ca7234  bl 0x057d43a0
02ca7238  ldp x20,x19,[sp, #0x10]
02ca723c  mov x0,xzr
02ca7240  ldp x30,x21,[sp], #0x20
02ca7244  b 0x057d4efc
02ca7248  bl 0x029f5cfc
