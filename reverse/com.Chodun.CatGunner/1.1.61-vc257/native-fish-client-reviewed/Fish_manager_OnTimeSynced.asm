02c5d4a0  stp x30,x21,[sp, #-0x20]!
02c5d4a4  stp x20,x19,[sp, #0x10]
02c5d4a8  adrp x21,0x625c000
02c5d4ac  adrp x20,0x5e5d000
02c5d4b0  mov x19,x0
02c5d4b4  ldrb w8,[x21, #0x1f9]
02c5d4b8  ldr x20,[x20, #0x3c0]
02c5d4bc  tbnz w8,#0x0,0x02c5d4d4
02c5d4c0  adrp x0,0x5e5d000
02c5d4c4  ldr x0,[x0, #0x3c0]
02c5d4c8  bl 0x029f5a50
02c5d4cc  mov w8,#0x1
02c5d4d0  strb w8,[x21, #0x1f9]
02c5d4d4  ldr x0,[x20]
02c5d4d8  ldr x20,[x19, #0x70]
02c5d4dc  ldr w8,[x0, #0xe4]
02c5d4e0  cbnz w8,0x02c5d4e8
02c5d4e4  bl 0x029f5bd0
02c5d4e8  mov x0,x20
02c5d4ec  mov x1,xzr
02c5d4f0  bl 0x02c25ed8
02c5d4f4  mov x8,x0
02c5d4f8  mov x0,x19
02c5d4fc  str x8,[x19, #0x70]
02c5d500  ldp x20,x19,[sp, #0x10]
02c5d504  ldp x30,x21,[sp], #0x20
02c5d508  b 0x02c5d50c
