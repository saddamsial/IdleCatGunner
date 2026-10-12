02be15e8  sub sp,sp,#0x30
02be15ec  str x30,[sp, #0x10]
02be15f0  stp x20,x19,[sp, #0x20]
02be15f4  adrp x20,0x625b000
02be15f8  adrp x19,0x5e5e000
02be15fc  ldrb w8,[x20, #0xc76]
02be1600  ldr x19,[x19, #0x528]
02be1604  tbnz w8,#0x0,0x02be1628
02be1608  adrp x0,0x5e5e000
02be160c  ldr x0,[x0, #0x528]
02be1610  bl 0x029f5a50
02be1614  adrp x0,0x5e60000
02be1618  ldr x0,[x0, #0xe58]
02be161c  bl 0x029f5a50
02be1620  mov w8,#0x1
02be1624  strb w8,[x20, #0xc76]
02be1628  ldr x0,[x19]
02be162c  adrp x19,0x5e60000
02be1630  ldr w8,[x0, #0xe4]
02be1634  ldr x19,[x19, #0xe58]
02be1638  cbnz w8,0x02be1640
02be163c  bl 0x029f5bd0
02be1640  ldr x0,[x19]
02be1644  mov w1,#0x1
02be1648  mov w2,wzr
02be164c  mov w3,#0x1
02be1650  mov w4,wzr
02be1654  mov x5,xzr
02be1658  mov x6,xzr
02be165c  mov w7,#0x1
02be1660  str xzr,[sp]
02be1664  bl 0x02bccb00
02be1668  ldp x20,x19,[sp, #0x20]
02be166c  ldr x30,[sp, #0x10]
02be1670  add sp,sp,#0x30
02be1674  ret
