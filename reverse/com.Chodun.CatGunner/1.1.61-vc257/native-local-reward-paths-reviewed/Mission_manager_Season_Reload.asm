02ba3ef4  stp x30,x19,[sp, #-0x10]!
02ba3ef8  mov x19,x0
02ba3efc  bl 0x02ba48ac
02ba3f00  tbz w0,#0x0,0x02ba3f18
02ba3f04  ldrb w1,[x19, #0x65]
02ba3f08  mov x0,x19
02ba3f0c  mov w2,w1
02ba3f10  ldp x30,x19,[sp], #0x10
02ba3f14  b 0x02ba49bc
02ba3f18  ldp x30,x19,[sp], #0x10
02ba3f1c  ret
