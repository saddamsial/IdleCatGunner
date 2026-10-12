02c4f99c  stp x30,x21,[sp, #-0x20]!
02c4f9a0  stp x20,x19,[sp, #0x10]
02c4f9a4  adrp x21,0x625c000
02c4f9a8  adrp x20,0x5e5d000
02c4f9ac  mov x19,x0
02c4f9b0  ldrb w8,[x21, #0x148]
02c4f9b4  ldr x20,[x20, #0x338]
02c4f9b8  tbnz w8,#0x0,0x02c4f9d0
02c4f9bc  adrp x0,0x5e5d000
02c4f9c0  ldr x0,[x0, #0x338]
02c4f9c4  bl 0x029f5a50
02c4f9c8  mov w8,#0x1
02c4f9cc  strb w8,[x21, #0x148]
02c4f9d0  ldr x0,[x20]
02c4f9d4  ldr w20,[x19, #0x13c]
02c4f9d8  mov w9,#0x1
02c4f9dc  strb w9,[x19, #0xba]
02c4f9e0  ldr w8,[x0, #0xe4]
02c4f9e4  cbnz w8,0x02c4f9ec
02c4f9e8  bl 0x029f5bd0
02c4f9ec  mov w0,w20
02c4f9f0  mov x1,xzr
02c4f9f4  bl 0x02b7f098
02c4f9f8  mov x0,x19
02c4f9fc  ldp x20,x19,[sp, #0x10]
02c4fa00  ldp x30,x21,[sp], #0x20
02c4fa04  b 0x02c4fa08
