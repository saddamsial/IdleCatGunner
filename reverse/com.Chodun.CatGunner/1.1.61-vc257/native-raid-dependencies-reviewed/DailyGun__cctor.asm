02c8ba24  str x30,[sp, #-0x40]!
02c8ba28  stp x24,x23,[sp, #0x10]
02c8ba2c  stp x22,x21,[sp, #0x20]
02c8ba30  stp x20,x19,[sp, #0x30]
02c8ba34  adrp x22,0x5e5d000
02c8ba38  adrp x19,0x5e63000
02c8ba3c  adrp x24,0x625c000
02c8ba40  adrp x20,0x5e62000
02c8ba44  adrp x23,0x5e63000
02c8ba48  adrp x21,0x5e63000
02c8ba4c  ldr x22,[x22, #0x790]
02c8ba50  ldr x19,[x19, #0xf20]
02c8ba54  ldr x20,[x20, #0x660]
02c8ba58  ldrb w8,[x24, #0x3b0]
02c8ba5c  ldr x23,[x23, #0xf28]
02c8ba60  ldr x21,[x21, #0xf30]
02c8ba64  tbnz w8,#0x0,0x02c8baac
02c8ba68  adrp x0,0x5e62000
02c8ba6c  ldr x0,[x0, #0x660]
02c8ba70  bl 0x029f5a50
02c8ba74  adrp x0,0x5e5d000
02c8ba78  ldr x0,[x0, #0x790]
02c8ba7c  bl 0x029f5a50
02c8ba80  adrp x0,0x5e63000
02c8ba84  ldr x0,[x0, #0xf20]
02c8ba88  bl 0x029f5a50
02c8ba8c  adrp x0,0x5e63000
02c8ba90  ldr x0,[x0, #0xf30]
02c8ba94  bl 0x029f5a50
02c8ba98  adrp x0,0x5e63000
02c8ba9c  ldr x0,[x0, #0xf28]
02c8baa0  bl 0x029f5a50
02c8baa4  mov w8,#0x1
02c8baa8  strb w8,[x24, #0x3b0]
02c8baac  ldr x0,[x22]
02c8bab0  mov w1,#0x3
02c8bab4  bl 0x029f5b40
02c8bab8  ldr x1,[x19]
02c8babc  mov x2,xzr
02c8bac0  mov x19,x0
02c8bac4  bl 0x047779e0
02c8bac8  ldr x8,[x20]
02c8bacc  mov x1,x19
02c8bad0  ldr x0,[x8, #0xb8]
02c8bad4  str x19,[x0, #0x8]!
02c8bad8  bl 0x029f59f4
02c8badc  ldr x0,[x22]
02c8bae0  mov w1,#0x3
02c8bae4  bl 0x029f5b40
02c8bae8  ldr x1,[x23]
02c8baec  mov x2,xzr
02c8baf0  mov x19,x0
02c8baf4  bl 0x047779e0
02c8baf8  ldr x8,[x20]
02c8bafc  mov x1,x19
02c8bb00  ldr x0,[x8, #0xb8]
02c8bb04  str x19,[x0, #0x10]!
02c8bb08  bl 0x029f59f4
02c8bb0c  ldr x0,[x22]
02c8bb10  mov w1,#0x3
02c8bb14  bl 0x029f5b40
02c8bb18  ldr x1,[x21]
02c8bb1c  mov x2,xzr
02c8bb20  mov x19,x0
02c8bb24  bl 0x047779e0
02c8bb28  ldr x8,[x20]
02c8bb2c  mov x1,x19
02c8bb30  ldr x0,[x8, #0xb8]
02c8bb34  str x19,[x0, #0x18]!
02c8bb38  bl 0x029f59f4
02c8bb3c  add x0,sp,#0x8
02c8bb40  mov w1,#0x7e8
02c8bb44  mov w2,#0x1
02c8bb48  mov w3,#0x1
02c8bb4c  mov x4,xzr
02c8bb50  str xzr,[sp, #0x8]
02c8bb54  bl 0x0482e880
02c8bb58  ldr x8,[x20]
02c8bb5c  ldr x9,[sp, #0x8]
02c8bb60  ldp x20,x19,[sp, #0x30]
02c8bb64  ldr x8,[x8, #0xb8]
02c8bb68  ldp x22,x21,[sp, #0x20]
02c8bb6c  ldp x24,x23,[sp, #0x10]
02c8bb70  str x9,[x8, #0x20]
02c8bb74  ldr x30,[sp], #0x40
02c8bb78  ret
