02c4a0a0  stp x30,x21,[sp, #-0x20]!
02c4a0a4  stp x20,x19,[sp, #0x10]
02c4a0a8  adrp x20,0x625c000
02c4a0ac  adrp x21,0x5e5e000
02c4a0b0  mov x19,x0
02c4a0b4  ldrb w8,[x20, #0x113]
02c4a0b8  ldr x21,[x21, #0xb8]
02c4a0bc  tbnz w8,#0x0,0x02c4a0d4
02c4a0c0  adrp x0,0x5e5e000
02c4a0c4  ldr x0,[x0, #0xb8]
02c4a0c8  bl 0x029f5a50
02c4a0cc  mov w8,#0x1
02c4a0d0  strb w8,[x20, #0x113]
02c4a0d4  ldr x0,[x21]
02c4a0d8  ldr w8,[x0, #0xe4]
02c4a0dc  cbnz w8,0x02c4a0e4
02c4a0e0  bl 0x029f5bd0
02c4a0e4  mov w0,#0x2
02c4a0e8  mov x1,xzr
02c4a0ec  bl 0x02c9077c
02c4a0f0  tbz w0,#0x0,0x02c4a104
02c4a0f4  ldr w8,[x19, #0x60]
02c4a0f8  cmp w8,#0x0
02c4a0fc  cset w0,gt
02c4a100  b 0x02c4a108
02c4a104  mov w0,wzr
02c4a108  ldp x20,x19,[sp, #0x10]
02c4a10c  ldp x30,x21,[sp], #0x20
02c4a110  ret
