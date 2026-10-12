02be1678  sub sp,sp,#0x30
02be167c  str x30,[sp, #0x10]
02be1680  stp x20,x19,[sp, #0x20]
02be1684  adrp x20,0x625b000
02be1688  adrp x19,0x5e5e000
02be168c  ldrb w8,[x20, #0xc77]
02be1690  ldr x19,[x19, #0x528]
02be1694  tbnz w8,#0x0,0x02be16b8
02be1698  adrp x0,0x5e5e000
02be169c  ldr x0,[x0, #0x528]
02be16a0  bl 0x029f5a50
02be16a4  adrp x0,0x5e60000
02be16a8  ldr x0,[x0, #0xe60]
02be16ac  bl 0x029f5a50
02be16b0  mov w8,#0x1
02be16b4  strb w8,[x20, #0xc77]
02be16b8  ldr x0,[x19]
02be16bc  adrp x19,0x5e60000
02be16c0  ldr w8,[x0, #0xe4]
02be16c4  ldr x19,[x19, #0xe60]
02be16c8  cbnz w8,0x02be16d0
02be16cc  bl 0x029f5bd0
02be16d0  ldr x0,[x19]
02be16d4  mov w1,#0x1
02be16d8  mov w2,wzr
02be16dc  mov w3,#0x1
02be16e0  mov w4,wzr
02be16e4  mov x5,xzr
02be16e8  mov x6,xzr
02be16ec  mov w7,#0x1
02be16f0  str xzr,[sp]
02be16f4  bl 0x02bccb00
02be16f8  ldp x20,x19,[sp, #0x20]
02be16fc  ldr x30,[sp, #0x10]
02be1700  add sp,sp,#0x30
02be1704  ret
