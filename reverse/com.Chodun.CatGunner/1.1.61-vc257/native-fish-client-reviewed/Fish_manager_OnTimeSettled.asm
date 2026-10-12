02c5d50c  stp x30,x21,[sp, #-0x20]!
02c5d510  stp x20,x19,[sp, #0x10]
02c5d514  adrp x21,0x625c000
02c5d518  adrp x20,0x5e59000
02c5d51c  mov x19,x0
02c5d520  ldrb w8,[x21, #0x1fa]
02c5d524  ldr x20,[x20, #0x1c0]
02c5d528  tbnz w8,#0x0,0x02c5d540
02c5d52c  adrp x0,0x5e59000
02c5d530  ldr x0,[x0, #0x1c0]
02c5d534  bl 0x029f5a50
02c5d538  mov w8,#0x1
02c5d53c  strb w8,[x21, #0x1fa]
02c5d540  ldr x0,[x20]
02c5d544  ldr x20,[x19, #0x48]
02c5d548  ldr w8,[x0, #0xe4]
02c5d54c  cbnz w8,0x02c5d554
02c5d550  bl 0x029f5bd0
02c5d554  mov x0,x20
02c5d558  mov x1,xzr
02c5d55c  mov x2,xzr
02c5d560  bl 0x057dfa70
02c5d564  tbz w0,#0x0,0x02c5d58c
02c5d568  ldr x0,[x19, #0x48]
02c5d56c  cbz x0,0x02c5d59c
02c5d570  mov x1,xzr
02c5d574  bl 0x057e00b4
02c5d578  tbz w0,#0x0,0x02c5d58c
02c5d57c  mov x0,x19
02c5d580  ldp x20,x19,[sp, #0x10]
02c5d584  ldp x30,x21,[sp], #0x20
02c5d588  b 0x02c5d5a0
02c5d58c  mov x0,x19
02c5d590  ldp x20,x19,[sp, #0x10]
02c5d594  ldp x30,x21,[sp], #0x20
02c5d598  b 0x02c5d6f8
02c5d59c  bl 0x029f5cfc
