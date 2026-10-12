02ca3414  stp x30,x19,[sp, #-0x10]!
02ca3418  mov x19,x0
02ca341c  str x1,[x19, #0x48]!
02ca3420  mov x0,x19
02ca3424  bl 0x029f59f4
02ca3428  ldur x0,[x19, #-0x20]
02ca342c  cbz x0,0x02ca3438
02ca3430  ldp x30,x19,[sp], #0x10
02ca3434  b 0x02ca3218
02ca3438  bl 0x029f5cfc
