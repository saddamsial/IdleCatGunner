02b9d264  str x30,[sp, #-0x40]!
02b9d268  stp x24,x23,[sp, #0x10]
02b9d26c  stp x22,x21,[sp, #0x20]
02b9d270  stp x20,x19,[sp, #0x30]
02b9d274  adrp x21,0x625b000
02b9d278  mov w20,w1
02b9d27c  mov x19,x0
02b9d280  ldrb w8,[x21, #0xa40]
02b9d284  tbnz w8,#0x0,0x02b9d29c
02b9d288  adrp x0,0x5e5d000
02b9d28c  ldr x0,[x0, #0x540]
02b9d290  bl 0x029f5a50
02b9d294  mov w8,#0x1
02b9d298  strb w8,[x21, #0xa40]
02b9d29c  ldr w8,[x19, #0x48]
02b9d2a0  cmp w8,#0x19
02b9d2a4  b.eq 0x02b9d390
02b9d2a8  ldr w8,[x19, #0x4c]
02b9d2ac  add w8,w8,w20
02b9d2b0  cmp w8,#0x64
02b9d2b4  str w8,[x19, #0x4c]
02b9d2b8  b.lt 0x02b9d390
02b9d2bc  adrp x24,0x5e5d000
02b9d2c0  adrp x20,0x5e58000
02b9d2c4  adrp x21,0x5e5e000
02b9d2c8  adrp x22,0x5e58000
02b9d2cc  ldr x24,[x24, #0x540]
02b9d2d0  ldr x20,[x20, #0xb30]
02b9d2d4  ldr x21,[x21, #0x458]
02b9d2d8  ldr x22,[x22, #0xf08]
02b9d2dc  ldr w9,[x19, #0x48]
02b9d2e0  cmp w9,#0x19
02b9d2e4  b.eq 0x02b9d390
02b9d2e8  ldr x0,[x24]
02b9d2ec  sub w8,w8,#0x64
02b9d2f0  add w23,w9,#0x1
02b9d2f4  stp w23,w8,[x19, #0x48]
02b9d2f8  ldr w10,[x0, #0xe4]
02b9d2fc  cbnz w10,0x02b9d304
02b9d300  bl 0x029f5bd0
02b9d304  mov w0,w23
02b9d308  bl 0x02b9a5fc
02b9d30c  ldr w8,[x19, #0x4c]
02b9d310  cmp w8,#0x63
02b9d314  b.gt 0x02b9d2dc
02b9d318  b 0x02b9d390
02b9d390  mov x0,x19
02b9d394  ldp x20,x19,[sp, #0x30]
02b9d398  ldp x22,x21,[sp, #0x20]
02b9d39c  ldp x24,x23,[sp, #0x10]
02b9d3a0  ldr x30,[sp], #0x40
02b9d3a4  b 0x02ba4028
