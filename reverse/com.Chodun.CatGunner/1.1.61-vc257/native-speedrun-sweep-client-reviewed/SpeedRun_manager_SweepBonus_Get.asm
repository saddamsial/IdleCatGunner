02ca9474  stp x30,x21,[sp, #-0x20]!
02ca9478  stp x20,x19,[sp, #0x10]
02ca947c  adrp x21,0x625c000
02ca9480  adrp x20,0x5e5d000
02ca9484  mov x19,x0
02ca9488  ldrb w8,[x21, #0x4ff]
02ca948c  ldr x20,[x20, #0xd68]
02ca9490  tbnz w8,#0x0,0x02ca94b4
02ca9494  adrp x0,0x5e5d000
02ca9498  ldr x0,[x0, #0x338]
02ca949c  bl 0x029f5a50
02ca94a0  adrp x0,0x5e5d000
02ca94a4  ldr x0,[x0, #0xd68]
02ca94a8  bl 0x029f5a50
02ca94ac  mov w8,#0x1
02ca94b0  strb w8,[x21, #0x4ff]
02ca94b4  ldr x0,[x20]
02ca94b8  adrp x21,0x5e5d000
02ca94bc  mov w9,#0x1
02ca94c0  ldr w8,[x0, #0xe4]
02ca94c4  ldr x21,[x21, #0x338]
02ca94c8  strb w9,[x19, #0x56]
02ca94cc  cbnz w8,0x02ca94d8
02ca94d0  bl 0x029f5bd0
02ca94d4  ldr x0,[x20]
02ca94d8  ldr x8,[x21]
02ca94dc  ldr x9,[x0, #0xb8]
02ca94e0  ldr w10,[x8, #0xe4]
02ca94e4  ldr w20,[x9]
02ca94e8  cbnz w10,0x02ca94f4
02ca94ec  mov x0,x8
02ca94f0  bl 0x029f5bd0
02ca94f4  add w0,w20,w20, LSL #0x1
02ca94f8  mov x1,xzr
02ca94fc  bl 0x02b7ed10
02ca9500  mov x0,x19
02ca9504  ldp x20,x19,[sp, #0x10]
02ca9508  ldp x30,x21,[sp], #0x20
02ca950c  b 0x02ca9fbc
