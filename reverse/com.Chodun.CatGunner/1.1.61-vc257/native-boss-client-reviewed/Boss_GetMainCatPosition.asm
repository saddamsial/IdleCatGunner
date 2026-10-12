02c45270  str x30,[sp, #-0x20]!
02c45274  stp x20,x19,[sp, #0x10]
02c45278  adrp x19,0x625c000
02c4527c  adrp x20,0x5e5d000
02c45280  ldrb w8,[x19, #0xd5]
02c45284  ldr x20,[x20, #0x5b0]
02c45288  tbnz w8,#0x0,0x02c452a0
02c4528c  adrp x0,0x5e5d000
02c45290  ldr x0,[x0, #0x5b0]
02c45294  bl 0x029f5a50
02c45298  mov w8,#0x1
02c4529c  strb w8,[x19, #0xd5]
02c452a0  ldr x8,[x20]
02c452a4  ldr x8,[x8, #0xb8]
02c452a8  ldr x8,[x8, #0x8]
02c452ac  cbz x8,0x02c452e4
02c452b0  ldr x8,[x8, #0x20]
02c452b4  cbz x8,0x02c452e4
02c452b8  ldr w9,[x8, #0x18]
02c452bc  cbz w9,0x02c452e8
02c452c0  ldr x0,[x8, #0x20]
02c452c4  cbz x0,0x02c452e4
02c452c8  mov x1,xzr
02c452cc  bl 0x057dc0f8
02c452d0  cbz x0,0x02c452e4
02c452d4  ldp x20,x19,[sp, #0x10]
02c452d8  mov x1,xzr
02c452dc  ldr x30,[sp], #0x20
02c452e0  b 0x057eed98
02c452e4  bl 0x029f5cfc
02c452e8  bl 0x029f5d04
