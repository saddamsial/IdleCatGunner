02c6a9e4  ldr w8,[x0, #0xc0]
02c6a9e8  cmn w8,#0x1
02c6a9ec  b.eq 0x02c6aa0c
02c6a9f0  stp x30,x19,[sp, #-0x10]!
02c6a9f4  mov w1,#0x1
02c6a9f8  mov x19,x0
02c6a9fc  bl 0x02c693b4
02c6aa00  mov x0,x19
02c6aa04  ldp x30,x19,[sp], #0x10
02c6aa08  b 0x02c6841c
02c6aa0c  ret
