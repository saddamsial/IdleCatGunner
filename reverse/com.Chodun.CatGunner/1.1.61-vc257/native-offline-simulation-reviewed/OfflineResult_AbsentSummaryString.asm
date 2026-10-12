02c0b564  stp x30,x21,[sp, #-0x20]!
02c0b568  stp x20,x19,[sp, #0x10]
02c0b56c  adrp x20,0x625b000
02c0b570  mov x19,x0
02c0b574  ldrb w8,[x20, #0xe97]
02c0b578  tbnz w8,#0x0,0x02c0b5c0
02c0b57c  adrp x0,0x5e58000
02c0b580  ldr x0,[x0, #0xa90]
02c0b584  bl 0x029f5a50
02c0b588  adrp x0,0x5e62000
02c0b58c  ldr x0,[x0, #0x130]
02c0b590  bl 0x029f5a50
02c0b594  adrp x0,0x5e5b000
02c0b598  ldr x0,[x0, #0x278]
02c0b59c  bl 0x029f5a50
02c0b5a0  adrp x0,0x5e62000
02c0b5a4  ldr x0,[x0, #0x138]
02c0b5a8  bl 0x029f5a50
02c0b5ac  adrp x0,0x5e5a000
02c0b5b0  ldr x0,[x0, #0x7a8]
02c0b5b4  bl 0x029f5a50
02c0b5b8  mov w8,#0x1
02c0b5bc  strb w8,[x20, #0xe97]
02c0b5c0  fmov s0,0x3f800000
02c0b5c4  ldr s1,[x19, #0x10]
02c0b5c8  adrp x21,0x5e62000
02c0b5cc  fadd s1,s1,s0
02c0b5d0  ldr s0,[x19, #0x14]
02c0b5d4  ldr x21,[x21, #0x130]
02c0b5d8  fcmp s0,s1
02c0b5dc  b.le 0x02c0b6c8
02c0b5e0  adrp x8,0x5e58000
02c0b5e4  mov w1,#0x5
02c0b5e8  ldr x8,[x8, #0xa90]
02c0b5ec  ldr x0,[x8]
02c0b5f0  bl 0x029f5b40
02c0b5f4  cbz x0,0x02c0b6f8
02c0b5f8  ldr w8,[x0, #0x18]
02c0b5fc  mov x20,x0
02c0b600  cbz w8,0x02c0b6f4
02c0b604  ldr x1,[x21]
02c0b608  mov x21,x20
02c0b60c  str x1,[x21, #0x20]!
02c0b610  mov x0,x21
02c0b614  bl 0x029f59f4
02c0b618  ldr s0,[x19, #0x14]
02c0b61c  bl 0x02c0b3cc
02c0b620  ldur w8,[x21, #-0x8]
02c0b624  tst w8,#0xfffffffe
02c0b628  b.eq 0x02c0b6f4
02c0b62c  mov x21,x20
02c0b630  mov x1,x0
02c0b634  str x0,[x21, #0x28]!
02c0b638  mov x0,x21
02c0b63c  bl 0x029f59f4
02c0b640  ldur w8,[x21, #-0x10]
02c0b644  cmp w8,#0x2
02c0b648  b.ls 0x02c0b6f4
02c0b64c  adrp x8,0x5e62000
02c0b650  mov x21,x20
02c0b654  ldr x8,[x8, #0x138]
02c0b658  ldr x1,[x8]
02c0b65c  str x1,[x21, #0x30]!
02c0b660  mov x0,x21
02c0b664  bl 0x029f59f4
02c0b668  ldr s0,[x19, #0x10]
02c0b66c  bl 0x02c0b3cc
02c0b670  ldur w8,[x21, #-0x18]
02c0b674  tst w8,#0xfffffffc
02c0b678  b.eq 0x02c0b6f4
02c0b67c  mov x19,x20
02c0b680  mov x1,x0
02c0b684  str x0,[x19, #0x38]!
02c0b688  mov x0,x19
02c0b68c  bl 0x029f59f4
02c0b690  ldur w8,[x19, #-0x20]
02c0b694  cmp w8,#0x4
02c0b698  b.ls 0x02c0b6f4
02c0b69c  adrp x8,0x5e5b000
02c0b6a0  mov x0,x20
02c0b6a4  ldr x8,[x8, #0x278]
02c0b6a8  ldr x1,[x8]
02c0b6ac  str x1,[x0, #0x40]!
02c0b6b0  bl 0x029f59f4
02c0b6b4  mov x0,x20
02c0b6b8  ldp x20,x19,[sp, #0x10]
02c0b6bc  mov x1,xzr
02c0b6c0  ldp x30,x21,[sp], #0x20
02c0b6c4  b 0x046c1a1c
02c0b6c8  adrp x19,0x5e5a000
02c0b6cc  ldr x19,[x19, #0x7a8]
02c0b6d0  bl 0x02c0b3cc
02c0b6d4  ldr x8,[x21]
02c0b6d8  ldr x2,[x19]
02c0b6dc  mov x1,x0
02c0b6e0  ldp x20,x19,[sp, #0x10]
02c0b6e4  mov x3,xzr
02c0b6e8  mov x0,x8
02c0b6ec  ldp x30,x21,[sp], #0x20
02c0b6f0  b 0x046c118c
02c0b6f4  bl 0x029f5d04
02c0b6f8  bl 0x029f5cfc
