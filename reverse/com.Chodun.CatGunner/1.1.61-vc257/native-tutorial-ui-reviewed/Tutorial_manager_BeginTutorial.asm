02caf460  str x30,[sp, #-0x40]!
02caf464  stp x24,x23,[sp, #0x10]
02caf468  stp x22,x21,[sp, #0x20]
02caf46c  stp x20,x19,[sp, #0x30]
02caf470  adrp x20,0x625c000
02caf474  mov x19,x0
02caf478  ldrb w8,[x20, #0x536]
02caf47c  tbnz w8,#0x0,0x02caf4a0
02caf480  adrp x0,0x5e5e000
02caf484  ldr x0,[x0, #0x4d0]
02caf488  bl 0x029f5a50
02caf48c  adrp x0,0x5e59000
02caf490  ldr x0,[x0, #0x1c0]
02caf494  bl 0x029f5a50
02caf498  mov w8,#0x1
02caf49c  strb w8,[x20, #0x536]
02caf4a0  ldr x22,[x19, #0x20]
02caf4a4  cbz x22,0x02caf634
02caf4a8  ldr x8,[x22, #0x18]
02caf4ac  adrp x21,0x5e59000
02caf4b0  ldr x21,[x21, #0x1c0]
02caf4b4  cmp w8,#0x1
02caf4b8  b.lt 0x02caf51c
02caf4bc  mov x23,xzr
02caf4c0  and x8,x8,#0xffffffff
02caf4c4  add x24,x22,#0x20
02caf4c8  cmp x23,w8, UXTW 
02caf4cc  b.cs 0x02caf630
02caf4d0  ldr x0,[x21]
02caf4d4  ldr x20,[x24, x23, LSL #0x3]
02caf4d8  ldr w8,[x0, #0xe4]
02caf4dc  cbnz w8,0x02caf4e4
02caf4e0  bl 0x029f5bd0
02caf4e4  mov x0,x20
02caf4e8  mov x1,xzr
02caf4ec  mov x2,xzr
02caf4f0  bl 0x057dfa70
02caf4f4  tbz w0,#0x0,0x02caf50c
02caf4f8  cbz x20,0x02caf634
02caf4fc  mov x0,x20
02caf500  mov w1,wzr
02caf504  mov x2,xzr
02caf508  bl 0x057dff3c
02caf50c  ldr w8,[x22, #0x18]
02caf510  add x23,x23,#0x1
02caf514  cmp x23,w8, SXTW 
02caf518  b.lt 0x02caf4c8
02caf51c  ldr x0,[x19, #0x28]
02caf520  cbz x0,0x02caf634
02caf524  mov w1,wzr
02caf528  mov x2,xzr
02caf52c  bl 0x057dff3c
02caf530  ldr x0,[x19, #0x30]
02caf534  cbz x0,0x02caf634
02caf538  mov w1,wzr
02caf53c  mov x2,xzr
02caf540  bl 0x057dff3c
02caf544  ldr x0,[x19, #0x38]
02caf548  cbz x0,0x02caf634
02caf54c  mov w1,wzr
02caf550  mov x2,xzr
02caf554  bl 0x057dff3c
02caf558  ldr x0,[x19, #0x40]
02caf55c  cbz x0,0x02caf634
02caf560  mov x1,xzr
02caf564  bl 0x057dc1c8
02caf568  cbz x0,0x02caf634
02caf56c  mov w1,wzr
02caf570  mov x2,xzr
02caf574  bl 0x057dff3c
02caf578  ldr x0,[x19, #0x48]
02caf57c  cbz x0,0x02caf634
02caf580  mov w1,wzr
02caf584  mov x2,xzr
02caf588  bl 0x057dff3c
02caf58c  ldr x0,[x19, #0x50]
02caf590  cbz x0,0x02caf634
02caf594  adrp x22,0x5e5e000
02caf598  mov w1,wzr
02caf59c  mov x2,xzr
02caf5a0  ldr x22,[x22, #0x4d0]
02caf5a4  bl 0x057dff3c
02caf5a8  ldr x0,[x22]
02caf5ac  ldr w8,[x0, #0xe4]
02caf5b0  cbnz w8,0x02caf5bc
02caf5b4  bl 0x029f5bd0
02caf5b8  ldr x0,[x22]
02caf5bc  ldr x8,[x21]
02caf5c0  ldr x9,[x0, #0xb8]
02caf5c4  ldr w10,[x8, #0xe4]
02caf5c8  ldr x20,[x9]
02caf5cc  cbnz w10,0x02caf5d8
02caf5d0  mov x0,x8
02caf5d4  bl 0x029f5bd0
02caf5d8  mov x0,x20
02caf5dc  mov x1,xzr
02caf5e0  mov x2,xzr
02caf5e4  bl 0x057dfa70
02caf5e8  tbz w0,#0x0,0x02caf614
02caf5ec  ldr x0,[x22]
02caf5f0  ldr w8,[x0, #0xe4]
02caf5f4  cbnz w8,0x02caf600
02caf5f8  bl 0x029f5bd0
02caf5fc  ldr x0,[x22]
02caf600  ldr x8,[x0, #0xb8]
02caf604  ldr x0,[x8]
02caf608  cbz x0,0x02caf634
02caf60c  mov x1,xzr
02caf610  bl 0x02b9e3d4
02caf614  mov x0,x19
02caf618  ldp x20,x19,[sp, #0x30]
02caf61c  ldp x22,x21,[sp, #0x20]
02caf620  mov w1,wzr
02caf624  ldp x24,x23,[sp, #0x10]
02caf628  ldr x30,[sp], #0x40
02caf62c  b 0x02caf65c
02caf630  bl 0x029f5d04
02caf634  bl 0x029f5cfc
