02cb1bc8  stp x30,x23,[sp, #-0x30]!
02cb1bcc  stp x22,x21,[sp, #0x10]
02cb1bd0  stp x20,x19,[sp, #0x20]
02cb1bd4  adrp x22,0x625c000
02cb1bd8  adrp x23,0x5e59000
02cb1bdc  adrp x20,0x5e64000
02cb1be0  adrp x21,0x5e5d000
02cb1be4  ldr x23,[x23, #0x288]
02cb1be8  ldrb w8,[x22, #0x54f]
02cb1bec  ldr x20,[x20, #0xb88]
02cb1bf0  ldr x21,[x21, #0x338]
02cb1bf4  mov x19,x0
02cb1bf8  tbnz w8,#0x0,0x02cb1c28
02cb1bfc  adrp x0,0x5e59000
02cb1c00  ldr x0,[x0, #0x288]
02cb1c04  bl 0x029f5a50
02cb1c08  adrp x0,0x5e5d000
02cb1c0c  ldr x0,[x0, #0x338]
02cb1c10  bl 0x029f5a50
02cb1c14  adrp x0,0x5e64000
02cb1c18  ldr x0,[x0, #0xb88]
02cb1c1c  bl 0x029f5a50
02cb1c20  mov w8,#0x1
02cb1c24  strb w8,[x22, #0x54f]
02cb1c28  ldr x0,[x23]
02cb1c2c  bl 0x029f5cec
02cb1c30  ldr x2,[x20]
02cb1c34  mov x1,x19
02cb1c38  mov x3,xzr
02cb1c3c  mov x20,x0
02cb1c40  bl 0x047b3618
02cb1c44  ldr x0,[x21]
02cb1c48  ldr w8,[x0, #0xe4]
02cb1c4c  cbnz w8,0x02cb1c54
02cb1c50  bl 0x029f5bd0
02cb1c54  mov x0,x20
02cb1c58  ldp x20,x19,[sp, #0x20]
02cb1c5c  ldp x22,x21,[sp, #0x10]
02cb1c60  mov x1,xzr
02cb1c64  ldp x30,x23,[sp], #0x30
02cb1c68  b 0x02b7add8
