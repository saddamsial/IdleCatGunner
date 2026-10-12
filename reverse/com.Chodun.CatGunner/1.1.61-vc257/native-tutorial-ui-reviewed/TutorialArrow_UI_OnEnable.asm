02cae590  stp x30,x21,[sp, #-0x20]!
02cae594  stp x20,x19,[sp, #0x10]
02cae598  adrp x20,0x625c000
02cae59c  adrp x21,0x5e59000
02cae5a0  mov x19,x0
02cae5a4  ldrb w8,[x20, #0x52d]
02cae5a8  ldr x21,[x21, #0x1c0]
02cae5ac  tbnz w8,#0x0,0x02cae5c4
02cae5b0  adrp x0,0x5e59000
02cae5b4  ldr x0,[x0, #0x1c0]
02cae5b8  bl 0x029f5a50
02cae5bc  mov w8,#0x1
02cae5c0  strb w8,[x20, #0x52d]
02cae5c4  ldr x0,[x21]
02cae5c8  ldr x20,[x19, #0x20]
02cae5cc  ldr w8,[x0, #0xe4]
02cae5d0  cbnz w8,0x02cae5d8
02cae5d4  bl 0x029f5bd0
02cae5d8  mov x0,x20
02cae5dc  mov x1,xzr
02cae5e0  mov x2,xzr
02cae5e4  bl 0x057dfa70
02cae5e8  tbz w0,#0x0,0x02cae620
02cae5ec  ldr x0,[x21]
02cae5f0  ldr x20,[x19, #0x28]
02cae5f4  ldr w8,[x0, #0xe4]
02cae5f8  cbnz w8,0x02cae600
02cae5fc  bl 0x029f5bd0
02cae600  mov x0,x20
02cae604  mov x1,xzr
02cae608  mov x2,xzr
02cae60c  bl 0x057dfa70
02cae610  tbz w0,#0x0,0x02cae620
02cae614  mov x20,x19
02cae618  ldr x8,[x20, #0x50]!
02cae61c  cbz x8,0x02cae62c
02cae620  ldp x20,x19,[sp, #0x10]
02cae624  ldp x30,x21,[sp], #0x20
02cae628  ret
02cae62c  mov x0,x19
02cae630  bl 0x02cae65c
02cae634  mov x1,x0
02cae638  mov x0,x19
02cae63c  mov x2,xzr
02cae640  bl 0x057e2120
02cae644  mov x1,x0
02cae648  mov x0,x20
02cae64c  str x1,[x19, #0x50]
02cae650  ldp x20,x19,[sp, #0x10]
02cae654  ldp x30,x21,[sp], #0x20
02cae658  b 0x029f59f4
