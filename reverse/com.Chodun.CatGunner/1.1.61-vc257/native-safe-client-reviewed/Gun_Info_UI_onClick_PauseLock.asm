02c70370  str x30,[sp, #-0x20]!
02c70374  stp x20,x19,[sp, #0x10]
02c70378  adrp x19,0x625c000
02c7037c  adrp x20,0x5e63000
02c70380  ldrb w8,[x19, #0x2c1]
02c70384  ldr x20,[x20, #0xaf8]
02c70388  tbnz w8,#0x0,0x02c703a0
02c7038c  adrp x0,0x5e63000
02c70390  ldr x0,[x0, #0xaf8]
02c70394  bl 0x029f5a50
02c70398  mov w8,#0x1
02c7039c  strb w8,[x19, #0x2c1]
02c703a0  ldr x0,[x20]
02c703a4  mov x1,xzr
02c703a8  bl 0x02c68dbc
02c703ac  mov x1,xzr
02c703b0  bl 0x02c1dd54
02c703b4  adrp x19,0x625b000
02c703b8  ldrb w8,[x19, #0xa57]
02c703bc  cbnz w8,0x02c703d4
02c703c0  adrp x0,0x5e5d000
02c703c4  ldr x0,[x0, #0xd70]
02c703c8  bl 0x029f5a50
02c703cc  mov w8,#0x1
02c703d0  strb w8,[x19, #0xa57]
02c703d4  adrp x8,0x5e5d000
02c703d8  ldr x8,[x8, #0xd70]
02c703dc  ldr x8,[x8]
02c703e0  ldr x8,[x8, #0xb8]
02c703e4  ldr x0,[x8]
02c703e8  cbz x0,0x02c70408
02c703ec  ldp x20,x19,[sp, #0x10]
02c703f0  fmov s0,0x3f800000
02c703f4  mov w1,#0x5
02c703f8  mov x2,xzr
02c703fc  mov x3,xzr
02c70400  ldr x30,[sp], #0x20
02c70404  b 0x02c1f10c
02c70408  bl 0x029f5cfc
