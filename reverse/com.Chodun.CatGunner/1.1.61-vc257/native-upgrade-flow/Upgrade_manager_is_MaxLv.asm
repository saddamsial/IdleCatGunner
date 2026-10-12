02cb1400  stp x30,x21,[sp, #-0x20]!
02cb1404  stp x20,x19,[sp, #0x10]
02cb1408  adrp x20,0x625c000
02cb140c  adrp x21,0x5e5d000
02cb1410  mov w19,w0
02cb1414  ldrb w8,[x20, #0x55b]
02cb1418  ldr x21,[x21, #0x4e8]
02cb141c  tbnz w8,#0x0,0x02cb1434
02cb1420  adrp x0,0x5e5d000
02cb1424  ldr x0,[x0, #0x4e8]
02cb1428  bl 0x029f5a50
02cb142c  mov w8,#0x1
02cb1430  strb w8,[x20, #0x55b]
02cb1434  ldr x0,[x21]
02cb1438  ldr w8,[x0, #0xe4]
02cb143c  cbnz w8,0x02cb1444
02cb1440  bl 0x029f5bd0
02cb1444  mov w0,w19
02cb1448  bl 0x02caf208
02cb144c  mov w8,#0x270f
02cb1450  ldp x20,x19,[sp, #0x10]
02cb1454  cmp w0,w8
02cb1458  cset w0,gt
02cb145c  ldp x30,x21,[sp], #0x20
02cb1460  ret
