02c7c524  sub sp,sp,#0xc0
02c7c528  str x30,[sp, #0x80]
02c7c52c  stp x24,x23,[sp, #0x90]
02c7c530  stp x22,x21,[sp, #0xa0]
02c7c534  stp x20,x19,[sp, #0xb0]
02c7c538  adrp x21,0x625c000
02c7c53c  adrp x20,0x5e63000
02c7c540  mov x19,x0
02c7c544  ldrb w8,[x21, #0x32a]
02c7c548  ldr x20,[x20, #0xd20]
02c7c54c  tbnz w8,#0x0,0x02c7c57c
02c7c550  adrp x0,0x5e5d000
02c7c554  ldr x0,[x0, #0x5b0]
02c7c558  bl 0x029f5a50
02c7c55c  adrp x0,0x5e63000
02c7c560  ldr x0,[x0, #0xd20]
02c7c564  bl 0x029f5a50
02c7c568  adrp x0,0x5e5d000
02c7c56c  ldr x0,[x0, #0x4d0]
02c7c570  bl 0x029f5a50
02c7c574  mov w8,#0x1
02c7c578  strb w8,[x21, #0x32a]
02c7c57c  movi v0.2D,#0x0
02c7c580  ldr x8,[x20]
02c7c584  ldr x8,[x8, #0xb8]
02c7c588  stp q0,q0,[sp, #0x40]
02c7c58c  stp q0,q0,[sp, #0x60]
02c7c590  ldr x0,[x8]
02c7c594  cbz x0,0x02c7c640
02c7c598  bl 0x02c7bc7c
02c7c59c  add x8,sp,#0x60
02c7c5a0  mov w0,wzr
02c7c5a4  mov x1,xzr
02c7c5a8  bl 0x046544b8
02c7c5ac  ldr x8,[x19, #0x30]
02c7c5b0  cbz x8,0x02c7c640
02c7c5b4  adrp x21,0x5e5d000
02c7c5b8  adrp x20,0x5e5d000
02c7c5bc  mov x23,xzr
02c7c5c0  ldr x21,[x21, #0x4d0]
02c7c5c4  ldr x20,[x20, #0x5b0]
02c7c5c8  mov w22,wzr
02c7c5cc  ldr w9,[x8, #0x18]
02c7c5d0  cmp x23,w9, SXTW 
02c7c5d4  b.ge 0x02c7c644
02c7c5d8  cmp x23,x9
02c7c5dc  b.cs 0x02c7c6e0
02c7c5e0  add x9,x8,x23, LSL #0x2
02c7c5e4  ldrsw x9,[x9, #0x20]
02c7c5e8  cmn w9,#0x1
02c7c5ec  b.eq 0x02c7c638
02c7c5f0  ldr x8,[x19, #0x20]
02c7c5f4  cbz x8,0x02c7c640
02c7c5f8  ldr w10,[x8, #0x18]
02c7c5fc  cmp w9,w10
02c7c600  b.cs 0x02c7c6e0
02c7c604  add x8,x8,x9, LSL #0x3
02c7c608  ldr x24,[x8, #0x20]
02c7c60c  cbz x24,0x02c7c640
02c7c610  add x8,sp,#0x20
02c7c614  add x0,sp,#0x60
02c7c618  add x1,x24,#0x18
02c7c61c  mov x2,xzr
02c7c620  bl 0x04658020
02c7c624  ldp q0,q1,[sp, #0x20]
02c7c628  ldr w9,[x24, #0x38]
02c7c62c  ldr x8,[x19, #0x30]
02c7c630  add w22,w9,w22
02c7c634  stp q0,q1,[sp, #0x60]
02c7c638  add x23,x23,#0x1
02c7c63c  cbnz x8,0x02c7c5cc
02c7c640  bl 0x029f5cfc
02c7c644  add x8,sp,#0x20
02c7c648  mov w0,#0x64
02c7c64c  mov x1,xzr
02c7c650  bl 0x046544b8
02c7c654  ldp q0,q1,[sp, #0x20]
02c7c658  mov x8,sp
02c7c65c  add x0,sp,#0x60
02c7c660  add x1,sp,#0x40
02c7c664  mov x2,xzr
02c7c668  stp q0,q1,[sp, #0x40]
02c7c66c  bl 0x04658020
02c7c670  ldr x0,[x21]
02c7c674  ldr w8,[x0, #0xe4]
02c7c678  cbnz w8,0x02c7c684
02c7c67c  bl 0x029f5bd0
02c7c680  ldr x0,[x21]
02c7c684  ldp q1,q0,[sp]
02c7c688  mov x1,xzr
02c7c68c  ldr x8,[x0, #0xb8]
02c7c690  stp q1,q0,[x8]
02c7c694  ldr x8,[x21]
02c7c698  ldr x0,[x8, #0xb8]
02c7c69c  bl 0x029f59f4
02c7c6a0  ldr x8,[x21]
02c7c6a4  add w9,w22,#0x64
02c7c6a8  ldr x10,[x20]
02c7c6ac  ldr x8,[x8, #0xb8]
02c7c6b0  str w9,[x8, #0x20]
02c7c6b4  ldr x8,[x10, #0xb8]
02c7c6b8  ldr x0,[x8, #0x8]
02c7c6bc  cbz x0,0x02c7c640
02c7c6c0  mov x1,xzr
02c7c6c4  bl 0x02c43744
02c7c6c8  ldp x20,x19,[sp, #0xb0]
02c7c6cc  ldr x30,[sp, #0x80]
02c7c6d0  ldp x22,x21,[sp, #0xa0]
02c7c6d4  ldp x24,x23,[sp, #0x90]
02c7c6d8  add sp,sp,#0xc0
02c7c6dc  ret
02c7c6e0  bl 0x029f5d04
