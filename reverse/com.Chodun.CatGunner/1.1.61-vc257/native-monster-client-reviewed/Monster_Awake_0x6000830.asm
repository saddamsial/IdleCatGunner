02c4c4d0  stp x30,x21,[sp, #-0x20]!
02c4c4d4  stp x20,x19,[sp, #0x10]
02c4c4d8  adrp x20,0x625c000
02c4c4dc  adrp x21,0x5e5b000
02c4c4e0  mov x19,x0
02c4c4e4  ldrb w8,[x20, #0x12d]
02c4c4e8  ldr x21,[x21, #0x6f8]
02c4c4ec  tbnz w8,#0x0,0x02c4c504
02c4c4f0  adrp x0,0x5e5b000
02c4c4f4  ldr x0,[x0, #0x6f8]
02c4c4f8  bl 0x029f5a50
02c4c4fc  mov w8,#0x1
02c4c500  strb w8,[x20, #0x12d]
02c4c504  ldr x0,[x21]
02c4c508  bl 0x029f5cec
02c4c50c  mov x1,xzr
02c4c510  mov x20,x0
02c4c514  bl 0x057a81b4
02c4c518  str x20,[x19, #0x40]!
02c4c51c  mov x0,x19
02c4c520  mov x1,x20
02c4c524  ldp x20,x19,[sp, #0x10]
02c4c528  ldp x30,x21,[sp], #0x20
02c4c52c  b 0x029f59f4
