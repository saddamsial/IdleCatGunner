02c6c594  stp x30,x19,[sp, #-0x10]!
02c6c598  mov x1,xzr
02c6c59c  mov x19,x0
02c6c5a0  bl 0x057dc1c8
02c6c5a4  cbz x0,0x02c6c5c0
02c6c5a8  mov w1,#0x1
02c6c5ac  mov x2,xzr
02c6c5b0  bl 0x057dff3c
02c6c5b4  mov x0,x19
02c6c5b8  ldp x30,x19,[sp], #0x10
02c6c5bc  b 0x02c6c5c4
02c6c5c0  bl 0x029f5cfc
