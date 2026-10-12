02b87ff4  stp x30,x21,[sp, #-0x20]!
02b87ff8  stp x20,x19,[sp, #0x10]
02b87ffc  cbz x1,0x02b8805c
02b88000  ldr s0,[x1, #0x104]
02b88004  ldr s1,[x1, #0x108]
02b88008  mov x19,x1
02b8800c  ldr x21,[x0, #0x30]
02b88010  mov x20,x0
02b88014  bl 0x02b87c28
02b88018  cbz x21,0x02b8805c
02b8801c  mov x0,x21
02b88020  mov x1,xzr
02b88024  bl 0x057edec8
02b88028  ldr x0,[x20, #0x30]
02b8802c  cbz x0,0x02b8805c
02b88030  mov x1,xzr
02b88034  bl 0x057dc1c8
02b88038  cbz x0,0x02b8805c
02b8803c  mov w1,#0x1
02b88040  mov x2,xzr
02b88044  bl 0x057dff3c
02b88048  mov x0,x20
02b8804c  mov x1,x19
02b88050  ldp x20,x19,[sp, #0x10]
02b88054  ldp x30,x21,[sp], #0x20
02b88058  b 0x02b8787c
02b8805c  bl 0x029f5cfc
