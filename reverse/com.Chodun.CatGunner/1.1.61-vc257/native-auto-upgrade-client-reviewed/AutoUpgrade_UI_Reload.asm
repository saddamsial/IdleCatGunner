02c1d4b0  stp x30,x25,[sp, #-0x40]!
02c1d4b4  stp x24,x23,[sp, #0x10]
02c1d4b8  stp x22,x21,[sp, #0x20]
02c1d4bc  stp x20,x19,[sp, #0x30]
02c1d4c0  adrp x21,0x625b000
02c1d4c4  adrp x20,0x5e5d000
02c1d4c8  mov x19,x0
02c1d4cc  ldrb w8,[x21, #0xf35]
02c1d4d0  ldr x20,[x20, #0x920]
02c1d4d4  tbnz w8,#0x0,0x02c1d504
02c1d4d8  adrp x0,0x5e62000
02c1d4dc  ldr x0,[x0, #0x670]
02c1d4e0  bl 0x029f5a50
02c1d4e4  adrp x0,0x5e5d000
02c1d4e8  ldr x0,[x0, #0x920]
02c1d4ec  bl 0x029f5a50
02c1d4f0  adrp x0,0x5e5d000
02c1d4f4  ldr x0,[x0, #0x4e8]
02c1d4f8  bl 0x029f5a50
02c1d4fc  mov w8,#0x1
02c1d500  strb w8,[x21, #0xf35]
02c1d504  ldr x0,[x20]
02c1d508  adrp x21,0x5e62000
02c1d50c  ldr w8,[x0, #0xe4]
02c1d510  ldr x21,[x21, #0x670]
02c1d514  cbnz w8,0x02c1d520
02c1d518  bl 0x029f5bd0
02c1d51c  ldr x0,[x20]
02c1d520  ldr x8,[x21]
02c1d524  ldr x9,[x0, #0xb8]
02c1d528  adrp x24,0x5e5d000
02c1d52c  ldr x8,[x8, #0xb8]
02c1d530  ldrb w9,[x9, #0xa]
02c1d534  ldr x24,[x24, #0x4e8]
02c1d538  ldrb w25,[x8]
02c1d53c  cbz w9,0x02c1d54c
02c1d540  mov w20,wzr
02c1d544  mov w22,#0x1
02c1d548  b 0x02c1d56c
02c1d54c  ldr x0,[x24]
02c1d550  ldr w8,[x0, #0xe4]
02c1d554  cbnz w8,0x02c1d55c
02c1d558  bl 0x029f5bd0
02c1d55c  mov x0,xzr
02c1d560  bl 0x02cb345c
02c1d564  mov w20,w0
02c1d568  mov w22,wzr
02c1d56c  ldr x0,[x24]
02c1d570  ldr w8,[x0, #0xe4]
02c1d574  cbnz w8,0x02c1d57c
02c1d578  bl 0x029f5bd0
02c1d57c  mov x0,xzr
02c1d580  bl 0x02cb3558
02c1d584  ldr x8,[x19, #0x20]
02c1d588  cbz x8,0x02c1d6a4
02c1d58c  and w9,w20,#0x1
02c1d590  mov w21,w0
02c1d594  mov x0,x8
02c1d598  orr w23,w22,w9
02c1d59c  mov x2,xzr
02c1d5a0  cmp w23,#0x0
02c1d5a4  cset w22,eq
02c1d5a8  mov w1,w22
02c1d5ac  bl 0x057dff3c
02c1d5b0  ldr x0,[x19, #0x28]
02c1d5b4  cbz x0,0x02c1d6a4
02c1d5b8  mov w1,w23
02c1d5bc  mov x2,xzr
02c1d5c0  bl 0x057dff3c
02c1d5c4  ldr x0,[x19, #0x30]
02c1d5c8  cbz x0,0x02c1d6a4
02c1d5cc  cmp w25,#0x0
02c1d5d0  mov x2,xzr
02c1d5d4  cset w1,eq
02c1d5d8  bl 0x057dff3c
02c1d5dc  ldr x0,[x19, #0x38]
02c1d5e0  cbz x0,0x02c1d6a4
02c1d5e4  cmp w25,#0x0
02c1d5e8  mov x2,xzr
02c1d5ec  cset w1,ne
02c1d5f0  bl 0x057dff3c
02c1d5f4  ldr x0,[x19, #0x48]
02c1d5f8  cbz x0,0x02c1d6a4
02c1d5fc  cmp w23,#0x0
02c1d600  eor w9,w21,#0x1
02c1d604  mov x2,xzr
02c1d608  cset w8,eq
02c1d60c  and w1,w8,w9
02c1d610  bl 0x057dff3c
02c1d614  ldr x0,[x19, #0x40]
02c1d618  cbz x0,0x02c1d6a4
02c1d61c  and w1,w21,w22
02c1d620  mov x2,xzr
02c1d624  bl 0x057dff3c
02c1d628  ldr x0,[x19, #0x50]
02c1d62c  cbz x0,0x02c1d6a4
02c1d630  mov x1,xzr
02c1d634  bl 0x057dc1c8
02c1d638  cbz x0,0x02c1d6a4
02c1d63c  and w21,w20,#0x1
02c1d640  mov x2,xzr
02c1d644  mov w1,w21
02c1d648  bl 0x057dff3c
02c1d64c  tbz w20,#0x0,0x02c1d68c
02c1d650  ldr x0,[x24]
02c1d654  ldr x20,[x19, #0x50]
02c1d658  ldr w8,[x0, #0xe4]
02c1d65c  cbnz w8,0x02c1d664
02c1d660  bl 0x029f5bd0
02c1d664  mov x0,xzr
02c1d668  bl 0x02cb34bc
02c1d66c  bl 0x02c1d85c
02c1d670  cbz x20,0x02c1d6a4
02c1d674  ldr x8,[x20]
02c1d678  mov x1,x0
02c1d67c  mov x0,x20
02c1d680  ldr x9,[x8, #0x558]
02c1d684  ldr x2,[x8, #0x560]
02c1d688  blr x9
02c1d68c  strb w21,[x19, #0x58]
02c1d690  ldp x20,x19,[sp, #0x30]
02c1d694  ldp x22,x21,[sp, #0x20]
02c1d698  ldp x24,x23,[sp, #0x10]
02c1d69c  ldp x30,x25,[sp], #0x40
02c1d6a0  ret
02c1d6a4  bl 0x029f5cfc
