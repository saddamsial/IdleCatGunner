02b87fc0  stp x30,x19,[sp, #-0x10]!
02b87fc4  mov x19,x0
02b87fc8  bl 0x02b876ac
02b87fcc  ldr x0,[x19, #0x30]
02b87fd0  cbz x0,0x02b87ff0
02b87fd4  mov x1,xzr
02b87fd8  bl 0x057dc1c8
02b87fdc  cbz x0,0x02b87ff0
02b87fe0  mov w1,wzr
02b87fe4  mov x2,xzr
02b87fe8  ldp x30,x19,[sp], #0x10
02b87fec  b 0x057dff3c
02b87ff0  bl 0x029f5cfc
