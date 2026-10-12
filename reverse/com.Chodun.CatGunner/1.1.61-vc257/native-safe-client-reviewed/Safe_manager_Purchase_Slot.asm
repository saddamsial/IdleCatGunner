02c6c408  stp x30,x21,[sp, #-0x20]!
02c6c40c  stp x20,x19,[sp, #0x10]
02c6c410  adrp x21,0x625c000
02c6c414  mov w20,w1
02c6c418  mov x19,x0
02c6c41c  ldrb w8,[x21, #0x295]
02c6c420  tbnz w8,#0x0,0x02c6c438
02c6c424  adrp x0,0x5e5d000
02c6c428  ldr x0,[x0, #0x338]
02c6c42c  bl 0x029f5a50
02c6c430  mov w8,#0x1
02c6c434  strb w8,[x21, #0x295]
02c6c438  ldr w8,[x19, #0x28]
02c6c43c  mov w10,#0x10
02c6c440  add w9,w8,#0x6
02c6c444  cmp w9,#0x10
02c6c448  csel w9,w9,w10,lt
02c6c44c  cmp w20,#0xf
02c6c450  b.gt 0x02c6c4f4
02c6c454  bic w9,w9,w9, ASR #0x1f
02c6c458  cmp w9,w20
02c6c45c  b.ne 0x02c6c4f4
02c6c460  adrp x21,0x5e5d000
02c6c464  mov w9,#0x32
02c6c468  mov w10,#0x32
02c6c46c  ldr x21,[x21, #0x338]
02c6c470  madd w20,w8,w9,w10
02c6c474  ldr x0,[x21]
02c6c478  ldr w8,[x0, #0xe4]
02c6c47c  cbnz w8,0x02c6c488
02c6c480  bl 0x029f5bd0
02c6c484  ldr x0,[x21]
02c6c488  ldr x8,[x0, #0xb8]
02c6c48c  mov x2,xzr
02c6c490  ldp x0,x1,[x8, #0x90]
02c6c494  bl 0x02b1e644
02c6c498  cmp w0,w20
02c6c49c  b.ge 0x02c6c500
02c6c4a0  adrp x19,0x625b000
02c6c4a4  ldrb w8,[x19, #0xa57]
02c6c4a8  cbnz w8,0x02c6c4c0
02c6c4ac  adrp x0,0x5e5d000
02c6c4b0  ldr x0,[x0, #0xd70]
02c6c4b4  bl 0x029f5a50
02c6c4b8  mov w8,#0x1
02c6c4bc  strb w8,[x19, #0xa57]
02c6c4c0  adrp x8,0x5e5d000
02c6c4c4  ldr x8,[x8, #0xd70]
02c6c4c8  ldr x8,[x8]
02c6c4cc  ldr x8,[x8, #0xb8]
02c6c4d0  ldr x0,[x8]
02c6c4d4  cbz x0,0x02c6c590
02c6c4d8  ldp x20,x19,[sp, #0x10]
02c6c4dc  fmov s0,0x3f800000
02c6c4e0  mov w1,#0x5
02c6c4e4  mov x2,xzr
02c6c4e8  mov x3,xzr
02c6c4ec  ldp x30,x21,[sp], #0x20
02c6c4f0  b 0x02c1f10c
02c6c4f4  ldp x20,x19,[sp, #0x10]
02c6c4f8  ldp x30,x21,[sp], #0x20
02c6c4fc  ret
02c6c500  ldr x0,[x21]
02c6c504  ldr w8,[x0, #0xe4]
02c6c508  cbnz w8,0x02c6c510
02c6c50c  bl 0x029f5bd0
02c6c510  mov w0,w20
02c6c514  mov w1,#0x5
02c6c518  mov x2,xzr
02c6c51c  bl 0x02b7f278
02c6c520  ldr w8,[x19, #0x28]
02c6c524  adrp x20,0x625b000
02c6c528  ldrb w9,[x20, #0xa57]
02c6c52c  add w8,w8,#0x1
02c6c530  str w8,[x19, #0x28]
02c6c534  cbnz w9,0x02c6c54c
02c6c538  adrp x0,0x5e5d000
02c6c53c  ldr x0,[x0, #0xd70]
02c6c540  bl 0x029f5a50
02c6c544  mov w8,#0x1
02c6c548  strb w8,[x20, #0xa57]
02c6c54c  adrp x8,0x5e5d000
02c6c550  ldr x8,[x8, #0xd70]
02c6c554  ldr x8,[x8]
02c6c558  ldr x8,[x8, #0xb8]
02c6c55c  ldr x0,[x8]
02c6c560  cbz x0,0x02c6c590
02c6c564  fmov s0,0x3f800000
02c6c568  mov w1,#0x1
02c6c56c  mov x2,xzr
02c6c570  mov x3,xzr
02c6c574  bl 0x02c1f10c
02c6c578  mov x0,x19
02c6c57c  bl 0x02c69d0c
02c6c580  ldp x20,x19,[sp, #0x10]
02c6c584  mov x0,xzr
02c6c588  ldp x30,x21,[sp], #0x20
02c6c58c  b 0x02c0faf8
02c6c590  bl 0x029f5cfc
