02c373a4  stp x30,x21,[sp, #-0x20]!
02c373a8  stp x20,x19,[sp, #0x10]
02c373ac  adrp x21,0x625c000
02c373b0  adrp x20,0x5e5d000
02c373b4  mov x19,x0
02c373b8  ldrb w8,[x21, #0x73]
02c373bc  ldr x20,[x20, #0x4c0]
02c373c0  tbnz w8,#0x0,0x02c373d8
02c373c4  adrp x0,0x5e5d000
02c373c8  ldr x0,[x0, #0x4c0]
02c373cc  bl 0x029f5a50
02c373d0  mov w8,#0x1
02c373d4  strb w8,[x21, #0x73]
02c373d8  ldr x0,[x20]
02c373dc  ldr w8,[x0, #0xe4]
02c373e0  cbnz w8,0x02c373ec
02c373e4  bl 0x029f5bd0
02c373e8  ldr x0,[x20]
02c373ec  ldr x8,[x0, #0xb8]
02c373f0  mov x1,x19
02c373f4  str x19,[x8]
02c373f8  ldr x8,[x20]
02c373fc  ldp x20,x19,[sp, #0x10]
02c37400  ldr x0,[x8, #0xb8]
02c37404  ldp x30,x21,[sp], #0x20
02c37408  b 0x029f59f4
