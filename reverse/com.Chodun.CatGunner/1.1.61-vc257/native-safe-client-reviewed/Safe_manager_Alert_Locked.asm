02c6c080  str x30,[sp, #-0x20]!
02c6c084  stp x20,x19,[sp, #0x10]
02c6c088  adrp x19,0x625c000
02c6c08c  adrp x20,0x5e63000
02c6c090  ldrb w8,[x19, #0x298]
02c6c094  ldr x20,[x20, #0xaf8]
02c6c098  tbnz w8,#0x0,0x02c6c0b0
02c6c09c  adrp x0,0x5e63000
02c6c0a0  ldr x0,[x0, #0xaf8]
02c6c0a4  bl 0x029f5a50
02c6c0a8  mov w8,#0x1
02c6c0ac  strb w8,[x19, #0x298]
02c6c0b0  ldr x0,[x20]
02c6c0b4  bl 0x02c68dbc
02c6c0b8  mov x1,xzr
02c6c0bc  bl 0x02c1dd54
02c6c0c0  adrp x19,0x625b000
02c6c0c4  ldrb w8,[x19, #0xa57]
02c6c0c8  cbnz w8,0x02c6c0e0
02c6c0cc  adrp x0,0x5e5d000
02c6c0d0  ldr x0,[x0, #0xd70]
02c6c0d4  bl 0x029f5a50
02c6c0d8  mov w8,#0x1
02c6c0dc  strb w8,[x19, #0xa57]
02c6c0e0  adrp x8,0x5e5d000
02c6c0e4  ldr x8,[x8, #0xd70]
02c6c0e8  ldr x8,[x8]
02c6c0ec  ldr x8,[x8, #0xb8]
02c6c0f0  ldr x0,[x8]
02c6c0f4  cbz x0,0x02c6c114
02c6c0f8  ldp x20,x19,[sp, #0x10]
02c6c0fc  fmov s0,0x3f800000
02c6c100  mov w1,#0x5
02c6c104  mov x2,xzr
02c6c108  mov x3,xzr
02c6c10c  ldr x30,[sp], #0x20
02c6c110  b 0x02c1f10c
02c6c114  bl 0x029f5cfc
