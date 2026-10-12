02c31e9c  stp x30,x21,[sp, #-0x20]!
02c31ea0  stp x20,x19,[sp, #0x10]
02c31ea4  adrp x21,0x625c000
02c31ea8  adrp x20,0x5e5d000
02c31eac  mov x19,x0
02c31eb0  ldrb w8,[x21, #0x3d]
02c31eb4  ldr x20,[x20, #0x4d8]
02c31eb8  tbnz w8,#0x0,0x02c31ed0
02c31ebc  adrp x0,0x5e5d000
02c31ec0  ldr x0,[x0, #0x4d8]
02c31ec4  bl 0x029f5a50
02c31ec8  mov w8,#0x1
02c31ecc  strb w8,[x21, #0x3d]
02c31ed0  ldr x0,[x20]
02c31ed4  ldr w8,[x0, #0xe4]
02c31ed8  cbnz w8,0x02c31ee4
02c31edc  bl 0x029f5bd0
02c31ee0  ldr x0,[x20]
02c31ee4  ldr x8,[x0, #0xb8]
02c31ee8  ldr x8,[x8, #0x70]
02c31eec  cbz x8,0x02c31f08
02c31ef0  ldr x0,[x8, #0x38]
02c31ef4  cbz x0,0x02c31f08
02c31ef8  ldr x1,[x19, #0x20]
02c31efc  ldp x20,x19,[sp, #0x10]
02c31f00  ldp x30,x21,[sp], #0x20
02c31f04  b 0x02c310cc
02c31f08  bl 0x029f5cfc
