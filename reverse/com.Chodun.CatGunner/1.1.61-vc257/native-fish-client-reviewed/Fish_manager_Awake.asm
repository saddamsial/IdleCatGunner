02c5d1b8  stp x30,x21,[sp, #-0x20]!
02c5d1bc  stp x20,x19,[sp, #0x10]
02c5d1c0  adrp x21,0x625c000
02c5d1c4  adrp x20,0x5e5d000
02c5d1c8  mov x19,x0
02c5d1cc  ldrb w8,[x21, #0x1f6]
02c5d1d0  ldr x20,[x20, #0xd38]
02c5d1d4  tbnz w8,#0x0,0x02c5d1ec
02c5d1d8  adrp x0,0x5e5d000
02c5d1dc  ldr x0,[x0, #0xd38]
02c5d1e0  bl 0x029f5a50
02c5d1e4  mov w8,#0x1
02c5d1e8  strb w8,[x21, #0x1f6]
02c5d1ec  ldr x8,[x20]
02c5d1f0  mov x1,x19
02c5d1f4  ldr x8,[x8, #0xb8]
02c5d1f8  str x19,[x8]
02c5d1fc  ldr x8,[x20]
02c5d200  ldp x20,x19,[sp, #0x10]
02c5d204  ldr x0,[x8, #0xb8]
02c5d208  ldp x30,x21,[sp], #0x20
02c5d20c  b 0x029f59f4
