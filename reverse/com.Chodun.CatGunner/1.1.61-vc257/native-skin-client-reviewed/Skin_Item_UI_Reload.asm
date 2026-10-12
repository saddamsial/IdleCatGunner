02ca7eac  stp x30,x21,[sp, #-0x20]!
02ca7eb0  stp x20,x19,[sp, #0x10]
02ca7eb4  adrp x21,0x625c000
02ca7eb8  adrp x20,0x5e5d000
02ca7ebc  mov x19,x0
02ca7ec0  ldrb w8,[x21, #0x4ec]
02ca7ec4  ldr x20,[x20, #0x4e0]
02ca7ec8  tbnz w8,#0x0,0x02ca7ee0
02ca7ecc  adrp x0,0x5e5d000
02ca7ed0  ldr x0,[x0, #0x4e0]
02ca7ed4  bl 0x029f5a50
02ca7ed8  mov w8,#0x1
02ca7edc  strb w8,[x21, #0x4ec]
02ca7ee0  ldr x8,[x20]
02ca7ee4  ldr x8,[x8, #0xb8]
02ca7ee8  ldr x0,[x8, #0x10]
02ca7eec  cbz x0,0x02ca7f4c
02ca7ef0  ldr w1,[x19, #0x20]
02ca7ef4  bl 0x02ca7ac4
02ca7ef8  ldr x8,[x20]
02ca7efc  ldr x8,[x8, #0xb8]
02ca7f00  ldr x8,[x8, #0x10]
02ca7f04  cbz x8,0x02ca7f4c
02ca7f08  mov w20,w0
02ca7f0c  ldr x0,[x19, #0x38]
02ca7f10  cbz x0,0x02ca7f4c
02ca7f14  ldr w8,[x8, #0x30]
02ca7f18  ldr w9,[x19, #0x20]
02ca7f1c  mov x2,xzr
02ca7f20  cmp w8,w9
02ca7f24  cset w1,eq
02ca7f28  bl 0x057dff3c
02ca7f2c  ldr x0,[x19, #0x40]
02ca7f30  cbz x0,0x02ca7f4c
02ca7f34  mov w8,#0x1
02ca7f38  mov x2,xzr
02ca7f3c  bic w1,w8,w20
02ca7f40  ldp x20,x19,[sp, #0x10]
02ca7f44  ldp x30,x21,[sp], #0x20
02ca7f48  b 0x057dff3c
02ca7f4c  bl 0x029f5cfc
