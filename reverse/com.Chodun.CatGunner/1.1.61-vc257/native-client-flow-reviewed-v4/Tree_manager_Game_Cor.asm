02cad070  stp x30,x21,[sp, #-0x20]!
02cad074  stp x20,x19,[sp, #0x10]
02cad078  adrp x20,0x625c000
02cad07c  adrp x21,0x5e64000
02cad080  mov x19,x0
02cad084  ldrb w8,[x20, #0x51f]
02cad088  ldr x21,[x21, #0xaa0]
02cad08c  tbnz w8,#0x0,0x02cad0a4
02cad090  adrp x0,0x5e64000
02cad094  ldr x0,[x0, #0xaa0]
02cad098  bl 0x029f5a50
02cad09c  mov w8,#0x1
02cad0a0  strb w8,[x20, #0x51f]
02cad0a4  ldr x0,[x21]
02cad0a8  bl 0x029f5cec
02cad0ac  mov x1,xzr
02cad0b0  mov x20,x0
02cad0b4  bl 0x04893238
02cad0b8  mov x0,x20
02cad0bc  mov x1,x19
02cad0c0  str wzr,[x20, #0x10]
02cad0c4  str x19,[x0, #0x20]!
02cad0c8  bl 0x029f59f4
02cad0cc  mov x0,x20
02cad0d0  ldp x20,x19,[sp, #0x10]
02cad0d4  ldp x30,x21,[sp], #0x20
02cad0d8  ret
