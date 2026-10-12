02c7e510  str x30,[sp, #-0x30]!
02c7e514  stp x22,x21,[sp, #0x10]
02c7e518  stp x20,x19,[sp, #0x20]
02c7e51c  adrp x21,0x625c000
02c7e520  adrp x22,0x5e5d000
02c7e524  adrp x20,0x5e59000
02c7e528  ldrb w8,[x21, #0x33a]
02c7e52c  ldr x22,[x22, #0x790]
02c7e530  ldr x20,[x20, #0x50]
02c7e534  mov x19,x0
02c7e538  tbnz w8,#0x0,0x02c7e55c
02c7e53c  adrp x0,0x5e5d000
02c7e540  ldr x0,[x0, #0x790]
02c7e544  bl 0x029f5a50
02c7e548  adrp x0,0x5e59000
02c7e54c  ldr x0,[x0, #0x50]
02c7e550  bl 0x029f5a50
02c7e554  mov w8,#0x1
02c7e558  strb w8,[x21, #0x33a]
02c7e55c  ldr x0,[x22]
02c7e560  mov w1,#0x10
02c7e564  bl 0x029f5b40
02c7e568  mov x1,x0
02c7e56c  mov x0,x19
02c7e570  str x1,[x0, #0x38]!
02c7e574  bl 0x029f59f4
02c7e578  ldr x1,[x20]
02c7e57c  mov w8,#0x1
02c7e580  mov w9,#0x6
02c7e584  mov x0,x19
02c7e588  strb w8,[x19, #0x60]
02c7e58c  str w9,[x19, #0x64]
02c7e590  str x1,[x0, #0xb8]!
02c7e594  bl 0x029f59f4
02c7e598  mov x0,x19
02c7e59c  ldp x20,x19,[sp, #0x20]
02c7e5a0  ldp x22,x21,[sp, #0x10]
02c7e5a4  mov x1,xzr
02c7e5a8  ldr x30,[sp], #0x30
02c7e5ac  b 0x057e2ee0
