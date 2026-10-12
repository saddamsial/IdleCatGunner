02c8b528  sub sp,sp,#0x40
02c8b52c  stp x30,x23,[sp, #0x10]
02c8b530  stp x22,x21,[sp, #0x20]
02c8b534  stp x20,x19,[sp, #0x30]
02c8b538  adrp x21,0x625c000
02c8b53c  mov w20,w1
02c8b540  mov x19,x0
02c8b544  ldrb w8,[x21, #0x3ac]
02c8b548  tbnz w8,#0x0,0x02c8b5b4
02c8b54c  adrp x0,0x5e62000
02c8b550  ldr x0,[x0, #0x660]
02c8b554  bl 0x029f5a50
02c8b558  adrp x0,0x5e58000
02c8b55c  ldr x0,[x0, #0xf08]
02c8b560  bl 0x029f5a50
02c8b564  adrp x0,0x5e5d000
02c8b568  ldr x0,[x0, #0x338]
02c8b56c  bl 0x029f5a50
02c8b570  adrp x0,0x5e5d000
02c8b574  ldr x0,[x0, #0xd40]
02c8b578  bl 0x029f5a50
02c8b57c  adrp x0,0x5e5e000
02c8b580  ldr x0,[x0, #0x528]
02c8b584  bl 0x029f5a50
02c8b588  adrp x0,0x5e59000
02c8b58c  ldr x0,[x0, #0x1c0]
02c8b590  bl 0x029f5a50
02c8b594  adrp x0,0x5e63000
02c8b598  ldr x0,[x0, #0xf18]
02c8b59c  bl 0x029f5a50
02c8b5a0  adrp x0,0x5e5e000
02c8b5a4  ldr x0,[x0, #0x7a0]
02c8b5a8  bl 0x029f5a50
02c8b5ac  mov w8,#0x1
02c8b5b0  strb w8,[x21, #0x3ac]
02c8b5b4  cmp w20,#0x2
02c8b5b8  b.hi 0x02c8b7ec
02c8b5bc  adrp x22,0x5e62000
02c8b5c0  adrp x23,0x5e5d000
02c8b5c4  mov x0,x19
02c8b5c8  ldr x22,[x22, #0x660]
02c8b5cc  ldr x23,[x23, #0xd40]
02c8b5d0  bl 0x02c8b2d0
02c8b5d4  ldr x0,[x22]
02c8b5d8  ldr w8,[x0, #0xe4]
02c8b5dc  cbnz w8,0x02c8b5e4
02c8b5e0  bl 0x029f5bd0
02c8b5e4  mov w0,w20
02c8b5e8  bl 0x02c8b23c
02c8b5ec  ldr x8,[x23]
02c8b5f0  ldr x8,[x8, #0xb8]
02c8b5f4  ldr x8,[x8]
02c8b5f8  cbz x8,0x02c8b804
02c8b5fc  mov w21,w0
02c8b600  mov x0,x8
02c8b604  mov x2,xzr
02c8b608  mov w1,w21
02c8b60c  bl 0x02c6a570
02c8b610  cmn w0,#0x1
02c8b614  b.eq 0x02c8b73c
02c8b618  ldr x8,[x23]
02c8b61c  ldr x8,[x8, #0xb8]
02c8b620  ldr x0,[x8]
02c8b624  cbz x0,0x02c8b804
02c8b628  mov w1,w21
02c8b62c  mov x2,xzr
02c8b630  bl 0x02c69e40
02c8b634  ldr x8,[x23]
02c8b638  ldr x8,[x8, #0xb8]
02c8b63c  ldr x0,[x8]
02c8b640  cbz x0,0x02c8b804
02c8b644  mov w1,w21
02c8b648  mov x2,xzr
02c8b64c  bl 0x02c68ac8
02c8b650  ldr x0,[x22]
02c8b654  ldr w8,[x0, #0xe4]
02c8b658  cbnz w8,0x02c8b664
02c8b65c  bl 0x029f5bd0
02c8b660  ldr x0,[x22]
02c8b664  ldr x8,[x0, #0xb8]
02c8b668  ldr x8,[x8, #0x10]
02c8b66c  cbz x8,0x02c8b804
02c8b670  ldr w9,[x8, #0x18]
02c8b674  cmp w9,w20
02c8b678  b.ls 0x02c8b808
02c8b67c  adrp x9,0x5e5d000
02c8b680  mov w22,w20
02c8b684  ldr x9,[x9, #0x338]
02c8b688  add x8,x8,x22, LSL #0x2
02c8b68c  ldr x0,[x9]
02c8b690  ldr w21,[x8, #0x20]
02c8b694  ldr w9,[x0, #0xe4]
02c8b698  cbnz w9,0x02c8b6a0
02c8b69c  bl 0x029f5bd0
02c8b6a0  mov w0,w21
02c8b6a4  mov x1,xzr
02c8b6a8  bl 0x02b7f098
02c8b6ac  ldr x8,[x19, #0x20]
02c8b6b0  cbz x8,0x02c8b804
02c8b6b4  ldr w9,[x8, #0x18]
02c8b6b8  cmp w9,w20
02c8b6bc  b.ls 0x02c8b808
02c8b6c0  add x8,x8,x22, LSL #0x2
02c8b6c4  mov x0,xzr
02c8b6c8  ldr w9,[x8, #0x20]
02c8b6cc  add w9,w9,#0x1
02c8b6d0  str w9,[x8, #0x20]
02c8b6d4  bl 0x02c0faf8
02c8b6d8  adrp x8,0x5e59000
02c8b6dc  ldr x8,[x8, #0x1c0]
02c8b6e0  ldr x20,[x19, #0x30]
02c8b6e4  ldr x0,[x8]
02c8b6e8  ldr w8,[x0, #0xe4]
02c8b6ec  cbnz w8,0x02c8b6f4
02c8b6f0  bl 0x029f5bd0
02c8b6f4  mov x0,x20
02c8b6f8  mov x1,xzr
02c8b6fc  mov x2,xzr
02c8b700  bl 0x057dfa70
02c8b704  tbz w0,#0x0,0x02c8b734
02c8b708  ldr x0,[x19, #0x30]
02c8b70c  cbz x0,0x02c8b804
02c8b710  mov x1,xzr
02c8b714  bl 0x057dc1c8
02c8b718  cbz x0,0x02c8b804
02c8b71c  mov x1,xzr
02c8b720  bl 0x057e00b4
02c8b724  tbz w0,#0x0,0x02c8b734
02c8b728  ldr x0,[x19, #0x30]
02c8b72c  cbz x0,0x02c8b804
02c8b730  bl 0x02c8b80c
02c8b734  mov w0,#0x1
02c8b738  b 0x02c8b7f0
02c8b73c  adrp x8,0x5e58000
02c8b740  add x1,sp,#0xc
02c8b744  ldr x8,[x8, #0xa10]
02c8b748  str w20,[sp, #0xc]
02c8b74c  ldr x0,[x8, #0x48]
02c8b750  bl 0x029f5bd8
02c8b754  adrp x8,0x5e63000
02c8b758  mov x1,x0
02c8b75c  mov x2,xzr
02c8b760  ldr x8,[x8, #0xf18]
02c8b764  ldr x8,[x8]
02c8b768  mov x0,x8
02c8b76c  bl 0x046b6c0c
02c8b770  adrp x8,0x5e58000
02c8b774  mov x19,x0
02c8b778  ldr x8,[x8, #0xf08]
02c8b77c  ldr x8,[x8]
02c8b780  ldr w9,[x8, #0xe4]
02c8b784  cbnz w9,0x02c8b790
02c8b788  mov x0,x8
02c8b78c  bl 0x029f5bd0
02c8b790  mov x0,x19
02c8b794  mov x1,xzr
02c8b798  bl 0x0579a8d0
02c8b79c  adrp x8,0x5e5e000
02c8b7a0  ldr x8,[x8, #0x528]
02c8b7a4  ldr x0,[x8]
02c8b7a8  ldr w8,[x0, #0xe4]
02c8b7ac  cbnz w8,0x02c8b7b4
02c8b7b0  bl 0x029f5bd0
02c8b7b4  adrp x8,0x5e5e000
02c8b7b8  mov w1,#0x1
02c8b7bc  mov w2,wzr
02c8b7c0  ldr x8,[x8, #0x7a0]
02c8b7c4  mov w3,#0x1
02c8b7c8  mov w4,wzr
02c8b7cc  mov x5,xzr
02c8b7d0  mov x6,xzr
02c8b7d4  mov w7,#0x1
02c8b7d8  ldr x0,[x8]
02c8b7dc  str xzr,[sp]
02c8b7e0  bl 0x02bccb00
02c8b7e4  mov x1,xzr
02c8b7e8  bl 0x02c1dd54
02c8b7ec  mov w0,wzr
02c8b7f0  ldp x20,x19,[sp, #0x30]
02c8b7f4  ldp x22,x21,[sp, #0x20]
02c8b7f8  ldp x30,x23,[sp, #0x10]
02c8b7fc  add sp,sp,#0x40
02c8b800  ret
02c8b804  bl 0x029f5cfc
02c8b808  bl 0x029f5d04
