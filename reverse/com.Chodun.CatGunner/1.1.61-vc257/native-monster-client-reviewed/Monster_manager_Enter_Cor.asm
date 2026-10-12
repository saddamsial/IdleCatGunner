02c4d9f8  stp x30,x21,[sp, #-0x20]!
02c4d9fc  stp x20,x19,[sp, #0x10]
02c4da00  adrp x20,0x625c000
02c4da04  adrp x21,0x5e63000
02c4da08  mov x19,x0
02c4da0c  ldrb w8,[x20, #0x139]
02c4da10  ldr x21,[x21, #0x4e0]
02c4da14  tbnz w8,#0x0,0x02c4da2c
02c4da18  adrp x0,0x5e63000
02c4da1c  ldr x0,[x0, #0x4e0]
02c4da20  bl 0x029f5a50
02c4da24  mov w8,#0x1
02c4da28  strb w8,[x20, #0x139]
02c4da2c  ldr x0,[x21]
02c4da30  bl 0x029f5cec
02c4da34  mov x1,xzr
02c4da38  mov x20,x0
02c4da3c  bl 0x04893238
02c4da40  mov x0,x20
02c4da44  mov x1,x19
02c4da48  str wzr,[x20, #0x10]
02c4da4c  str x19,[x0, #0x20]!
02c4da50  bl 0x029f59f4
02c4da54  mov x0,x20
02c4da58  ldp x20,x19,[sp, #0x10]
02c4da5c  ldp x30,x21,[sp], #0x20
02c4da60  ret
