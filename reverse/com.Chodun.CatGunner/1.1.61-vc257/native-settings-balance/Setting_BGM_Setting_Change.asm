02c20374  str x30,[sp, #-0x20]!
02c20378  stp x20,x19,[sp, #0x10]
02c2037c  adrp x20,0x625b000
02c20380  ldrb w8,[x0, #0x20]
02c20384  mov x19,x0
02c20388  ldrb w9,[x20, #0xa57]
02c2038c  eor w8,w8,#0x1
02c20390  strb w8,[x0, #0x20]
02c20394  cbnz w9,0x02c203ac
02c20398  adrp x0,0x5e5d000
02c2039c  ldr x0,[x0, #0xd70]
02c203a0  bl 0x029f5a50
02c203a4  mov w8,#0x1
02c203a8  strb w8,[x20, #0xa57]
02c203ac  adrp x8,0x5e5d000
02c203b0  ldr x8,[x8, #0xd70]
02c203b4  ldr x8,[x8]
02c203b8  ldr x8,[x8, #0xb8]
02c203bc  ldr x0,[x8]
02c203c0  cbz x0,0x02c203dc
02c203c4  ldrb w1,[x19, #0x20]
02c203c8  bl 0x02c2029c
02c203cc  mov x0,x19
02c203d0  ldp x20,x19,[sp, #0x10]
02c203d4  ldr x30,[sp], #0x20
02c203d8  b 0x02c200b4
02c203dc  bl 0x029f5cfc
