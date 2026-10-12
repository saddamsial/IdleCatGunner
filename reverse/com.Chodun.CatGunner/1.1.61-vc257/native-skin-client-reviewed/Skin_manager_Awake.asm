02ca7500  stp x30,x21,[sp, #-0x20]!
02ca7504  stp x20,x19,[sp, #0x10]
02ca7508  adrp x20,0x625c000
02ca750c  adrp x21,0x5e5d000
02ca7510  mov x19,x0
02ca7514  ldrb w8,[x20, #0x4e1]
02ca7518  ldr x21,[x21, #0x4e0]
02ca751c  tbnz w8,#0x0,0x02ca7534
02ca7520  adrp x0,0x5e5d000
02ca7524  ldr x0,[x0, #0x4e0]
02ca7528  bl 0x029f5a50
02ca752c  mov w8,#0x1
02ca7530  strb w8,[x20, #0x4e1]
02ca7534  ldr x8,[x21]
02ca7538  mov x1,x19
02ca753c  ldr x0,[x8, #0xb8]
02ca7540  str x19,[x0, #0x10]!
02ca7544  ldp x20,x19,[sp, #0x10]
02ca7548  ldp x30,x21,[sp], #0x20
02ca754c  b 0x029f59f4
