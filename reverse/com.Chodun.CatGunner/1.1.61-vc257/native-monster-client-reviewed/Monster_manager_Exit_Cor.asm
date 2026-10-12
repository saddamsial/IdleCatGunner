02c4e524  stp x30,x21,[sp, #-0x20]!
02c4e528  stp x20,x19,[sp, #0x10]
02c4e52c  adrp x20,0x625c000
02c4e530  adrp x21,0x5e63000
02c4e534  mov x19,x0
02c4e538  ldrb w8,[x20, #0x13f]
02c4e53c  ldr x21,[x21, #0x520]
02c4e540  tbnz w8,#0x0,0x02c4e558
02c4e544  adrp x0,0x5e63000
02c4e548  ldr x0,[x0, #0x520]
02c4e54c  bl 0x029f5a50
02c4e550  mov w8,#0x1
02c4e554  strb w8,[x20, #0x13f]
02c4e558  ldr x0,[x21]
02c4e55c  bl 0x029f5cec
02c4e560  mov x1,xzr
02c4e564  mov x20,x0
02c4e568  bl 0x04893238
02c4e56c  mov x0,x20
02c4e570  mov x1,x19
02c4e574  str wzr,[x20, #0x10]
02c4e578  str x19,[x0, #0x20]!
02c4e57c  bl 0x029f59f4
02c4e580  mov x0,x20
02c4e584  ldp x20,x19,[sp, #0x10]
02c4e588  ldp x30,x21,[sp], #0x20
02c4e58c  ret
