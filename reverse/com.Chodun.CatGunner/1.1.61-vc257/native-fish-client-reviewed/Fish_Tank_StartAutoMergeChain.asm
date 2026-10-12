02c5e45c  str x30,[sp, #-0x30]!
02c5e460  stp x22,x21,[sp, #0x10]
02c5e464  stp x20,x19,[sp, #0x20]
02c5e468  adrp x20,0x625c000
02c5e46c  mov x19,x0
02c5e470  ldrb w8,[x20, #0x23b]
02c5e474  tbnz w8,#0x0,0x02c5e498
02c5e478  adrp x0,0x5e5d000
02c5e47c  ldr x0,[x0, #0xd38]
02c5e480  bl 0x029f5a50
02c5e484  adrp x0,0x5e59000
02c5e488  ldr x0,[x0, #0x1c0]
02c5e48c  bl 0x029f5a50
02c5e490  mov w8,#0x1
02c5e494  strb w8,[x20, #0x23b]
02c5e498  mov x20,x19
02c5e49c  ldr x8,[x20, #0x58]!
02c5e4a0  cbnz x8,0x02c5e554
02c5e4a4  mov x0,x19
02c5e4a8  mov x1,xzr
02c5e4ac  bl 0x057dc1c8
02c5e4b0  cbz x0,0x02c5e564
02c5e4b4  mov x1,xzr
02c5e4b8  bl 0x057e00b4
02c5e4bc  tbz w0,#0x0,0x02c5e554
02c5e4c0  adrp x22,0x5e5d000
02c5e4c4  adrp x8,0x5e59000
02c5e4c8  ldr x22,[x22, #0xd38]
02c5e4cc  ldr x8,[x8, #0x1c0]
02c5e4d0  ldr x9,[x22]
02c5e4d4  ldr x0,[x8]
02c5e4d8  ldr x8,[x9, #0xb8]
02c5e4dc  ldr w9,[x0, #0xe4]
02c5e4e0  ldr x21,[x8]
02c5e4e4  cbnz w9,0x02c5e4ec
02c5e4e8  bl 0x029f5bd0
02c5e4ec  mov x0,x21
02c5e4f0  mov x1,xzr
02c5e4f4  mov x2,xzr
02c5e4f8  bl 0x057e14b4
02c5e4fc  tbnz w0,#0x0,0x02c5e554
02c5e500  ldr x8,[x22]
02c5e504  ldr x8,[x8, #0xb8]
02c5e508  ldr x21,[x8]
02c5e50c  cbz x21,0x02c5e564
02c5e510  bl 0x02c5e1e0
02c5e514  tbz w0,#0x0,0x02c5e554
02c5e518  ldrb w8,[x21, #0xb0]
02c5e51c  cbz w8,0x02c5e554
02c5e520  mov x0,x19
02c5e524  bl 0x02c63d7c
02c5e528  mov x1,x0
02c5e52c  mov x0,x19
02c5e530  mov x2,xzr
02c5e534  bl 0x057e2120
02c5e538  mov x1,x0
02c5e53c  mov x0,x20
02c5e540  str x1,[x19, #0x58]
02c5e544  ldp x20,x19,[sp, #0x20]
02c5e548  ldp x22,x21,[sp, #0x10]
02c5e54c  ldr x30,[sp], #0x30
02c5e550  b 0x029f59f4
02c5e554  ldp x20,x19,[sp, #0x20]
02c5e558  ldp x22,x21,[sp, #0x10]
02c5e55c  ldr x30,[sp], #0x30
02c5e560  ret
02c5e564  bl 0x029f5cfc
