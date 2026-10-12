02be13a8  sub sp,sp,#0x30
02be13ac  str x30,[sp, #0x10]
02be13b0  stp x20,x19,[sp, #0x20]
02be13b4  adrp x20,0x625b000
02be13b8  adrp x19,0x5e5e000
02be13bc  ldrb w8,[x20, #0xc72]
02be13c0  ldr x19,[x19, #0x528]
02be13c4  tbnz w8,#0x0,0x02be13e8
02be13c8  adrp x0,0x5e5e000
02be13cc  ldr x0,[x0, #0x528]
02be13d0  bl 0x029f5a50
02be13d4  adrp x0,0x5e60000
02be13d8  ldr x0,[x0, #0xe38]
02be13dc  bl 0x029f5a50
02be13e0  mov w8,#0x1
02be13e4  strb w8,[x20, #0xc72]
02be13e8  ldr x0,[x19]
02be13ec  adrp x19,0x5e60000
02be13f0  ldr w8,[x0, #0xe4]
02be13f4  ldr x19,[x19, #0xe38]
02be13f8  cbnz w8,0x02be1400
02be13fc  bl 0x029f5bd0
02be1400  ldr x0,[x19]
02be1404  mov w1,#0x1
02be1408  mov w2,wzr
02be140c  mov w3,#0x1
02be1410  mov w4,wzr
02be1414  mov x5,xzr
02be1418  mov x6,xzr
02be141c  mov w7,#0x1
02be1420  str xzr,[sp]
02be1424  bl 0x02bccb00
02be1428  ldp x20,x19,[sp, #0x20]
02be142c  ldr x30,[sp, #0x10]
02be1430  add sp,sp,#0x30
02be1434  ret
