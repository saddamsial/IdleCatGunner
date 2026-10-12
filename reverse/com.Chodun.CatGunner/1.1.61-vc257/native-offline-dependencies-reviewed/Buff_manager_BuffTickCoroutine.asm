02c37c50  stp x30,x21,[sp, #-0x20]!
02c37c54  stp x20,x19,[sp, #0x10]
02c37c58  adrp x20,0x625c000
02c37c5c  adrp x21,0x5e63000
02c37c60  mov x19,x0
02c37c64  ldrb w8,[x20, #0x79]
02c37c68  ldr x21,[x21, #0x198]
02c37c6c  tbnz w8,#0x0,0x02c37c84
02c37c70  adrp x0,0x5e63000
02c37c74  ldr x0,[x0, #0x198]
02c37c78  bl 0x029f5a50
02c37c7c  mov w8,#0x1
02c37c80  strb w8,[x20, #0x79]
02c37c84  ldr x0,[x21]
02c37c88  bl 0x029f5cec
02c37c8c  mov x1,xzr
02c37c90  mov x20,x0
02c37c94  bl 0x04893238
02c37c98  mov x0,x20
02c37c9c  mov x1,x19
02c37ca0  str wzr,[x20, #0x10]
02c37ca4  str x19,[x0, #0x20]!
02c37ca8  bl 0x029f59f4
02c37cac  mov x0,x20
02c37cb0  ldp x20,x19,[sp, #0x10]
02c37cb4  ldp x30,x21,[sp], #0x20
02c37cb8  ret
