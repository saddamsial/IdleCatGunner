02c342bc  sub sp,sp,#0x20
02c342c0  stp x30,x19,[sp, #0x10]
02c342c4  mov x19,x1
02c342c8  mov x1,x2
02c342cc  str wzr,[sp, #0xc]
02c342d0  bl 0x02c33adc
02c342d4  mov x1,x19
02c342d8  str w0,[sp, #0xc]
02c342dc  bl 0x02c33adc
02c342e0  mov w1,w0
02c342e4  add x0,sp,#0xc
02c342e8  mov x2,xzr
02c342ec  bl 0x0484e630
02c342f0  ldp x30,x19,[sp, #0x10]
02c342f4  add sp,sp,#0x20
02c342f8  ret
