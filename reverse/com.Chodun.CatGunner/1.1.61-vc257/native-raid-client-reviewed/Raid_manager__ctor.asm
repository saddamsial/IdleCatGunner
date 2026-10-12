02c59e3c  stp x30,x23,[sp, #-0x30]!
02c59e40  stp x22,x21,[sp, #0x10]
02c59e44  stp x20,x19,[sp, #0x20]
02c59e48  adrp x20,0x625c000
02c59e4c  adrp x22,0x5e5d000
02c59e50  adrp x23,0x5e63000
02c59e54  ldrb w8,[x20, #0x1cf]
02c59e58  ldr x22,[x22, #0x790]
02c59e5c  ldr x23,[x23, #0x738]
02c59e60  mov x19,x0
02c59e64  tbnz w8,#0x0,0x02c59e88
02c59e68  adrp x0,0x5e5d000
02c59e6c  ldr x0,[x0, #0x790]
02c59e70  bl 0x029f5a50
02c59e74  adrp x0,0x5e63000
02c59e78  ldr x0,[x0, #0x738]
02c59e7c  bl 0x029f5a50
02c59e80  mov w8,#0x1
02c59e84  strb w8,[x20, #0x1cf]
02c59e88  ldr x0,[x22]
02c59e8c  mov w21,#0xffffffff
02c59e90  mov w1,#0x3
02c59e94  str w21,[x19, #0x78]
02c59e98  bl 0x029f5b40
02c59e9c  ldr x1,[x23]
02c59ea0  mov x2,xzr
02c59ea4  mov x20,x0
02c59ea8  bl 0x047779e0
02c59eac  mov x0,x19
02c59eb0  mov x1,x20
02c59eb4  str x20,[x0, #0x88]!
02c59eb8  bl 0x029f59f4
02c59ebc  ldr x0,[x22]
02c59ec0  mov w1,#0x3
02c59ec4  bl 0x029f5b40
02c59ec8  ldr x1,[x23]
02c59ecc  mov x2,xzr
02c59ed0  mov x20,x0
02c59ed4  bl 0x047779e0
02c59ed8  mov x0,x19
02c59edc  mov x1,x20
02c59ee0  str x20,[x0, #0x90]!
02c59ee4  bl 0x029f59f4
02c59ee8  adrp x8,0x116f000
02c59eec  ldr x0,[x22]
02c59ef0  mov w1,#0x7
02c59ef4  ldr d0,[x8, #0xb78]
02c59ef8  mov w8,#0x1
02c59efc  str wzr,[x19, #0xe0]
02c59f00  strb w8,[x19, #0xe8]
02c59f04  str d0,[x19, #0xd8]
02c59f08  bl 0x029f5b40
02c59f0c  mov x1,x0
02c59f10  mov x0,x19
02c59f14  str x1,[x0, #0xf8]!
02c59f18  bl 0x029f59f4
02c59f1c  mov x0,x19
02c59f20  str w21,[x19, #0x100]
02c59f24  mov x1,xzr
02c59f28  ldp x20,x19,[sp, #0x20]
02c59f2c  ldp x22,x21,[sp, #0x10]
02c59f30  ldp x30,x23,[sp], #0x30
02c59f34  b 0x057e2ee0
