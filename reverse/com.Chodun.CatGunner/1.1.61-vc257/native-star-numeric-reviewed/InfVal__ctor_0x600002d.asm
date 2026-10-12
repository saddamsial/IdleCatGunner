04655a4c  sub sp,sp,#0x40
04655a50  stp x30,x23,[sp, #0x10]
04655a54  stp x22,x21,[sp, #0x20]
04655a58  stp x20,x19,[sp, #0x30]
04655a5c  adrp x23,0x6260000
04655a60  adrp x22,0x5e58000
04655a64  mov x19,x2
04655a68  ldrb w8,[x23, #0x9df]
04655a6c  ldr x22,[x22, #0xfe0]
04655a70  mov w21,w1
04655a74  mov x20,x0
04655a78  tbnz w8,#0x0,0x04655a90
04655a7c  adrp x0,0x5e58000
04655a80  ldr x0,[x0, #0xfe0]
04655a84  bl 0x029f5a50
04655a88  mov w8,#0x1
04655a8c  strb w8,[x23, #0x9df]
04655a90  ldr x0,[x22]
04655a94  stp xzr,xzr,[sp]
04655a98  ldr w8,[x0, #0xe4]
04655a9c  cbnz w8,0x04655aa4
04655aa0  bl 0x029f5bd0
04655aa4  mov w0,w21
04655aa8  mov x1,xzr
04655aac  bl 0x04d91034
04655ab0  stp x0,x1,[sp]
04655ab4  mov x1,sp
04655ab8  mov x0,x20
04655abc  mov x2,x19
04655ac0  bl 0x04655028
04655ac4  ldp x20,x19,[sp, #0x30]
04655ac8  ldp x22,x21,[sp, #0x20]
04655acc  ldp x30,x23,[sp, #0x10]
04655ad0  add sp,sp,#0x40
04655ad4  ret
