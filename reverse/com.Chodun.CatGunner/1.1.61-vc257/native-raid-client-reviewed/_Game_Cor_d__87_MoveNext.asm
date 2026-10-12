02c5a538  str d8,[sp, #-0x30]!
02c5a53c  stp x30,x21,[sp, #0x10]
02c5a540  stp x20,x19,[sp, #0x20]
02c5a544  adrp x20,0x625c000
02c5a548  mov x19,x0
02c5a54c  ldrb w8,[x20, #0x1d4]
02c5a550  tbnz w8,#0x0,0x02c5a574
02c5a554  adrp x0,0x5e5d000
02c5a558  ldr x0,[x0, #0x338]
02c5a55c  bl 0x029f5a50
02c5a560  adrp x0,0x5e5e000
02c5a564  ldr x0,[x0, #0xb8]
02c5a568  bl 0x029f5a50
02c5a56c  mov w8,#0x1
02c5a570  strb w8,[x20, #0x1d4]
02c5a574  ldr w8,[x19, #0x10]
02c5a578  ldr x20,[x19, #0x20]
02c5a57c  cmp w8,#0x1
02c5a580  b.eq 0x02c5a5dc
02c5a584  cbnz w8,0x02c5a674
02c5a588  adrp x8,0x5e5e000
02c5a58c  mov w9,#0xffffffff
02c5a590  ldr x8,[x8, #0xb8]
02c5a594  str w9,[x19, #0x10]
02c5a598  ldr x0,[x8]
02c5a59c  ldr w8,[x0, #0xe4]
02c5a5a0  cbnz w8,0x02c5a5a8
02c5a5a4  bl 0x029f5bd0
02c5a5a8  mov x0,xzr
02c5a5ac  bl 0x02c90978
02c5a5b0  cbz x20,0x02c5a688
02c5a5b4  mov w8,#0x42700000
02c5a5b8  ldr x0,[x20, #0xa8]
02c5a5bc  fmov s1,w8
02c5a5c0  fadd s0,s0,s1
02c5a5c4  stp s0,s0,[x20, #0x9c]
02c5a5c8  cbz x0,0x02c5a688
02c5a5cc  fmov s1,s0
02c5a5d0  mov x1,xzr
02c5a5d4  bl 0x02c5649c
02c5a5d8  b 0x02c5a5e8
02c5a5dc  mov w8,#0xffffffff
02c5a5e0  str w8,[x19, #0x10]
02c5a5e4  cbz x20,0x02c5a688
02c5a5e8  ldr s8,[x20, #0x9c]
02c5a5ec  fcmp s8,#0.0
02c5a5f0  b.le 0x02c5a660
02c5a5f4  adrp x21,0x5e5d000
02c5a5f8  ldr x21,[x21, #0x338]
02c5a5fc  ldr x0,[x21]
02c5a600  ldr w8,[x0, #0xe4]
02c5a604  cbnz w8,0x02c5a614
02c5a608  bl 0x029f5bd0
02c5a60c  ldr x0,[x21]
02c5a610  ldr s8,[x20, #0x9c]
02c5a614  ldr x8,[x0, #0xb8]
02c5a618  ldrb w8,[x8]
02c5a61c  cbz w8,0x02c5a660
02c5a620  mov x0,xzr
02c5a624  bl 0x057ebabc
02c5a628  fsub s0,s8,s0
02c5a62c  ldr x0,[x20, #0xa8]
02c5a630  str s0,[x20, #0x9c]
02c5a634  cbz x0,0x02c5a688
02c5a638  ldr s1,[x20, #0xa0]
02c5a63c  mov x1,xzr
02c5a640  bl 0x02c5649c
02c5a644  str xzr,[x19, #0x18]!
02c5a648  mov x0,x19
02c5a64c  mov x1,xzr
02c5a650  bl 0x029f59f4
02c5a654  mov w0,#0x1
02c5a658  stur w0,[x19, #-0x8]
02c5a65c  b 0x02c5a678
02c5a660  fcmp s8,#0.0
02c5a664  b.hi 0x02c5a674
02c5a668  mov x0,x20
02c5a66c  mov x1,xzr
02c5a670  bl 0x02c59258
02c5a674  mov w0,wzr
02c5a678  ldp x20,x19,[sp, #0x20]
02c5a67c  ldp x30,x21,[sp, #0x10]
02c5a680  ldr d8,[sp], #0x30
02c5a684  ret
02c5a688  bl 0x029f5cfc
