02cae65c  stp x30,x21,[sp, #-0x20]!
02cae660  stp x20,x19,[sp, #0x10]
02cae664  adrp x20,0x625c000
02cae668  adrp x21,0x5e64000
02cae66c  mov x19,x0
02cae670  ldrb w8,[x20, #0x52f]
02cae674  ldr x21,[x21, #0xae0]
02cae678  tbnz w8,#0x0,0x02cae690
02cae67c  adrp x0,0x5e64000
02cae680  ldr x0,[x0, #0xae0]
02cae684  bl 0x029f5a50
02cae688  mov w8,#0x1
02cae68c  strb w8,[x20, #0x52f]
02cae690  ldr x0,[x21]
02cae694  bl 0x029f5cec
02cae698  mov x1,xzr
02cae69c  mov x20,x0
02cae6a0  bl 0x04893238
02cae6a4  mov x0,x20
02cae6a8  mov x1,x19
02cae6ac  str wzr,[x20, #0x10]
02cae6b0  str x19,[x0, #0x20]!
02cae6b4  bl 0x029f59f4
02cae6b8  mov x0,x20
02cae6bc  ldp x20,x19,[sp, #0x10]
02cae6c0  ldp x30,x21,[sp], #0x20
02cae6c4  ret
