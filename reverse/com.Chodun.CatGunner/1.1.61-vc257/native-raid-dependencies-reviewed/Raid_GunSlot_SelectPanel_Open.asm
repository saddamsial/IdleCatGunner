02c5b4e0  stp x30,x21,[sp, #-0x20]!
02c5b4e4  stp x20,x19,[sp, #0x10]
02c5b4e8  adrp x21,0x625c000
02c5b4ec  adrp x20,0x5e5e000
02c5b4f0  mov x19,x0
02c5b4f4  ldrb w8,[x21, #0x1dc]
02c5b4f8  ldr x20,[x20, #0x70]
02c5b4fc  tbnz w8,#0x0,0x02c5b514
02c5b500  adrp x0,0x5e5e000
02c5b504  ldr x0,[x0, #0x70]
02c5b508  bl 0x029f5a50
02c5b50c  mov w8,#0x1
02c5b510  strb w8,[x21, #0x1dc]
02c5b514  ldr x0,[x20]
02c5b518  ldr w8,[x0, #0xe4]
02c5b51c  cbnz w8,0x02c5b528
02c5b520  bl 0x029f5bd0
02c5b524  ldr x0,[x20]
02c5b528  ldr x8,[x0, #0xb8]
02c5b52c  ldr x0,[x8]
02c5b530  cbz x0,0x02c5b548
02c5b534  ldr w1,[x19, #0x20]
02c5b538  ldp x20,x19,[sp, #0x10]
02c5b53c  mov x2,xzr
02c5b540  ldp x30,x21,[sp], #0x20
02c5b544  b 0x02c58694
02c5b548  bl 0x029f5cfc
