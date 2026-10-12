02c981a4  stp x30,x21,[sp, #-0x20]!
02c981a8  stp x20,x19,[sp, #0x10]
02c981ac  adrp x19,0x625c000
02c981b0  adrp x20,0x5e5d000
02c981b4  ldrb w8,[x19, #0x44d]
02c981b8  ldr x20,[x20, #0xd50]
02c981bc  tbnz w8,#0x0,0x02c981f8
02c981c0  adrp x0,0x5e5d000
02c981c4  ldr x0,[x0, #0x338]
02c981c8  bl 0x029f5a50
02c981cc  adrp x0,0x5e5d000
02c981d0  ldr x0,[x0, #0xd50]
02c981d4  bl 0x029f5a50
02c981d8  adrp x0,0x5e59000
02c981dc  ldr x0,[x0, #0x1c0]
02c981e0  bl 0x029f5a50
02c981e4  adrp x0,0x5e5d000
02c981e8  ldr x0,[x0, #0x920]
02c981ec  bl 0x029f5a50
02c981f0  mov w8,#0x1
02c981f4  strb w8,[x19, #0x44d]
02c981f8  ldr x0,[x20]
02c981fc  adrp x21,0x5e59000
02c98200  ldr w8,[x0, #0xe4]
02c98204  ldr x21,[x21, #0x1c0]
02c98208  cbnz w8,0x02c98214
02c9820c  bl 0x029f5bd0
02c98210  ldr x0,[x20]
02c98214  ldr x8,[x0, #0xb8]
02c98218  mov w9,#0x101
02c9821c  strh w9,[x8]
02c98220  ldr x19,[x8, #0x8]
02c98224  ldr x0,[x21]
02c98228  ldr w9,[x0, #0xe4]
02c9822c  cbnz w9,0x02c98234
02c98230  bl 0x029f5bd0
02c98234  mov x0,x19
02c98238  mov x1,xzr
02c9823c  mov x2,xzr
02c98240  bl 0x057dfa70
02c98244  tbz w0,#0x0,0x02c98270
02c98248  ldr x0,[x20]
02c9824c  ldr w8,[x0, #0xe4]
02c98250  cbnz w8,0x02c9825c
02c98254  bl 0x029f5bd0
02c98258  ldr x0,[x20]
02c9825c  ldr x8,[x0, #0xb8]
02c98260  ldr x0,[x8, #0x8]
02c98264  cbz x0,0x02c9834c
02c98268  mov x1,xzr
02c9826c  bl 0x02ba4028
02c98270  adrp x8,0x5e5d000
02c98274  ldr x8,[x8, #0x338]
02c98278  ldr x0,[x8]
02c9827c  ldr w8,[x0, #0xe4]
02c98280  cbnz w8,0x02c98288
02c98284  bl 0x029f5bd0
02c98288  mov w0,#0x3e8
02c9828c  mov x1,xzr
02c98290  bl 0x02b7ed10
02c98294  ldr x0,[x20]
02c98298  ldr w8,[x0, #0xe4]
02c9829c  cbnz w8,0x02c982a8
02c982a0  bl 0x029f5bd0
02c982a4  ldr x0,[x20]
02c982a8  ldr x8,[x21]
02c982ac  ldr x9,[x0, #0xb8]
02c982b0  ldr w10,[x8, #0xe4]
02c982b4  ldr x19,[x9, #0x8]
02c982b8  cbnz w10,0x02c982c4
02c982bc  mov x0,x8
02c982c0  bl 0x029f5bd0
02c982c4  mov x0,x19
02c982c8  mov x1,xzr
02c982cc  mov x2,xzr
02c982d0  bl 0x057dfa70
02c982d4  tbz w0,#0x0,0x02c98304
02c982d8  ldr x0,[x20]
02c982dc  ldr w8,[x0, #0xe4]
02c982e0  cbnz w8,0x02c982ec
02c982e4  bl 0x029f5bd0
02c982e8  ldr x0,[x20]
02c982ec  ldr x8,[x0, #0xb8]
02c982f0  ldr x0,[x8, #0x8]
02c982f4  cbz x0,0x02c9834c
02c982f8  mov w1,#0x12c
02c982fc  mov x2,xzr
02c98300  bl 0x02b9d264
02c98304  adrp x19,0x5e5d000
02c98308  ldr x19,[x19, #0x920]
02c9830c  ldr x0,[x19]
02c98310  ldr w8,[x0, #0xe4]
02c98314  cbnz w8,0x02c98320
02c98318  bl 0x029f5bd0
02c9831c  ldr x0,[x19]
02c98320  ldr x8,[x0, #0xb8]
02c98324  ldr x8,[x8, #0x50]
02c98328  cbz x8,0x02c9833c
02c9832c  ldr x9,[x8, #0x18]
02c98330  ldr x0,[x8, #0x40]
02c98334  ldr x1,[x8, #0x28]
02c98338  blr x9
02c9833c  ldp x20,x19,[sp, #0x10]
02c98340  mov x0,xzr
02c98344  ldp x30,x21,[sp], #0x20
02c98348  b 0x02c0faf8
02c9834c  bl 0x029f5cfc
