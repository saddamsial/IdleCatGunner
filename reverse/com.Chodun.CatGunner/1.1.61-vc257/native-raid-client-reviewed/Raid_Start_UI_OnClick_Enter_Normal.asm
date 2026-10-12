02c5c28c  str x30,[sp, #-0x20]!
02c5c290  stp x20,x19,[sp, #0x10]
02c5c294  adrp x20,0x625c000
02c5c298  adrp x19,0x5e5e000
02c5c29c  ldrb w8,[x20, #0x1e6]
02c5c2a0  ldr x19,[x19, #0x70]
02c5c2a4  tbnz w8,#0x0,0x02c5c2bc
02c5c2a8  adrp x0,0x5e5e000
02c5c2ac  ldr x0,[x0, #0x70]
02c5c2b0  bl 0x029f5a50
02c5c2b4  mov w8,#0x1
02c5c2b8  strb w8,[x20, #0x1e6]
02c5c2bc  ldr x0,[x19]
02c5c2c0  ldr w8,[x0, #0xe4]
02c5c2c4  cbnz w8,0x02c5c2d0
02c5c2c8  bl 0x029f5bd0
02c5c2cc  ldr x0,[x19]
02c5c2d0  ldr x8,[x0, #0xb8]
02c5c2d4  ldr x0,[x8]
02c5c2d8  cbz x0,0x02c5c2ec
02c5c2dc  ldp x20,x19,[sp, #0x10]
02c5c2e0  mov x1,xzr
02c5c2e4  ldr x30,[sp], #0x20
02c5c2e8  b 0x02c57758
02c5c2ec  bl 0x029f5cfc
