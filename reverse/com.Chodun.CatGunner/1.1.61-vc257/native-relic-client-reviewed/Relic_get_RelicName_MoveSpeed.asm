02be1708  sub sp,sp,#0x30
02be170c  str x30,[sp, #0x10]
02be1710  stp x20,x19,[sp, #0x20]
02be1714  adrp x20,0x625b000
02be1718  adrp x19,0x5e5e000
02be171c  ldrb w8,[x20, #0xc78]
02be1720  ldr x19,[x19, #0x528]
02be1724  tbnz w8,#0x0,0x02be1748
02be1728  adrp x0,0x5e5e000
02be172c  ldr x0,[x0, #0x528]
02be1730  bl 0x029f5a50
02be1734  adrp x0,0x5e60000
02be1738  ldr x0,[x0, #0xe68]
02be173c  bl 0x029f5a50
02be1740  mov w8,#0x1
02be1744  strb w8,[x20, #0xc78]
02be1748  ldr x0,[x19]
02be174c  adrp x19,0x5e60000
02be1750  ldr w8,[x0, #0xe4]
02be1754  ldr x19,[x19, #0xe68]
02be1758  cbnz w8,0x02be1760
02be175c  bl 0x029f5bd0
02be1760  ldr x0,[x19]
02be1764  mov w1,#0x1
02be1768  mov w2,wzr
02be176c  mov w3,#0x1
02be1770  mov w4,wzr
02be1774  mov x5,xzr
02be1778  mov x6,xzr
02be177c  mov w7,#0x1
02be1780  str xzr,[sp]
02be1784  bl 0x02bccb00
02be1788  ldp x20,x19,[sp, #0x20]
02be178c  ldr x30,[sp, #0x10]
02be1790  add sp,sp,#0x30
02be1794  ret
