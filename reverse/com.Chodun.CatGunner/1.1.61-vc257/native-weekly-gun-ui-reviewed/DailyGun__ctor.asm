02c8b994  str x30,[sp, #-0x30]!
02c8b998  stp x22,x21,[sp, #0x10]
02c8b99c  stp x20,x19,[sp, #0x20]
02c8b9a0  adrp x21,0x625c000
02c8b9a4  adrp x22,0x5e5d000
02c8b9a8  adrp x20,0x5e59000
02c8b9ac  ldrb w8,[x21, #0x3af]
02c8b9b0  ldr x22,[x22, #0x790]
02c8b9b4  ldr x20,[x20, #0x50]
02c8b9b8  mov x19,x0
02c8b9bc  tbnz w8,#0x0,0x02c8b9e0
02c8b9c0  adrp x0,0x5e5d000
02c8b9c4  ldr x0,[x0, #0x790]
02c8b9c8  bl 0x029f5a50
02c8b9cc  adrp x0,0x5e59000
02c8b9d0  ldr x0,[x0, #0x50]
02c8b9d4  bl 0x029f5a50
02c8b9d8  mov w8,#0x1
02c8b9dc  strb w8,[x21, #0x3af]
02c8b9e0  ldr x0,[x22]
02c8b9e4  mov w1,#0x3
02c8b9e8  bl 0x029f5b40
02c8b9ec  mov x1,x0
02c8b9f0  mov x0,x19
02c8b9f4  str x1,[x0, #0x20]!
02c8b9f8  bl 0x029f59f4
02c8b9fc  ldr x1,[x20]
02c8ba00  mov x0,x19
02c8ba04  str x1,[x0, #0x28]!
02c8ba08  bl 0x029f59f4
02c8ba0c  mov x0,x19
02c8ba10  ldp x20,x19,[sp, #0x20]
02c8ba14  ldp x22,x21,[sp, #0x10]
02c8ba18  mov x1,xzr
02c8ba1c  ldr x30,[sp], #0x30
02c8ba20  b 0x057e2ee0
