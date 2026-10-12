02c2d494  stp x30,x21,[sp, #-0x20]!
02c2d498  stp x20,x19,[sp, #0x10]
02c2d49c  adrp x21,0x625c000
02c2d4a0  mov w19,w1
02c2d4a4  mov x20,x0
02c2d4a8  ldrb w8,[x21, #0x6]
02c2d4ac  tbnz w8,#0x0,0x02c2d4c4
02c2d4b0  adrp x0,0x5e5d000
02c2d4b4  ldr x0,[x0, #0x3c0]
02c2d4b8  bl 0x029f5a50
02c2d4bc  mov w8,#0x1
02c2d4c0  strb w8,[x21, #0x6]
02c2d4c4  mov x0,x20
02c2d4c8  bl 0x02c2d168
02c2d4cc  ldr w21,[x20, #0x58]
02c2d4d0  subs w8,w21,w19
02c2d4d4  b.lt 0x02c2d504
02c2d4d8  cmp w21,#0x14
02c2d4dc  str w8,[x20, #0x58]
02c2d4e0  b.lt 0x02c2d504
02c2d4e4  adrp x8,0x5e5d000
02c2d4e8  ldr x8,[x8, #0x3c0]
02c2d4ec  ldr x0,[x8]
02c2d4f0  ldr w8,[x0, #0xe4]
02c2d4f4  cbnz w8,0x02c2d4fc
02c2d4f8  bl 0x029f5bd0
02c2d4fc  bl 0x02c25b48
02c2d500  str x0,[x20, #0x60]
02c2d504  cmp w21,w19
02c2d508  ldp x20,x19,[sp, #0x10]
02c2d50c  cset w0,ge
02c2d510  ldp x30,x21,[sp], #0x20
02c2d514  ret
