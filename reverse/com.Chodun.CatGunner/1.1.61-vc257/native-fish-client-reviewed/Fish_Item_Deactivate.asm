02c5fb98  stp x30,x19,[sp, #-0x10]!
02c5fb9c  movi v0.2D,#-0x1
02c5fba0  mov x19,x0
02c5fba4  strh wzr,[x0, #0x48]
02c5fba8  strh wzr,[x0, #0x84]
02c5fbac  str d0,[x0, #0x40]
02c5fbb0  bl 0x02c61024
02c5fbb4  mov x0,x19
02c5fbb8  bl 0x02c613b8
02c5fbbc  mov x0,x19
02c5fbc0  mov x1,xzr
02c5fbc4  bl 0x057dc1c8
02c5fbc8  cbz x0,0x02c5fbdc
02c5fbcc  mov w1,wzr
02c5fbd0  mov x2,xzr
02c5fbd4  ldp x30,x19,[sp], #0x10
02c5fbd8  b 0x057dff3c
02c5fbdc  bl 0x029f5cfc
