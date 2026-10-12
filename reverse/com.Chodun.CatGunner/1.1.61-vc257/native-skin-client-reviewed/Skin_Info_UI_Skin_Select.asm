02ca85a4  stp x30,x21,[sp, #-0x20]!
02ca85a8  stp x20,x19,[sp, #0x10]
02ca85ac  adrp x20,0x625c000
02ca85b0  adrp x21,0x5e5d000
02ca85b4  mov x19,x0
02ca85b8  ldrb w8,[x20, #0x4ea]
02ca85bc  ldr x21,[x21, #0x4e0]
02ca85c0  tbnz w8,#0x0,0x02ca85d8
02ca85c4  adrp x0,0x5e5d000
02ca85c8  ldr x0,[x0, #0x4e0]
02ca85cc  bl 0x029f5a50
02ca85d0  mov w8,#0x1
02ca85d4  strb w8,[x20, #0x4ea]
02ca85d8  ldr x8,[x21]
02ca85dc  ldr x8,[x8, #0xb8]
02ca85e0  ldr x0,[x8, #0x10]
02ca85e4  cbz x0,0x02ca85f8
02ca85e8  ldr w1,[x19, #0x20]
02ca85ec  ldp x20,x19,[sp, #0x10]
02ca85f0  ldp x30,x21,[sp], #0x20
02ca85f4  b 0x02ca7b7c
02ca85f8  bl 0x029f5cfc
