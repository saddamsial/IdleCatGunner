02ca0df4  stp x30,x23,[sp, #-0x30]!
02ca0df8  stp x22,x21,[sp, #0x10]
02ca0dfc  stp x20,x19,[sp, #0x20]
02ca0e00  adrp x20,0x625c000
02ca0e04  adrp x22,0x5e59000
02ca0e08  adrp x21,0x5e64000
02ca0e0c  adrp x23,0x5e5d000
02ca0e10  ldr x22,[x22, #0x288]
02ca0e14  ldrb w8,[x20, #0x47d]
02ca0e18  ldr x21,[x21, #0x8c0]
02ca0e1c  ldr x23,[x23, #0x3c0]
02ca0e20  mov x19,x0
02ca0e24  tbnz w8,#0x0,0x02ca0e54
02ca0e28  adrp x0,0x5e59000
02ca0e2c  ldr x0,[x0, #0x288]
02ca0e30  bl 0x029f5a50
02ca0e34  adrp x0,0x5e64000
02ca0e38  ldr x0,[x0, #0x8c0]
02ca0e3c  bl 0x029f5a50
02ca0e40  adrp x0,0x5e5d000
02ca0e44  ldr x0,[x0, #0x3c0]
02ca0e48  bl 0x029f5a50
02ca0e4c  mov w8,#0x1
02ca0e50  strb w8,[x20, #0x47d]
02ca0e54  ldr x0,[x22]
02ca0e58  bl 0x029f5cec
02ca0e5c  ldr x2,[x21]
02ca0e60  mov x1,x19
02ca0e64  mov x3,xzr
02ca0e68  mov x20,x0
02ca0e6c  bl 0x047b3618
02ca0e70  ldr x0,[x23]
02ca0e74  ldr w8,[x0, #0xe4]
02ca0e78  cbnz w8,0x02ca0e80
02ca0e7c  bl 0x029f5bd0
02ca0e80  mov x0,x20
02ca0e84  mov x1,xzr
02ca0e88  bl 0x02c22f94
02ca0e8c  ldr x0,[x22]
02ca0e90  bl 0x029f5cec
02ca0e94  ldr x2,[x21]
02ca0e98  mov x1,x19
02ca0e9c  mov x3,xzr
02ca0ea0  mov x20,x0
02ca0ea4  bl 0x047b3618
02ca0ea8  mov x0,x20
02ca0eac  ldp x20,x19,[sp, #0x20]
02ca0eb0  ldp x22,x21,[sp, #0x10]
02ca0eb4  mov x1,xzr
02ca0eb8  ldp x30,x23,[sp], #0x30
02ca0ebc  b 0x02c234ec
