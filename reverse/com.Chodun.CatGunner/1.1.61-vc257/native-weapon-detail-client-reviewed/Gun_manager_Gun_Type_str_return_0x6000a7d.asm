02c5b2ac  stp x30,x21,[sp, #-0x20]!
02c5b2b0  stp x20,x19,[sp, #0x10]
02c5b2b4  adrp x20,0x625c000
02c5b2b8  adrp x21,0x5e5d000
02c5b2bc  mov w19,w0
02c5b2c0  ldrb w8,[x20, #0x27c]
02c5b2c4  ldr x21,[x21, #0xd40]
02c5b2c8  tbnz w8,#0x0,0x02c5b2e0
02c5b2cc  adrp x0,0x5e5d000
02c5b2d0  ldr x0,[x0, #0xd40]
02c5b2d4  bl 0x029f5a50
02c5b2d8  mov w8,#0x1
02c5b2dc  strb w8,[x20, #0x27c]
02c5b2e0  ldr x8,[x21]
02c5b2e4  ldr x8,[x8, #0xb8]
02c5b2e8  ldr x8,[x8]
02c5b2ec  cbz x8,0x02c5b320
02c5b2f0  ldr x8,[x8, #0x20]
02c5b2f4  cbz x8,0x02c5b320
02c5b2f8  ldr w9,[x8, #0x18]
02c5b2fc  cmp w9,w19
02c5b300  b.ls 0x02c5b324
02c5b304  add x8,x8,w19, SXTW  #0x3
02c5b308  ldr x8,[x8, #0x20]
02c5b30c  cbz x8,0x02c5b320
02c5b310  ldp x20,x19,[sp, #0x10]
02c5b314  ldr w0,[x8, #0x18]
02c5b318  ldp x30,x21,[sp], #0x20
02c5b31c  b 0x02c5c164
02c5b320  bl 0x029f5cfc
02c5b324  bl 0x029f5d04
