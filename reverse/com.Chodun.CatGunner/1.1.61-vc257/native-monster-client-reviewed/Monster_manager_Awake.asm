02c4d4c4  str x30,[sp, #-0x30]!
02c4d4c8  stp x22,x21,[sp, #0x10]
02c4d4cc  stp x20,x19,[sp, #0x20]
02c4d4d0  adrp x21,0x625c000
02c4d4d4  adrp x20,0x5e5d000
02c4d4d8  mov x19,x0
02c4d4dc  ldrb w8,[x21, #0x136]
02c4d4e0  ldr x20,[x20, #0xd58]
02c4d4e4  tbnz w8,#0x0,0x02c4d514
02c4d4e8  adrp x0,0x5e63000
02c4d4ec  ldr x0,[x0, #0x4c8]
02c4d4f0  bl 0x029f5a50
02c4d4f4  adrp x0,0x5e63000
02c4d4f8  ldr x0,[x0, #0x4d0]
02c4d4fc  bl 0x029f5a50
02c4d500  adrp x0,0x5e5d000
02c4d504  ldr x0,[x0, #0xd58]
02c4d508  bl 0x029f5a50
02c4d50c  mov w8,#0x1
02c4d510  strb w8,[x21, #0x136]
02c4d514  ldr x0,[x20]
02c4d518  adrp x22,0x5e63000
02c4d51c  adrp x21,0x5e63000
02c4d520  ldr x22,[x22, #0x4d0]
02c4d524  ldr w8,[x0, #0xe4]
02c4d528  ldr x21,[x21, #0x4c8]
02c4d52c  cbnz w8,0x02c4d538
02c4d530  bl 0x029f5bd0
02c4d534  ldr x0,[x20]
02c4d538  ldr x0,[x0, #0xb8]
02c4d53c  mov x1,x19
02c4d540  str x19,[x0, #0x8]!
02c4d544  bl 0x029f59f4
02c4d548  ldr x0,[x22]
02c4d54c  bl 0x029f5cec
02c4d550  ldr x1,[x21]
02c4d554  mov x20,x0
02c4d558  bl 0x0452c340
02c4d55c  add x0,x19,#0x178
02c4d560  mov x1,x20
02c4d564  str x20,[x19, #0x178]
02c4d568  ldp x20,x19,[sp, #0x20]
02c4d56c  ldp x22,x21,[sp, #0x10]
02c4d570  ldr x30,[sp], #0x30
02c4d574  b 0x029f59f4
