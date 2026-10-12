02c0b844  str d10,[sp, #-0x50]!
02c0b848  stp d9,d8,[sp, #0x8]
02c0b84c  str x29,[sp, #0x18]
02c0b850  stp x30,x23,[sp, #0x20]
02c0b854  stp x22,x21,[sp, #0x30]
02c0b858  stp x20,x19,[sp, #0x40]
02c0b85c  sub sp,sp,#0x1b0
02c0b860  mov w19,w1
02c0b864  mov x20,x0
02c0b868  add x0,sp,#0x90
02c0b86c  mov w1,wzr
02c0b870  mov w2,#0x90
02c0b874  fmov s8,s2
02c0b878  fmov s9,s1
02c0b87c  fmov s10,s0
02c0b880  bl 0x05afb2a0
02c0b884  fmov s0,s10
02c0b888  fmov s1,s9
02c0b88c  add x0,sp,#0x90
02c0b890  fmov s2,s8
02c0b894  mov x1,xzr
02c0b898  bl 0x05862884
02c0b89c  add x0,sp,#0x90
02c0b8a0  mov w1,#0x1
02c0b8a4  mov x2,xzr
02c0b8a8  bl 0x05862898
02c0b8ac  add x0,sp,#0x120
02c0b8b0  add x1,sp,#0x90
02c0b8b4  mov w2,#0x90
02c0b8b8  bl 0x05afb2b0
02c0b8bc  ldr x21,[x20, #0x28]
02c0b8c0  cbz x21,0x02c0b93c
02c0b8c4  ldr w8,[x21, #0x18]
02c0b8c8  cmp w8,#0x1
02c0b8cc  b.lt 0x02c0b91c
02c0b8d0  mov x22,xzr
02c0b8d4  add x23,x21,#0x20
02c0b8d8  cmp w22,w8
02c0b8dc  b.cs 0x02c0b940
02c0b8e0  ldr x20,[x23, x22, LSL #0x3]
02c0b8e4  cbz x20,0x02c0b93c
02c0b8e8  mov x0,sp
02c0b8ec  add x1,sp,#0x120
02c0b8f0  mov w2,#0x90
02c0b8f4  bl 0x05afb2b0
02c0b8f8  mov x1,sp
02c0b8fc  mov x0,x20
02c0b900  mov w2,w19
02c0b904  mov x3,xzr
02c0b908  bl 0x05861a3c
02c0b90c  ldr w8,[x21, #0x18]
02c0b910  add x22,x22,#0x1
02c0b914  cmp w22,w8
02c0b918  b.lt 0x02c0b8d8
02c0b91c  add sp,sp,#0x1b0
02c0b920  ldp x20,x19,[sp, #0x40]
02c0b924  ldr x29,[sp, #0x18]
02c0b928  ldp x22,x21,[sp, #0x30]
02c0b92c  ldp x30,x23,[sp, #0x20]
02c0b930  ldp d9,d8,[sp, #0x8]
02c0b934  ldr d10,[sp], #0x50
02c0b938  ret
02c0b93c  bl 0x029f5cfc
02c0b940  bl 0x029f5d04
