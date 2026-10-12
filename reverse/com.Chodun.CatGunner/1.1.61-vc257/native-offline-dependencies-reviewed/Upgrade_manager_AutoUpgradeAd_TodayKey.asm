02cb337c  str x30,[sp, #-0x20]!
02cb3380  stp x20,x19,[sp, #0x10]
02cb3384  adrp x20,0x625c000
02cb3388  adrp x19,0x5e5d000
02cb338c  ldrb w8,[x20, #0x566]
02cb3390  ldr x19,[x19, #0x3c0]
02cb3394  tbnz w8,#0x0,0x02cb33d0
02cb3398  adrp x0,0x5e59000
02cb339c  ldr x0,[x0, #0x760]
02cb33a0  bl 0x029f5a50
02cb33a4  adrp x0,0x5e59000
02cb33a8  ldr x0,[x0, #0x7d0]
02cb33ac  bl 0x029f5a50
02cb33b0  adrp x0,0x5e5d000
02cb33b4  ldr x0,[x0, #0x3c0]
02cb33b8  bl 0x029f5a50
02cb33bc  adrp x0,0x5e5d000
02cb33c0  ldr x0,[x0, #0x3e0]
02cb33c4  bl 0x029f5a50
02cb33c8  mov w8,#0x1
02cb33cc  strb w8,[x20, #0x566]
02cb33d0  ldr x0,[x19]
02cb33d4  adrp x20,0x5e59000
02cb33d8  ldr w8,[x0, #0xe4]
02cb33dc  ldr x20,[x20, #0x760]
02cb33e0  str xzr,[sp, #0x8]
02cb33e4  cbnz w8,0x02cb33ec
02cb33e8  bl 0x029f5bd0
02cb33ec  adrp x19,0x5e59000
02cb33f0  mov x0,xzr
02cb33f4  ldr x19,[x19, #0x7d0]
02cb33f8  bl 0x02c25b48
02cb33fc  ldr x8,[x20]
02cb3400  str x0,[sp, #0x8]
02cb3404  ldr w9,[x8, #0xe4]
02cb3408  cbnz w9,0x02cb3414
02cb340c  mov x0,x8
02cb3410  bl 0x029f5bd0
02cb3414  adrp x20,0x5e5d000
02cb3418  mov x0,xzr
02cb341c  ldr x20,[x20, #0x3e0]
02cb3420  bl 0x047e36ac
02cb3424  ldr x8,[x19]
02cb3428  mov x19,x0
02cb342c  ldr w9,[x8, #0xe4]
02cb3430  cbnz w9,0x02cb343c
02cb3434  mov x0,x8
02cb3438  bl 0x029f5bd0
02cb343c  ldr x1,[x20]
02cb3440  add x0,sp,#0x8
02cb3444  mov x2,x19
02cb3448  mov x3,xzr
02cb344c  bl 0x04832440
02cb3450  ldp x20,x19,[sp, #0x10]
02cb3454  ldr x30,[sp], #0x20
02cb3458  ret
