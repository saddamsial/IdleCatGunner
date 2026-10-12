02c2f504  str x30,[sp, #-0x30]!
02c2f508  stp x22,x21,[sp, #0x10]
02c2f50c  stp x20,x19,[sp, #0x20]
02c2f510  adrp x21,0x625c000
02c2f514  adrp x22,0x5e5d000
02c2f518  adrp x19,0x5e63000
02c2f51c  adrp x20,0x5e5d000
02c2f520  ldr x22,[x22, #0x790]
02c2f524  ldrb w8,[x21, #0x1d]
02c2f528  ldr x19,[x19, #0x20]
02c2f52c  ldr x20,[x20, #0xd28]
02c2f530  tbnz w8,#0x0,0x02c2f560
02c2f534  adrp x0,0x5e5d000
02c2f538  ldr x0,[x0, #0xd28]
02c2f53c  bl 0x029f5a50
02c2f540  adrp x0,0x5e5d000
02c2f544  ldr x0,[x0, #0x790]
02c2f548  bl 0x029f5a50
02c2f54c  adrp x0,0x5e63000
02c2f550  ldr x0,[x0, #0x20]
02c2f554  bl 0x029f5a50
02c2f558  mov w8,#0x1
02c2f55c  strb w8,[x21, #0x1d]
02c2f560  ldr x0,[x22]
02c2f564  mov w1,#0x5
02c2f568  bl 0x029f5b40
02c2f56c  ldr x1,[x19]
02c2f570  mov x2,xzr
02c2f574  mov x19,x0
02c2f578  bl 0x047779e0
02c2f57c  ldr x8,[x20]
02c2f580  mov x1,x19
02c2f584  ldp x22,x21,[sp, #0x10]
02c2f588  ldr x0,[x8, #0xb8]
02c2f58c  str x19,[x0, #0x8]!
02c2f590  ldp x20,x19,[sp, #0x20]
02c2f594  ldr x30,[sp], #0x30
02c2f598  b 0x029f59f4
