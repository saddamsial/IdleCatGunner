02ca226c  str x30,[sp, #-0x30]!
02ca2270  stp x22,x21,[sp, #0x10]
02ca2274  stp x20,x19,[sp, #0x20]
02ca2278  adrp x20,0x625c000
02ca227c  adrp x21,0x5e5d000
02ca2280  mov w19,w0
02ca2284  ldrb w8,[x20, #0x491]
02ca2288  ldr x21,[x21, #0x920]
02ca228c  tbnz w8,#0x0,0x02ca22c8
02ca2290  adrp x0,0x5e59000
02ca2294  ldr x0,[x0, #0x1c0]
02ca2298  bl 0x029f5a50
02ca229c  adrp x0,0x5e5d000
02ca22a0  ldr x0,[x0, #0x920]
02ca22a4  bl 0x029f5a50
02ca22a8  adrp x0,0x5e64000
02ca22ac  ldr x0,[x0, #0x8b8]
02ca22b0  bl 0x029f5a50
02ca22b4  adrp x0,0x5e5e000
02ca22b8  ldr x0,[x0, #0x3e0]
02ca22bc  bl 0x029f5a50
02ca22c0  mov w8,#0x1
02ca22c4  strb w8,[x20, #0x491]
02ca22c8  ldr x0,[x21]
02ca22cc  ldr w8,[x0, #0xe4]
02ca22d0  cbnz w8,0x02ca22d8
02ca22d4  bl 0x029f5bd0
02ca22d8  adrp x22,0x625b000
02ca22dc  ldrb w8,[x22, #0x960]
02ca22e0  cbnz w8,0x02ca22f8
02ca22e4  adrp x0,0x5e5d000
02ca22e8  ldr x0,[x0, #0x920]
02ca22ec  bl 0x029f5a50
02ca22f0  mov w8,#0x1
02ca22f4  strb w8,[x22, #0x960]
02ca22f8  ldr x0,[x21]
02ca22fc  adrp x20,0x5e59000
02ca2300  ldr w8,[x0, #0xe4]
02ca2304  ldr x20,[x20, #0x1c0]
02ca2308  cbnz w8,0x02ca2314
02ca230c  bl 0x029f5bd0
02ca2310  ldr x0,[x21]
02ca2314  ldr x8,[x20]
02ca2318  ldr x9,[x0, #0xb8]
02ca231c  ldr w10,[x8, #0xe4]
02ca2320  ldr x20,[x9]
02ca2324  cbnz w10,0x02ca2330
02ca2328  mov x0,x8
02ca232c  bl 0x029f5bd0
02ca2330  mov x0,x20
02ca2334  mov x1,xzr
02ca2338  mov x2,xzr
02ca233c  bl 0x057dfa70
02ca2340  mov x20,xzr
02ca2344  tbz w0,#0x0,0x02ca23cc
02ca2348  ldr x0,[x21]
02ca234c  ldr w8,[x0, #0xe4]
02ca2350  cbnz w8,0x02ca2358
02ca2354  bl 0x029f5bd0
02ca2358  ldrb w8,[x22, #0x960]
02ca235c  cbnz w8,0x02ca2374
02ca2360  adrp x0,0x5e5d000
02ca2364  ldr x0,[x0, #0x920]
02ca2368  bl 0x029f5a50
02ca236c  mov w8,#0x1
02ca2370  strb w8,[x22, #0x960]
02ca2374  ldr x0,[x21]
02ca2378  adrp x20,0x5e5e000
02ca237c  ldr w8,[x0, #0xe4]
02ca2380  ldr x20,[x20, #0x3e0]
02ca2384  cbnz w8,0x02ca2390
02ca2388  bl 0x029f5bd0
02ca238c  ldr x0,[x21]
02ca2390  ldr x8,[x20]
02ca2394  ldr x9,[x0, #0xb8]
02ca2398  ldr w10,[x8, #0xe4]
02ca239c  ldr x20,[x9]
02ca23a0  cbnz w10,0x02ca23ac
02ca23a4  mov x0,x8
02ca23a8  bl 0x029f5bd0
02ca23ac  mov w0,w19
02ca23b0  bl 0x02c9fa6c
02ca23b4  cbz x20,0x02ca2444
02ca23b8  mov x1,x0
02ca23bc  mov x0,x20
02ca23c0  mov x2,xzr
02ca23c4  bl 0x02c9c29c
02ca23c8  mov x20,x0
02ca23cc  mov x0,x20
02ca23d0  mov x1,xzr
02ca23d4  bl 0x046c0604
02ca23d8  tbz w0,#0x0,0x02ca2430
02ca23dc  adrp x20,0x5e64000
02ca23e0  cmp w19,#0x3
02ca23e4  mov w8,#0x3
02ca23e8  ldr x20,[x20, #0x8b8]
02ca23ec  csel w8,w19,w8,lt
02ca23f0  cmp w8,#0x1
02ca23f4  ldr x0,[x20]
02ca23f8  csinc w19,w8,wzr,gt
02ca23fc  ldr w9,[x0, #0xe4]
02ca2400  cbnz w9,0x02ca240c
02ca2404  bl 0x029f5bd0
02ca2408  ldr x0,[x20]
02ca240c  ldr x8,[x0, #0xb8]
02ca2410  ldr x8,[x8]
02ca2414  cbz x8,0x02ca2444
02ca2418  ldr w10,[x8, #0x18]
02ca241c  sub w9,w19,#0x1
02ca2420  cmp w9,w10
02ca2424  b.cs 0x02ca2448
02ca2428  add x8,x8,w9, UXTW  #0x3
02ca242c  ldr x20,[x8, #0x20]
02ca2430  mov x0,x20
02ca2434  ldp x20,x19,[sp, #0x20]
02ca2438  ldp x22,x21,[sp, #0x10]
02ca243c  ldr x30,[sp], #0x30
02ca2440  ret
02ca2444  bl 0x029f5cfc
02ca2448  bl 0x029f5d04
