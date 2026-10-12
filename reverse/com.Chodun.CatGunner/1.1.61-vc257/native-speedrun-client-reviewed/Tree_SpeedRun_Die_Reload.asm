02caba50  stp x30,x21,[sp, #-0x20]!
02caba54  stp x20,x19,[sp, #0x10]
02caba58  adrp x20,0x625c000
02caba5c  mov x19,x0
02caba60  ldrb w8,[x20, #0x50d]
02caba64  tbnz w8,#0x0,0x02caba88
02caba68  adrp x0,0x5e62000
02caba6c  ldr x0,[x0, #0x148]
02caba70  bl 0x029f5a50
02caba74  adrp x0,0x5e5d000
02caba78  ldr x0,[x0, #0xd68]
02caba7c  bl 0x029f5a50
02caba80  mov w8,#0x1
02caba84  strb w8,[x20, #0x50d]
02caba88  ldr x0,[x19, #0x30]
02caba8c  cbz x0,0x02cabaf8
02caba90  adrp x8,0x5e62000
02caba94  mov x1,xzr
02caba98  ldr x8,[x8, #0x148]
02caba9c  ldr x8,[x8]
02cabaa0  ldr x8,[x8, #0xb8]
02cabaa4  ldr x20,[x8]
02cabaa8  bl 0x057eed98
02cabaac  cbz x20,0x02cabaf8
02cabab0  adrp x21,0x5e5d000
02cabab4  mov x0,x20
02cabab8  mov w1,#0x5
02cababc  ldr x21,[x21, #0xd68]
02cabac0  mov x2,xzr
02cabac4  bl 0x02c0b844
02cabac8  ldr x0,[x21]
02cabacc  ldr w8,[x0, #0xe4]
02cabad0  cbnz w8,0x02cabadc
02cabad4  bl 0x029f5bd0
02cabad8  ldr x0,[x21]
02cabadc  ldr x8,[x0, #0xb8]
02cabae0  ldr x0,[x8, #0x8]
02cabae4  cbz x0,0x02cabaf8
02cabae8  mov x1,x19
02cabaec  ldp x20,x19,[sp, #0x10]
02cabaf0  ldp x30,x21,[sp], #0x20
02cabaf4  b 0x02caa0bc
02cabaf8  bl 0x029f5cfc
