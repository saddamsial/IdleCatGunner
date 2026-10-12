02c49b4c  stp x30,x21,[sp, #-0x20]!
02c49b50  stp x20,x19,[sp, #0x10]
02c49b54  adrp x20,0x625c000
02c49b58  adrp x21,0x5e63000
02c49b5c  mov x19,x0
02c49b60  ldrb w8,[x20, #0x10e]
02c49b64  ldr x21,[x21, #0x3b8]
02c49b68  tbnz w8,#0x0,0x02c49b80
02c49b6c  adrp x0,0x5e63000
02c49b70  ldr x0,[x0, #0x3b8]
02c49b74  bl 0x029f5a50
02c49b78  mov w8,#0x1
02c49b7c  strb w8,[x20, #0x10e]
02c49b80  ldr x0,[x21]
02c49b84  bl 0x029f5cec
02c49b88  mov x1,xzr
02c49b8c  mov x20,x0
02c49b90  bl 0x04893238
02c49b94  mov x0,x20
02c49b98  mov x1,x19
02c49b9c  str wzr,[x20, #0x10]
02c49ba0  str x19,[x0, #0x20]!
02c49ba4  bl 0x029f59f4
02c49ba8  mov x0,x20
02c49bac  ldp x20,x19,[sp, #0x10]
02c49bb0  ldp x30,x21,[sp], #0x20
02c49bb4  ret
