02be14c8  sub sp,sp,#0x30
02be14cc  str x30,[sp, #0x10]
02be14d0  stp x20,x19,[sp, #0x20]
02be14d4  adrp x20,0x625b000
02be14d8  adrp x19,0x5e5e000
02be14dc  ldrb w8,[x20, #0xc74]
02be14e0  ldr x19,[x19, #0x528]
02be14e4  tbnz w8,#0x0,0x02be1508
02be14e8  adrp x0,0x5e5e000
02be14ec  ldr x0,[x0, #0x528]
02be14f0  bl 0x029f5a50
02be14f4  adrp x0,0x5e60000
02be14f8  ldr x0,[x0, #0xe48]
02be14fc  bl 0x029f5a50
02be1500  mov w8,#0x1
02be1504  strb w8,[x20, #0xc74]
02be1508  ldr x0,[x19]
02be150c  adrp x19,0x5e60000
02be1510  ldr w8,[x0, #0xe4]
02be1514  ldr x19,[x19, #0xe48]
02be1518  cbnz w8,0x02be1520
02be151c  bl 0x029f5bd0
02be1520  ldr x0,[x19]
02be1524  mov w1,#0x1
02be1528  mov w2,wzr
02be152c  mov w3,#0x1
02be1530  mov w4,wzr
02be1534  mov x5,xzr
02be1538  mov x6,xzr
02be153c  mov w7,#0x1
02be1540  str xzr,[sp]
02be1544  bl 0x02bccb00
02be1548  ldp x20,x19,[sp, #0x20]
02be154c  ldr x30,[sp, #0x10]
02be1550  add sp,sp,#0x30
02be1554  ret
