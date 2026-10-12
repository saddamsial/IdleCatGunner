02b7e1cc  str x29,[sp, #-0x40]!
02b7e1d0  stp x30,x23,[sp, #0x10]
02b7e1d4  stp x22,x21,[sp, #0x20]
02b7e1d8  stp x20,x19,[sp, #0x30]
02b7e1dc  sub sp,sp,#0x300
02b7e1e0  adrp x20,0x625b000
02b7e1e4  adrp x22,0x5e5d000
02b7e1e8  mov x21,x0
02b7e1ec  ldrb w9,[x20, #0x8b4]
02b7e1f0  ldr x22,[x22, #0x338]
02b7e1f4  mov x19,x8
02b7e1f8  tbnz w9,#0x0,0x02b7e2a0
02b7e1fc  adrp x0,0x5e5d000
02b7e200  ldr x0,[x0, #0x4c0]
02b7e204  bl 0x029f5a50
02b7e208  adrp x0,0x5e5d000
02b7e20c  ldr x0,[x0, #0x4f8]
02b7e210  bl 0x029f5a50
02b7e214  adrp x0,0x5e5d000
02b7e218  ldr x0,[x0, #0x500]
02b7e21c  bl 0x029f5a50
02b7e220  adrp x0,0x5e5d000
02b7e224  ldr x0,[x0, #0x508]
02b7e228  bl 0x029f5a50
02b7e22c  adrp x0,0x5e5d000
02b7e230  ldr x0,[x0, #0x510]
02b7e234  bl 0x029f5a50
02b7e238  adrp x0,0x5e5d000
02b7e23c  ldr x0,[x0, #0x338]
02b7e240  bl 0x029f5a50
02b7e244  adrp x0,0x5e59000
02b7e248  ldr x0,[x0, #0x1c0]
02b7e24c  bl 0x029f5a50
02b7e250  adrp x0,0x5e5d000
02b7e254  ldr x0,[x0, #0x4d0]
02b7e258  bl 0x029f5a50
02b7e25c  adrp x0,0x5e5d000
02b7e260  ldr x0,[x0, #0x518]
02b7e264  bl 0x029f5a50
02b7e268  adrp x0,0x5e5d000
02b7e26c  ldr x0,[x0, #0x520]
02b7e270  bl 0x029f5a50
02b7e274  adrp x0,0x5e5d000
02b7e278  ldr x0,[x0, #0x4d8]
02b7e27c  bl 0x029f5a50
02b7e280  adrp x0,0x5e5d000
02b7e284  ldr x0,[x0, #0x4e0]
02b7e288  bl 0x029f5a50
02b7e28c  adrp x0,0x5e5d000
02b7e290  ldr x0,[x0, #0x4e8]
02b7e294  bl 0x029f5a50
02b7e298  mov w8,#0x1
02b7e29c  strb w8,[x20, #0x8b4]
02b7e2a0  movi v0.2D,#0x0
02b7e2a4  ldr x0,[x22]
02b7e2a8  ldr w8,[x0, #0xe4]
02b7e2ac  stp q0,q0,[sp, #0x240]
02b7e2b0  stp q0,q0,[sp, #0x260]
02b7e2b4  stp q0,q0,[sp, #0x280]
02b7e2b8  stp q0,q0,[sp, #0x2a0]
02b7e2bc  stp q0,q0,[sp, #0x2c0]
02b7e2c0  ldp q1,q0,[x21]
02b7e2c4  stp q1,q0,[sp, #0x2e0]
02b7e2c8  cbnz w8,0x02b7e2d0
02b7e2cc  bl 0x029f5bd0
02b7e2d0  ldp q0,q1,[sp, #0x2e0]
02b7e2d4  add x0,sp,#0x220
02b7e2d8  stp q0,q1,[sp, #0x220]
02b7e2dc  bl 0x02b7dda0
02b7e2e0  ldr x8,[x22]
02b7e2e4  ldr x8,[x8, #0xb8]
02b7e2e8  ldr x8,[x8, #0x160]
02b7e2ec  cbz x8,0x02b7e714
02b7e2f0  adrp x9,0x5e5d000
02b7e2f4  mov x20,x0
02b7e2f8  add x2,sp,#0x2c0
02b7e2fc  ldr x9,[x9, #0x500]
02b7e300  mov x0,x8
02b7e304  mov x1,x20
02b7e308  add x23,sp,#0x2c0
02b7e30c  ldr x3,[x9]
02b7e310  bl 0x03e3e520
02b7e314  tbnz w0,#0x0,0x02b7e6f4
02b7e318  adrp x8,0x5e5d000
02b7e31c  ldr x8,[x8, #0x4e8]
02b7e320  ldr x0,[x8]
02b7e324  ldr w8,[x0, #0xe4]
02b7e328  cbnz w8,0x02b7e330
02b7e32c  bl 0x029f5bd0
02b7e330  add x8,sp,#0x2e0
02b7e334  mov x0,xzr
02b7e338  bl 0x02cb2ddc
02b7e33c  ldp q0,q1,[sp, #0x2e0]
02b7e340  add x8,sp,#0x200
02b7e344  add x1,sp,#0x280
02b7e348  mov x0,x21
02b7e34c  mov x2,xzr
02b7e350  stp q0,q1,[sp, #0x280]
02b7e354  bl 0x04658538
02b7e358  ldp q0,q1,[sp, #0x200]
02b7e35c  add x8,sp,#0x1e0
02b7e360  mov w0,#0x64
02b7e364  mov x1,xzr
02b7e368  stp q0,q1,[sp, #0x260]
02b7e36c  bl 0x046544b8
02b7e370  ldp q0,q1,[sp, #0x1e0]
02b7e374  add x8,sp,#0x1c0
02b7e378  add x0,sp,#0x260
02b7e37c  add x1,sp,#0x240
02b7e380  mov x2,xzr
02b7e384  stp q0,q1,[sp, #0x240]
02b7e388  bl 0x046587e8
02b7e38c  ldp q0,q1,[sp, #0x1c0]
02b7e390  add x8,sp,#0x1a0
02b7e394  mov x0,xzr
02b7e398  stp q0,q1,[sp, #0x2a0]
02b7e39c  bl 0x02c87564
02b7e3a0  ldp q0,q1,[sp, #0x1a0]
02b7e3a4  add x8,sp,#0x180
02b7e3a8  add x0,sp,#0x2a0
02b7e3ac  add x1,sp,#0x280
02b7e3b0  mov x2,xzr
02b7e3b4  stp q0,q1,[sp, #0x280]
02b7e3b8  bl 0x04658538
02b7e3bc  ldp q0,q1,[sp, #0x180]
02b7e3c0  add x8,sp,#0x160
02b7e3c4  mov w0,#0x64
02b7e3c8  mov x1,xzr
02b7e3cc  stp q0,q1,[sp, #0x260]
02b7e3d0  bl 0x046544b8
02b7e3d4  ldp q0,q1,[sp, #0x160]
02b7e3d8  add x8,sp,#0x140
02b7e3dc  add x0,sp,#0x260
02b7e3e0  add x1,sp,#0x240
02b7e3e4  mov x2,xzr
02b7e3e8  stp q0,q1,[sp, #0x240]
02b7e3ec  bl 0x046587e8
02b7e3f0  adrp x8,0x5e5d000
02b7e3f4  mov x1,xzr
02b7e3f8  ldr x8,[x8, #0x4e0]
02b7e3fc  ldp q0,q1,[sp, #0x140]
02b7e400  ldr x8,[x8]
02b7e404  stp q0,q1,[sp, #0x2a0]
02b7e408  ldr x8,[x8, #0xb8]
02b7e40c  ldr w0,[x8, #0x8]
02b7e410  add x8,sp,#0x120
02b7e414  bl 0x046544b8
02b7e418  ldp q0,q1,[sp, #0x120]
02b7e41c  add x8,sp,#0x100
02b7e420  add x0,sp,#0x2a0
02b7e424  add x1,sp,#0x280
02b7e428  mov x2,xzr
02b7e42c  stp q0,q1,[sp, #0x280]
02b7e430  bl 0x04658538
02b7e434  ldp q0,q1,[sp, #0x100]
02b7e438  add x8,sp,#0xe0
02b7e43c  mov w0,#0x64
02b7e440  mov x1,xzr
02b7e444  stp q0,q1,[sp, #0x260]
02b7e448  bl 0x046544b8
02b7e44c  ldp q0,q1,[sp, #0xe0]
02b7e450  add x8,sp,#0xc0
02b7e454  add x0,sp,#0x260
02b7e458  add x1,sp,#0x240
02b7e45c  mov x2,xzr
02b7e460  stp q0,q1,[sp, #0x240]
02b7e464  bl 0x046587e8
02b7e468  adrp x21,0x5e5d000
02b7e46c  ldr x21,[x21, #0x4d0]
02b7e470  ldp q0,q1,[sp, #0xc0]
02b7e474  ldr x0,[x21]
02b7e478  stp q0,q1,[sp, #0x2a0]
02b7e47c  ldr w8,[x0, #0xe4]
02b7e480  cbnz w8,0x02b7e48c
02b7e484  bl 0x029f5bd0
02b7e488  ldr x0,[x21]
02b7e48c  ldr x1,[x0, #0xb8]
02b7e490  add x8,sp,#0xa0
02b7e494  add x0,sp,#0x2a0
02b7e498  mov x2,xzr
02b7e49c  bl 0x04658538
02b7e4a0  ldp q0,q1,[sp, #0xa0]
02b7e4a4  add x8,sp,#0x80
02b7e4a8  mov w0,#0x64
02b7e4ac  mov x1,xzr
02b7e4b0  stp q0,q1,[sp, #0x280]
02b7e4b4  bl 0x046544b8
02b7e4b8  ldp q0,q1,[sp, #0x80]
02b7e4bc  add x8,sp,#0x60
02b7e4c0  add x0,sp,#0x280
02b7e4c4  add x1,sp,#0x260
02b7e4c8  mov x2,xzr
02b7e4cc  stp q0,q1,[sp, #0x260]
02b7e4d0  bl 0x046587e8
02b7e4d4  adrp x21,0x5e5d000
02b7e4d8  ldr x21,[x21, #0x4d8]
02b7e4dc  ldp q0,q1,[sp, #0x60]
02b7e4e0  ldr x0,[x21]
02b7e4e4  stp q0,q1,[sp, #0x2a0]
02b7e4e8  ldr w8,[x0, #0xe4]
02b7e4ec  cbnz w8,0x02b7e4f8
02b7e4f0  bl 0x029f5bd0
02b7e4f4  ldr x0,[x21]
02b7e4f8  ldr x9,[x0, #0xb8]
02b7e4fc  add x8,sp,#0x40
02b7e500  add x0,sp,#0x2a0
02b7e504  mov x2,xzr
02b7e508  add x1,x9,#0x20
02b7e50c  bl 0x04658538
02b7e510  ldp q0,q1,[sp, #0x40]
02b7e514  add x8,sp,#0x20
02b7e518  mov w0,#0x64
02b7e51c  mov x1,xzr
02b7e520  stp q0,q1,[sp, #0x280]
02b7e524  bl 0x046544b8
02b7e528  ldp q0,q1,[sp, #0x20]
02b7e52c  mov x8,sp
02b7e530  add x0,sp,#0x280
02b7e534  add x1,sp,#0x260
02b7e538  mov x2,xzr
02b7e53c  stp q0,q1,[sp, #0x260]
02b7e540  bl 0x046587e8
02b7e544  adrp x23,0x5e5d000
02b7e548  ldr x23,[x23, #0x4c0]
02b7e54c  ldp q0,q1,[sp]
02b7e550  ldr x0,[x23]
02b7e554  stp q0,q1,[sp, #0x2a0]
02b7e558  ldr w8,[x0, #0xe4]
02b7e55c  cbnz w8,0x02b7e568
02b7e560  bl 0x029f5bd0
02b7e564  ldr x0,[x23]
02b7e568  adrp x8,0x5e59000
02b7e56c  ldr x8,[x8, #0x1c0]
02b7e570  ldr x9,[x0, #0xb8]
02b7e574  ldr x8,[x8]
02b7e578  ldr x21,[x9]
02b7e57c  ldr w10,[x8, #0xe4]
02b7e580  cbnz w10,0x02b7e58c
02b7e584  mov x0,x8
02b7e588  bl 0x029f5bd0
02b7e58c  mov x0,x21
02b7e590  mov x1,xzr
02b7e594  mov x2,xzr
02b7e598  bl 0x057dfa70
02b7e59c  tbz w0,#0x0,0x02b7e5fc
02b7e5a0  ldr x0,[x23]
02b7e5a4  ldr w8,[x0, #0xe4]
02b7e5a8  cbnz w8,0x02b7e5b4
02b7e5ac  bl 0x029f5bd0
02b7e5b0  ldr x0,[x23]
02b7e5b4  ldr x8,[x0, #0xb8]
02b7e5b8  ldr x0,[x8]
02b7e5bc  cbz x0,0x02b7e714
02b7e5c0  mov w1,wzr
02b7e5c4  mov x2,xzr
02b7e5c8  bl 0x02c376a8
02b7e5cc  add x8,sp,#0x2e0
02b7e5d0  mov x1,xzr
02b7e5d4  bl 0x046544b8
02b7e5d8  ldp q0,q1,[sp, #0x2e0]
02b7e5dc  add x8,sp,#0x200
02b7e5e0  add x0,sp,#0x2a0
02b7e5e4  add x1,sp,#0x280
02b7e5e8  mov x2,xzr
02b7e5ec  stp q0,q1,[sp, #0x280]
02b7e5f0  bl 0x04658538
02b7e5f4  ldp q0,q1,[sp, #0x200]
02b7e5f8  stp q0,q1,[sp, #0x2a0]
02b7e5fc  ldr x0,[x22]
02b7e600  ldr w8,[x0, #0xe4]
02b7e604  cbnz w8,0x02b7e610
02b7e608  bl 0x029f5bd0
02b7e60c  ldr x0,[x22]
02b7e610  ldr x8,[x0, #0xb8]
02b7e614  ldr x0,[x8, #0x160]
02b7e618  cbz x0,0x02b7e714
02b7e61c  adrp x8,0x5e5d000
02b7e620  ldr x8,[x8, #0x508]
02b7e624  ldr x1,[x8]
02b7e628  bl 0x03e3c550
02b7e62c  cmp w0,#0x32
02b7e630  b.lt 0x02b7e68c
02b7e634  ldr x0,[x22]
02b7e638  ldr w8,[x0, #0xe4]
02b7e63c  cbnz w8,0x02b7e648
02b7e640  bl 0x029f5bd0
02b7e644  ldr x0,[x22]
02b7e648  ldr x8,[x0, #0xb8]
02b7e64c  ldr x0,[x8, #0x168]
02b7e650  cbz x0,0x02b7e714
02b7e654  adrp x8,0x5e5d000
02b7e658  ldr x8,[x8, #0x518]
02b7e65c  ldr x1,[x8]
02b7e660  bl 0x03714074
02b7e664  ldr x8,[x22]
02b7e668  ldr x8,[x8, #0xb8]
02b7e66c  ldr x8,[x8, #0x160]
02b7e670  cbz x8,0x02b7e714
02b7e674  adrp x9,0x5e5d000
02b7e678  mov x1,x0
02b7e67c  mov x0,x8
02b7e680  ldr x9,[x9, #0x4f8]
02b7e684  ldr x2,[x9]
02b7e688  bl 0x03e3deb4
02b7e68c  ldr x0,[x22]
02b7e690  ldr w8,[x0, #0xe4]
02b7e694  cbnz w8,0x02b7e6a0
02b7e698  bl 0x029f5bd0
02b7e69c  ldr x0,[x22]
02b7e6a0  ldr x8,[x0, #0xb8]
02b7e6a4  ldr x0,[x8, #0x160]
02b7e6a8  cbz x0,0x02b7e714
02b7e6ac  adrp x8,0x5e5d000
02b7e6b0  add x2,sp,#0x2e0
02b7e6b4  mov x1,x20
02b7e6b8  ldr x8,[x8, #0x510]
02b7e6bc  ldp q0,q1,[sp, #0x2a0]
02b7e6c0  ldr x3,[x8]
02b7e6c4  stp q0,q1,[sp, #0x2e0]
02b7e6c8  bl 0x03e3c890
02b7e6cc  ldr x8,[x22]
02b7e6d0  ldr x8,[x8, #0xb8]
02b7e6d4  ldr x0,[x8, #0x168]
02b7e6d8  cbz x0,0x02b7e714
02b7e6dc  adrp x8,0x5e5d000
02b7e6e0  mov x1,x20
02b7e6e4  ldr x8,[x8, #0x520]
02b7e6e8  ldr x2,[x8]
02b7e6ec  bl 0x03713ee4
02b7e6f0  add x23,sp,#0x2a0
02b7e6f4  ldp q0,q1,[x23]
02b7e6f8  stp q0,q1,[x19]
02b7e6fc  add sp,sp,#0x300
02b7e700  ldp x20,x19,[sp, #0x30]
02b7e704  ldp x22,x21,[sp, #0x20]
02b7e708  ldp x30,x23,[sp, #0x10]
02b7e70c  ldr x29,[sp], #0x40
02b7e710  ret
02b7e714  bl 0x029f5cfc
