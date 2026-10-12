02c2738c  stp x30,x19,[sp, #-0x10]!
02c27390  mov x19,x0
02c27394  ldr x0,[x0, #0x20]
02c27398  cbz x0,0x02c273c0
02c2739c  mov w1,#0x1
02c273a0  mov x2,xzr
02c273a4  bl 0x057dff3c
02c273a8  ldr x0,[x19, #0x28]
02c273ac  cbz x0,0x02c273c0
02c273b0  mov w1,wzr
02c273b4  mov x2,xzr
02c273b8  ldp x30,x19,[sp], #0x10
02c273bc  b 0x057dff3c
02c273c0  bl 0x029f5cfc
