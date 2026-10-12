02ca8c5c  stp x30,x21,[sp, #-0x20]!
02ca8c60  stp x20,x19,[sp, #0x10]
02ca8c64  adrp x21,0x625c000
02ca8c68  adrp x20,0x5e5d000
02ca8c6c  mov x19,x0
02ca8c70  ldrb w8,[x21, #0x4f2]
02ca8c74  ldr x20,[x20, #0x338]
02ca8c78  tbnz w8,#0x0,0x02ca8c90
02ca8c7c  adrp x0,0x5e5d000
02ca8c80  ldr x0,[x0, #0x338]
02ca8c84  bl 0x029f5a50
02ca8c88  mov w8,#0x1
02ca8c8c  strb w8,[x21, #0x4f2]
02ca8c90  ldr x0,[x20]
02ca8c94  ldr w8,[x0, #0xe4]
02ca8c98  cbnz w8,0x02ca8ca4
02ca8c9c  bl 0x029f5bd0
02ca8ca0  ldr x0,[x20]
02ca8ca4  ldr x8,[x0, #0xb8]
02ca8ca8  mov w9,#0x1
02ca8cac  mov x0,x19
02ca8cb0  strb w9,[x8]
02ca8cb4  bl 0x02ca8ce4
02ca8cb8  mov x20,x19
02ca8cbc  mov x1,x0
02ca8cc0  str x0,[x20, #0x68]!
02ca8cc4  mov x0,x20
02ca8cc8  bl 0x029f59f4
02ca8ccc  ldr x1,[x20]
02ca8cd0  mov x0,x19
02ca8cd4  mov x2,xzr
02ca8cd8  ldp x20,x19,[sp, #0x10]
02ca8cdc  ldp x30,x21,[sp], #0x20
02ca8ce0  b 0x057e2120
