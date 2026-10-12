02cb2380  stp x30,x21,[sp, #-0x20]!
02cb2384  stp x20,x19,[sp, #0x10]
02cb2388  adrp x21,0x625c000
02cb238c  adrp x20,0x5e5d000
02cb2390  mov x19,x0
02cb2394  ldrb w8,[x21, #0x552]
02cb2398  ldr x20,[x20, #0x4e8]
02cb239c  tbnz w8,#0x0,0x02cb23b4
02cb23a0  adrp x0,0x5e5d000
02cb23a4  ldr x0,[x0, #0x4e8]
02cb23a8  bl 0x029f5a50
02cb23ac  mov w8,#0x1
02cb23b0  strb w8,[x21, #0x552]
02cb23b4  ldr x0,[x20]
02cb23b8  ldr w8,[x0, #0xe4]
02cb23bc  cbnz w8,0x02cb23c8
02cb23c0  bl 0x029f5bd0
02cb23c4  ldr x0,[x20]
02cb23c8  ldr x8,[x0, #0xb8]
02cb23cc  mov x1,x19
02cb23d0  str x19,[x8]
02cb23d4  ldr x8,[x20]
02cb23d8  ldp x20,x19,[sp, #0x10]
02cb23dc  ldr x0,[x8, #0xb8]
02cb23e0  ldp x30,x21,[sp], #0x20
02cb23e4  b 0x029f59f4
