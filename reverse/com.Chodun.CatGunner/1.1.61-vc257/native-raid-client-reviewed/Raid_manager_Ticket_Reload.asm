02c56b28  stp x30,x21,[sp, #-0x20]!
02c56b2c  stp x20,x19,[sp, #0x10]
02c56b30  adrp x21,0x625c000
02c56b34  adrp x20,0x5e59000
02c56b38  mov x19,x0
02c56b3c  ldrb w8,[x21, #0x1a2]
02c56b40  ldr x20,[x20, #0x7d0]
02c56b44  tbnz w8,#0x0,0x02c56b74
02c56b48  adrp x0,0x5e59000
02c56b4c  ldr x0,[x0, #0x7d0]
02c56b50  bl 0x029f5a50
02c56b54  adrp x0,0x5e5d000
02c56b58  ldr x0,[x0, #0x3c0]
02c56b5c  bl 0x029f5a50
02c56b60  adrp x0,0x5e63000
02c56b64  ldr x0,[x0, #0x678]
02c56b68  bl 0x029f5a50
02c56b6c  mov w8,#0x1
02c56b70  strb w8,[x21, #0x1a2]
02c56b74  ldr x0,[x20]
02c56b78  adrp x21,0x5e5d000
02c56b7c  ldr w8,[x0, #0xe4]
02c56b80  ldr x21,[x21, #0x3c0]
02c56b84  cbnz w8,0x02c56b8c
02c56b88  bl 0x029f5bd0
02c56b8c  add x0,x19,#0x68
02c56b90  mov x1,xzr
02c56b94  bl 0x04830b04
02c56b98  ldr x8,[x21]
02c56b9c  mov x20,x0
02c56ba0  ldr w9,[x8, #0xe4]
02c56ba4  cbnz w9,0x02c56bb0
02c56ba8  mov x0,x8
02c56bac  bl 0x029f5bd0
02c56bb0  mov x0,xzr
02c56bb4  bl 0x02c25c90
02c56bb8  mov x1,x0
02c56bbc  mov x0,x20
02c56bc0  mov x2,xzr
02c56bc4  bl 0x0483334c
02c56bc8  tbnz w0,#0x0,0x02c56c28
02c56bcc  ldr x0,[x21]
02c56bd0  adrp x20,0x5e63000
02c56bd4  ldr w8,[x0, #0xe4]
02c56bd8  ldr x20,[x20, #0x678]
02c56bdc  cbnz w8,0x02c56be4
02c56be0  bl 0x029f5bd0
02c56be4  ldr x0,[x20]
02c56be8  mov w1,#0x3
02c56bec  mov x2,xzr
02c56bf0  bl 0x02c23998
02c56bf4  tbz w0,#0x0,0x02c56c28
02c56bf8  ldr x0,[x21]
02c56bfc  ldr w8,[x0, #0xe4]
02c56c00  cbnz w8,0x02c56c08
02c56c04  bl 0x029f5bd0
02c56c08  ldr x0,[x20]
02c56c0c  mov x1,xzr
02c56c10  bl 0x02c25580
02c56c14  mov x0,xzr
02c56c18  bl 0x02c25c90
02c56c1c  str wzr,[x19, #0x70]
02c56c20  str x0,[x19, #0x68]
02c56c24  strh wzr,[x19, #0x74]
02c56c28  ldp x20,x19,[sp, #0x10]
02c56c2c  ldp x30,x21,[sp], #0x20
02c56c30  ret
