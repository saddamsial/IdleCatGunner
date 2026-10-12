02c7ab58  stp x30,x21,[sp, #-0x20]!
02c7ab5c  stp x20,x19,[sp, #0x10]
02c7ab60  adrp x21,0x625c000
02c7ab64  adrp x20,0x5e63000
02c7ab68  mov x19,x0
02c7ab6c  ldrb w8,[x21, #0x314]
02c7ab70  ldr x20,[x20, #0xd20]
02c7ab74  tbnz w8,#0x0,0x02c7ab8c
02c7ab78  adrp x0,0x5e63000
02c7ab7c  ldr x0,[x0, #0xd20]
02c7ab80  bl 0x029f5a50
02c7ab84  mov w8,#0x1
02c7ab88  strb w8,[x21, #0x314]
02c7ab8c  ldr x8,[x20]
02c7ab90  mov x1,x19
02c7ab94  ldr x8,[x8, #0xb8]
02c7ab98  str x19,[x8]
02c7ab9c  ldr x8,[x20]
02c7aba0  ldp x20,x19,[sp, #0x10]
02c7aba4  ldr x0,[x8, #0xb8]
02c7aba8  ldp x30,x21,[sp], #0x20
02c7abac  b 0x029f59f4
