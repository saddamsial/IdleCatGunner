02c6a298  stp x30,x21,[sp, #-0x20]!
02c6a29c  stp x20,x19,[sp, #0x10]
02c6a2a0  adrp x20,0x625c000
02c6a2a4  mov x19,x0
02c6a2a8  ldrb w8,[x20, #0x277]
02c6a2ac  tbnz w8,#0x0,0x02c6a2c4
02c6a2b0  adrp x0,0x5e63000
02c6a2b4  ldr x0,[x0, #0xa78]
02c6a2b8  bl 0x029f5a50
02c6a2bc  mov w8,#0x1
02c6a2c0  strb w8,[x20, #0x277]
02c6a2c4  mov x20,x19
02c6a2c8  ldr x21,[x20, #0xb8]!
02c6a2cc  bl 0x02c69f50
02c6a2d0  mov x1,x0
02c6a2d4  mov x0,x21
02c6a2d8  mov x2,xzr
02c6a2dc  bl 0x046b2ddc
02c6a2e0  tbz w0,#0x0,0x02c6a2f0
02c6a2e4  ldp x20,x19,[sp, #0x10]
02c6a2e8  ldp x30,x21,[sp], #0x20
02c6a2ec  ret
02c6a2f0  mov x0,x19
02c6a2f4  mov w1,#0x1
02c6a2f8  bl 0x02c686ac
02c6a2fc  cmn w0,#0x1
02c6a300  b.eq 0x02c6a390
02c6a304  mov w21,w0
02c6a308  bl 0x02c69f50
02c6a30c  mov x1,x0
02c6a310  str x0,[x19, #0xb8]
02c6a314  mov x0,x20
02c6a318  bl 0x029f59f4
02c6a31c  mov x0,x19
02c6a320  mov w1,w21
02c6a324  bl 0x02c68918
02c6a328  mov x0,x19
02c6a32c  mov w1,w21
02c6a330  bl 0x02c68ac8
02c6a334  adrp x20,0x625b000
02c6a338  ldrb w8,[x20, #0xa57]
02c6a33c  cbnz w8,0x02c6a354
02c6a340  adrp x0,0x5e5d000
02c6a344  ldr x0,[x0, #0xd70]
02c6a348  bl 0x029f5a50
02c6a34c  mov w8,#0x1
02c6a350  strb w8,[x20, #0xa57]
02c6a354  adrp x8,0x5e5d000
02c6a358  ldr x8,[x8, #0xd70]
02c6a35c  ldr x8,[x8]
02c6a360  ldr x8,[x8, #0xb8]
02c6a364  ldr x0,[x8]
02c6a368  cbz x0,0x02c6a3b0
02c6a36c  fmov s0,0x3f800000
02c6a370  mov w1,#0x2
02c6a374  mov x2,xzr
02c6a378  mov x3,xzr
02c6a37c  bl 0x02c1f10c
02c6a380  mov x0,x19
02c6a384  ldp x20,x19,[sp, #0x10]
02c6a388  ldp x30,x21,[sp], #0x20
02c6a38c  b 0x02c69c78
02c6a390  adrp x8,0x5e63000
02c6a394  ldr x8,[x8, #0xa78]
02c6a398  ldr x0,[x8]
02c6a39c  bl 0x02c68dbc
02c6a3a0  ldp x20,x19,[sp, #0x10]
02c6a3a4  mov x1,xzr
02c6a3a8  ldp x30,x21,[sp], #0x20
02c6a3ac  b 0x02c1dd54
02c6a3b0  bl 0x029f5cfc
