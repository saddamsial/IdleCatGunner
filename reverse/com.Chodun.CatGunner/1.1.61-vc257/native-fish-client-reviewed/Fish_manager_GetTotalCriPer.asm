02c5f2c8  stp x30,x19,[sp, #-0x10]!
02c5f2cc  ldrb w8,[x0, #0x88]
02c5f2d0  mov x19,x0
02c5f2d4  cbz w8,0x02c5f2e0
02c5f2d8  mov x0,x19
02c5f2dc  bl 0x02c5f404
02c5f2e0  ldr w0,[x19, #0x80]
02c5f2e4  ldp x30,x19,[sp], #0x10
02c5f2e8  ret
