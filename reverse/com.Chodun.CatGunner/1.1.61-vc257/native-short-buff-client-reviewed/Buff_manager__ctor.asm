02c38144  stp x30,x21,[sp, #-0x20]!
02c38148  stp x20,x19,[sp, #0x10]
02c3814c  adrp x21,0x625c000
02c38150  adrp x20,0x5e5d000
02c38154  mov x19,x0
02c38158  ldrb w8,[x21, #0x7c]
02c3815c  ldr x20,[x20, #0x4c0]
02c38160  tbnz w8,#0x0,0x02c38184
02c38164  adrp x0,0x5e5d000
02c38168  ldr x0,[x0, #0x4c0]
02c3816c  bl 0x029f5a50
02c38170  adrp x0,0x5e5d000
02c38174  ldr x0,[x0, #0x5e8]
02c38178  bl 0x029f5a50
02c3817c  mov w8,#0x1
02c38180  strb w8,[x21, #0x7c]
02c38184  ldr x0,[x20]
02c38188  adrp x21,0x5e5d000
02c3818c  ldr w8,[x0, #0xe4]
02c38190  ldr x21,[x21, #0x5e8]
02c38194  cbnz w8,0x02c381a0
02c38198  bl 0x029f5bd0
02c3819c  ldr x0,[x20]
02c381a0  ldr x8,[x0, #0xb8]
02c381a4  ldr x0,[x21]
02c381a8  ldr w1,[x8, #0x8]
02c381ac  bl 0x029f5b40
02c381b0  mov x1,x0
02c381b4  mov x0,x19
02c381b8  str x1,[x0, #0x38]!
02c381bc  bl 0x029f59f4
02c381c0  mov x0,x19
02c381c4  ldp x20,x19,[sp, #0x10]
02c381c8  mov x1,xzr
02c381cc  ldp x30,x21,[sp], #0x20
02c381d0  b 0x057e2ee0
