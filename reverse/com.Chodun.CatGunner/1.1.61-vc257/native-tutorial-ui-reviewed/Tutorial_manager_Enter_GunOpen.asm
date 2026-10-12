02caf8b8  stp x30,x19,[sp, #-0x10]!
02caf8bc  mov x19,x0
02caf8c0  ldr x0,[x0, #0x50]
02caf8c4  cbz x0,0x02caf8f0
02caf8c8  mov w1,#0x1
02caf8cc  mov x2,xzr
02caf8d0  bl 0x057dff3c
02caf8d4  mov x0,x19
02caf8d8  bl 0x02cafb08
02caf8dc  mov x1,x0
02caf8e0  mov x0,x19
02caf8e4  mov x2,xzr
02caf8e8  ldp x30,x19,[sp], #0x10
02caf8ec  b 0x057e2120
02caf8f0  bl 0x029f5cfc
