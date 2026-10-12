02ba3c04  stp x30,x23,[sp, #-0x30]!
02ba3c08  stp x22,x21,[sp, #0x10]
02ba3c0c  stp x20,x19,[sp, #0x20]
02ba3c10  adrp x23,0x625b000
02ba3c14  adrp x21,0x5e59000
02ba3c18  adrp x20,0x5e5e000
02ba3c1c  adrp x22,0x5e5d000
02ba3c20  ldr x21,[x21, #0x288]
02ba3c24  ldrb w8,[x23, #0xa35]
02ba3c28  ldr x20,[x20, #0x6d8]
02ba3c2c  ldr x22,[x22, #0x3c0]
02ba3c30  mov x19,x0
02ba3c34  tbnz w8,#0x0,0x02ba3c70
02ba3c38  adrp x0,0x5e59000
02ba3c3c  ldr x0,[x0, #0x288]
02ba3c40  bl 0x029f5a50
02ba3c44  adrp x0,0x5e5e000
02ba3c48  ldr x0,[x0, #0x6e0]
02ba3c4c  bl 0x029f5a50
02ba3c50  adrp x0,0x5e5e000
02ba3c54  ldr x0,[x0, #0x6d8]
02ba3c58  bl 0x029f5a50
02ba3c5c  adrp x0,0x5e5d000
02ba3c60  ldr x0,[x0, #0x3c0]
02ba3c64  bl 0x029f5a50
02ba3c68  mov w8,#0x1
02ba3c6c  strb w8,[x23, #0xa35]
02ba3c70  adrp x23,0x5e5e000
02ba3c74  ldr x23,[x23, #0x6e0]
02ba3c78  ldr x0,[x21]
02ba3c7c  bl 0x029f5cec
02ba3c80  ldr x2,[x20]
02ba3c84  mov x1,x19
02ba3c88  mov x3,xzr
02ba3c8c  mov x20,x0
02ba3c90  bl 0x047b3618
02ba3c94  ldr x0,[x22]
02ba3c98  ldr w8,[x0, #0xe4]
02ba3c9c  cbnz w8,0x02ba3ca4
02ba3ca0  bl 0x029f5bd0
02ba3ca4  mov x0,x20
02ba3ca8  mov x1,xzr
02ba3cac  bl 0x02c22f94
02ba3cb0  ldr x0,[x21]
02ba3cb4  bl 0x029f5cec
02ba3cb8  ldr x2,[x23]
02ba3cbc  mov x1,x19
02ba3cc0  mov x3,xzr
02ba3cc4  mov x20,x0
02ba3cc8  bl 0x047b3618
02ba3ccc  mov x0,x20
02ba3cd0  ldp x20,x19,[sp, #0x20]
02ba3cd4  ldp x22,x21,[sp, #0x10]
02ba3cd8  mov x1,xzr
02ba3cdc  ldp x30,x23,[sp], #0x30
02ba3ce0  b 0x02c234ec
