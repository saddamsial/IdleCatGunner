02c52888  stp x30,x21,[sp, #-0x20]!
02c5288c  stp x20,x19,[sp, #0x10]
02c52890  adrp x21,0x625c000
02c52894  adrp x20,0x5e5e000
02c52898  adrp x19,0x5e59000
02c5289c  ldrb w8,[x21, #0x168]
02c528a0  ldr x20,[x20, #0x68]
02c528a4  ldr x19,[x19, #0x1c0]
02c528a8  tbnz w8,#0x0,0x02c528cc
02c528ac  adrp x0,0x5e59000
02c528b0  ldr x0,[x0, #0x1c0]
02c528b4  bl 0x029f5a50
02c528b8  adrp x0,0x5e5e000
02c528bc  ldr x0,[x0, #0x68]
02c528c0  bl 0x029f5a50
02c528c4  mov w8,#0x1
02c528c8  strb w8,[x21, #0x168]
02c528cc  ldr x8,[x20]
02c528d0  ldr x0,[x19]
02c528d4  ldr x8,[x8, #0xb8]
02c528d8  ldr w9,[x0, #0xe4]
02c528dc  ldr x19,[x8]
02c528e0  cbnz w9,0x02c528e8
02c528e4  bl 0x029f5bd0
02c528e8  mov x0,x19
02c528ec  mov x1,xzr
02c528f0  mov x2,xzr
02c528f4  bl 0x057e14b4
02c528f8  tbz w0,#0x0,0x02c52908
02c528fc  ldp x20,x19,[sp, #0x10]
02c52900  ldp x30,x21,[sp], #0x20
02c52904  ret
02c52908  ldr x8,[x20]
02c5290c  ldr x8,[x8, #0xb8]
02c52910  ldr x0,[x8]
02c52914  cbz x0,0x02c52924
02c52918  ldp x20,x19,[sp, #0x10]
02c5291c  ldp x30,x21,[sp], #0x20
02c52920  b 0x02c52928
02c52924  bl 0x029f5cfc
