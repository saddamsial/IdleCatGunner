02be1558  sub sp,sp,#0x30
02be155c  str x30,[sp, #0x10]
02be1560  stp x20,x19,[sp, #0x20]
02be1564  adrp x20,0x625b000
02be1568  adrp x19,0x5e5e000
02be156c  ldrb w8,[x20, #0xc75]
02be1570  ldr x19,[x19, #0x528]
02be1574  tbnz w8,#0x0,0x02be1598
02be1578  adrp x0,0x5e5e000
02be157c  ldr x0,[x0, #0x528]
02be1580  bl 0x029f5a50
02be1584  adrp x0,0x5e60000
02be1588  ldr x0,[x0, #0xe50]
02be158c  bl 0x029f5a50
02be1590  mov w8,#0x1
02be1594  strb w8,[x20, #0xc75]
02be1598  ldr x0,[x19]
02be159c  adrp x19,0x5e60000
02be15a0  ldr w8,[x0, #0xe4]
02be15a4  ldr x19,[x19, #0xe50]
02be15a8  cbnz w8,0x02be15b0
02be15ac  bl 0x029f5bd0
02be15b0  ldr x0,[x19]
02be15b4  mov w1,#0x1
02be15b8  mov w2,wzr
02be15bc  mov w3,#0x1
02be15c0  mov w4,wzr
02be15c4  mov x5,xzr
02be15c8  mov x6,xzr
02be15cc  mov w7,#0x1
02be15d0  str xzr,[sp]
02be15d4  bl 0x02bccb00
02be15d8  ldp x20,x19,[sp, #0x20]
02be15dc  ldr x30,[sp, #0x10]
02be15e0  add sp,sp,#0x30
02be15e4  ret
