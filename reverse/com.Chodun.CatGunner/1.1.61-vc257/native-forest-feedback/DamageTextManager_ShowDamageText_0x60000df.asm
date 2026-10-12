02b83de8  stp x30,x21,[sp, #-0x20]!
02b83dec  stp x20,x19,[sp, #0x10]
02b83df0  cbz x3,0x02b83e24
02b83df4  mov w20,w1
02b83df8  mov x21,x0
02b83dfc  mov x0,x3
02b83e00  mov x1,xzr
02b83e04  mov x19,x2
02b83e08  bl 0x057eed98
02b83e0c  mov w1,w20
02b83e10  mov x2,x19
02b83e14  mov x0,x21
02b83e18  ldp x20,x19,[sp, #0x10]
02b83e1c  ldp x30,x21,[sp], #0x20
02b83e20  b 0x02b83e28
02b83e24  bl 0x029f5cfc
