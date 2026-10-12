02ca1bf8  stp x30,x23,[sp, #-0x30]!
02ca1bfc  stp x22,x21,[sp, #0x10]
02ca1c00  stp x20,x19,[sp, #0x20]
02ca1c04  adrp x22,0x625c000
02ca1c08  adrp x23,0x5e59000
02ca1c0c  adrp x20,0x5e64000
02ca1c10  adrp x21,0x5e5e000
02ca1c14  ldr x23,[x23, #0x288]
02ca1c18  ldrb w8,[x22, #0x489]
02ca1c1c  ldr x20,[x20, #0x8d8]
02ca1c20  ldr x21,[x21, #0x3e0]
02ca1c24  mov x19,x0
02ca1c28  tbnz w8,#0x0,0x02ca1c58
02ca1c2c  adrp x0,0x5e59000
02ca1c30  ldr x0,[x0, #0x288]
02ca1c34  bl 0x029f5a50
02ca1c38  adrp x0,0x5e64000
02ca1c3c  ldr x0,[x0, #0x8d8]
02ca1c40  bl 0x029f5a50
02ca1c44  adrp x0,0x5e5e000
02ca1c48  ldr x0,[x0, #0x3e0]
02ca1c4c  bl 0x029f5a50
02ca1c50  mov w8,#0x1
02ca1c54  strb w8,[x22, #0x489]
02ca1c58  ldr x0,[x23]
02ca1c5c  bl 0x029f5cec
02ca1c60  ldr x2,[x20]
02ca1c64  mov x1,x19
02ca1c68  mov x3,xzr
02ca1c6c  mov x20,x0
02ca1c70  bl 0x047b3618
02ca1c74  ldr x0,[x21]
02ca1c78  ldr w8,[x0, #0xe4]
02ca1c7c  cbnz w8,0x02ca1c84
02ca1c80  bl 0x029f5bd0
02ca1c84  mov x0,x20
02ca1c88  bl 0x02ca0528
02ca1c8c  mov x0,x19
02ca1c90  ldp x20,x19,[sp, #0x20]
02ca1c94  ldp x22,x21,[sp, #0x10]
02ca1c98  ldp x30,x23,[sp], #0x30
02ca1c9c  b 0x02ca1ca0
