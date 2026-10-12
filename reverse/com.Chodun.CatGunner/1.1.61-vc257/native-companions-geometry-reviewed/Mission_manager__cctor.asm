02ba6bcc  str x30,[sp, #-0x30]!
02ba6bd0  stp x22,x21,[sp, #0x10]
02ba6bd4  stp x20,x19,[sp, #0x20]
02ba6bd8  adrp x21,0x625b000
02ba6bdc  adrp x22,0x5e5d000
02ba6be0  adrp x19,0x5e5e000
02ba6be4  adrp x20,0x5e5d000
02ba6be8  ldr x22,[x22, #0x790]
02ba6bec  ldrb w8,[x21, #0xa55]
02ba6bf0  ldr x19,[x19, #0x7a8]
02ba6bf4  ldr x20,[x20, #0xd50]
02ba6bf8  tbnz w8,#0x0,0x02ba6c28
02ba6bfc  adrp x0,0x5e5d000
02ba6c00  ldr x0,[x0, #0x790]
02ba6c04  bl 0x029f5a50
02ba6c08  adrp x0,0x5e5d000
02ba6c0c  ldr x0,[x0, #0xd50]
02ba6c10  bl 0x029f5a50
02ba6c14  adrp x0,0x5e5e000
02ba6c18  ldr x0,[x0, #0x7a8]
02ba6c1c  bl 0x029f5a50
02ba6c20  mov w8,#0x1
02ba6c24  strb w8,[x21, #0xa55]
02ba6c28  ldr x0,[x22]
02ba6c2c  mov w1,#0x8
02ba6c30  bl 0x029f5b40
02ba6c34  ldr x1,[x19]
02ba6c38  mov x2,xzr
02ba6c3c  mov x19,x0
02ba6c40  bl 0x047779e0
02ba6c44  ldr x8,[x20]
02ba6c48  mov x1,x19
02ba6c4c  ldp x22,x21,[sp, #0x10]
02ba6c50  ldr x0,[x8, #0xb8]
02ba6c54  str x19,[x0, #0x10]!
02ba6c58  ldp x20,x19,[sp, #0x20]
02ba6c5c  ldr x30,[sp], #0x30
02ba6c60  b 0x029f59f4
