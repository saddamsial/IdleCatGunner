02c3a3a8  str d8,[sp, #-0x30]!
02c3a3ac  stp x30,x21,[sp, #0x10]
02c3a3b0  stp x20,x19,[sp, #0x20]
02c3a3b4  adrp x20,0x625c000
02c3a3b8  mov x19,x0
02c3a3bc  ldrb w8,[x20, #0x8e]
02c3a3c0  tbnz w8,#0x0,0x02c3a3f0
02c3a3c4  adrp x0,0x5e5d000
02c3a3c8  ldr x0,[x0, #0x338]
02c3a3cc  bl 0x029f5a50
02c3a3d0  adrp x0,0x5e59000
02c3a3d4  ldr x0,[x0, #0x1c0]
02c3a3d8  bl 0x029f5a50
02c3a3dc  adrp x0,0x5e5d000
02c3a3e0  ldr x0,[x0, #0x368]
02c3a3e4  bl 0x029f5a50
02c3a3e8  mov w8,#0x1
02c3a3ec  strb w8,[x20, #0x8e]
02c3a3f0  adrp x20,0x5e5d000
02c3a3f4  ldrb w8,[x19, #0x1b0]
02c3a3f8  ldr x20,[x20, #0x338]
02c3a3fc  cbz w8,0x02c3a42c
02c3a400  ldr x0,[x20]
02c3a404  ldr w8,[x0, #0xe4]
02c3a408  cbnz w8,0x02c3a414
02c3a40c  bl 0x029f5bd0
02c3a410  ldr x0,[x20]
02c3a414  ldr x8,[x0, #0xb8]
02c3a418  ldrb w8,[x8]
02c3a41c  cbz w8,0x02c3a4b8
02c3a420  mov x0,x19
02c3a424  bl 0x02c3dba0
02c3a428  b 0x02c3a528
02c3a42c  mov x0,x19
02c3a430  bl 0x02c3a678
02c3a434  mov x0,x19
02c3a438  bl 0x02c3a8d0
02c3a43c  ldr x0,[x20]
02c3a440  ldr w8,[x0, #0xe4]
02c3a444  cbnz w8,0x02c3a450
02c3a448  bl 0x029f5bd0
02c3a44c  ldr x0,[x20]
02c3a450  ldr x8,[x0, #0xb8]
02c3a454  ldrb w8,[x8]
02c3a458  cbz w8,0x02c3a510
02c3a45c  mov x0,x19
02c3a460  bl 0x02c3ba74
02c3a464  mov x0,x19
02c3a468  bl 0x02c3bad0
02c3a46c  mov x0,x19
02c3a470  bl 0x02c3bf38
02c3a474  adrp x21,0x5e59000
02c3a478  ldr x21,[x21, #0x1c0]
02c3a47c  ldr x20,[x19, #0x28]
02c3a480  ldr x0,[x21]
02c3a484  ldr w8,[x0, #0xe4]
02c3a488  cbnz w8,0x02c3a490
02c3a48c  bl 0x029f5bd0
02c3a490  mov x0,x20
02c3a494  mov x1,xzr
02c3a498  mov x2,xzr
02c3a49c  bl 0x057dfa70
02c3a4a0  tbz w0,#0x0,0x02c3a544
02c3a4a4  ldr x0,[x19, #0x28]
02c3a4a8  cbz x0,0x02c3a674
02c3a4ac  mov x1,xzr
02c3a4b0  bl 0x02b87424
02c3a4b4  b 0x02c3a578
02c3a4b8  mov x0,x19
02c3a4bc  bl 0x02c3aeb4
02c3a4c0  mov x0,x19
02c3a4c4  bl 0x02c3d9a0
02c3a4c8  adrp x20,0x625b000
02c3a4cc  ldrb w8,[x20, #0x26f]
02c3a4d0  cbnz w8,0x02c3a4e8
02c3a4d4  adrp x0,0x5e58000
02c3a4d8  ldr x0,[x0, #0xbf8]
02c3a4dc  bl 0x029f5a50
02c3a4e0  mov w8,#0x1
02c3a4e4  strb w8,[x20, #0x26f]
02c3a4e8  adrp x8,0x5e58000
02c3a4ec  add x9,x19,#0x20c
02c3a4f0  ldr x8,[x8, #0xbf8]
02c3a4f4  ldr x8,[x8]
02c3a4f8  ldr x8,[x8, #0xb8]
02c3a4fc  ldr d0,[x8]
02c3a500  ldr s1,[x8, #0x8]
02c3a504  str d0,[x9]
02c3a508  str s1,[x19, #0x214]
02c3a50c  b 0x02c3a528
02c3a510  mov x0,x19
02c3a514  bl 0x02c3aa78
02c3a518  mov x0,x19
02c3a51c  bl 0x02c3aeb4
02c3a520  mov x0,x19
02c3a524  bl 0x02c3af70
02c3a528  mov x0,x19
02c3a52c  bl 0x02c3b00c
02c3a530  mov x0,x19
02c3a534  ldp x20,x19,[sp, #0x20]
02c3a538  ldp x30,x21,[sp, #0x10]
02c3a53c  ldr d8,[sp], #0x30
02c3a540  b 0x02c3b64c
02c3a544  adrp x20,0x625b000
02c3a548  ldrb w8,[x20, #0x271]
02c3a54c  cbnz w8,0x02c3a564
02c3a550  adrp x0,0x5e59000
02c3a554  ldr x0,[x0, #0x608]
02c3a558  bl 0x029f5a50
02c3a55c  mov w8,#0x1
02c3a560  strb w8,[x20, #0x271]
02c3a564  adrp x8,0x5e59000
02c3a568  ldr x8,[x8, #0x608]
02c3a56c  ldr x8,[x8]
02c3a570  ldr x8,[x8, #0xb8]
02c3a574  ldp s0,s1,[x8]
02c3a578  ldrb w8,[x19, #0x14c]
02c3a57c  cbz w8,0x02c3a5a8
02c3a580  fmul s0,s0,s0
02c3a584  fmul s1,s1,s1
02c3a588  adrp x8,0x116c000
02c3a58c  fadd s0,s0,s1
02c3a590  ldr s1,[x8, #0x200]
02c3a594  fcmp s0,s1
02c3a598  b.pl 0x02c3a5a8
02c3a59c  mov x0,x19
02c3a5a0  bl 0x02c3c100
02c3a5a4  b 0x02c3a5b8
02c3a5a8  mov x0,x19
02c3a5ac  bl 0x02c3af70
02c3a5b0  mov x0,x19
02c3a5b4  bl 0x02c3aa78
02c3a5b8  adrp x8,0x5e5d000
02c3a5bc  ldr x8,[x8, #0x368]
02c3a5c0  ldr x8,[x8]
02c3a5c4  ldr x8,[x8, #0xb8]
02c3a5c8  ldr x8,[x8]
02c3a5cc  cbz x8,0x02c3a674
02c3a5d0  ldr w8,[x8, #0x20]
02c3a5d4  cmp w8,#0x4
02c3a5d8  b.ne 0x02c3a5e4
02c3a5dc  mov x0,x19
02c3a5e0  bl 0x02c3d234
02c3a5e4  mov x0,x19
02c3a5e8  bl 0x02c3b00c
02c3a5ec  mov x0,x19
02c3a5f0  bl 0x02c3b64c
02c3a5f4  ldr s8,[x19, #0xac]
02c3a5f8  mov x0,xzr
02c3a5fc  bl 0x057ebabc
02c3a600  fadd s0,s8,s0
02c3a604  ldr s1,[x19, #0xb0]
02c3a608  fcmp s0,s1
02c3a60c  str s0,[x19, #0xac]
02c3a610  b.lt 0x02c3a664
02c3a614  ldr x0,[x21]
02c3a618  ldr x20,[x19, #0x1e0]
02c3a61c  ldr w8,[x0, #0xe4]
02c3a620  cbnz w8,0x02c3a628
02c3a624  bl 0x029f5bd0
02c3a628  mov x0,x20
02c3a62c  mov x1,xzr
02c3a630  mov x2,xzr
02c3a634  bl 0x057dfa70
02c3a638  tbz w0,#0x0,0x02c3a664
02c3a63c  ldr x1,[x19, #0x1e0]
02c3a640  mov x0,x19
02c3a644  str wzr,[x19, #0xac]
02c3a648  bl 0x02c3d4ac
02c3a64c  tbnz w0,#0x0,0x02c3a664
02c3a650  ldr s8,[x19, #0xb0]
02c3a654  mov x0,xzr
02c3a658  bl 0x057ebabc
02c3a65c  fsub s0,s8,s0
02c3a660  str s0,[x19, #0xac]
02c3a664  ldp x20,x19,[sp, #0x20]
02c3a668  ldp x30,x21,[sp, #0x10]
02c3a66c  ldr d8,[sp], #0x30
02c3a670  ret
02c3a674  bl 0x029f5cfc
