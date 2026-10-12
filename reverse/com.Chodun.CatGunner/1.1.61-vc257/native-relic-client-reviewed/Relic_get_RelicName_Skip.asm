02be18b8  sub sp,sp,#0x30
02be18bc  str x30,[sp, #0x10]
02be18c0  stp x20,x19,[sp, #0x20]
02be18c4  adrp x20,0x625b000
02be18c8  adrp x19,0x5e5e000
02be18cc  ldrb w8,[x20, #0xc7b]
02be18d0  ldr x19,[x19, #0x528]
02be18d4  tbnz w8,#0x0,0x02be18f8
02be18d8  adrp x0,0x5e5e000
02be18dc  ldr x0,[x0, #0x528]
02be18e0  bl 0x029f5a50
02be18e4  adrp x0,0x5e60000
02be18e8  ldr x0,[x0, #0xe80]
02be18ec  bl 0x029f5a50
02be18f0  mov w8,#0x1
02be18f4  strb w8,[x20, #0xc7b]
02be18f8  ldr x0,[x19]
02be18fc  adrp x19,0x5e60000
02be1900  ldr w8,[x0, #0xe4]
02be1904  ldr x19,[x19, #0xe80]
02be1908  cbnz w8,0x02be1910
02be190c  bl 0x029f5bd0
02be1910  ldr x0,[x19]
02be1914  mov w1,#0x1
02be1918  mov w2,wzr
02be191c  mov w3,#0x1
02be1920  mov w4,wzr
02be1924  mov x5,xzr
02be1928  mov x6,xzr
02be192c  mov w7,#0x1
02be1930  str xzr,[sp]
02be1934  bl 0x02bccb00
02be1938  ldp x20,x19,[sp, #0x20]
02be193c  ldr x30,[sp, #0x10]
02be1940  add sp,sp,#0x30
02be1944  ret
