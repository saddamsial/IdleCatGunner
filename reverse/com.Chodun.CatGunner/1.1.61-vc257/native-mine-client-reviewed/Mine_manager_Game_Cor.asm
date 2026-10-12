02c49990  stp x30,x21,[sp, #-0x20]!
02c49994  stp x20,x19,[sp, #0x10]
02c49998  adrp x20,0x625c000
02c4999c  adrp x21,0x5e63000
02c499a0  mov x19,x0
02c499a4  ldrb w8,[x20, #0x10d]
02c499a8  ldr x21,[x21, #0x3b0]
02c499ac  tbnz w8,#0x0,0x02c499c4
02c499b0  adrp x0,0x5e63000
02c499b4  ldr x0,[x0, #0x3b0]
02c499b8  bl 0x029f5a50
02c499bc  mov w8,#0x1
02c499c0  strb w8,[x20, #0x10d]
02c499c4  ldr x0,[x21]
02c499c8  bl 0x029f5cec
02c499cc  mov x1,xzr
02c499d0  mov x20,x0
02c499d4  bl 0x04893238
02c499d8  mov x0,x20
02c499dc  mov x1,x19
02c499e0  str wzr,[x20, #0x10]
02c499e4  str x19,[x0, #0x20]!
02c499e8  bl 0x029f59f4
02c499ec  mov x0,x20
02c499f0  ldp x20,x19,[sp, #0x10]
02c499f4  ldp x30,x21,[sp], #0x20
02c499f8  ret
