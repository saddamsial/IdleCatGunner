02c26eec  stp x30,x21,[sp, #-0x20]!
02c26ef0  stp x20,x19,[sp, #0x10]
02c26ef4  adrp x20,0x625b000
02c26ef8  adrp x21,0x5e5e000
02c26efc  mov x19,x0
02c26f00  ldrb w8,[x20, #0xfb8]
02c26f04  ldr x21,[x21, #0x520]
02c26f08  tbnz w8,#0x0,0x02c26f20
02c26f0c  adrp x0,0x5e5e000
02c26f10  ldr x0,[x0, #0x520]
02c26f14  bl 0x029f5a50
02c26f18  mov w8,#0x1
02c26f1c  strb w8,[x20, #0xfb8]
02c26f20  ldr x8,[x21]
02c26f24  ldr x8,[x8, #0xb8]
02c26f28  ldr x0,[x8]
02c26f2c  cbz x0,0x02c26f40
02c26f30  mov x1,x19
02c26f34  ldp x20,x19,[sp, #0x10]
02c26f38  ldp x30,x21,[sp], #0x20
02c26f3c  b 0x02c26dc0
02c26f40  bl 0x029f5cfc
