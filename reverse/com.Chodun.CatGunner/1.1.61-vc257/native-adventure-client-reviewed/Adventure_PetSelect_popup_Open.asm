02c35cc8  stp x30,x19,[sp, #-0x10]!
02c35ccc  mov x1,xzr
02c35cd0  mov x19,x0
02c35cd4  bl 0x057dc1c8
02c35cd8  cbz x0,0x02c35cf4
02c35cdc  mov w1,#0x1
02c35ce0  mov x2,xzr
02c35ce4  bl 0x057dff3c
02c35ce8  mov x0,x19
02c35cec  ldp x30,x19,[sp], #0x10
02c35cf0  b 0x02c35cf8
02c35cf4  bl 0x029f5cfc
