02c6e654  stp x30,x19,[sp, #-0x10]!
02c6e658  str w1,[x0, #0x98]
02c6e65c  mov x1,xzr
02c6e660  mov x19,x0
02c6e664  strb w2,[x0, #0x9c]
02c6e668  bl 0x057dc1c8
02c6e66c  cbz x0,0x02c6e688
02c6e670  mov w1,#0x1
02c6e674  mov x2,xzr
02c6e678  bl 0x057dff3c
02c6e67c  mov x0,x19
02c6e680  ldp x30,x19,[sp], #0x10
02c6e684  b 0x02c6eaa8
02c6e688  bl 0x029f5cfc
