02c2c8bc  stp x30,x21,[sp, #-0x20]!
02c2c8c0  stp x20,x19,[sp, #0x10]
02c2c8c4  adrp x21,0x625b000
02c2c8c8  adrp x20,0x5e5d000
02c2c8cc  mov x19,x0
02c2c8d0  ldrb w8,[x21, #0xff7]
02c2c8d4  ldr x20,[x20, #0xd28]
02c2c8d8  tbnz w8,#0x0,0x02c2c8f0
02c2c8dc  adrp x0,0x5e5d000
02c2c8e0  ldr x0,[x0, #0xd28]
02c2c8e4  bl 0x029f5a50
02c2c8e8  mov w8,#0x1
02c2c8ec  strb w8,[x21, #0xff7]
02c2c8f0  ldr x0,[x20]
02c2c8f4  ldr w8,[x0, #0xe4]
02c2c8f8  cbnz w8,0x02c2c904
02c2c8fc  bl 0x029f5bd0
02c2c900  ldr x0,[x20]
02c2c904  ldr x0,[x0, #0xb8]
02c2c908  mov x1,x19
02c2c90c  str x19,[x0, #0x10]!
02c2c910  ldp x20,x19,[sp, #0x10]
02c2c914  ldp x30,x21,[sp], #0x20
02c2c918  b 0x029f59f4
