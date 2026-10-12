02c48cdc  stp x30,x21,[sp, #-0x20]!
02c48ce0  stp x20,x19,[sp, #0x10]
02c48ce4  adrp x21,0x625c000
02c48ce8  adrp x20,0x5e5d000
02c48cec  mov x19,x0
02c48cf0  ldrb w8,[x21, #0x100]
02c48cf4  ldr x20,[x20, #0xd48]
02c48cf8  tbnz w8,#0x0,0x02c48d10
02c48cfc  adrp x0,0x5e5d000
02c48d00  ldr x0,[x0, #0xd48]
02c48d04  bl 0x029f5a50
02c48d08  mov w8,#0x1
02c48d0c  strb w8,[x21, #0x100]
02c48d10  ldr x8,[x20]
02c48d14  mov x1,x19
02c48d18  ldr x8,[x8, #0xb8]
02c48d1c  str x19,[x8]
02c48d20  ldr x8,[x20]
02c48d24  ldp x20,x19,[sp, #0x10]
02c48d28  ldr x0,[x8, #0xb8]
02c48d2c  ldp x30,x21,[sp], #0x20
02c48d30  b 0x029f59f4
