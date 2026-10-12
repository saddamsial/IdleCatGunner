02c5d210  str x30,[sp, #-0x40]!
02c5d214  stp x24,x23,[sp, #0x10]
02c5d218  stp x22,x21,[sp, #0x20]
02c5d21c  stp x20,x19,[sp, #0x30]
02c5d220  adrp x23,0x625c000
02c5d224  adrp x21,0x5e59000
02c5d228  adrp x20,0x5e63000
02c5d22c  adrp x22,0x5e5e000
02c5d230  ldr x21,[x21, #0x288]
02c5d234  ldrb w8,[x23, #0x1f7]
02c5d238  ldr x20,[x20, #0x7e8]
02c5d23c  ldr x22,[x22, #0xb8]
02c5d240  mov x19,x0
02c5d244  tbnz w8,#0x0,0x02c5d298
02c5d248  adrp x0,0x5e59000
02c5d24c  ldr x0,[x0, #0x288]
02c5d250  bl 0x029f5a50
02c5d254  adrp x0,0x5e63000
02c5d258  ldr x0,[x0, #0x7e8]
02c5d25c  bl 0x029f5a50
02c5d260  adrp x0,0x5e63000
02c5d264  ldr x0,[x0, #0x7f0]
02c5d268  bl 0x029f5a50
02c5d26c  adrp x0,0x5e63000
02c5d270  ldr x0,[x0, #0x7f8]
02c5d274  bl 0x029f5a50
02c5d278  adrp x0,0x5e5e000
02c5d27c  ldr x0,[x0, #0xb8]
02c5d280  bl 0x029f5a50
02c5d284  adrp x0,0x5e5d000
02c5d288  ldr x0,[x0, #0x3c0]
02c5d28c  bl 0x029f5a50
02c5d290  mov w8,#0x1
02c5d294  strb w8,[x23, #0x1f7]
02c5d298  adrp x24,0x5e63000
02c5d29c  adrp x23,0x5e5d000
02c5d2a0  ldr x24,[x24, #0x7f8]
02c5d2a4  ldr x23,[x23, #0x3c0]
02c5d2a8  ldr x0,[x21]
02c5d2ac  bl 0x029f5cec
02c5d2b0  ldr x2,[x20]
02c5d2b4  mov x1,x19
02c5d2b8  mov x3,xzr
02c5d2bc  mov x20,x0
02c5d2c0  bl 0x047b3618
02c5d2c4  ldr x0,[x22]
02c5d2c8  ldr w8,[x0, #0xe4]
02c5d2cc  cbnz w8,0x02c5d2d4
02c5d2d0  bl 0x029f5bd0
02c5d2d4  adrp x22,0x5e63000
02c5d2d8  mov x0,x20
02c5d2dc  mov x1,xzr
02c5d2e0  ldr x22,[x22, #0x7f0]
02c5d2e4  bl 0x02c909dc
02c5d2e8  ldr x0,[x21]
02c5d2ec  bl 0x029f5cec
02c5d2f0  ldr x2,[x24]
02c5d2f4  mov x1,x19
02c5d2f8  mov x3,xzr
02c5d2fc  mov x20,x0
02c5d300  bl 0x047b3618
02c5d304  ldr x0,[x23]
02c5d308  ldr w8,[x0, #0xe4]
02c5d30c  cbnz w8,0x02c5d314
02c5d310  bl 0x029f5bd0
02c5d314  mov x0,x20
02c5d318  mov x1,xzr
02c5d31c  bl 0x02c22f94
02c5d320  ldr x0,[x21]
02c5d324  bl 0x029f5cec
02c5d328  ldr x2,[x22]
02c5d32c  mov x1,x19
02c5d330  mov x3,xzr
02c5d334  mov x20,x0
02c5d338  bl 0x047b3618
02c5d33c  mov x0,x20
02c5d340  ldp x20,x19,[sp, #0x30]
02c5d344  ldp x22,x21,[sp, #0x20]
02c5d348  mov x1,xzr
02c5d34c  ldp x24,x23,[sp, #0x10]
02c5d350  ldr x30,[sp], #0x40
02c5d354  b 0x02c234ec
