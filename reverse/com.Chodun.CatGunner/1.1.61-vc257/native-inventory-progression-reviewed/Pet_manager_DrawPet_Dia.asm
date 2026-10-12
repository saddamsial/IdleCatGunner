02c7d490  stp x30,x21,[sp, #-0x20]!
02c7d494  stp x20,x19,[sp, #0x10]
02c7d498  adrp x20,0x625c000
02c7d49c  adrp x21,0x5e5d000
02c7d4a0  mov x19,x0
02c7d4a4  ldrb w8,[x20, #0x328]
02c7d4a8  ldr x21,[x21, #0x338]
02c7d4ac  tbnz w8,#0x0,0x02c7d4c4
02c7d4b0  adrp x0,0x5e5d000
02c7d4b4  ldr x0,[x0, #0x338]
02c7d4b8  bl 0x029f5a50
02c7d4bc  mov w8,#0x1
02c7d4c0  strb w8,[x20, #0x328]
02c7d4c4  ldr x0,[x21]
02c7d4c8  ldr w8,[x0, #0xe4]
02c7d4cc  cbnz w8,0x02c7d4d8
02c7d4d0  bl 0x029f5bd0
02c7d4d4  ldr x0,[x21]
02c7d4d8  ldr x8,[x0, #0xb8]
02c7d4dc  mov x2,xzr
02c7d4e0  ldp x0,x1,[x8, #0x90]
02c7d4e4  bl 0x02b1e644
02c7d4e8  cmp w0,#0x64
02c7d4ec  b.lt 0x02c7d578
02c7d4f0  mov x0,x19
02c7d4f4  mov w1,wzr
02c7d4f8  bl 0x02c7d16c
02c7d4fc  cmn w0,#0x1
02c7d500  b.eq 0x02c7d578
02c7d504  mov w20,w0
02c7d508  ldr x0,[x21]
02c7d50c  ldr w8,[x0, #0xe4]
02c7d510  cbnz w8,0x02c7d518
02c7d514  bl 0x029f5bd0
02c7d518  mov w0,#0x64
02c7d51c  mov w1,#0x4
02c7d520  mov x2,xzr
02c7d524  bl 0x02b7f278
02c7d528  mov x0,x19
02c7d52c  mov w1,w20
02c7d530  bl 0x02c7d444
02c7d534  adrp x19,0x625b000
02c7d538  ldrb w8,[x19, #0xa57]
02c7d53c  cbnz w8,0x02c7d554
02c7d540  adrp x0,0x5e5d000
02c7d544  ldr x0,[x0, #0xd70]
02c7d548  bl 0x029f5a50
02c7d54c  mov w8,#0x1
02c7d550  strb w8,[x19, #0xa57]
02c7d554  adrp x8,0x5e5d000
02c7d558  ldr x8,[x8, #0xd70]
02c7d55c  ldr x8,[x8]
02c7d560  ldr x8,[x8, #0xb8]
02c7d564  ldr x0,[x8]
02c7d568  cbz x0,0x02c7d5cc
02c7d56c  fmov s0,0x3f800000
02c7d570  mov w1,#0x2
02c7d574  b 0x02c7d5b8
02c7d578  adrp x19,0x625b000
02c7d57c  ldrb w8,[x19, #0xa57]
02c7d580  cbnz w8,0x02c7d598
02c7d584  adrp x0,0x5e5d000
02c7d588  ldr x0,[x0, #0xd70]
02c7d58c  bl 0x029f5a50
02c7d590  mov w8,#0x1
02c7d594  strb w8,[x19, #0xa57]
02c7d598  adrp x8,0x5e5d000
02c7d59c  ldr x8,[x8, #0xd70]
02c7d5a0  ldr x8,[x8]
02c7d5a4  ldr x8,[x8, #0xb8]
02c7d5a8  ldr x0,[x8]
02c7d5ac  cbz x0,0x02c7d5cc
02c7d5b0  fmov s0,0x3f800000
02c7d5b4  mov w1,#0x5
02c7d5b8  ldp x20,x19,[sp, #0x10]
02c7d5bc  mov x2,xzr
02c7d5c0  mov x3,xzr
02c7d5c4  ldp x30,x21,[sp], #0x20
02c7d5c8  b 0x02c1f10c
02c7d5cc  bl 0x029f5cfc
