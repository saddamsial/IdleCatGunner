02be1318  sub sp,sp,#0x30
02be131c  str x30,[sp, #0x10]
02be1320  stp x20,x19,[sp, #0x20]
02be1324  adrp x20,0x625b000
02be1328  adrp x19,0x5e5e000
02be132c  ldrb w8,[x20, #0xc71]
02be1330  ldr x19,[x19, #0x528]
02be1334  tbnz w8,#0x0,0x02be1358
02be1338  adrp x0,0x5e5e000
02be133c  ldr x0,[x0, #0x528]
02be1340  bl 0x029f5a50
02be1344  adrp x0,0x5e60000
02be1348  ldr x0,[x0, #0xe30]
02be134c  bl 0x029f5a50
02be1350  mov w8,#0x1
02be1354  strb w8,[x20, #0xc71]
02be1358  ldr x0,[x19]
02be135c  adrp x19,0x5e60000
02be1360  ldr w8,[x0, #0xe4]
02be1364  ldr x19,[x19, #0xe30]
02be1368  cbnz w8,0x02be1370
02be136c  bl 0x029f5bd0
02be1370  ldr x0,[x19]
02be1374  mov w1,#0x1
02be1378  mov w2,wzr
02be137c  mov w3,#0x1
02be1380  mov w4,wzr
02be1384  mov x5,xzr
02be1388  mov x6,xzr
02be138c  mov w7,#0x1
02be1390  str xzr,[sp]
02be1394  bl 0x02bccb00
02be1398  ldp x20,x19,[sp, #0x20]
02be139c  ldr x30,[sp, #0x10]
02be13a0  add sp,sp,#0x30
02be13a4  ret
