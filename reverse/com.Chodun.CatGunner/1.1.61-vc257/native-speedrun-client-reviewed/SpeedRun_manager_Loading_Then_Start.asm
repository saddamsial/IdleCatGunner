02ca92d4  stp x30,x21,[sp, #-0x20]!
02ca92d8  stp x20,x19,[sp, #0x10]
02ca92dc  adrp x20,0x625c000
02ca92e0  adrp x21,0x5e64000
02ca92e4  mov x19,x0
02ca92e8  ldrb w8,[x20, #0x4f7]
02ca92ec  ldr x21,[x21, #0xa00]
02ca92f0  tbnz w8,#0x0,0x02ca9308
02ca92f4  adrp x0,0x5e64000
02ca92f8  ldr x0,[x0, #0xa00]
02ca92fc  bl 0x029f5a50
02ca9300  mov w8,#0x1
02ca9304  strb w8,[x20, #0x4f7]
02ca9308  ldr x0,[x21]
02ca930c  bl 0x029f5cec
02ca9310  mov x1,xzr
02ca9314  mov x20,x0
02ca9318  bl 0x04893238
02ca931c  mov x0,x20
02ca9320  mov x1,x19
02ca9324  str wzr,[x20, #0x10]
02ca9328  str x19,[x0, #0x20]!
02ca932c  bl 0x029f59f4
02ca9330  mov x0,x20
02ca9334  ldp x20,x19,[sp, #0x10]
02ca9338  ldp x30,x21,[sp], #0x20
02ca933c  ret
