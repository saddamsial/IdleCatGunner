02c7c180  str x30,[sp, #-0x20]!
02c7c184  stp x20,x19,[sp, #0x10]
02c7c188  adrp x20,0x625c000
02c7c18c  mov x19,x0
02c7c190  ldrb w8,[x20, #0x322]
02c7c194  tbnz w8,#0x0,0x02c7c1ac
02c7c198  adrp x0,0x5e5d000
02c7c19c  ldr x0,[x0, #0x790]
02c7c1a0  bl 0x029f5a50
02c7c1a4  mov w8,#0x1
02c7c1a8  strb w8,[x20, #0x322]
02c7c1ac  mov x20,x19
02c7c1b0  ldr x8,[x20, #0x38]!
02c7c1b4  cbz x8,0x02c7c1c4
02c7c1b8  ldr w8,[x8, #0x18]
02c7c1bc  cmp w8,#0x10
02c7c1c0  b.eq 0x02c7c26c
02c7c1c4  adrp x8,0x5e5d000
02c7c1c8  mov w1,#0x10
02c7c1cc  ldr x8,[x8, #0x790]
02c7c1d0  ldr x0,[x8]
02c7c1d4  bl 0x029f5b40
02c7c1d8  cbz x0,0x02c7c280
02c7c1dc  ldr w8,[x0, #0x18]
02c7c1e0  mov x1,x0
02c7c1e4  mov x9,xzr
02c7c1e8  mov w11,#0xffffffff
02c7c1ec  lsl x10,x8,#0x2
02c7c1f0  cmp x10,x9
02c7c1f4  b.eq 0x02c7c27c
02c7c1f8  add x12,x1,x9
02c7c1fc  add x9,x9,#0x4
02c7c200  cmp x9,#0x40
02c7c204  str w11,[x12, #0x20]
02c7c208  b.ne 0x02c7c1f0
02c7c20c  ldr x12,[x20]
02c7c210  cbz x12,0x02c7c260
02c7c214  ldr x11,[x12, #0x18]
02c7c218  cmp w11,#0x1
02c7c21c  b.lt 0x02c7c260
02c7c220  cmp w11,#0x10
02c7c224  mov w13,#0x10
02c7c228  mov x9,xzr
02c7c22c  and x10,x11,#0xffffffff
02c7c230  csel w11,w11,w13,lt
02c7c234  add x12,x12,#0x20
02c7c238  add x13,x1,#0x20
02c7c23c  cmp x10,x9
02c7c240  b.eq 0x02c7c27c
02c7c244  cmp x9,x8
02c7c248  b.cs 0x02c7c27c
02c7c24c  ldr w14,[x12, x9, LSL #0x2]
02c7c250  str w14,[x13, x9, LSL #0x2]
02c7c254  add x9,x9,#0x1
02c7c258  cmp x11,x9
02c7c25c  b.ne 0x02c7c23c
02c7c260  mov x0,x20
02c7c264  str x1,[x20]
02c7c268  bl 0x029f59f4
02c7c26c  mov x0,x19
02c7c270  ldp x20,x19,[sp, #0x10]
02c7c274  ldr x30,[sp], #0x20
02c7c278  b 0x02c7c8fc
02c7c27c  bl 0x029f5d04
02c7c280  bl 0x029f5cfc
