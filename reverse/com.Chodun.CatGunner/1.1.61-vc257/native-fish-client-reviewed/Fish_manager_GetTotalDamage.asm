02c5f2a4  stp x30,x19,[sp, #-0x10]!
02c5f2a8  ldrb w8,[x0, #0x88]
02c5f2ac  mov x19,x0
02c5f2b0  cbz w8,0x02c5f2bc
02c5f2b4  mov x0,x19
02c5f2b8  bl 0x02c5f404
02c5f2bc  ldr w0,[x19, #0x7c]
02c5f2c0  ldp x30,x19,[sp], #0x10
02c5f2c4  ret
