02c44fc4  stp x30,x21,[sp, #-0x20]!
02c44fc8  stp x20,x19,[sp, #0x10]
02c44fcc  adrp x20,0x625c000
02c44fd0  mov x19,x0
02c44fd4  ldrb w8,[x20, #0xd1]
02c44fd8  tbnz w8,#0x0,0x02c44ffc
02c44fdc  adrp x0,0x5e61000
02c44fe0  ldr x0,[x0, #0x488]
02c44fe4  bl 0x029f5a50
02c44fe8  adrp x0,0x5e61000
02c44fec  ldr x0,[x0, #0x878]
02c44ff0  bl 0x029f5a50
02c44ff4  mov w8,#0x1
02c44ff8  strb w8,[x20, #0xd1]
02c44ffc  adrp x21,0x625b000
02c45000  ldr x20,[x19, #0x40]
02c45004  b 0x05afaf30
