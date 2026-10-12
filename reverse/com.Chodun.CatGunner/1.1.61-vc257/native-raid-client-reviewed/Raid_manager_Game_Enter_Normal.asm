02c57758  str x30,[sp, #-0x20]!
02c5775c  stp x20,x19,[sp, #0x10]
02c57760  mov x19,x0
02c57764  bl 0x02c56b28
02c57768  ldr w8,[x19, #0x70]
02c5776c  cmp w8,#0x2
02c57770  b.lt 0x02c577d8
02c57774  adrp x20,0x625b000
02c57778  ldrb w8,[x20, #0xa57]
02c5777c  cbnz w8,0x02c57794
02c57780  adrp x0,0x5e5d000
02c57784  ldr x0,[x0, #0xd70]
02c57788  bl 0x029f5a50
02c5778c  mov w8,#0x1
02c57790  strb w8,[x20, #0xa57]
02c57794  adrp x8,0x5e5d000
02c57798  ldr x8,[x8, #0xd70]
02c5779c  ldr x8,[x8]
02c577a0  ldr x8,[x8, #0xb8]
02c577a4  ldr x0,[x8]
02c577a8  cbz x0,0x02c577f4
02c577ac  fmov s0,0x3f800000
02c577b0  mov w1,#0x5
02c577b4  mov x2,xzr
02c577b8  mov x3,xzr
02c577bc  bl 0x02c1f10c
02c577c0  ldr x0,[x19, #0x30]
02c577c4  cbz x0,0x02c577f4
02c577c8  ldp x20,x19,[sp, #0x10]
02c577cc  mov x1,xzr
02c577d0  ldr x30,[sp], #0x20
02c577d4  b 0x02c5bb40
02c577d8  add w8,w8,#0x1
02c577dc  mov x0,x19
02c577e0  mov w1,#0x1
02c577e4  str w8,[x19, #0x70]
02c577e8  ldp x20,x19,[sp, #0x10]
02c577ec  ldr x30,[sp], #0x20
02c577f0  b 0x02c577f8
02c577f4  bl 0x029f5cfc
