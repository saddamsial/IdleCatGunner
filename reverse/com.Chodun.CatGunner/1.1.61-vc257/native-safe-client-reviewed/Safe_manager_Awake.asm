02c6bbd0  stp x30,x21,[sp, #-0x20]!
02c6bbd4  stp x20,x19,[sp, #0x10]
02c6bbd8  adrp x21,0x625c000
02c6bbdc  adrp x20,0x5e62000
02c6bbe0  mov x19,x0
02c6bbe4  ldrb w8,[x21, #0x28f]
02c6bbe8  ldr x20,[x20, #0x648]
02c6bbec  tbnz w8,#0x0,0x02c6bc04
02c6bbf0  adrp x0,0x5e62000
02c6bbf4  ldr x0,[x0, #0x648]
02c6bbf8  bl 0x029f5a50
02c6bbfc  mov w8,#0x1
02c6bc00  strb w8,[x21, #0x28f]
02c6bc04  ldr x8,[x20]
02c6bc08  mov x1,x19
02c6bc0c  ldr x8,[x8, #0xb8]
02c6bc10  str x19,[x8]
02c6bc14  ldr x8,[x20]
02c6bc18  ldr x0,[x8, #0xb8]
02c6bc1c  bl 0x029f59f4
02c6bc20  mov x0,x19
02c6bc24  ldp x20,x19,[sp, #0x10]
02c6bc28  ldp x30,x21,[sp], #0x20
02c6bc2c  b 0x02c6bc30
