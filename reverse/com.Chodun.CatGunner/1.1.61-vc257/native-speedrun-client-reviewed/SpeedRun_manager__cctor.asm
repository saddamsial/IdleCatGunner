02caa7c4  str x30,[sp, #-0x20]!
02caa7c8  stp x20,x19,[sp, #0x10]
02caa7cc  adrp x19,0x625c000
02caa7d0  adrp x20,0x5e5d000
02caa7d4  ldrb w8,[x19, #0x505]
02caa7d8  ldr x20,[x20, #0xd68]
02caa7dc  tbnz w8,#0x0,0x02caa7f4
02caa7e0  adrp x0,0x5e5d000
02caa7e4  ldr x0,[x0, #0xd68]
02caa7e8  bl 0x029f5a50
02caa7ec  mov w8,#0x1
02caa7f0  strb w8,[x19, #0x505]
02caa7f4  ldr x8,[x20]
02caa7f8  ldp x20,x19,[sp, #0x10]
02caa7fc  mov w9,#0x1e
02caa800  ldr x8,[x8, #0xb8]
02caa804  str w9,[x8]
02caa808  ldr x30,[sp], #0x20
02caa80c  ret
