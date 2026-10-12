02c7deac  str x30,[sp, #-0x20]!
02c7deb0  stp x20,x19,[sp, #0x10]
02c7deb4  adrp x20,0x625c000
02c7deb8  adrp x19,0x5e5d000
02c7debc  ldrb w8,[x20, #0x332]
02c7dec0  ldr x19,[x19, #0x3c0]
02c7dec4  tbnz w8,#0x0,0x02c7dee8
02c7dec8  adrp x0,0x5e5d000
02c7decc  ldr x0,[x0, #0x3c0]
02c7ded0  bl 0x029f5a50
02c7ded4  adrp x0,0x5e5d000
02c7ded8  ldr x0,[x0, #0x3e0]
02c7dedc  bl 0x029f5a50
02c7dee0  mov w8,#0x1
02c7dee4  strb w8,[x20, #0x332]
02c7dee8  ldr x0,[x19]
02c7deec  adrp x19,0x5e5d000
02c7def0  ldr w8,[x0, #0xe4]
02c7def4  ldr x19,[x19, #0x3e0]
02c7def8  cbnz w8,0x02c7df00
02c7defc  bl 0x029f5bd0
02c7df00  mov x0,xzr
02c7df04  bl 0x02c25b48
02c7df08  ldr x1,[x19]
02c7df0c  ldp x20,x19,[sp, #0x10]
02c7df10  mov x2,xzr
02c7df14  ldr x30,[sp], #0x20
02c7df18  b 0x02c1485c
