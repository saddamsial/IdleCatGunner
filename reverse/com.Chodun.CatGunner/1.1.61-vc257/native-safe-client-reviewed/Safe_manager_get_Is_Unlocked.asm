02c6b498  str x30,[sp, #-0x20]!
02c6b49c  stp x20,x19,[sp, #0x10]
02c6b4a0  adrp x19,0x625c000
02c6b4a4  adrp x20,0x5e5d000
02c6b4a8  ldrb w8,[x19, #0x291]
02c6b4ac  ldr x20,[x20, #0xc20]
02c6b4b0  tbnz w8,#0x0,0x02c6b4d4
02c6b4b4  adrp x0,0x5e59000
02c6b4b8  ldr x0,[x0, #0x1c0]
02c6b4bc  bl 0x029f5a50
02c6b4c0  adrp x0,0x5e5d000
02c6b4c4  ldr x0,[x0, #0xc20]
02c6b4c8  bl 0x029f5a50
02c6b4cc  mov w8,#0x1
02c6b4d0  strb w8,[x19, #0x291]
02c6b4d4  ldr x0,[x20]
02c6b4d8  adrp x19,0x5e59000
02c6b4dc  ldr w8,[x0, #0xe4]
02c6b4e0  ldr x19,[x19, #0x1c0]
02c6b4e4  cbnz w8,0x02c6b4f0
02c6b4e8  bl 0x029f5bd0
02c6b4ec  ldr x0,[x20]
02c6b4f0  ldr x8,[x19]
02c6b4f4  ldr x9,[x0, #0xb8]
02c6b4f8  ldr w10,[x8, #0xe4]
02c6b4fc  ldr x19,[x9, #0x10]
02c6b500  cbnz w10,0x02c6b50c
02c6b504  mov x0,x8
02c6b508  bl 0x029f5bd0
02c6b50c  mov x0,x19
02c6b510  mov x1,xzr
02c6b514  mov x2,xzr
02c6b518  bl 0x057dfa70
02c6b51c  tbz w0,#0x0,0x02c6b550
02c6b520  ldr x0,[x20]
02c6b524  ldr w8,[x0, #0xe4]
02c6b528  cbnz w8,0x02c6b534
02c6b52c  bl 0x029f5bd0
02c6b530  ldr x0,[x20]
02c6b534  ldr x8,[x0, #0xb8]
02c6b538  ldr x8,[x8, #0x10]
02c6b53c  cbz x8,0x02c6b560
02c6b540  ldr w8,[x8, #0x30]
02c6b544  cmp w8,#0x185
02c6b548  cset w0,gt
02c6b54c  b 0x02c6b554
02c6b550  mov w0,wzr
02c6b554  ldp x20,x19,[sp, #0x10]
02c6b558  ldr x30,[sp], #0x20
02c6b55c  ret
02c6b560  bl 0x029f5cfc
