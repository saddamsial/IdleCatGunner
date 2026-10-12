02c49874  stp x30,x21,[sp, #-0x20]!
02c49878  stp x20,x19,[sp, #0x10]
02c4987c  adrp x20,0x625c000
02c49880  adrp x21,0x5e63000
02c49884  mov x19,x0
02c49888  ldrb w8,[x20, #0x10a]
02c4988c  ldr x21,[x21, #0x3a8]
02c49890  tbnz w8,#0x0,0x02c498a8
02c49894  adrp x0,0x5e63000
02c49898  ldr x0,[x0, #0x3a8]
02c4989c  bl 0x029f5a50
02c498a0  mov w8,#0x1
02c498a4  strb w8,[x20, #0x10a]
02c498a8  ldr x0,[x21]
02c498ac  bl 0x029f5cec
02c498b0  mov x1,xzr
02c498b4  mov x20,x0
02c498b8  bl 0x04893238
02c498bc  mov x0,x20
02c498c0  mov x1,x19
02c498c4  str wzr,[x20, #0x10]
02c498c8  str x19,[x0, #0x20]!
02c498cc  bl 0x029f59f4
02c498d0  mov x0,x20
02c498d4  ldp x20,x19,[sp, #0x10]
02c498d8  ldp x30,x21,[sp], #0x20
02c498dc  ret
