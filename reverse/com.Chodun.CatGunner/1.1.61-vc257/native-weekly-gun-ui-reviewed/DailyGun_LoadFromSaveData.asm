02c8b868  stp x30,x21,[sp, #-0x20]!
02c8b86c  stp x20,x19,[sp, #0x10]
02c8b870  adrp x21,0x625c000
02c8b874  mov x20,x1
02c8b878  mov x19,x0
02c8b87c  ldrb w8,[x21, #0x3ad]
02c8b880  tbnz w8,#0x0,0x02c8b898
02c8b884  adrp x0,0x5e59000
02c8b888  ldr x0,[x0, #0x50]
02c8b88c  bl 0x029f5a50
02c8b890  mov w8,#0x1
02c8b894  strb w8,[x21, #0x3ad]
02c8b898  cbz x20,0x02c8b93c
02c8b89c  cbz x19,0x02c8b93c
02c8b8a0  adrp x8,0x5e59000
02c8b8a4  mov x0,x19
02c8b8a8  ldr x8,[x8, #0x50]
02c8b8ac  ldr x9,[x20, #0x3e8]
02c8b8b0  ldr x8,[x8]
02c8b8b4  cmp x9,#0x0
02c8b8b8  csel x1,x8,x9,eq
02c8b8bc  str x1,[x0, #0x28]!
02c8b8c0  bl 0x029f59f4
02c8b8c4  ldr x12,[x20, #0x3e0]
02c8b8c8  cbz x12,0x02c8b924
02c8b8cc  ldr x11,[x12, #0x18]
02c8b8d0  cmp w11,#0x1
02c8b8d4  b.lt 0x02c8b924
02c8b8d8  ldr x9,[x19, #0x20]
02c8b8dc  cmp w11,#0x3
02c8b8e0  mov w13,#0x3
02c8b8e4  mov x8,xzr
02c8b8e8  and x10,x11,#0xffffffff
02c8b8ec  csel w11,w11,w13,lt
02c8b8f0  add x12,x12,#0x20
02c8b8f4  add x13,x9,#0x20
02c8b8f8  cmp x10,x8
02c8b8fc  b.eq 0x02c8b938
02c8b900  cbz x9,0x02c8b93c
02c8b904  ldr w14,[x9, #0x18]
02c8b908  cmp x8,x14
02c8b90c  b.cs 0x02c8b938
02c8b910  ldr w14,[x12, x8, LSL #0x2]
02c8b914  str w14,[x13, x8, LSL #0x2]
02c8b918  add x8,x8,#0x1
02c8b91c  cmp x11,x8
02c8b920  b.ne 0x02c8b8f8
02c8b924  mov x0,x19
02c8b928  bl 0x02c8b2d0
02c8b92c  ldp x20,x19,[sp, #0x10]
02c8b930  ldp x30,x21,[sp], #0x20
02c8b934  b 0x02c8b940
02c8b938  bl 0x029f5d04
02c8b93c  bl 0x029f5cfc
