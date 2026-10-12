02c2e0ac  str x30,[sp, #-0x30]!
02c2e0b0  stp x22,x21,[sp, #0x10]
02c2e0b4  stp x20,x19,[sp, #0x20]
02c2e0b8  adrp x22,0x625c000
02c2e0bc  adrp x21,0x5e5d000
02c2e0c0  mov w19,w2
02c2e0c4  ldrb w8,[x22, #0xd]
02c2e0c8  ldr x21,[x21, #0x4d0]
02c2e0cc  mov w20,w1
02c2e0d0  tbnz w8,#0x0,0x02c2e0e8
02c2e0d4  adrp x0,0x5e5d000
02c2e0d8  ldr x0,[x0, #0x4d0]
02c2e0dc  bl 0x029f5a50
02c2e0e0  mov w8,#0x1
02c2e0e4  strb w8,[x22, #0xd]
02c2e0e8  ldr x0,[x21]
02c2e0ec  ldr w8,[x0, #0xe4]
02c2e0f0  cbnz w8,0x02c2e0fc
02c2e0f4  bl 0x029f5bd0
02c2e0f8  ldr x0,[x21]
02c2e0fc  ldr x8,[x0, #0xb8]
02c2e100  ldr x0,[x8, #0x28]
02c2e104  cbz x0,0x02c2e124
02c2e108  mov w8,#0x64
02c2e10c  ldp x22,x21,[sp, #0x10]
02c2e110  madd w1,w20,w8,w19
02c2e114  ldp x20,x19,[sp, #0x20]
02c2e118  mov x2,xzr
02c2e11c  ldr x30,[sp], #0x30
02c2e120  b 0x02c7cf74
02c2e124  bl 0x029f5cfc
