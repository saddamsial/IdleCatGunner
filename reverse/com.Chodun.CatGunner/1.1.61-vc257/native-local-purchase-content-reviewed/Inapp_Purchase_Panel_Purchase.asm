02ca5ea0  stp x30,x21,[sp, #-0x20]!
02ca5ea4  stp x20,x19,[sp, #0x10]
02ca5ea8  adrp x21,0x625c000
02ca5eac  adrp x20,0x5e5d000
02ca5eb0  mov x19,x0
02ca5eb4  ldrb w8,[x21, #0x4c4]
02ca5eb8  ldr x20,[x20, #0x920]
02ca5ebc  tbnz w8,#0x0,0x02ca5ee0
02ca5ec0  adrp x0,0x5e5d000
02ca5ec4  ldr x0,[x0, #0x920]
02ca5ec8  bl 0x029f5a50
02ca5ecc  adrp x0,0x5e59000
02ca5ed0  ldr x0,[x0, #0x50]
02ca5ed4  bl 0x029f5a50
02ca5ed8  mov w8,#0x1
02ca5edc  strb w8,[x21, #0x4c4]
02ca5ee0  ldr x0,[x20]
02ca5ee4  ldr w8,[x0, #0xe4]
02ca5ee8  cbnz w8,0x02ca5ef0
02ca5eec  bl 0x029f5bd0
02ca5ef0  adrp x21,0x625b000
02ca5ef4  ldrb w8,[x21, #0x960]
02ca5ef8  cbnz w8,0x02ca5f10
02ca5efc  adrp x0,0x5e5d000
02ca5f00  ldr x0,[x0, #0x920]
02ca5f04  bl 0x029f5a50
02ca5f08  mov w8,#0x1
02ca5f0c  strb w8,[x21, #0x960]
02ca5f10  ldr x0,[x20]
02ca5f14  ldr w8,[x0, #0xe4]
02ca5f18  cbnz w8,0x02ca5f24
02ca5f1c  bl 0x029f5bd0
02ca5f20  ldr x0,[x20]
02ca5f24  ldr x8,[x0, #0xb8]
02ca5f28  ldr x0,[x8]
02ca5f2c  cbz x0,0x02ca5f50
02ca5f30  adrp x8,0x5e59000
02ca5f34  mov x3,xzr
02ca5f38  ldr x8,[x8, #0x50]
02ca5f3c  ldr w1,[x19, #0x20]
02ca5f40  ldp x20,x19,[sp, #0x10]
02ca5f44  ldr x2,[x8]
02ca5f48  ldp x30,x21,[sp], #0x20
02ca5f4c  b 0x02c9498c
02ca5f50  bl 0x029f5cfc
