02ca1b1c  stp x30,x23,[sp, #-0x30]!
02ca1b20  stp x22,x21,[sp, #0x10]
02ca1b24  stp x20,x19,[sp, #0x20]
02ca1b28  adrp x22,0x5e5d000
02ca1b2c  adrp x23,0x625c000
02ca1b30  adrp x19,0x5e64000
02ca1b34  adrp x20,0x5e5e000
02ca1b38  adrp x21,0x5e63000
02ca1b3c  ldr x22,[x22, #0x790]
02ca1b40  ldr x19,[x19, #0x8d0]
02ca1b44  ldrb w8,[x23, #0x488]
02ca1b48  ldr x20,[x20, #0x3e0]
02ca1b4c  ldr x21,[x21, #0xf20]
02ca1b50  tbnz w8,#0x0,0x02ca1b8c
02ca1b54  adrp x0,0x5e5d000
02ca1b58  ldr x0,[x0, #0x790]
02ca1b5c  bl 0x029f5a50
02ca1b60  adrp x0,0x5e5e000
02ca1b64  ldr x0,[x0, #0x3e0]
02ca1b68  bl 0x029f5a50
02ca1b6c  adrp x0,0x5e64000
02ca1b70  ldr x0,[x0, #0x8d0]
02ca1b74  bl 0x029f5a50
02ca1b78  adrp x0,0x5e63000
02ca1b7c  ldr x0,[x0, #0xf20]
02ca1b80  bl 0x029f5a50
02ca1b84  mov w8,#0x1
02ca1b88  strb w8,[x23, #0x488]
02ca1b8c  ldr x0,[x22]
02ca1b90  mov w1,#0x3
02ca1b94  bl 0x029f5b40
02ca1b98  ldr x1,[x19]
02ca1b9c  mov x2,xzr
02ca1ba0  mov x19,x0
02ca1ba4  bl 0x047779e0
02ca1ba8  ldr x8,[x20]
02ca1bac  mov x1,x19
02ca1bb0  ldr x0,[x8, #0xb8]
02ca1bb4  str x19,[x0, #0x8]!
02ca1bb8  bl 0x029f59f4
02ca1bbc  ldr x0,[x22]
02ca1bc0  mov w1,#0x3
02ca1bc4  bl 0x029f5b40
02ca1bc8  ldr x1,[x21]
02ca1bcc  mov x2,xzr
02ca1bd0  mov x19,x0
02ca1bd4  bl 0x047779e0
02ca1bd8  ldr x8,[x20]
02ca1bdc  mov x1,x19
02ca1be0  ldp x22,x21,[sp, #0x10]
02ca1be4  ldr x0,[x8, #0xb8]
02ca1be8  str x19,[x0, #0x10]!
02ca1bec  ldp x20,x19,[sp, #0x20]
02ca1bf0  ldp x30,x23,[sp], #0x30
02ca1bf4  b 0x029f59f4
