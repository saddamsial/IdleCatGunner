02ca8e40  stp x30,x21,[sp, #-0x20]!
02ca8e44  stp x20,x19,[sp, #0x10]
02ca8e48  adrp x20,0x625c000
02ca8e4c  adrp x21,0x5e64000
02ca8e50  mov x19,x0
02ca8e54  ldrb w8,[x20, #0x4f4]
02ca8e58  ldr x21,[x21, #0x9f8]
02ca8e5c  tbnz w8,#0x0,0x02ca8e74
02ca8e60  adrp x0,0x5e64000
02ca8e64  ldr x0,[x0, #0x9f8]
02ca8e68  bl 0x029f5a50
02ca8e6c  mov w8,#0x1
02ca8e70  strb w8,[x20, #0x4f4]
02ca8e74  ldr x0,[x21]
02ca8e78  bl 0x029f5cec
02ca8e7c  mov x1,xzr
02ca8e80  mov x20,x0
02ca8e84  bl 0x04893238
02ca8e88  mov x0,x20
02ca8e8c  mov x1,x19
02ca8e90  str wzr,[x20, #0x10]
02ca8e94  str x19,[x0, #0x20]!
02ca8e98  bl 0x029f59f4
02ca8e9c  mov x0,x20
02ca8ea0  ldp x20,x19,[sp, #0x10]
02ca8ea4  ldp x30,x21,[sp], #0x20
02ca8ea8  ret
