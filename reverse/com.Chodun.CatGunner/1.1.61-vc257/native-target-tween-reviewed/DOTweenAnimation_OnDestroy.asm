02b7719c  stp x30,x19,[sp, #-0x10]!
02b771a0  mov x19,x0
02b771a4  ldr x0,[x19, #0x68]!
02b771a8  cbz x0,0x02b771c0
02b771ac  ldrb w8,[x0, #0xe8]
02b771b0  cbz w8,0x02b771c0
02b771b4  mov w1,wzr
02b771b8  mov x2,xzr
02b771bc  bl 0x02cbaca8
02b771c0  mov x0,x19
02b771c4  mov x1,xzr
02b771c8  str xzr,[x19]
02b771cc  ldp x30,x19,[sp], #0x10
02b771d0  b 0x029f59f4
