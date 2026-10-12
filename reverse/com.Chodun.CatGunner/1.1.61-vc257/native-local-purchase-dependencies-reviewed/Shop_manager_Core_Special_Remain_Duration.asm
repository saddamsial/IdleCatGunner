02c8a488  str x30,[sp, #-0x30]!
02c8a48c  stp x22,x21,[sp, #0x10]
02c8a490  stp x20,x19,[sp, #0x20]
02c8a494  adrp x20,0x625c000
02c8a498  mov w19,w1
02c8a49c  ldrb w8,[x20, #0x42c]
02c8a4a0  tbnz w8,#0x0,0x02c8a4dc
02c8a4a4  adrp x0,0x5e59000
02c8a4a8  ldr x0,[x0, #0x7d0]
02c8a4ac  bl 0x029f5a50
02c8a4b0  adrp x0,0x5e5d000
02c8a4b4  ldr x0,[x0, #0x920]
02c8a4b8  bl 0x029f5a50
02c8a4bc  adrp x0,0x5e5a000
02c8a4c0  ldr x0,[x0, #0x180]
02c8a4c4  bl 0x029f5a50
02c8a4c8  adrp x0,0x5e5d000
02c8a4cc  ldr x0,[x0, #0x3c0]
02c8a4d0  bl 0x029f5a50
02c8a4d4  mov w8,#0x1
02c8a4d8  strb w8,[x20, #0x42c]
02c8a4dc  adrp x21,0x5e5a000
02c8a4e0  cmp w19,#0x6
02c8a4e4  ldr x21,[x21, #0x180]
02c8a4e8  b.eq 0x02c8a650
02c8a4ec  cmp w19,#0x5
02c8a4f0  b.eq 0x02c8a544
02c8a4f4  cmp w19,#0x4
02c8a4f8  b.ne 0x02c8a620
02c8a4fc  adrp x19,0x5e5d000
02c8a500  ldr x19,[x19, #0x920]
02c8a504  ldr x0,[x19]
02c8a508  ldr w8,[x0, #0xe4]
02c8a50c  cbnz w8,0x02c8a518
02c8a510  bl 0x029f5bd0
02c8a514  ldr x0,[x19]
02c8a518  ldr x8,[x21]
02c8a51c  ldr x9,[x0, #0xb8]
02c8a520  ldr w10,[x8, #0xe4]
02c8a524  ldr x19,[x9, #0x10]
02c8a528  cbnz w10,0x02c8a534
02c8a52c  mov x0,x8
02c8a530  bl 0x029f5bd0
02c8a534  fmov d0,0x4038000000000000
02c8a538  mov x0,xzr
02c8a53c  bl 0x048685b4
02c8a540  b 0x02c8a588
02c8a544  adrp x19,0x5e5d000
02c8a548  ldr x19,[x19, #0x920]
02c8a54c  ldr x0,[x19]
02c8a550  ldr w8,[x0, #0xe4]
02c8a554  cbnz w8,0x02c8a560
02c8a558  bl 0x029f5bd0
02c8a55c  ldr x0,[x19]
02c8a560  ldr x8,[x21]
02c8a564  ldr x9,[x0, #0xb8]
02c8a568  ldr w10,[x8, #0xe4]
02c8a56c  ldr x19,[x9, #0x18]
02c8a570  cbnz w10,0x02c8a57c
02c8a574  mov x0,x8
02c8a578  bl 0x029f5bd0
02c8a57c  fmov d0,0x401c000000000000
02c8a580  mov x0,xzr
02c8a584  bl 0x048683c8
02c8a588  adrp x8,0x5e59000
02c8a58c  mov x20,x0
02c8a590  adrp x22,0x5e5d000
02c8a594  ldr x8,[x8, #0x7d0]
02c8a598  ldr x0,[x8]
02c8a59c  ldr w8,[x0, #0xe4]
02c8a5a0  ldr x22,[x22, #0x3c0]
02c8a5a4  cbnz w8,0x02c8a5ac
02c8a5a8  bl 0x029f5bd0
02c8a5ac  mov x0,x19
02c8a5b0  mov x1,x20
02c8a5b4  mov x2,xzr
02c8a5b8  bl 0x04832ed8
02c8a5bc  ldr x8,[x22]
02c8a5c0  mov x19,x0
02c8a5c4  ldr w9,[x8, #0xe4]
02c8a5c8  cbnz w9,0x02c8a5d4
02c8a5cc  mov x0,x8
02c8a5d0  bl 0x029f5bd0
02c8a5d4  mov x0,xzr
02c8a5d8  bl 0x02c25b48
02c8a5dc  mov x1,x0
02c8a5e0  mov x0,x19
02c8a5e4  mov x2,xzr
02c8a5e8  bl 0x048330d0
02c8a5ec  ldr x8,[x21]
02c8a5f0  mov x19,x0
02c8a5f4  ldr w9,[x8, #0xe4]
02c8a5f8  cbnz w9,0x02c8a608
02c8a5fc  mov x0,x8
02c8a600  bl 0x029f5bd0
02c8a604  ldr x8,[x21]
02c8a608  ldr x8,[x8, #0xb8]
02c8a60c  mov x0,x19
02c8a610  mov x2,xzr
02c8a614  ldr x1,[x8]
02c8a618  bl 0x04868dcc
02c8a61c  tbz w0,#0x0,0x02c8a63c
02c8a620  ldr x0,[x21]
02c8a624  ldr w8,[x0, #0xe4]
02c8a628  cbnz w8,0x02c8a634
02c8a62c  bl 0x029f5bd0
02c8a630  ldr x0,[x21]
02c8a634  ldr x8,[x0, #0xb8]
02c8a638  ldr x19,[x8]
02c8a63c  mov x0,x19
02c8a640  ldp x20,x19,[sp, #0x20]
02c8a644  ldp x22,x21,[sp, #0x10]
02c8a648  ldr x30,[sp], #0x30
02c8a64c  ret
02c8a650  adrp x19,0x5e5d000
02c8a654  ldr x19,[x19, #0x920]
02c8a658  ldr x0,[x19]
02c8a65c  ldr w8,[x0, #0xe4]
02c8a660  cbnz w8,0x02c8a66c
02c8a664  bl 0x029f5bd0
02c8a668  ldr x0,[x19]
02c8a66c  ldr x8,[x21]
02c8a670  ldr x9,[x0, #0xb8]
02c8a674  ldr w10,[x8, #0xe4]
02c8a678  ldr x19,[x9, #0x20]
02c8a67c  cbnz w10,0x02c8a57c
02c8a680  b 0x02c8a574
