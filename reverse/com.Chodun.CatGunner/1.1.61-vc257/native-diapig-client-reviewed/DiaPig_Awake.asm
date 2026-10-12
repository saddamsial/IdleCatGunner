02c8c978  stp x30,x21,[sp, #-0x20]!
02c8c97c  stp x20,x19,[sp, #0x10]
02c8c980  adrp x21,0x625c000
02c8c984  adrp x20,0x5e62000
02c8c988  mov x19,x0
02c8c98c  ldrb w8,[x21, #0x3b8]
02c8c990  ldr x20,[x20, #0x668]
02c8c994  tbnz w8,#0x0,0x02c8c9ac
02c8c998  adrp x0,0x5e62000
02c8c99c  ldr x0,[x0, #0x668]
02c8c9a0  bl 0x029f5a50
02c8c9a4  mov w8,#0x1
02c8c9a8  strb w8,[x21, #0x3b8]
02c8c9ac  ldr x8,[x20]
02c8c9b0  mov x1,x19
02c8c9b4  ldr x8,[x8, #0xb8]
02c8c9b8  str x19,[x8]
02c8c9bc  ldr x8,[x20]
02c8c9c0  ldp x20,x19,[sp, #0x10]
02c8c9c4  ldr x0,[x8, #0xb8]
02c8c9c8  ldp x30,x21,[sp], #0x20
02c8c9cc  b 0x029f59f4
