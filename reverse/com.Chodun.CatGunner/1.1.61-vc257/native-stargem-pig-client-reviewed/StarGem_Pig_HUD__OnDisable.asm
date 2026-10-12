02ca1f10  stp x30,x23,[sp, #-0x30]!
02ca1f14  stp x22,x21,[sp, #0x10]
02ca1f18  stp x20,x19,[sp, #0x20]
02ca1f1c  adrp x22,0x625c000
02ca1f20  adrp x23,0x5e59000
02ca1f24  adrp x20,0x5e64000
02ca1f28  adrp x21,0x5e5e000
02ca1f2c  ldr x23,[x23, #0x288]
02ca1f30  ldrb w8,[x22, #0x48a]
02ca1f34  ldr x20,[x20, #0x8d8]
02ca1f38  ldr x21,[x21, #0x3e0]
02ca1f3c  mov x19,x0
02ca1f40  tbnz w8,#0x0,0x02ca1f70
02ca1f44  adrp x0,0x5e59000
02ca1f48  ldr x0,[x0, #0x288]
02ca1f4c  bl 0x029f5a50
02ca1f50  adrp x0,0x5e64000
02ca1f54  ldr x0,[x0, #0x8d8]
02ca1f58  bl 0x029f5a50
02ca1f5c  adrp x0,0x5e5e000
02ca1f60  ldr x0,[x0, #0x3e0]
02ca1f64  bl 0x029f5a50
02ca1f68  mov w8,#0x1
02ca1f6c  strb w8,[x22, #0x48a]
02ca1f70  ldr x0,[x23]
02ca1f74  bl 0x029f5cec
02ca1f78  ldr x2,[x20]
02ca1f7c  mov x1,x19
02ca1f80  mov x3,xzr
02ca1f84  mov x20,x0
02ca1f88  bl 0x047b3618
02ca1f8c  ldr x0,[x21]
02ca1f90  ldr w8,[x0, #0xe4]
02ca1f94  cbnz w8,0x02ca1f9c
02ca1f98  bl 0x029f5bd0
02ca1f9c  mov x0,x20
02ca1fa0  ldp x20,x19,[sp, #0x20]
02ca1fa4  ldp x22,x21,[sp, #0x10]
02ca1fa8  ldp x30,x23,[sp], #0x30
02ca1fac  b 0x02ca0604
