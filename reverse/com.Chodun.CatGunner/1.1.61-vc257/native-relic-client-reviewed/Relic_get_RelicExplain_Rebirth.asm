02be1438  sub sp,sp,#0x30
02be143c  str x30,[sp, #0x10]
02be1440  stp x20,x19,[sp, #0x20]
02be1444  adrp x20,0x625b000
02be1448  adrp x19,0x5e5e000
02be144c  ldrb w8,[x20, #0xc73]
02be1450  ldr x19,[x19, #0x528]
02be1454  tbnz w8,#0x0,0x02be1478
02be1458  adrp x0,0x5e5e000
02be145c  ldr x0,[x0, #0x528]
02be1460  bl 0x029f5a50
02be1464  adrp x0,0x5e60000
02be1468  ldr x0,[x0, #0xe40]
02be146c  bl 0x029f5a50
02be1470  mov w8,#0x1
02be1474  strb w8,[x20, #0xc73]
02be1478  ldr x0,[x19]
02be147c  adrp x19,0x5e60000
02be1480  ldr w8,[x0, #0xe4]
02be1484  ldr x19,[x19, #0xe40]
02be1488  cbnz w8,0x02be1490
02be148c  bl 0x029f5bd0
02be1490  ldr x0,[x19]
02be1494  mov w1,#0x1
02be1498  mov w2,wzr
02be149c  mov w3,#0x1
02be14a0  mov w4,wzr
02be14a4  mov x5,xzr
02be14a8  mov x6,xzr
02be14ac  mov w7,#0x1
02be14b0  str xzr,[sp]
02be14b4  bl 0x02bccb00
02be14b8  ldp x20,x19,[sp, #0x20]
02be14bc  ldr x30,[sp, #0x10]
02be14c0  add sp,sp,#0x30
02be14c4  ret
