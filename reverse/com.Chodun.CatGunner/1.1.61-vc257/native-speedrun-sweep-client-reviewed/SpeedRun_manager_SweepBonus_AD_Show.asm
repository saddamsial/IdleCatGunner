02ca9f64  str x30,[sp, #-0x20]!
02ca9f68  stp x20,x19,[sp, #0x10]
02ca9f6c  adrp x19,0x625c000
02ca9f70  adrp x20,0x5e5d000
02ca9f74  ldrb w8,[x19, #0x4fe]
02ca9f78  ldr x20,[x20, #0x910]
02ca9f7c  tbnz w8,#0x0,0x02ca9f94
02ca9f80  adrp x0,0x5e5d000
02ca9f84  ldr x0,[x0, #0x910]
02ca9f88  bl 0x029f5a50
02ca9f8c  mov w8,#0x1
02ca9f90  strb w8,[x19, #0x4fe]
02ca9f94  ldr x8,[x20]
02ca9f98  ldr x8,[x8, #0xb8]
02ca9f9c  ldr x0,[x8]
02ca9fa0  cbz x0,0x02ca9fb8
02ca9fa4  ldp x20,x19,[sp, #0x10]
02ca9fa8  mov w1,#0x2
02ca9fac  mov x2,xzr
02ca9fb0  ldr x30,[sp], #0x20
02ca9fb4  b 0x02b89ab0
02ca9fb8  bl 0x029f5cfc
