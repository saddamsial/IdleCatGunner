02c2d168  stp x30,x25,[sp, #-0x40]!
02c2d16c  stp x24,x23,[sp, #0x10]
02c2d170  stp x22,x21,[sp, #0x20]
02c2d174  stp x20,x19,[sp, #0x30]
02c2d178  adrp x19,0x625c000
02c2d17c  mov x20,x0
02c2d180  ldrb w8,[x19, #0x4]
02c2d184  tbnz w8,#0x0,0x02c2d1c0
02c2d188  adrp x0,0x5e5d000
02c2d18c  ldr x0,[x0, #0xd28]
02c2d190  bl 0x029f5a50
02c2d194  adrp x0,0x5e59000
02c2d198  ldr x0,[x0, #0x7d0]
02c2d19c  bl 0x029f5a50
02c2d1a0  adrp x0,0x5e5a000
02c2d1a4  ldr x0,[x0, #0x180]
02c2d1a8  bl 0x029f5a50
02c2d1ac  adrp x0,0x5e5d000
02c2d1b0  ldr x0,[x0, #0x3c0]
02c2d1b4  bl 0x029f5a50
02c2d1b8  mov w8,#0x1
02c2d1bc  strb w8,[x19, #0x4]
02c2d1c0  ldr w8,[x20, #0x58]
02c2d1c4  cmp w8,#0x13
02c2d1c8  b.gt 0x02c2d2c4
02c2d1cc  adrp x24,0x5e59000
02c2d1d0  mov x19,x20
02c2d1d4  ldr x24,[x24, #0x7d0]
02c2d1d8  ldr x21,[x19, #0x60]!
02c2d1dc  ldr x0,[x24]
02c2d1e0  ldr w8,[x0, #0xe4]
02c2d1e4  cbnz w8,0x02c2d1ec
02c2d1e8  bl 0x029f5bd0
02c2d1ec  mov x0,x21
02c2d1f0  mov x1,xzr
02c2d1f4  mov x2,xzr
02c2d1f8  bl 0x04833138
02c2d1fc  tbz w0,#0x0,0x02c2d224
02c2d200  adrp x8,0x5e5d000
02c2d204  ldr x8,[x8, #0x3c0]
02c2d208  ldr x0,[x8]
02c2d20c  ldr w8,[x0, #0xe4]
02c2d210  cbnz w8,0x02c2d218
02c2d214  bl 0x029f5bd0
02c2d218  bl 0x02c25b48
02c2d21c  str x0,[x19]
02c2d220  b 0x02c2d2c4
02c2d224  adrp x8,0x5e5d000
02c2d228  ldr x8,[x8, #0xd28]
02c2d22c  ldr x0,[x8]
02c2d230  ldr w8,[x0, #0xe4]
02c2d234  cbnz w8,0x02c2d23c
02c2d238  bl 0x029f5bd0
02c2d23c  bl 0x02c2d114
02c2d240  adrp x25,0x5e5d000
02c2d244  mov x21,x0
02c2d248  ldr x25,[x25, #0x3c0]
02c2d24c  ldr x8,[x25]
02c2d250  ldr w9,[x8, #0xe4]
02c2d254  cbnz w9,0x02c2d260
02c2d258  mov x0,x8
02c2d25c  bl 0x029f5bd0
02c2d260  bl 0x02c25b48
02c2d264  ldr x8,[x24]
02c2d268  ldr x22,[x19]
02c2d26c  mov x23,x0
02c2d270  ldr w9,[x8, #0xe4]
02c2d274  cbnz w9,0x02c2d280
02c2d278  mov x0,x8
02c2d27c  bl 0x029f5bd0
02c2d280  mov x0,x23
02c2d284  mov x1,x22
02c2d288  mov x2,xzr
02c2d28c  bl 0x048330d0
02c2d290  adrp x23,0x5e5a000
02c2d294  mov x22,x0
02c2d298  ldr x23,[x23, #0x180]
02c2d29c  ldr x8,[x23]
02c2d2a0  ldr w9,[x8, #0xe4]
02c2d2a4  cbnz w9,0x02c2d2b0
02c2d2a8  mov x0,x8
02c2d2ac  bl 0x029f5bd0
02c2d2b0  mov x0,x22
02c2d2b4  mov x1,x21
02c2d2b8  mov x2,xzr
02c2d2bc  bl 0x04868dcc
02c2d2c0  tbz w0,#0x0,0x02c2d2d8
02c2d2c4  ldp x20,x19,[sp, #0x30]
02c2d2c8  ldp x22,x21,[sp, #0x20]
02c2d2cc  ldp x24,x23,[sp, #0x10]
02c2d2d0  ldp x30,x25,[sp], #0x40
02c2d2d4  ret
02c2d2d8  ldr x0,[x23]
02c2d2dc  ldr w8,[x0, #0xe4]
02c2d2e0  cbnz w8,0x02c2d2e8
02c2d2e4  bl 0x029f5bd0
02c2d2e8  sdiv x22,x22,x21
02c2d2ec  ldrsw x8,[x20, #0x58]
02c2d2f0  add x8,x22,x8
02c2d2f4  cmp x8,#0x14
02c2d2f8  b.ge 0x02c2d334
02c2d2fc  ldr x0,[x23]
02c2d300  str w8,[x20, #0x58]
02c2d304  ldr w9,[x0, #0xe4]
02c2d308  cbnz w9,0x02c2d310
02c2d30c  bl 0x029f5bd0
02c2d310  ldr x0,[x24]
02c2d314  ldr w8,[x0, #0xe4]
02c2d318  cbnz w8,0x02c2d320
02c2d31c  bl 0x029f5bd0
02c2d320  mul x1,x22,x21
02c2d324  mov x0,x19
02c2d328  mov x2,xzr
02c2d32c  bl 0x0482f6f4
02c2d330  b 0x02c2d21c
02c2d334  ldr x0,[x25]
02c2d338  mov w9,#0x14
02c2d33c  str w9,[x20, #0x58]
02c2d340  b 0x02c2d20c
