02ca0ec0  stp x30,x23,[sp, #-0x30]!
02ca0ec4  stp x22,x21,[sp, #0x10]
02ca0ec8  stp x20,x19,[sp, #0x20]
02ca0ecc  adrp x20,0x625c000
02ca0ed0  adrp x22,0x5e59000
02ca0ed4  adrp x21,0x5e64000
02ca0ed8  adrp x23,0x5e5d000
02ca0edc  ldr x22,[x22, #0x288]
02ca0ee0  ldrb w8,[x20, #0x47e]
02ca0ee4  ldr x21,[x21, #0x8c0]
02ca0ee8  ldr x23,[x23, #0x3c0]
02ca0eec  mov x19,x0
02ca0ef0  tbnz w8,#0x0,0x02ca0f20
02ca0ef4  adrp x0,0x5e59000
02ca0ef8  ldr x0,[x0, #0x288]
02ca0efc  bl 0x029f5a50
02ca0f00  adrp x0,0x5e64000
02ca0f04  ldr x0,[x0, #0x8c0]
02ca0f08  bl 0x029f5a50
02ca0f0c  adrp x0,0x5e5d000
02ca0f10  ldr x0,[x0, #0x3c0]
02ca0f14  bl 0x029f5a50
02ca0f18  mov w8,#0x1
02ca0f1c  strb w8,[x20, #0x47e]
02ca0f20  ldr x0,[x22]
02ca0f24  bl 0x029f5cec
02ca0f28  ldr x2,[x21]
02ca0f2c  mov x1,x19
02ca0f30  mov x3,xzr
02ca0f34  mov x20,x0
02ca0f38  bl 0x047b3618
02ca0f3c  ldr x0,[x23]
02ca0f40  ldr w8,[x0, #0xe4]
02ca0f44  cbnz w8,0x02ca0f4c
02ca0f48  bl 0x029f5bd0
02ca0f4c  mov x0,x20
02ca0f50  mov x1,xzr
02ca0f54  bl 0x02c23070
02ca0f58  ldr x0,[x22]
02ca0f5c  bl 0x029f5cec
02ca0f60  ldr x2,[x21]
02ca0f64  mov x1,x19
02ca0f68  mov x3,xzr
02ca0f6c  mov x20,x0
02ca0f70  bl 0x047b3618
02ca0f74  mov x0,x20
02ca0f78  ldp x20,x19,[sp, #0x20]
02ca0f7c  ldp x22,x21,[sp, #0x10]
02ca0f80  mov x1,xzr
02ca0f84  ldp x30,x23,[sp], #0x30
02ca0f88  b 0x02c235c8
