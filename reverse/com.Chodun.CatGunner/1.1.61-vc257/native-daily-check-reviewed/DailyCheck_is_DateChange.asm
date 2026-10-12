02b9f50c  stp x30,x21,[sp, #-0x20]!
02b9f510  stp x20,x19,[sp, #0x10]
02b9f514  adrp x21,0x625b000
02b9f518  adrp x20,0x5e5d000
02b9f51c  mov x19,x0
02b9f520  ldrb w8,[x21, #0x9fd]
02b9f524  ldr x20,[x20, #0x3c0]
02b9f528  tbnz w8,#0x0,0x02b9f558
02b9f52c  adrp x0,0x5e59000
02b9f530  ldr x0,[x0, #0x7d0]
02b9f534  bl 0x029f5a50
02b9f538  adrp x0,0x5e5d000
02b9f53c  ldr x0,[x0, #0x3c0]
02b9f540  bl 0x029f5a50
02b9f544  adrp x0,0x5e5e000
02b9f548  ldr x0,[x0, #0x518]
02b9f54c  bl 0x029f5a50
02b9f550  mov w8,#0x1
02b9f554  strb w8,[x21, #0x9fd]
02b9f558  ldr x0,[x20]
02b9f55c  adrp x21,0x5e5e000
02b9f560  ldr w8,[x0, #0xe4]
02b9f564  ldr x21,[x21, #0x518]
02b9f568  cbnz w8,0x02b9f570
02b9f56c  bl 0x029f5bd0
02b9f570  ldr x0,[x21]
02b9f574  mov w1,#0x1
02b9f578  mov x2,xzr
02b9f57c  bl 0x02c23998
02b9f580  tbz w0,#0x0,0x02b9f5e0
02b9f584  adrp x8,0x5e59000
02b9f588  ldr x8,[x8, #0x7d0]
02b9f58c  ldr x0,[x8]
02b9f590  ldr w8,[x0, #0xe4]
02b9f594  cbnz w8,0x02b9f59c
02b9f598  bl 0x029f5bd0
02b9f59c  add x0,x19,#0x28
02b9f5a0  mov x1,xzr
02b9f5a4  bl 0x04830b04
02b9f5a8  ldr x8,[x20]
02b9f5ac  mov x19,x0
02b9f5b0  ldr w9,[x8, #0xe4]
02b9f5b4  cbnz w9,0x02b9f5c0
02b9f5b8  mov x0,x8
02b9f5bc  bl 0x029f5bd0
02b9f5c0  mov x0,xzr
02b9f5c4  bl 0x02c25c90
02b9f5c8  mov x1,x0
02b9f5cc  mov x0,x19
02b9f5d0  mov x2,xzr
02b9f5d4  ldp x20,x19,[sp, #0x10]
02b9f5d8  ldp x30,x21,[sp], #0x20
02b9f5dc  b 0x04833208
02b9f5e0  ldp x20,x19,[sp, #0x10]
02b9f5e4  mov w0,wzr
02b9f5e8  ldp x30,x21,[sp], #0x20
02b9f5ec  ret
