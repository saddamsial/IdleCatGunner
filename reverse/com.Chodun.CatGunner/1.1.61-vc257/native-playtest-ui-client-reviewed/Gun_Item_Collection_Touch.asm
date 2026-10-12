02c75a64  stp x30,x21,[sp, #-0x20]!
02c75a68  stp x20,x19,[sp, #0x10]
02c75a6c  adrp x20,0x625c000
02c75a70  adrp x21,0x5e5d000
02c75a74  mov x19,x0
02c75a78  ldrb w8,[x20, #0x2e8]
02c75a7c  ldr x21,[x21, #0xd40]
02c75a80  tbnz w8,#0x0,0x02c75a98
02c75a84  adrp x0,0x5e5d000
02c75a88  ldr x0,[x0, #0xd40]
02c75a8c  bl 0x029f5a50
02c75a90  mov w8,#0x1
02c75a94  strb w8,[x20, #0x2e8]
02c75a98  ldr x8,[x21]
02c75a9c  ldr x8,[x8, #0xb8]
02c75aa0  ldr x0,[x8]
02c75aa4  cbz x0,0x02c75abc
02c75aa8  ldr w1,[x19, #0x20]
02c75aac  ldp x20,x19,[sp, #0x10]
02c75ab0  mov x2,xzr
02c75ab4  ldp x30,x21,[sp], #0x20
02c75ab8  b 0x02c69de0
02c75abc  bl 0x029f5cfc
