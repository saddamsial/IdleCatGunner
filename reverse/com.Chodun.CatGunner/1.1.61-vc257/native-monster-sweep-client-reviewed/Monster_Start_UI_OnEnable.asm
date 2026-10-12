02c50b00  stp x30,x23,[sp, #-0x30]!
02c50b04  stp x22,x21,[sp, #0x10]
02c50b08  stp x20,x19,[sp, #0x20]
02c50b0c  adrp x22,0x625c000
02c50b10  adrp x23,0x5e59000
02c50b14  adrp x20,0x5e63000
02c50b18  adrp x21,0x5e5e000
02c50b1c  ldr x23,[x23, #0x288]
02c50b20  ldrb w8,[x22, #0x156]
02c50b24  ldr x20,[x20, #0x580]
02c50b28  ldr x21,[x21, #0xb8]
02c50b2c  mov x19,x0
02c50b30  tbnz w8,#0x0,0x02c50b60
02c50b34  adrp x0,0x5e59000
02c50b38  ldr x0,[x0, #0x288]
02c50b3c  bl 0x029f5a50
02c50b40  adrp x0,0x5e63000
02c50b44  ldr x0,[x0, #0x580]
02c50b48  bl 0x029f5a50
02c50b4c  adrp x0,0x5e5e000
02c50b50  ldr x0,[x0, #0xb8]
02c50b54  bl 0x029f5a50
02c50b58  mov w8,#0x1
02c50b5c  strb w8,[x22, #0x156]
02c50b60  ldr x0,[x23]
02c50b64  bl 0x029f5cec
02c50b68  ldr x2,[x20]
02c50b6c  mov x1,x19
02c50b70  mov x3,xzr
02c50b74  mov x20,x0
02c50b78  bl 0x047b3618
02c50b7c  ldr x0,[x21]
02c50b80  ldr w8,[x0, #0xe4]
02c50b84  cbnz w8,0x02c50b8c
02c50b88  bl 0x029f5bd0
02c50b8c  mov x0,x20
02c50b90  ldp x20,x19,[sp, #0x20]
02c50b94  ldp x22,x21,[sp, #0x10]
02c50b98  mov x1,xzr
02c50b9c  ldp x30,x23,[sp], #0x30
02c50ba0  b 0x02c909dc
