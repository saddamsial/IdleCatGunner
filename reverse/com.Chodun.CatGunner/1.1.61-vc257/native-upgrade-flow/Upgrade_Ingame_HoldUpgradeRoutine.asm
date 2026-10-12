02cb18d8  stp x30,x21,[sp, #-0x20]!
02cb18dc  stp x20,x19,[sp, #0x10]
02cb18e0  adrp x20,0x625c000
02cb18e4  adrp x21,0x5e64000
02cb18e8  mov x19,x0
02cb18ec  ldrb w8,[x20, #0x54c]
02cb18f0  ldr x21,[x21, #0xb78]
02cb18f4  tbnz w8,#0x0,0x02cb190c
02cb18f8  adrp x0,0x5e64000
02cb18fc  ldr x0,[x0, #0xb78]
02cb1900  bl 0x029f5a50
02cb1904  mov w8,#0x1
02cb1908  strb w8,[x20, #0x54c]
02cb190c  ldr x0,[x21]
02cb1910  bl 0x029f5cec
02cb1914  mov x1,xzr
02cb1918  mov x20,x0
02cb191c  bl 0x04893238
02cb1920  mov x0,x20
02cb1924  mov x1,x19
02cb1928  str wzr,[x20, #0x10]
02cb192c  str x19,[x0, #0x20]!
02cb1930  bl 0x029f59f4
02cb1934  mov x0,x20
02cb1938  ldp x20,x19,[sp, #0x10]
02cb193c  ldp x30,x21,[sp], #0x20
02cb1940  ret
