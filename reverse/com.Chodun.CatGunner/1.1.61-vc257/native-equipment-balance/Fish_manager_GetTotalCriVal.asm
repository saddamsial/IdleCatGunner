02c5f2ec  stp x30,x19,[sp, #-0x10]!
02c5f2f0  ldrb w8,[x0, #0x88]
02c5f2f4  mov x19,x0
02c5f2f8  cbz w8,0x02c5f304
02c5f2fc  mov x0,x19
02c5f300  bl 0x02c5f404
02c5f304  ldr w0,[x19, #0x84]
02c5f308  ldp x30,x19,[sp], #0x10
02c5f30c  ret
