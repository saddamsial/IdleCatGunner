02cb154c  stp x30,x21,[sp, #-0x20]!
02cb1550  stp x20,x19,[sp, #0x10]
02cb1554  adrp x21,0x625c000
02cb1558  adrp x20,0x5e5d000
02cb155c  mov x19,x0
02cb1560  ldrb w8,[x21, #0x54b]
02cb1564  ldr x20,[x20, #0x4e8]
02cb1568  tbnz w8,#0x0,0x02cb1580
02cb156c  adrp x0,0x5e5d000
02cb1570  ldr x0,[x0, #0x4e8]
02cb1574  bl 0x029f5a50
02cb1578  mov w8,#0x1
02cb157c  strb w8,[x21, #0x54b]
02cb1580  ldr x0,[x20]
02cb1584  ldr w8,[x0, #0xe4]
02cb1588  cbnz w8,0x02cb1594
02cb158c  bl 0x029f5bd0
02cb1590  ldr x0,[x20]
02cb1594  ldr x8,[x0, #0xb8]
02cb1598  ldr x0,[x8]
02cb159c  cbz x0,0x02cb15b0
02cb15a0  ldr w1,[x19, #0x20]
02cb15a4  ldp x20,x19,[sp, #0x10]
02cb15a8  ldp x30,x21,[sp], #0x20
02cb15ac  b 0x02cb15b4
02cb15b0  bl 0x029f5cfc
