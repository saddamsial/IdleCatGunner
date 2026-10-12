02c6d36c  sub sp,sp,#0x130
02c6d370  str d12,[sp, #0xc0]
02c6d374  stp d11,d10,[sp, #0xc8]
02c6d378  stp d9,d8,[sp, #0xd8]
02c6d37c  str x29,[sp, #0xe8]
02c6d380  stp x30,x25,[sp, #0xf0]
02c6d384  stp x24,x23,[sp, #0x100]
02c6d388  stp x22,x21,[sp, #0x110]
02c6d38c  stp x20,x19,[sp, #0x120]
02c6d390  adrp x19,0x625c000
02c6d394  adrp x20,0x5e5e000
02c6d398  ldrb w8,[x19, #0x2a7]
02c6d39c  ldr x20,[x20, #0x58]
02c6d3a0  tbnz w8,#0x0,0x02c6d3dc
02c6d3a4  adrp x0,0x5e63000
02c6d3a8  ldr x0,[x0, #0x90]
02c6d3ac  bl 0x029f5a50
02c6d3b0  adrp x0,0x5e5d000
02c6d3b4  ldr x0,[x0, #0x790]
02c6d3b8  bl 0x029f5a50
02c6d3bc  adrp x0,0x5e59000
02c6d3c0  ldr x0,[x0]
02c6d3c4  bl 0x029f5a50
02c6d3c8  adrp x0,0x5e5e000
02c6d3cc  ldr x0,[x0, #0x58]
02c6d3d0  bl 0x029f5a50
02c6d3d4  mov w8,#0x1
02c6d3d8  strb w8,[x19, #0x2a7]
02c6d3dc  movi v0.2D,#0x0
02c6d3e0  ldr x0,[x20]
02c6d3e4  ldr w8,[x0, #0xe4]
02c6d3e8  stp q0,q0,[sp, #0x80]
02c6d3ec  stp q0,q0,[sp, #0xa0]
02c6d3f0  cbnz w8,0x02c6d3fc
02c6d3f4  bl 0x029f5bd0
02c6d3f8  ldr x0,[x20]
02c6d3fc  ldr x8,[x0, #0xb8]
02c6d400  ldrb w8,[x8, #0x30]
02c6d404  cbnz w8,0x02c6d6b4
02c6d408  adrp x21,0x5e63000
02c6d40c  mov w1,#0x15
02c6d410  ldr x21,[x21, #0x90]
02c6d414  ldr x0,[x21]
02c6d418  bl 0x029f5b40
02c6d41c  ldr x8,[x20]
02c6d420  mov x19,x0
02c6d424  ldr w9,[x8, #0xe4]
02c6d428  cbnz w9,0x02c6d438
02c6d42c  mov x0,x8
02c6d430  bl 0x029f5bd0
02c6d434  ldr x8,[x20]
02c6d438  ldr x0,[x8, #0xb8]
02c6d43c  mov x1,x19
02c6d440  str x19,[x0, #0x18]!
02c6d444  bl 0x029f59f4
02c6d448  ldr x0,[x21]
02c6d44c  mov w1,#0x15
02c6d450  bl 0x029f5b40
02c6d454  ldr x8,[x20]
02c6d458  mov x1,x0
02c6d45c  ldr x8,[x8, #0xb8]
02c6d460  str x0,[x8, #0x20]!
02c6d464  mov x0,x8
02c6d468  bl 0x029f59f4
02c6d46c  adrp x8,0x5e5d000
02c6d470  mov w1,#0x15
02c6d474  ldr x8,[x8, #0x790]
02c6d478  ldr x0,[x8]
02c6d47c  bl 0x029f5b40
02c6d480  ldr x8,[x20]
02c6d484  mov x1,x0
02c6d488  ldr x8,[x8, #0xb8]
02c6d48c  str x0,[x8, #0x28]!
02c6d490  mov x0,x8
02c6d494  bl 0x029f59f4
02c6d498  ldr x8,[x20]
02c6d49c  mov w0,wzr
02c6d4a0  mov x1,xzr
02c6d4a4  ldr x8,[x8, #0xb8]
02c6d4a8  ldr x19,[x8, #0x18]
02c6d4ac  add x8,sp,#0x60
02c6d4b0  bl 0x046544b8
02c6d4b4  cbz x19,0x02c6d6dc
02c6d4b8  ldr w8,[x19, #0x18]
02c6d4bc  cbz w8,0x02c6d6e0
02c6d4c0  ldp q0,q1,[sp, #0x60]
02c6d4c4  add x0,x19,#0x20
02c6d4c8  mov x1,xzr
02c6d4cc  stp q0,q1,[x19, #0x20]
02c6d4d0  bl 0x029f59f4
02c6d4d4  ldr x8,[x20]
02c6d4d8  mov w0,#0x64
02c6d4dc  mov x1,xzr
02c6d4e0  ldr x8,[x8, #0xb8]
02c6d4e4  ldr x19,[x8, #0x20]
02c6d4e8  add x8,sp,#0x40
02c6d4ec  bl 0x046544b8
02c6d4f0  cbz x19,0x02c6d6dc
02c6d4f4  ldr w8,[x19, #0x18]
02c6d4f8  cbz w8,0x02c6d6e0
02c6d4fc  ldp q0,q1,[sp, #0x40]
02c6d500  add x0,x19,#0x20
02c6d504  mov x1,xzr
02c6d508  stp q0,q1,[x19, #0x20]
02c6d50c  bl 0x029f59f4
02c6d510  ldr x8,[x20]
02c6d514  ldr x8,[x8, #0xb8]
02c6d518  ldr x8,[x8, #0x28]
02c6d51c  cbz x8,0x02c6d6dc
02c6d520  ldr w9,[x8, #0x18]
02c6d524  cbz w9,0x02c6d6e0
02c6d528  adrp x21,0x5e59000
02c6d52c  fmov d9,0x3ff0000000000000
02c6d530  adrp x9,0x1170000
02c6d534  ldr x21,[x21]
02c6d538  str wzr,[x8, #0x20]
02c6d53c  mov x8,#0x4059000000000000
02c6d540  fmov d10,0x3ff8000000000000
02c6d544  fmov d11,-0x4010000000000000
02c6d548  fmov d12,x8
02c6d54c  ldr d8,[x9, #0x928]
02c6d550  mov x19,xzr
02c6d554  mov w22,#0x32
02c6d558  mov x23,#-0x280
02c6d55c  ldr x0,[x21]
02c6d560  ldr w8,[x0, #0xe4]
02c6d564  cbnz w8,0x02c6d56c
02c6d568  bl 0x029f5bd0
02c6d56c  scvtf d1,w19
02c6d570  fmov d0,d8
02c6d574  mov x0,xzr
02c6d578  bl 0x04852840
02c6d57c  fmul d0,d0,d10
02c6d580  add x8,sp,#0x60
02c6d584  mov x0,xzr
02c6d588  fmul d9,d9,d0
02c6d58c  fadd d0,d9,d11
02c6d590  fmul d0,d0,d12
02c6d594  bl 0x04656c9c
02c6d598  ldp q0,q1,[sp, #0x60]
02c6d59c  add x8,sp,#0x40
02c6d5a0  add x0,sp,#0x80
02c6d5a4  mov w1,#0x2
02c6d5a8  mov x2,xzr
02c6d5ac  stp q0,q1,[sp, #0x80]
02c6d5b0  bl 0x04658464
02c6d5b4  ldr x0,[x20]
02c6d5b8  ldp q0,q1,[sp, #0x40]
02c6d5bc  ldr w8,[x0, #0xe4]
02c6d5c0  stp q0,q1,[sp, #0xa0]
02c6d5c4  cbnz w8,0x02c6d5d0
02c6d5c8  bl 0x029f5bd0
02c6d5cc  ldr x0,[x20]
02c6d5d0  ldr x8,[x0, #0xb8]
02c6d5d4  ldr x8,[x8, #0x18]
02c6d5d8  cbz x8,0x02c6d6dc
02c6d5dc  ldr w9,[x8, #0x18]
02c6d5e0  add x24,x19,#0x1
02c6d5e4  cmp x24,x9
02c6d5e8  b.cs 0x02c6d6e0
02c6d5ec  ldp q1,q0,[sp, #0xa0]
02c6d5f0  add x8,x8,x23
02c6d5f4  add x0,x8,#0x2c0
02c6d5f8  mov x1,xzr
02c6d5fc  stp q1,q0,[x8, #0x2c0]
02c6d600  bl 0x029f59f4
02c6d604  ldr x8,[x20]
02c6d608  mov w0,#0x64
02c6d60c  mov x1,xzr
02c6d610  ldr x8,[x8, #0xb8]
02c6d614  ldr x25,[x8, #0x20]
02c6d618  add x8,sp,#0x20
02c6d61c  bl 0x046544b8
02c6d620  ldp q0,q1,[sp, #0x20]
02c6d624  mov x8,sp
02c6d628  add x0,sp,#0xa0
02c6d62c  add x1,sp,#0x80
02c6d630  mov x2,xzr
02c6d634  stp q0,q1,[sp, #0x80]
02c6d638  bl 0x04658020
02c6d63c  cbz x25,0x02c6d6dc
02c6d640  ldr w8,[x25, #0x18]
02c6d644  cmp x24,x8
02c6d648  b.cs 0x02c6d6e0
02c6d64c  ldp q1,q0,[sp]
02c6d650  add x8,x25,x23
02c6d654  add x0,x8,#0x2c0
02c6d658  mov x1,xzr
02c6d65c  stp q1,q0,[x8, #0x2c0]
02c6d660  bl 0x029f59f4
02c6d664  ldr x0,[x20]
02c6d668  ldr x8,[x0, #0xb8]
02c6d66c  ldr x9,[x8, #0x28]
02c6d670  cbz x9,0x02c6d6dc
02c6d674  ldr w10,[x9, #0x18]
02c6d678  cmp x24,x10
02c6d67c  b.cs 0x02c6d6e0
02c6d680  add x9,x9,x19, LSL #0x2
02c6d684  adds x23,x23,#0x20
02c6d688  add x19,x19,#0x1
02c6d68c  str w22,[x9, #0x24]
02c6d690  add w22,w22,#0x32
02c6d694  b.ne 0x02c6d55c
02c6d698  ldr w9,[x0, #0xe4]
02c6d69c  cbnz w9,0x02c6d6ac
02c6d6a0  bl 0x029f5bd0
02c6d6a4  ldr x8,[x20]
02c6d6a8  ldr x8,[x8, #0xb8]
02c6d6ac  mov w9,#0x1
02c6d6b0  strb w9,[x8, #0x30]
02c6d6b4  ldp x20,x19,[sp, #0x120]
02c6d6b8  ldr x29,[sp, #0xe8]
02c6d6bc  ldp x22,x21,[sp, #0x110]
02c6d6c0  ldr d12,[sp, #0xc0]
02c6d6c4  ldp x24,x23,[sp, #0x100]
02c6d6c8  ldp x30,x25,[sp, #0xf0]
02c6d6cc  ldp d9,d8,[sp, #0xd8]
02c6d6d0  ldp d11,d10,[sp, #0xc8]
02c6d6d4  add sp,sp,#0x130
02c6d6d8  ret
02c6d6dc  bl 0x029f5cfc
02c6d6e0  bl 0x029f5d04
