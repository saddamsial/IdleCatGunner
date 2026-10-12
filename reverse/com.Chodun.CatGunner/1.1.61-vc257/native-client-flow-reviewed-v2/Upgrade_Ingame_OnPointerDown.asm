02cb1884  str x30,[sp, #-0x20]!
02cb1888  stp x20,x19,[sp, #0x10]
02cb188c  mov x20,x0
02cb1890  mov x19,x0
02cb1894  ldr x1,[x20, #0xd0]!
02cb1898  cbz x1,0x02cb18a8
02cb189c  mov x0,x19
02cb18a0  mov x2,xzr
02cb18a4  bl 0x057e237c
02cb18a8  mov x0,x19
02cb18ac  bl 0x02cb18d8
02cb18b0  mov x1,x0
02cb18b4  mov x0,x19
02cb18b8  mov x2,xzr
02cb18bc  bl 0x057e2120
02cb18c0  mov x1,x0
02cb18c4  mov x0,x20
02cb18c8  str x1,[x19, #0xd0]
02cb18cc  ldp x20,x19,[sp, #0x10]
02cb18d0  ldr x30,[sp], #0x20
02cb18d4  b 0x029f59f4
