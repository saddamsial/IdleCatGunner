02c17544  stp x30,x21,[sp, #-0x20]!
02c17548  stp x20,x19,[sp, #0x10]
02c1754c  adrp x21,0x625b000
02c17550  adrp x20,0x5e5d000
02c17554  adrp x19,0x5e58000
02c17558  ldrb w8,[x21, #0xef9]
02c1755c  ldr x20,[x20, #0xf00]
02c17560  ldr x19,[x19, #0xf08]
02c17564  tbnz w8,#0x0,0x02c17594
02c17568  adrp x0,0x5e58000
02c1756c  ldr x0,[x0, #0xf08]
02c17570  bl 0x029f5a50
02c17574  adrp x0,0x5e5d000
02c17578  ldr x0,[x0, #0xf00]
02c1757c  bl 0x029f5a50
02c17580  adrp x0,0x5e62000
02c17584  ldr x0,[x0, #0x748]
02c17588  bl 0x029f5a50
02c1758c  mov w8,#0x1
02c17590  strb w8,[x21, #0xef9]
02c17594  ldr x8,[x20]
02c17598  ldr x0,[x19]
02c1759c  adrp x19,0x5e62000
02c175a0  ldr x8,[x8, #0xb8]
02c175a4  ldr w9,[x0, #0xe4]
02c175a8  ldr x19,[x19, #0x748]
02c175ac  strb wzr,[x8]
02c175b0  cbnz w9,0x02c175b8
02c175b4  bl 0x029f5bd0
02c175b8  ldr x0,[x19]
02c175bc  ldp x20,x19,[sp, #0x10]
02c175c0  mov x1,xzr
02c175c4  ldp x30,x21,[sp], #0x20
02c175c8  b 0x05799e30
