02b7f098  stp x30,x21,[sp, #-0x20]!
02b7f09c  stp x20,x19,[sp, #0x10]
02b7f0a0  adrp x21,0x625b000
02b7f0a4  adrp x20,0x5e5d000
02b7f0a8  mov w19,w0
02b7f0ac  ldrb w8,[x21, #0x8bc]
02b7f0b0  ldr x20,[x20, #0x338]
02b7f0b4  tbnz w8,#0x0,0x02b7f0cc
02b7f0b8  adrp x0,0x5e5d000
02b7f0bc  ldr x0,[x0, #0x338]
02b7f0c0  bl 0x029f5a50
02b7f0c4  mov w8,#0x1
02b7f0c8  strb w8,[x21, #0x8bc]
02b7f0cc  ldr x0,[x20]
02b7f0d0  ldr w8,[x0, #0xe4]
02b7f0d4  cbnz w8,0x02b7f0e0
02b7f0d8  bl 0x029f5bd0
02b7f0dc  ldr x0,[x20]
02b7f0e0  ldr x9,[x0, #0xb8]
02b7f0e4  ldr w10,[x9, #0xc0]
02b7f0e8  ldr x8,[x9, #0x20]
02b7f0ec  add w10,w10,w19
02b7f0f0  str w10,[x9, #0xc0]
02b7f0f4  cbz x8,0x02b7f110
02b7f0f8  ldp x20,x19,[sp, #0x10]
02b7f0fc  ldr x0,[x8, #0x40]
02b7f100  ldr x1,[x8, #0x28]
02b7f104  ldr x2,[x8, #0x18]
02b7f108  ldp x30,x21,[sp], #0x20
02b7f10c  br x2
02b7f110  ldp x20,x19,[sp, #0x10]
02b7f114  ldp x30,x21,[sp], #0x20
02b7f118  ret
