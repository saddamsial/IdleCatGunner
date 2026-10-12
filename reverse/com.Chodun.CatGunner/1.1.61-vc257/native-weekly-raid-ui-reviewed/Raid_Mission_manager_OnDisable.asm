02c53bc0  stp x30,x23,[sp, #-0x30]!
02c53bc4  stp x22,x21,[sp, #0x10]
02c53bc8  stp x20,x19,[sp, #0x20]
02c53bcc  adrp x20,0x625c000
02c53bd0  adrp x22,0x5e59000
02c53bd4  adrp x21,0x5e63000
02c53bd8  adrp x23,0x5e5d000
02c53bdc  ldr x22,[x22, #0x288]
02c53be0  ldrb w8,[x20, #0x170]
02c53be4  ldr x21,[x21, #0x5e8]
02c53be8  ldr x23,[x23, #0x3c0]
02c53bec  mov x19,x0
02c53bf0  tbnz w8,#0x0,0x02c53c20
02c53bf4  adrp x0,0x5e59000
02c53bf8  ldr x0,[x0, #0x288]
02c53bfc  bl 0x029f5a50
02c53c00  adrp x0,0x5e63000
02c53c04  ldr x0,[x0, #0x5e8]
02c53c08  bl 0x029f5a50
02c53c0c  adrp x0,0x5e5d000
02c53c10  ldr x0,[x0, #0x3c0]
02c53c14  bl 0x029f5a50
02c53c18  mov w8,#0x1
02c53c1c  strb w8,[x20, #0x170]
02c53c20  ldr x0,[x22]
02c53c24  bl 0x029f5cec
02c53c28  ldr x2,[x21]
02c53c2c  mov x1,x19
02c53c30  mov x3,xzr
02c53c34  mov x20,x0
02c53c38  bl 0x047b3618
02c53c3c  ldr x0,[x23]
02c53c40  ldr w8,[x0, #0xe4]
02c53c44  cbnz w8,0x02c53c4c
02c53c48  bl 0x029f5bd0
02c53c4c  mov x0,x20
02c53c50  mov x1,xzr
02c53c54  bl 0x02c23070
02c53c58  ldr x0,[x22]
02c53c5c  bl 0x029f5cec
02c53c60  ldr x2,[x21]
02c53c64  mov x1,x19
02c53c68  mov x3,xzr
02c53c6c  mov x20,x0
02c53c70  bl 0x047b3618
02c53c74  mov x0,x20
02c53c78  ldp x20,x19,[sp, #0x20]
02c53c7c  ldp x22,x21,[sp, #0x10]
02c53c80  mov x1,xzr
02c53c84  ldp x30,x23,[sp], #0x30
02c53c88  b 0x02c235c8
