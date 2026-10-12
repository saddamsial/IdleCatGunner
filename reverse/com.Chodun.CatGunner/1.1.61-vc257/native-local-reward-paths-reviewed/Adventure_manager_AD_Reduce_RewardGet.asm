02c2f2dc  stp x30,x21,[sp, #-0x20]!
02c2f2e0  stp x20,x19,[sp, #0x10]
02c2f2e4  adrp x20,0x625c000
02c2f2e8  mov x19,x0
02c2f2ec  ldrb w8,[x20, #0x1b]
02c2f2f0  tbnz w8,#0x0,0x02c2f308
02c2f2f4  adrp x0,0x5e59000
02c2f2f8  ldr x0,[x0, #0x7d0]
02c2f2fc  bl 0x029f5a50
02c2f300  mov w8,#0x1
02c2f304  strb w8,[x20, #0x1b]
02c2f308  ldr w21,[x19, #0x88]
02c2f30c  tbnz w21,#0x1f,0x02c2f3d0
02c2f310  ldr w20,[x19, #0x8c]
02c2f314  mov w8,#0xffffffff
02c2f318  mov x0,x19
02c2f31c  mov w2,w21
02c2f320  str w8,[x19, #0x88]
02c2f324  mov w1,w20
02c2f328  bl 0x02c2db00
02c2f32c  tbz w0,#0x0,0x02c2f3d0
02c2f330  mov x0,x19
02c2f334  bl 0x02c2ef68
02c2f338  ldr w8,[x19, #0x78]
02c2f33c  cmp w8,#0x1
02c2f340  b.gt 0x02c2f3d0
02c2f344  mov x0,x19
02c2f348  mov w1,w20
02c2f34c  mov w2,w21
02c2f350  bl 0x02c2dbec
02c2f354  cbz x0,0x02c2f3dc
02c2f358  adrp x8,0x5e59000
02c2f35c  mov x21,x0
02c2f360  ldr x8,[x8, #0x7d0]
02c2f364  ldr x0,[x8]
02c2f368  ldr w8,[x0, #0xe4]
02c2f36c  cbnz w8,0x02c2f374
02c2f370  bl 0x029f5bd0
02c2f374  fmov d0,-0x3fc2000000000000
02c2f378  add x0,x21,#0x18
02c2f37c  mov x1,xzr
02c2f380  bl 0x0482fa64
02c2f384  stur x0,[x21, #0x18]
02c2f388  ldr w8,[x19, #0x78]
02c2f38c  ldr x0,[x19, #0x40]
02c2f390  add w8,w8,#0x1
02c2f394  str w8,[x19, #0x78]
02c2f398  cbz x0,0x02c2f3dc
02c2f39c  mov w1,w20
02c2f3a0  mov x2,xzr
02c2f3a4  bl 0x02c33e70
02c2f3a8  mov x0,x19
02c2f3ac  bl 0x02c2c974
02c2f3b0  ldr x0,[x19, #0x40]
02c2f3b4  cbz x0,0x02c2f3dc
02c2f3b8  mov x1,xzr
02c2f3bc  bl 0x02c35930
02c2f3c0  ldp x20,x19,[sp, #0x10]
02c2f3c4  mov x0,xzr
02c2f3c8  ldp x30,x21,[sp], #0x20
02c2f3cc  b 0x02c0faf8
02c2f3d0  ldp x20,x19,[sp, #0x10]
02c2f3d4  ldp x30,x21,[sp], #0x20
02c2f3d8  ret
02c2f3dc  bl 0x029f5cfc
