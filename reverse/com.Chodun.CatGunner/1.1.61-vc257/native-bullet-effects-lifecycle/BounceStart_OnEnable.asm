02b9b6d0  stp x30,x19,[sp, #-0x10]!
02b9b6d4  ldrb w8,[x0, #0x38]
02b9b6d8  mov x19,x0
02b9b6dc  str wzr,[x0, #0x20]
02b9b6e0  cbnz w8,0x02b9b6fc
02b9b6e4  ldp s0,s1,[x19, #0x28]
02b9b6e8  mov w8,#0x1
02b9b6ec  strb w8,[x19, #0x38]
02b9b6f0  fmul s1,s0,s1
02b9b6f4  fsub s0,s0,s1
02b9b6f8  stp s1,s0,[x19, #0x30]
02b9b6fc  mov x0,x19
02b9b700  bl 0x02b9b718
02b9b704  mov x1,x0
02b9b708  mov x0,x19
02b9b70c  mov x2,xzr
02b9b710  ldp x30,x19,[sp], #0x10
02b9b714  b 0x057e2120
