02ca4d3c  stp x30,x21,[sp, #-0x20]!
02ca4d40  stp x20,x19,[sp, #0x10]
02ca4d44  adrp x20,0x625c000
02ca4d48  adrp x21,0x5e64000
02ca4d4c  mov x19,x0
02ca4d50  ldrb w8,[x20, #0x4b2]
02ca4d54  ldr x21,[x21, #0x968]
02ca4d58  tbnz w8,#0x0,0x02ca4d70
02ca4d5c  adrp x0,0x5e64000
02ca4d60  ldr x0,[x0, #0x968]
02ca4d64  bl 0x029f5a50
02ca4d68  mov w8,#0x1
02ca4d6c  strb w8,[x20, #0x4b2]
02ca4d70  ldr x0,[x21]
02ca4d74  bl 0x029f5cec
02ca4d78  mov x1,xzr
02ca4d7c  mov x20,x0
02ca4d80  bl 0x04893238
02ca4d84  mov x0,x20
02ca4d88  mov x1,x19
02ca4d8c  str wzr,[x20, #0x10]
02ca4d90  str x19,[x0, #0x20]!
02ca4d94  bl 0x029f59f4
02ca4d98  mov x0,x20
02ca4d9c  ldp x20,x19,[sp, #0x10]
02ca4da0  ldp x30,x21,[sp], #0x20
02ca4da4  ret
