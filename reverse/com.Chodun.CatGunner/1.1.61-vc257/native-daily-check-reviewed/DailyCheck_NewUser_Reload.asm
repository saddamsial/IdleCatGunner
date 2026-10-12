02b9f408  sub sp,sp,#0x30
02b9f40c  stp x30,x21,[sp, #0x10]
02b9f410  stp x20,x19,[sp, #0x20]
02b9f414  adrp x21,0x625b000
02b9f418  adrp x20,0x5e5d000
02b9f41c  mov x19,x0
02b9f420  ldrb w8,[x21, #0x9f9]
02b9f424  ldr x20,[x20, #0x3c0]
02b9f428  tbnz w8,#0x0,0x02b9f44c
02b9f42c  adrp x0,0x5e59000
02b9f430  ldr x0,[x0, #0x7d0]
02b9f434  bl 0x029f5a50
02b9f438  adrp x0,0x5e5d000
02b9f43c  ldr x0,[x0, #0x3c0]
02b9f440  bl 0x029f5a50
02b9f444  mov w8,#0x1
02b9f448  strb w8,[x21, #0x9f9]
02b9f44c  ldr x0,[x20]
02b9f450  adrp x20,0x5e59000
02b9f454  ldr w8,[x0, #0xe4]
02b9f458  ldr x20,[x20, #0x7d0]
02b9f45c  str xzr,[sp, #0x8]
02b9f460  cbnz w8,0x02b9f468
02b9f464  bl 0x029f5bd0
02b9f468  mov x0,xzr
02b9f46c  bl 0x02c25c90
02b9f470  ldr x8,[x20]
02b9f474  str x0,[sp, #0x8]
02b9f478  ldr w9,[x8, #0xe4]
02b9f47c  cbnz w9,0x02b9f488
02b9f480  mov x0,x8
02b9f484  bl 0x029f5bd0
02b9f488  fmov d0,-0x4010000000000000
02b9f48c  add x0,sp,#0x8
02b9f490  mov x1,xzr
02b9f494  bl 0x0482f924
02b9f498  stp x0,xzr,[x19, #0x28]
02b9f49c  mov x0,xzr
02b9f4a0  bl 0x02c25c90
02b9f4a4  fmov d0,-0x4010000000000000
02b9f4a8  str x0,[sp, #0x8]
02b9f4ac  add x0,sp,#0x8
02b9f4b0  mov x1,xzr
02b9f4b4  bl 0x0482f924
02b9f4b8  str x0,[x19, #0x78]
02b9f4bc  mov x0,x19
02b9f4c0  bl 0x02b9f39c
02b9f4c4  mov x1,x0
02b9f4c8  mov x0,x19
02b9f4cc  mov x2,xzr
02b9f4d0  bl 0x057e2120
02b9f4d4  ldp x20,x19,[sp, #0x20]
02b9f4d8  ldp x30,x21,[sp, #0x10]
02b9f4dc  add sp,sp,#0x30
02b9f4e0  ret
