02ca1340  stp x30,x23,[sp, #-0x30]!
02ca1344  stp x22,x21,[sp, #0x10]
02ca1348  stp x20,x19,[sp, #0x20]
02ca134c  adrp x21,0x625c000
02ca1350  mov x19,x1
02ca1354  mov x20,x0
02ca1358  ldrb w8,[x21, #0x484]
02ca135c  tbnz w8,#0x0,0x02ca138c
02ca1360  adrp x0,0x5e59000
02ca1364  ldr x0,[x0, #0x1c0]
02ca1368  bl 0x029f5a50
02ca136c  adrp x0,0x5e5d000
02ca1370  ldr x0,[x0, #0x920]
02ca1374  bl 0x029f5a50
02ca1378  adrp x0,0x5e5e000
02ca137c  ldr x0,[x0, #0x3e0]
02ca1380  bl 0x029f5a50
02ca1384  mov w8,#0x1
02ca1388  strb w8,[x21, #0x484]
02ca138c  adrp x21,0x5e59000
02ca1390  mov x0,x20
02ca1394  ldr x21,[x21, #0x1c0]
02ca1398  bl 0x02ca0830
02ca139c  mov x0,x20
02ca13a0  bl 0x02ca11a4
02ca13a4  tbz w0,#0x0,0x02ca148c
02ca13a8  adrp x22,0x5e5d000
02ca13ac  ldr x22,[x22, #0x920]
02ca13b0  ldr x0,[x22]
02ca13b4  ldr w8,[x0, #0xe4]
02ca13b8  cbnz w8,0x02ca13c0
02ca13bc  bl 0x029f5bd0
02ca13c0  adrp x23,0x625b000
02ca13c4  ldrb w8,[x23, #0x960]
02ca13c8  cbnz w8,0x02ca13e0
02ca13cc  adrp x0,0x5e5d000
02ca13d0  ldr x0,[x0, #0x920]
02ca13d4  bl 0x029f5a50
02ca13d8  mov w8,#0x1
02ca13dc  strb w8,[x23, #0x960]
02ca13e0  ldr x0,[x22]
02ca13e4  ldr w8,[x0, #0xe4]
02ca13e8  cbnz w8,0x02ca13f4
02ca13ec  bl 0x029f5bd0
02ca13f0  ldr x0,[x22]
02ca13f4  ldr x8,[x21]
02ca13f8  ldr x9,[x0, #0xb8]
02ca13fc  ldr w10,[x8, #0xe4]
02ca1400  ldr x21,[x9]
02ca1404  cbnz w10,0x02ca1410
02ca1408  mov x0,x8
02ca140c  bl 0x029f5bd0
02ca1410  mov x0,x21
02ca1414  mov x1,xzr
02ca1418  mov x2,xzr
02ca141c  bl 0x057e14b4
02ca1420  tbnz w0,#0x0,0x02ca1568
02ca1424  ldr x0,[x22]
02ca1428  ldr w8,[x0, #0xe4]
02ca142c  cbnz w8,0x02ca1434
02ca1430  bl 0x029f5bd0
02ca1434  ldrb w8,[x23, #0x960]
02ca1438  cbnz w8,0x02ca1450
02ca143c  adrp x0,0x5e5d000
02ca1440  ldr x0,[x0, #0x920]
02ca1444  bl 0x029f5a50
02ca1448  mov w8,#0x1
02ca144c  strb w8,[x23, #0x960]
02ca1450  ldr x0,[x22]
02ca1454  ldr w8,[x0, #0xe4]
02ca1458  cbnz w8,0x02ca1464
02ca145c  bl 0x029f5bd0
02ca1460  ldr x0,[x22]
02ca1464  ldr x8,[x0, #0xb8]
02ca1468  ldr x0,[x8]
02ca146c  cbz x0,0x02ca1578
02ca1470  ldr w1,[x20, #0x20]
02ca1474  mov x2,x19
02ca1478  mov x3,xzr
02ca147c  ldp x20,x19,[sp, #0x20]
02ca1480  ldp x22,x21,[sp, #0x10]
02ca1484  ldp x30,x23,[sp], #0x30
02ca1488  b 0x02c9c8a8
02ca148c  adrp x20,0x625b000
02ca1490  ldrb w8,[x20, #0xa57]
02ca1494  cbnz w8,0x02ca14ac
02ca1498  adrp x0,0x5e5d000
02ca149c  ldr x0,[x0, #0xd70]
02ca14a0  bl 0x029f5a50
02ca14a4  mov w8,#0x1
02ca14a8  strb w8,[x20, #0xa57]
02ca14ac  adrp x22,0x5e5d000
02ca14b0  ldr x22,[x22, #0xd70]
02ca14b4  ldr x0,[x21]
02ca14b8  ldr x8,[x22]
02ca14bc  ldr w9,[x0, #0xe4]
02ca14c0  ldr x8,[x8, #0xb8]
02ca14c4  ldr x19,[x8]
02ca14c8  cbnz w9,0x02ca14d0
02ca14cc  bl 0x029f5bd0
02ca14d0  mov x0,x19
02ca14d4  mov x1,xzr
02ca14d8  mov x2,xzr
02ca14dc  bl 0x057dfa70
02ca14e0  tbz w0,#0x0,0x02ca1524
02ca14e4  ldrb w8,[x20, #0xa57]
02ca14e8  cbnz w8,0x02ca1500
02ca14ec  adrp x0,0x5e5d000
02ca14f0  ldr x0,[x0, #0xd70]
02ca14f4  bl 0x029f5a50
02ca14f8  mov w8,#0x1
02ca14fc  strb w8,[x20, #0xa57]
02ca1500  ldr x8,[x22]
02ca1504  ldr x8,[x8, #0xb8]
02ca1508  ldr x0,[x8]
02ca150c  cbz x0,0x02ca1578
02ca1510  fmov s0,0x3f800000
02ca1514  mov w1,#0x5
02ca1518  mov x2,xzr
02ca151c  mov x3,xzr
02ca1520  bl 0x02c1f10c
02ca1524  adrp x19,0x5e5e000
02ca1528  ldr x19,[x19, #0x3e0]
02ca152c  ldr x0,[x19]
02ca1530  ldr w8,[x0, #0xe4]
02ca1534  cbnz w8,0x02ca1540
02ca1538  bl 0x029f5bd0
02ca153c  ldr x0,[x19]
02ca1540  ldr x8,[x0, #0xb8]
02ca1544  ldr x8,[x8, #0x18]
02ca1548  cbz x8,0x02ca1568
02ca154c  ldp x20,x19,[sp, #0x20]
02ca1550  ldr x0,[x8, #0x40]
02ca1554  ldp x22,x21,[sp, #0x10]
02ca1558  ldr x1,[x8, #0x28]
02ca155c  ldr x2,[x8, #0x18]
02ca1560  ldp x30,x23,[sp], #0x30
02ca1564  br x2
02ca1568  ldp x20,x19,[sp, #0x20]
02ca156c  ldp x22,x21,[sp, #0x10]
02ca1570  ldp x30,x23,[sp], #0x30
02ca1574  ret
02ca1578  bl 0x029f5cfc
