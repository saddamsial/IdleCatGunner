02c2e56c  stp x30,x23,[sp, #-0x30]!
02c2e570  stp x22,x21,[sp, #0x10]
02c2e574  stp x20,x19,[sp, #0x20]
02c2e578  adrp x23,0x625c000
02c2e57c  adrp x22,0x5e5a000
02c2e580  mov w19,w2
02c2e584  ldrb w8,[x23, #0xc]
02c2e588  ldr x22,[x22, #0x180]
02c2e58c  mov w20,w1
02c2e590  mov x21,x0
02c2e594  tbnz w8,#0x0,0x02c2e5ac
02c2e598  adrp x0,0x5e5a000
02c2e59c  ldr x0,[x0, #0x180]
02c2e5a0  bl 0x029f5a50
02c2e5a4  mov w8,#0x1
02c2e5a8  strb w8,[x23, #0xc]
02c2e5ac  mov x0,x21
02c2e5b0  mov w1,w20
02c2e5b4  mov w2,w19
02c2e5b8  bl 0x02c2dfb8
02c2e5bc  ldr x8,[x22]
02c2e5c0  mov x19,x0
02c2e5c4  ldr w9,[x8, #0xe4]
02c2e5c8  cbnz w9,0x02c2e5d8
02c2e5cc  mov x0,x8
02c2e5d0  bl 0x029f5bd0
02c2e5d4  ldr x8,[x22]
02c2e5d8  ldr x8,[x8, #0xb8]
02c2e5dc  mov x0,x19
02c2e5e0  mov x2,xzr
02c2e5e4  ldp x20,x19,[sp, #0x20]
02c2e5e8  ldp x22,x21,[sp, #0x10]
02c2e5ec  ldr x1,[x8]
02c2e5f0  ldp x30,x23,[sp], #0x30
02c2e5f4  b 0x04868dd8
