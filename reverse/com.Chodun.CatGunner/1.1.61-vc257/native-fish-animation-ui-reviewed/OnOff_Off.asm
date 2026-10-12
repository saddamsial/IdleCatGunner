02c273c4  stp x30,x19,[sp, #-0x10]!
02c273c8  mov x19,x0
02c273cc  ldr x0,[x0, #0x20]
02c273d0  cbz x0,0x02c273f8
02c273d4  mov w1,wzr
02c273d8  mov x2,xzr
02c273dc  bl 0x057dff3c
02c273e0  ldr x0,[x19, #0x28]
02c273e4  cbz x0,0x02c273f8
02c273e8  mov w1,#0x1
02c273ec  mov x2,xzr
02c273f0  ldp x30,x19,[sp], #0x10
02c273f4  b 0x057dff3c
02c273f8  bl 0x029f5cfc
