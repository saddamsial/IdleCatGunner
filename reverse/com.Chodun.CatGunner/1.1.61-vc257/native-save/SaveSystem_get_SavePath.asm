02c16848  str x30,[sp, #-0x20]!
02c1684c  stp x20,x19,[sp, #0x10]
02c16850  adrp x20,0x625b000
02c16854  adrp x19,0x5e58000
02c16858  ldrb w8,[x20, #0xeed]
02c1685c  ldr x19,[x19, #0xa78]
02c16860  tbnz w8,#0x0,0x02c16884
02c16864  adrp x0,0x5e58000
02c16868  ldr x0,[x0, #0xa78]
02c1686c  bl 0x029f5a50
02c16870  adrp x0,0x5e62000
02c16874  ldr x0,[x0, #0x6d8]
02c16878  bl 0x029f5a50
02c1687c  mov w8,#0x1
02c16880  strb w8,[x20, #0xeed]
02c16884  ldr x0,[x19]
02c16888  adrp x19,0x5e62000
02c1688c  ldr w8,[x0, #0xe4]
02c16890  ldr x19,[x19, #0x6d8]
02c16894  cbnz w8,0x02c1689c
02c16898  bl 0x029f5bd0
02c1689c  mov x0,xzr
02c168a0  bl 0x05791edc
02c168a4  ldr x1,[x19]
02c168a8  ldp x20,x19,[sp, #0x10]
02c168ac  mov x2,xzr
02c168b0  ldr x30,[sp], #0x20
02c168b4  b 0x046b2d44
