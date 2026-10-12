02c53af4  stp x30,x23,[sp, #-0x30]!
02c53af8  stp x22,x21,[sp, #0x10]
02c53afc  stp x20,x19,[sp, #0x20]
02c53b00  adrp x20,0x625c000
02c53b04  adrp x22,0x5e59000
02c53b08  adrp x21,0x5e63000
02c53b0c  adrp x23,0x5e5d000
02c53b10  ldr x22,[x22, #0x288]
02c53b14  ldrb w8,[x20, #0x16f]
02c53b18  ldr x21,[x21, #0x5e8]
02c53b1c  ldr x23,[x23, #0x3c0]
02c53b20  mov x19,x0
02c53b24  tbnz w8,#0x0,0x02c53b54
02c53b28  adrp x0,0x5e59000
02c53b2c  ldr x0,[x0, #0x288]
02c53b30  bl 0x029f5a50
02c53b34  adrp x0,0x5e63000
02c53b38  ldr x0,[x0, #0x5e8]
02c53b3c  bl 0x029f5a50
02c53b40  adrp x0,0x5e5d000
02c53b44  ldr x0,[x0, #0x3c0]
02c53b48  bl 0x029f5a50
02c53b4c  mov w8,#0x1
02c53b50  strb w8,[x20, #0x16f]
02c53b54  ldr x0,[x22]
02c53b58  bl 0x029f5cec
02c53b5c  ldr x2,[x21]
02c53b60  mov x1,x19
02c53b64  mov x3,xzr
02c53b68  mov x20,x0
02c53b6c  bl 0x047b3618
02c53b70  ldr x0,[x23]
02c53b74  ldr w8,[x0, #0xe4]
02c53b78  cbnz w8,0x02c53b80
02c53b7c  bl 0x029f5bd0
02c53b80  mov x0,x20
02c53b84  mov x1,xzr
02c53b88  bl 0x02c22f94
02c53b8c  ldr x0,[x22]
02c53b90  bl 0x029f5cec
02c53b94  ldr x2,[x21]
02c53b98  mov x1,x19
02c53b9c  mov x3,xzr
02c53ba0  mov x20,x0
02c53ba4  bl 0x047b3618
02c53ba8  mov x0,x20
02c53bac  ldp x20,x19,[sp, #0x20]
02c53bb0  ldp x22,x21,[sp, #0x10]
02c53bb4  mov x1,xzr
02c53bb8  ldp x30,x23,[sp], #0x30
02c53bbc  b 0x02c234ec
