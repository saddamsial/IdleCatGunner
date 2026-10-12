02ca3b6c  stp x30,x23,[sp, #-0x30]!
02ca3b70  stp x22,x21,[sp, #0x10]
02ca3b74  stp x20,x19,[sp, #0x20]
02ca3b78  adrp x22,0x5e5d000
02ca3b7c  adrp x23,0x625c000
02ca3b80  adrp x19,0x5e64000
02ca3b84  adrp x20,0x5e5e000
02ca3b88  adrp x21,0x5e64000
02ca3b8c  ldr x22,[x22, #0x790]
02ca3b90  ldr x19,[x19, #0x910]
02ca3b94  ldrb w8,[x23, #0x4a2]
02ca3b98  ldr x20,[x20, #0x4b8]
02ca3b9c  ldr x21,[x21, #0x918]
02ca3ba0  tbnz w8,#0x0,0x02ca3bdc
02ca3ba4  adrp x0,0x5e5d000
02ca3ba8  ldr x0,[x0, #0x790]
02ca3bac  bl 0x029f5a50
02ca3bb0  adrp x0,0x5e5e000
02ca3bb4  ldr x0,[x0, #0x4b8]
02ca3bb8  bl 0x029f5a50
02ca3bbc  adrp x0,0x5e64000
02ca3bc0  ldr x0,[x0, #0x918]
02ca3bc4  bl 0x029f5a50
02ca3bc8  adrp x0,0x5e64000
02ca3bcc  ldr x0,[x0, #0x910]
02ca3bd0  bl 0x029f5a50
02ca3bd4  mov w8,#0x1
02ca3bd8  strb w8,[x23, #0x4a2]
02ca3bdc  ldr x0,[x22]
02ca3be0  mov w1,#0x5
02ca3be4  bl 0x029f5b40
02ca3be8  ldr x1,[x19]
02ca3bec  mov x2,xzr
02ca3bf0  mov x19,x0
02ca3bf4  bl 0x047779e0
02ca3bf8  ldr x8,[x20]
02ca3bfc  mov x1,x19
02ca3c00  ldr x0,[x8, #0xb8]
02ca3c04  str x19,[x0, #0x8]!
02ca3c08  bl 0x029f59f4
02ca3c0c  ldr x0,[x22]
02ca3c10  mov w1,#0x5
02ca3c14  bl 0x029f5b40
02ca3c18  ldr x1,[x21]
02ca3c1c  mov x2,xzr
02ca3c20  mov x19,x0
02ca3c24  bl 0x047779e0
02ca3c28  ldr x8,[x20]
02ca3c2c  mov x1,x19
02ca3c30  ldp x22,x21,[sp, #0x10]
02ca3c34  ldr x0,[x8, #0xb8]
02ca3c38  str x19,[x0, #0x10]!
02ca3c3c  ldp x20,x19,[sp, #0x20]
02ca3c40  ldp x30,x23,[sp], #0x30
02ca3c44  b 0x029f59f4
