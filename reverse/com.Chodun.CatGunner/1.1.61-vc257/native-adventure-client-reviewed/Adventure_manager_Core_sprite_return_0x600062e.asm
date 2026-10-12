02c2ce84  stp x30,x21,[sp, #-0x20]!
02c2ce88  stp x20,x19,[sp, #0x10]
02c2ce8c  adrp x21,0x625b000
02c2ce90  adrp x20,0x5e5d000
02c2ce94  mov w19,w0
02c2ce98  ldrb w8,[x21, #0xffe]
02c2ce9c  ldr x20,[x20, #0xd28]
02c2cea0  tbnz w8,#0x0,0x02c2ceb8
02c2cea4  adrp x0,0x5e5d000
02c2cea8  ldr x0,[x0, #0xd28]
02c2ceac  bl 0x029f5a50
02c2ceb0  mov w8,#0x1
02c2ceb4  strb w8,[x21, #0xffe]
02c2ceb8  ldr x0,[x20]
02c2cebc  ldr w8,[x0, #0xe4]
02c2cec0  cbnz w8,0x02c2cecc
02c2cec4  bl 0x029f5bd0
02c2cec8  ldr x0,[x20]
02c2cecc  ldr x8,[x0, #0xb8]
02c2ced0  ldr x8,[x8, #0x10]
02c2ced4  cbz x8,0x02c2cf00
02c2ced8  ldr x8,[x8, #0x90]
02c2cedc  cbz x8,0x02c2cf00
02c2cee0  ldr w9,[x8, #0x18]
02c2cee4  cmp w9,w19
02c2cee8  b.ls 0x02c2cf04
02c2ceec  add x8,x8,w19, SXTW  #0x3
02c2cef0  ldp x20,x19,[sp, #0x10]
02c2cef4  ldr x0,[x8, #0x20]
02c2cef8  ldp x30,x21,[sp], #0x20
02c2cefc  ret
02c2cf00  bl 0x029f5cfc
02c2cf04  bl 0x029f5d04
