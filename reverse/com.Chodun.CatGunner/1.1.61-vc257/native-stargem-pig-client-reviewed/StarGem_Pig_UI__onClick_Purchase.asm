02ca2528  str x30,[sp, #-0x20]!
02ca252c  stp x20,x19,[sp, #0x10]
02ca2530  adrp x19,0x625c000
02ca2534  adrp x20,0x5e5e000
02ca2538  ldrb w8,[x19, #0x492]
02ca253c  ldr x20,[x20, #0x3e0]
02ca2540  tbnz w8,#0x0,0x02ca2570
02ca2544  adrp x0,0x5e59000
02ca2548  ldr x0,[x0, #0x1c0]
02ca254c  bl 0x029f5a50
02ca2550  adrp x0,0x5e5e000
02ca2554  ldr x0,[x0, #0x3e0]
02ca2558  bl 0x029f5a50
02ca255c  adrp x0,0x5e63000
02ca2560  ldr x0,[x0, #0x5a8]
02ca2564  bl 0x029f5a50
02ca2568  mov w8,#0x1
02ca256c  strb w8,[x19, #0x492]
02ca2570  ldr x0,[x20]
02ca2574  adrp x19,0x5e59000
02ca2578  ldr w8,[x0, #0xe4]
02ca257c  ldr x19,[x19, #0x1c0]
02ca2580  cbnz w8,0x02ca258c
02ca2584  bl 0x029f5bd0
02ca2588  ldr x0,[x20]
02ca258c  ldr x8,[x19]
02ca2590  ldr x9,[x0, #0xb8]
02ca2594  ldr w10,[x8, #0xe4]
02ca2598  ldr x19,[x9]
02ca259c  cbnz w10,0x02ca25a8
02ca25a0  mov x0,x8
02ca25a4  bl 0x029f5bd0
02ca25a8  mov x0,x19
02ca25ac  mov x1,xzr
02ca25b0  mov x2,xzr
02ca25b4  bl 0x057e14b4
02ca25b8  tbz w0,#0x0,0x02ca25c8
02ca25bc  ldp x20,x19,[sp, #0x10]
02ca25c0  ldr x30,[sp], #0x20
02ca25c4  ret
02ca25c8  ldr x0,[x20]
02ca25cc  ldr w8,[x0, #0xe4]
02ca25d0  cbnz w8,0x02ca25dc
02ca25d4  bl 0x029f5bd0
02ca25d8  ldr x0,[x20]
02ca25dc  ldr x8,[x0, #0xb8]
02ca25e0  ldr x0,[x8]
02ca25e4  cbz x0,0x02ca2600
02ca25e8  adrp x8,0x5e63000
02ca25ec  ldr x8,[x8, #0x5a8]
02ca25f0  ldp x20,x19,[sp, #0x10]
02ca25f4  ldr x1,[x8]
02ca25f8  ldr x30,[sp], #0x20
02ca25fc  b 0x02ca1340
02ca2600  bl 0x029f5cfc
