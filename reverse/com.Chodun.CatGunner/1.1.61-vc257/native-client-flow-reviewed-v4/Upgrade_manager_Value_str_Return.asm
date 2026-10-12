02cb1464  sub sp,sp,#0x40
02cb1468  str x30,[sp, #0x20]
02cb146c  stp x20,x19,[sp, #0x30]
02cb1470  adrp x20,0x625c000
02cb1474  mov w19,w1
02cb1478  ldrb w8,[x20, #0x561]
02cb147c  tbnz w8,#0x0,0x02cb1494
02cb1480  adrp x0,0x5e5d000
02cb1484  ldr x0,[x0, #0x4e8]
02cb1488  bl 0x029f5a50
02cb148c  mov w8,#0x1
02cb1490  strb w8,[x20, #0x561]
02cb1494  movi v0.2D,#0x0
02cb1498  cmp w19,#0x2
02cb149c  str wzr,[sp, #0x2c]
02cb14a0  stp q0,q0,[sp]
02cb14a4  b.eq 0x02cb1508
02cb14a8  cmp w19,#0x1
02cb14ac  b.eq 0x02cb14d8
02cb14b0  cbnz w19,0x02cb1538
02cb14b4  adrp x8,0x5e5d000
02cb14b8  ldr x8,[x8, #0x4e8]
02cb14bc  ldr x0,[x8]
02cb14c0  ldr w8,[x0, #0xe4]
02cb14c4  cbnz w8,0x02cb14cc
02cb14c8  bl 0x029f5bd0
02cb14cc  mov x8,sp
02cb14d0  bl 0x02cb2d48
02cb14d4  b 0x02cb1528
02cb14d8  adrp x8,0x5e5d000
02cb14dc  ldr x8,[x8, #0x4e8]
02cb14e0  ldr x0,[x8]
02cb14e4  ldr w8,[x0, #0xe4]
02cb14e8  cbnz w8,0x02cb14f0
02cb14ec  bl 0x029f5bd0
02cb14f0  bl 0x02cb2e70
02cb14f4  str w0,[sp, #0x2c]
02cb14f8  add x0,sp,#0x2c
02cb14fc  mov x1,xzr
02cb1500  bl 0x0484e6a4
02cb1504  b 0x02cb153c
02cb1508  adrp x8,0x5e5d000
02cb150c  ldr x8,[x8, #0x4e8]
02cb1510  ldr x0,[x8]
02cb1514  ldr w8,[x0, #0xe4]
02cb1518  cbnz w8,0x02cb1520
02cb151c  bl 0x029f5bd0
02cb1520  mov x8,sp
02cb1524  bl 0x02cb2ddc
02cb1528  mov x0,sp
02cb152c  mov x1,xzr
02cb1530  bl 0x0465bddc
02cb1534  b 0x02cb153c
02cb1538  mov x0,xzr
02cb153c  ldp x20,x19,[sp, #0x30]
02cb1540  ldr x30,[sp, #0x20]
02cb1544  add sp,sp,#0x40
02cb1548  ret
