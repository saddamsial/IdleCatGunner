02c888a8  sub sp,sp,#0x40
02c888ac  str x30,[sp, #0x20]
02c888b0  stp x20,x19,[sp, #0x30]
02c888b4  adrp x20,0x625c000
02c888b8  mov x19,x0
02c888bc  ldrb w8,[x20, #0x38d]
02c888c0  tbnz w8,#0x0,0x02c888d8
02c888c4  adrp x0,0x5e5d000
02c888c8  ldr x0,[x0, #0x338]
02c888cc  bl 0x029f5a50
02c888d0  mov w8,#0x1
02c888d4  strb w8,[x20, #0x38d]
02c888d8  movi v0.2D,#0x0
02c888dc  ldp x0,x1,[x19, #0x18]
02c888e0  mov x2,xzr
02c888e4  stp q0,q0,[sp]
02c888e8  bl 0x02b1e644
02c888ec  ldr w8,[x19, #0x28]
02c888f0  cmp w0,w8
02c888f4  b.ge 0x02c8893c
02c888f8  adrp x20,0x5e5d000
02c888fc  mov x8,sp
02c88900  mov x0,x19
02c88904  ldr x20,[x20, #0x338]
02c88908  bl 0x02c887b8
02c8890c  ldr x0,[x20]
02c88910  ldr w8,[x0, #0xe4]
02c88914  cbnz w8,0x02c88920
02c88918  bl 0x029f5bd0
02c8891c  ldr x0,[x20]
02c88920  ldr x8,[x0, #0xb8]
02c88924  mov x0,sp
02c88928  mov x2,xzr
02c8892c  add x1,x8,#0x70
02c88930  bl 0x04659720
02c88934  eor w8,w0,#0x1
02c88938  b 0x02c88950
02c8893c  mov x0,xzr
02c88940  bl 0x02bdfc98
02c88944  mov x1,xzr
02c88948  bl 0x02c1dd54
02c8894c  mov w8,wzr
02c88950  ldp x20,x19,[sp, #0x30]
02c88954  and w0,w8,#0x1
02c88958  ldr x30,[sp, #0x20]
02c8895c  add sp,sp,#0x40
02c88960  ret
