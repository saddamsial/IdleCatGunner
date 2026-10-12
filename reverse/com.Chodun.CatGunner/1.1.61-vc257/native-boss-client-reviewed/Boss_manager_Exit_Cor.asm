02c46584  stp x30,x21,[sp, #-0x20]!
02c46588  stp x20,x19,[sp, #0x10]
02c4658c  adrp x20,0x625c000
02c46590  adrp x21,0x5e63000
02c46594  mov x19,x0
02c46598  ldrb w8,[x20, #0xe1]
02c4659c  ldr x21,[x21, #0x328]
02c465a0  tbnz w8,#0x0,0x02c465b8
02c465a4  adrp x0,0x5e63000
02c465a8  ldr x0,[x0, #0x328]
02c465ac  bl 0x029f5a50
02c465b0  mov w8,#0x1
02c465b4  strb w8,[x20, #0xe1]
02c465b8  ldr x0,[x21]
02c465bc  bl 0x029f5cec
02c465c0  mov x1,xzr
02c465c4  mov x20,x0
02c465c8  bl 0x04893238
02c465cc  mov x0,x20
02c465d0  mov x1,x19
02c465d4  str wzr,[x20, #0x10]
02c465d8  str x19,[x0, #0x20]!
02c465dc  bl 0x029f59f4
02c465e0  mov x0,x20
02c465e4  ldp x20,x19,[sp, #0x10]
02c465e8  ldp x30,x21,[sp], #0x20
02c465ec  ret
