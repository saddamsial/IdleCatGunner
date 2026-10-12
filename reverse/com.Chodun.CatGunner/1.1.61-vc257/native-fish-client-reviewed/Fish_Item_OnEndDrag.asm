02c624e8  stp d9,d8,[sp, #-0x40]!
02c624ec  stp x30,x23,[sp, #0x10]
02c624f0  stp x22,x21,[sp, #0x20]
02c624f4  stp x20,x19,[sp, #0x30]
02c624f8  adrp x21,0x625c000
02c624fc  mov x20,x1
02c62500  mov x19,x0
02c62504  ldrb w8,[x21, #0x22c]
02c62508  tbnz w8,#0x0,0x02c6252c
02c6250c  adrp x0,0x5e63000
02c62510  ldr x0,[x0, #0x850]
02c62514  bl 0x029f5a50
02c62518  adrp x0,0x5e59000
02c6251c  ldr x0,[x0, #0x1c0]
02c62520  bl 0x029f5a50
02c62524  mov w8,#0x1
02c62528  strb w8,[x21, #0x22c]
02c6252c  ldrb w8,[x19, #0x84]
02c62530  cbz w8,0x02c62664
02c62534  adrp x23,0x5e63000
02c62538  adrp x22,0x5e59000
02c6253c  ldr x23,[x23, #0x850]
02c62540  ldr x22,[x22, #0x1c0]
02c62544  strb wzr,[x19, #0x84]
02c62548  ldr x8,[x23]
02c6254c  ldr x0,[x22]
02c62550  ldr x8,[x8, #0xb8]
02c62554  ldr w9,[x0, #0xe4]
02c62558  ldr x21,[x8]
02c6255c  cbnz w9,0x02c62564
02c62560  bl 0x029f5bd0
02c62564  mov x0,x21
02c62568  mov x1,xzr
02c6256c  mov x2,xzr
02c62570  bl 0x057dfa70
02c62574  tbz w0,#0x0,0x02c625f4
02c62578  cbz x20,0x02c62678
02c6257c  ldr x8,[x23]
02c62580  ldr s8,[x20, #0x104]
02c62584  mov x0,x20
02c62588  ldr s9,[x20, #0x108]
02c6258c  mov x1,xzr
02c62590  ldr x8,[x8, #0xb8]
02c62594  ldr x21,[x8]
02c62598  bl 0x05acda38
02c6259c  cbz x21,0x02c62678
02c625a0  fmov s0,s8
02c625a4  fmov s1,s9
02c625a8  mov x1,x0
02c625ac  mov x0,x21
02c625b0  bl 0x02c60150
02c625b4  tbz w0,#0x0,0x02c625f4
02c625b8  ldr x0,[x19, #0x70]
02c625bc  cbz x0,0x02c625c4
02c625c0  bl 0x02c61910
02c625c4  ldr x8,[x23]
02c625c8  ldr x8,[x8, #0xb8]
02c625cc  ldr x0,[x8]
02c625d0  mov w8,#0x1
02c625d4  strb w8,[x19, #0x49]
02c625d8  cbz x0,0x02c62678
02c625dc  mov x1,x19
02c625e0  ldp x20,x19,[sp, #0x30]
02c625e4  ldp x22,x21,[sp, #0x20]
02c625e8  ldp x30,x23,[sp, #0x10]
02c625ec  ldp d9,d8,[sp], #0x40
02c625f0  b 0x02c601d4
02c625f4  ldr x8,[x23]
02c625f8  ldr x8,[x8, #0xb8]
02c625fc  ldr x0,[x8]
02c62600  cbz x0,0x02c62608
02c62604  bl 0x02c5ffcc
02c62608  mov x0,x19
02c6260c  bl 0x02c613e4
02c62610  ldr x0,[x22]
02c62614  ldr x20,[x19, #0x70]
02c62618  ldr w8,[x0, #0xe4]
02c6261c  cbnz w8,0x02c62624
02c62620  bl 0x029f5bd0
02c62624  mov x0,x20
02c62628  mov x1,xzr
02c6262c  mov x2,xzr
02c62630  bl 0x057dfa70
02c62634  tbz w0,#0x0,0x02c62664
02c62638  ldr x0,[x19, #0x70]
02c6263c  cbz x0,0x02c62678
02c62640  bl 0x02c61910
02c62644  ldr x0,[x19, #0x70]
02c62648  cbz x0,0x02c62678
02c6264c  mov x1,x19
02c62650  ldp x20,x19,[sp, #0x30]
02c62654  ldp x22,x21,[sp, #0x20]
02c62658  ldp x30,x23,[sp, #0x10]
02c6265c  ldp d9,d8,[sp], #0x40
02c62660  b 0x02c6267c
02c62664  ldp x20,x19,[sp, #0x30]
02c62668  ldp x22,x21,[sp, #0x20]
02c6266c  ldp x30,x23,[sp, #0x10]
02c62670  ldp d9,d8,[sp], #0x40
02c62674  ret
02c62678  bl 0x029f5cfc
