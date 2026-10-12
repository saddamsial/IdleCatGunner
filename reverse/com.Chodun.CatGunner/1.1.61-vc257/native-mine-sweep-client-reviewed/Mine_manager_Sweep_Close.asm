02c4a4ac  str x30,[sp, #-0x20]!
02c4a4b0  stp x20,x19,[sp, #0x10]
02c4a4b4  adrp x20,0x625c000
02c4a4b8  mov x19,x0
02c4a4bc  ldrb w8,[x20, #0x117]
02c4a4c0  tbnz w8,#0x0,0x02c4a4f0
02c4a4c4  adrp x0,0x5e5d000
02c4a4c8  ldr x0,[x0, #0x910]
02c4a4cc  bl 0x029f5a50
02c4a4d0  adrp x0,0x5e59000
02c4a4d4  ldr x0,[x0, #0x1c0]
02c4a4d8  bl 0x029f5a50
02c4a4dc  adrp x0,0x5e5d000
02c4a4e0  ldr x0,[x0, #0x920]
02c4a4e4  bl 0x029f5a50
02c4a4e8  mov w8,#0x1
02c4a4ec  strb w8,[x20, #0x117]
02c4a4f0  ldr x0,[x19, #0xd8]
02c4a4f4  strb wzr,[x19, #0x108]
02c4a4f8  cbz x0,0x02c4a5a8
02c4a4fc  mov w1,wzr
02c4a500  mov x2,xzr
02c4a504  bl 0x057dff3c
02c4a508  ldrb w8,[x19, #0x6a]
02c4a50c  cbnz w8,0x02c4a59c
02c4a510  adrp x8,0x5e5d000
02c4a514  ldr x8,[x8, #0x920]
02c4a518  ldr x0,[x8]
02c4a51c  ldr w8,[x0, #0xe4]
02c4a520  cbnz w8,0x02c4a528
02c4a524  bl 0x029f5bd0
02c4a528  mov x0,xzr
02c4a52c  bl 0x02c92704
02c4a530  tbnz w0,#0x0,0x02c4a59c
02c4a534  adrp x20,0x5e5d000
02c4a538  adrp x8,0x5e59000
02c4a53c  ldr x20,[x20, #0x910]
02c4a540  ldr x8,[x8, #0x1c0]
02c4a544  ldr x9,[x20]
02c4a548  ldr x0,[x8]
02c4a54c  ldr x8,[x9, #0xb8]
02c4a550  ldr w9,[x0, #0xe4]
02c4a554  ldr x19,[x8]
02c4a558  cbnz w9,0x02c4a560
02c4a55c  bl 0x029f5bd0
02c4a560  mov x0,x19
02c4a564  mov x1,xzr
02c4a568  mov x2,xzr
02c4a56c  bl 0x057dfa70
02c4a570  tbz w0,#0x0,0x02c4a59c
02c4a574  ldr x8,[x20]
02c4a578  ldr x8,[x8, #0xb8]
02c4a57c  ldr x0,[x8]
02c4a580  cbz x0,0x02c4a5a8
02c4a584  ldp x20,x19,[sp, #0x10]
02c4a588  mov w1,#0x1
02c4a58c  mov x2,xzr
02c4a590  mov x3,xzr
02c4a594  ldr x30,[sp], #0x20
02c4a598  b 0x02b8ddb4
02c4a59c  ldp x20,x19,[sp, #0x10]
02c4a5a0  ldr x30,[sp], #0x20
02c4a5a4  ret
02c4a5a8  bl 0x029f5cfc
