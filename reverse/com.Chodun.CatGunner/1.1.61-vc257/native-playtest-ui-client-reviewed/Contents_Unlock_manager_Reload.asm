02b9e3d4  stp x30,x27,[sp, #-0x50]!
02b9e3d8  stp x26,x25,[sp, #0x10]
02b9e3dc  stp x24,x23,[sp, #0x20]
02b9e3e0  stp x22,x21,[sp, #0x30]
02b9e3e4  stp x20,x19,[sp, #0x40]
02b9e3e8  adrp x20,0x625b000
02b9e3ec  mov x19,x0
02b9e3f0  ldrb w8,[x20, #0x9e8]
02b9e3f4  tbnz w8,#0x0,0x02b9e418
02b9e3f8  adrp x0,0x5e5e000
02b9e3fc  ldr x0,[x0, #0x4d0]
02b9e400  bl 0x029f5a50
02b9e404  adrp x0,0x5e59000
02b9e408  ldr x0,[x0, #0x1c0]
02b9e40c  bl 0x029f5a50
02b9e410  mov w8,#0x1
02b9e414  strb w8,[x20, #0x9e8]
02b9e418  ldr x8,[x19, #0x20]
02b9e41c  cbz x8,0x02b9e56c
02b9e420  adrp x24,0x5e5e000
02b9e424  ldr x24,[x24, #0x4d0]
02b9e428  ldr x0,[x24]
02b9e42c  ldr w8,[x0, #0xe4]
02b9e430  cbnz w8,0x02b9e438
02b9e434  bl 0x029f5bd0
02b9e438  bl 0x02b9e198
02b9e43c  mov w20,w0
02b9e440  bl 0x02b9e240
02b9e444  ldr x8,[x19, #0x20]
02b9e448  cbz x8,0x02b9e568
02b9e44c  adrp x25,0x5e59000
02b9e450  mov w21,w0
02b9e454  mov x26,xzr
02b9e458  ldr x25,[x25, #0x1c0]
02b9e45c  ldr w9,[x8, #0x18]
02b9e460  cmp x26,w9, SXTW 
02b9e464  b.ge 0x02b9e56c
02b9e468  cmp x26,x9
02b9e46c  b.cs 0x02b9e584
02b9e470  add x8,x8,x26, LSL #0x3
02b9e474  ldr x27,[x8, #0x20]
02b9e478  cbz x27,0x02b9e55c
02b9e47c  ldr x0,[x25]
02b9e480  ldr x22,[x27, #0x18]
02b9e484  ldr w8,[x0, #0xe4]
02b9e488  cbnz w8,0x02b9e490
02b9e48c  bl 0x029f5bd0
02b9e490  mov x0,x22
02b9e494  mov x1,xzr
02b9e498  mov x2,xzr
02b9e49c  bl 0x057e14b4
02b9e4a0  tbnz w0,#0x0,0x02b9e55c
02b9e4a4  tbz w20,#0x0,0x02b9e4b8
02b9e4a8  ldr x0,[x27, #0x18]
02b9e4ac  cbz x0,0x02b9e568
02b9e4b0  mov w1,wzr
02b9e4b4  b 0x02b9e554
02b9e4b8  ldr x0,[x24]
02b9e4bc  ldr w22,[x27, #0x10]
02b9e4c0  ldr w8,[x0, #0xe4]
02b9e4c4  cbnz w8,0x02b9e4cc
02b9e4c8  bl 0x029f5bd0
02b9e4cc  mov w0,w22
02b9e4d0  bl 0x02b9e130
02b9e4d4  mov w23,w0
02b9e4d8  tbz w0,#0x0,0x02b9e4e4
02b9e4dc  mov w22,wzr
02b9e4e0  b 0x02b9e508
02b9e4e4  ldr x0,[x24]
02b9e4e8  ldr w22,[x27, #0x10]
02b9e4ec  ldr w8,[x0, #0xe4]
02b9e4f0  cbnz w8,0x02b9e4f8
02b9e4f4  bl 0x029f5bd0
02b9e4f8  mov w0,w22
02b9e4fc  bl 0x02b9dfd4
02b9e500  cmp w0,w21
02b9e504  cset w22,eq
02b9e508  ldr x0,[x27, #0x18]
02b9e50c  cbz x0,0x02b9e568
02b9e510  orr w8,w23,w22
02b9e514  mov x2,xzr
02b9e518  and w1,w8,#0x1
02b9e51c  bl 0x057dff3c
02b9e520  ldr x0,[x25]
02b9e524  ldr x23,[x27, #0x20]
02b9e528  ldr w8,[x0, #0xe4]
02b9e52c  cbnz w8,0x02b9e534
02b9e530  bl 0x029f5bd0
02b9e534  mov x0,x23
02b9e538  mov x1,xzr
02b9e53c  mov x2,xzr
02b9e540  bl 0x057dfa70
02b9e544  tbz w0,#0x0,0x02b9e55c
02b9e548  ldr x0,[x27, #0x20]
02b9e54c  cbz x0,0x02b9e568
02b9e550  mov w1,w22
02b9e554  mov x2,xzr
02b9e558  bl 0x057dff3c
02b9e55c  ldr x8,[x19, #0x20]
02b9e560  add x26,x26,#0x1
02b9e564  cbnz x8,0x02b9e45c
02b9e568  bl 0x029f5cfc
02b9e56c  ldp x20,x19,[sp, #0x40]
02b9e570  ldp x22,x21,[sp, #0x30]
02b9e574  ldp x24,x23,[sp, #0x20]
02b9e578  ldp x26,x25,[sp, #0x10]
02b9e57c  ldp x30,x27,[sp], #0x50
02b9e580  ret
02b9e584  bl 0x029f5d04
