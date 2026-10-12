02cb1b18  stp x30,x23,[sp, #-0x30]!
02cb1b1c  stp x22,x21,[sp, #0x10]
02cb1b20  stp x20,x19,[sp, #0x20]
02cb1b24  adrp x22,0x625c000
02cb1b28  adrp x23,0x5e59000
02cb1b2c  adrp x20,0x5e64000
02cb1b30  adrp x21,0x5e5d000
02cb1b34  ldr x23,[x23, #0x288]
02cb1b38  ldrb w8,[x22, #0x54e]
02cb1b3c  ldr x20,[x20, #0xb88]
02cb1b40  ldr x21,[x21, #0x338]
02cb1b44  mov x19,x0
02cb1b48  tbnz w8,#0x0,0x02cb1b78
02cb1b4c  adrp x0,0x5e59000
02cb1b50  ldr x0,[x0, #0x288]
02cb1b54  bl 0x029f5a50
02cb1b58  adrp x0,0x5e5d000
02cb1b5c  ldr x0,[x0, #0x338]
02cb1b60  bl 0x029f5a50
02cb1b64  adrp x0,0x5e64000
02cb1b68  ldr x0,[x0, #0xb88]
02cb1b6c  bl 0x029f5a50
02cb1b70  mov w8,#0x1
02cb1b74  strb w8,[x22, #0x54e]
02cb1b78  ldr x0,[x23]
02cb1b7c  bl 0x029f5cec
02cb1b80  ldr x2,[x20]
02cb1b84  mov x1,x19
02cb1b88  mov x3,xzr
02cb1b8c  mov x20,x0
02cb1b90  bl 0x047b3618
02cb1b94  ldr x0,[x21]
02cb1b98  ldr w8,[x0, #0xe4]
02cb1b9c  cbnz w8,0x02cb1ba4
02cb1ba0  bl 0x029f5bd0
02cb1ba4  mov x0,x20
02cb1ba8  mov x1,xzr
02cb1bac  bl 0x02b7acfc
02cb1bb0  mov w8,#0x1
02cb1bb4  ldp x22,x21,[sp, #0x10]
02cb1bb8  strb w8,[x19, #0x28]
02cb1bbc  ldp x20,x19,[sp, #0x20]
02cb1bc0  ldp x30,x23,[sp], #0x30
02cb1bc4  ret
