02c4c0fc  str x30,[sp, #-0x20]!
02c4c100  stp x20,x19,[sp, #0x10]
02c4c104  adrp x19,0x625c000
02c4c108  adrp x20,0x5e5d000
02c4c10c  ldrb w8,[x19, #0x129]
02c4c110  ldr x20,[x20, #0xd48]
02c4c114  tbnz w8,#0x0,0x02c4c12c
02c4c118  adrp x0,0x5e5d000
02c4c11c  ldr x0,[x0, #0xd48]
02c4c120  bl 0x029f5a50
02c4c124  mov w8,#0x1
02c4c128  strb w8,[x19, #0x129]
02c4c12c  ldr x8,[x20]
02c4c130  ldr x8,[x8, #0xb8]
02c4c134  ldr x0,[x8]
02c4c138  cbz x0,0x02c4c148
02c4c13c  ldp x20,x19,[sp, #0x10]
02c4c140  ldr x30,[sp], #0x20
02c4c144  b 0x02c4a114
02c4c148  bl 0x029f5cfc
