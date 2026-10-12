02cae538  stp x30,x21,[sp, #-0x20]!
02cae53c  stp x20,x19,[sp, #0x10]
02cae540  adrp x20,0x625c000
02cae544  adrp x21,0x5e5b000
02cae548  mov x19,x0
02cae54c  ldrb w8,[x20, #0x52c]
02cae550  ldr x21,[x21, #0xe98]
02cae554  tbnz w8,#0x0,0x02cae56c
02cae558  adrp x0,0x5e5b000
02cae55c  ldr x0,[x0, #0xe98]
02cae560  bl 0x029f5a50
02cae564  mov w8,#0x1
02cae568  strb w8,[x20, #0x52c]
02cae56c  ldr x1,[x21]
02cae570  mov x0,x19
02cae574  bl 0x02fe5f2c
02cae578  str x0,[x19, #0x48]!
02cae57c  mov x1,x0
02cae580  mov x0,x19
02cae584  ldp x20,x19,[sp, #0x10]
02cae588  ldp x30,x21,[sp], #0x20
02cae58c  b 0x029f59f4
