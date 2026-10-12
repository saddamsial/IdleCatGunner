02c8d4c4  str x30,[sp, #-0x20]!
02c8d4c8  stp x20,x19,[sp, #0x10]
02c8d4cc  adrp x20,0x625c000
02c8d4d0  mov x19,x0
02c8d4d4  ldrb w8,[x20, #0x3bc]
02c8d4d8  tbnz w8,#0x0,0x02c8d4fc
02c8d4dc  adrp x0,0x5e5d000
02c8d4e0  ldr x0,[x0, #0x338]
02c8d4e4  bl 0x029f5a50
02c8d4e8  adrp x0,0x5e5d000
02c8d4ec  ldr x0,[x0, #0x3c0]
02c8d4f0  bl 0x029f5a50
02c8d4f4  mov w8,#0x1
02c8d4f8  strb w8,[x20, #0x3bc]
02c8d4fc  bl 0x02c8c7d0
02c8d500  tbz w0,#0x0,0x02c8d5e4
02c8d504  ldr w20,[x19, #0x20]
02c8d508  cmp w20,#0x1
02c8d50c  b.lt 0x02c8d5e4
02c8d510  ldr w8,[x19, #0x24]
02c8d514  str wzr,[x19, #0x20]
02c8d518  cmp w20,w8
02c8d51c  b.lt 0x02c8d54c
02c8d520  adrp x8,0x5e5d000
02c8d524  ldr x8,[x8, #0x3c0]
02c8d528  ldr x0,[x8]
02c8d52c  ldr w8,[x0, #0xe4]
02c8d530  cbnz w8,0x02c8d538
02c8d534  bl 0x029f5bd0
02c8d538  mov x0,xzr
02c8d53c  bl 0x02c1a570
02c8d540  mov x1,x0
02c8d544  mov x0,x19
02c8d548  bl 0x02c8c9d0
02c8d54c  adrp x8,0x5e5d000
02c8d550  ldr x8,[x8, #0x338]
02c8d554  ldr x0,[x8]
02c8d558  ldr w8,[x0, #0xe4]
02c8d55c  cbnz w8,0x02c8d564
02c8d560  bl 0x029f5bd0
02c8d564  mov w0,w20
02c8d568  mov x1,xzr
02c8d56c  bl 0x02b7ed10
02c8d570  ldr x0,[x19, #0x30]
02c8d574  cbz x0,0x02c8d5f0
02c8d578  movi d0,#0x0
02c8d57c  mov x1,xzr
02c8d580  bl 0x02c28290
02c8d584  ldr x0,[x19, #0x28]
02c8d588  cbz x0,0x02c8d5f0
02c8d58c  bl 0x02c8cfd8
02c8d590  adrp x19,0x625b000
02c8d594  ldrb w8,[x19, #0xa57]
02c8d598  cbnz w8,0x02c8d5b0
02c8d59c  adrp x0,0x5e5d000
02c8d5a0  ldr x0,[x0, #0xd70]
02c8d5a4  bl 0x029f5a50
02c8d5a8  mov w8,#0x1
02c8d5ac  strb w8,[x19, #0xa57]
02c8d5b0  adrp x8,0x5e5d000
02c8d5b4  ldr x8,[x8, #0xd70]
02c8d5b8  ldr x8,[x8]
02c8d5bc  ldr x8,[x8, #0xb8]
02c8d5c0  ldr x0,[x8]
02c8d5c4  cbz x0,0x02c8d5f0
02c8d5c8  ldp x20,x19,[sp, #0x10]
02c8d5cc  fmov s0,0x3f800000
02c8d5d0  mov w1,#0x3
02c8d5d4  mov x2,xzr
02c8d5d8  mov x3,xzr
02c8d5dc  ldr x30,[sp], #0x20
02c8d5e0  b 0x02c1f10c
02c8d5e4  ldp x20,x19,[sp, #0x10]
02c8d5e8  ldr x30,[sp], #0x20
02c8d5ec  ret
02c8d5f0  bl 0x029f5cfc
