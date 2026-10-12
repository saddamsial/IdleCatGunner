02c4e05c  stp x30,x21,[sp, #-0x20]!
02c4e060  stp x20,x19,[sp, #0x10]
02c4e064  adrp x20,0x625c000
02c4e068  adrp x21,0x5e63000
02c4e06c  mov x19,x0
02c4e070  ldrb w8,[x20, #0x13d]
02c4e074  ldr x21,[x21, #0x4f0]
02c4e078  tbnz w8,#0x0,0x02c4e090
02c4e07c  adrp x0,0x5e63000
02c4e080  ldr x0,[x0, #0x4f0]
02c4e084  bl 0x029f5a50
02c4e088  mov w8,#0x1
02c4e08c  strb w8,[x20, #0x13d]
02c4e090  ldr x0,[x21]
02c4e094  bl 0x029f5cec
02c4e098  mov x1,xzr
02c4e09c  mov x20,x0
02c4e0a0  bl 0x04893238
02c4e0a4  mov x0,x20
02c4e0a8  mov x1,x19
02c4e0ac  str wzr,[x20, #0x10]
02c4e0b0  str x19,[x0, #0x20]!
02c4e0b4  bl 0x029f59f4
02c4e0b8  mov x0,x20
02c4e0bc  ldp x20,x19,[sp, #0x10]
02c4e0c0  ldp x30,x21,[sp], #0x20
02c4e0c4  ret
