02c14570  stp x30,x21,[sp, #-0x20]!
02c14574  stp x20,x19,[sp, #0x10]
02c14578  adrp x21,0x625b000
02c1457c  adrp x20,0x5e5d000
02c14580  adrp x19,0x5e58000
02c14584  ldrb w8,[x21, #0xeef]
02c14588  ldr x20,[x20, #0xf00]
02c1458c  ldr x19,[x19, #0xf08]
02c14590  tbnz w8,#0x0,0x02c145c0
02c14594  adrp x0,0x5e58000
02c14598  ldr x0,[x0, #0xf08]
02c1459c  bl 0x029f5a50
02c145a0  adrp x0,0x5e5d000
02c145a4  ldr x0,[x0, #0xf00]
02c145a8  bl 0x029f5a50
02c145ac  adrp x0,0x5e62000
02c145b0  ldr x0,[x0, #0x678]
02c145b4  bl 0x029f5a50
02c145b8  mov w8,#0x1
02c145bc  strb w8,[x21, #0xeef]
02c145c0  ldr x8,[x20]
02c145c4  ldr x0,[x19]
02c145c8  adrp x19,0x5e62000
02c145cc  mov w10,#0x1
02c145d0  ldr x8,[x8, #0xb8]
02c145d4  ldr w9,[x0, #0xe4]
02c145d8  ldr x19,[x19, #0x678]
02c145dc  strb w10,[x8]
02c145e0  cbnz w9,0x02c145e8
02c145e4  bl 0x029f5bd0
02c145e8  ldr x0,[x19]
02c145ec  ldp x20,x19,[sp, #0x10]
02c145f0  mov x1,xzr
02c145f4  ldp x30,x21,[sp], #0x20
02c145f8  b 0x05799e30
