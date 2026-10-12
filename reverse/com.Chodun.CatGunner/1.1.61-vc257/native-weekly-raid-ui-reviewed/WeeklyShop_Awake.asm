02ca6eb0  stp x30,x21,[sp, #-0x20]!
02ca6eb4  stp x20,x19,[sp, #0x10]
02ca6eb8  adrp x21,0x625c000
02ca6ebc  adrp x20,0x5e63000
02ca6ec0  mov x19,x0
02ca6ec4  ldrb w8,[x21, #0x4d9]
02ca6ec8  ldr x20,[x20, #0x828]
02ca6ecc  tbnz w8,#0x0,0x02ca6ee4
02ca6ed0  adrp x0,0x5e63000
02ca6ed4  ldr x0,[x0, #0x828]
02ca6ed8  bl 0x029f5a50
02ca6edc  mov w8,#0x1
02ca6ee0  strb w8,[x21, #0x4d9]
02ca6ee4  ldr x8,[x20]
02ca6ee8  mov x1,x19
02ca6eec  ldr x8,[x8, #0xb8]
02ca6ef0  str x19,[x8]
02ca6ef4  ldr x8,[x20]
02ca6ef8  ldp x20,x19,[sp, #0x10]
02ca6efc  ldr x0,[x8, #0xb8]
02ca6f00  ldp x30,x21,[sp], #0x20
02ca6f04  b 0x029f59f4
