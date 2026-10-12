04655b64  sub sp,sp,#0x40
04655b68  stp x30,x23,[sp, #0x10]
04655b6c  stp x22,x21,[sp, #0x20]
04655b70  stp x20,x19,[sp, #0x30]
04655b74  adrp x23,0x6260000
04655b78  adrp x22,0x5e58000
04655b7c  mov x19,x2
04655b80  ldrb w8,[x23, #0x9e1]
04655b84  ldr x22,[x22, #0xfe0]
04655b88  mov w21,w1
04655b8c  mov x20,x0
04655b90  tbnz w8,#0x0,0x04655ba8
04655b94  adrp x0,0x5e58000
04655b98  ldr x0,[x0, #0xfe0]
04655b9c  bl 0x029f5a50
04655ba0  mov w8,#0x1
04655ba4  strb w8,[x23, #0x9e1]
04655ba8  ldr x0,[x22]
04655bac  stp xzr,xzr,[sp]
04655bb0  ldr w8,[x0, #0xe4]
04655bb4  cbnz w8,0x04655bbc
04655bb8  bl 0x029f5bd0
04655bbc  mov w0,w21
04655bc0  mov x1,xzr
04655bc4  bl 0x04d91088
04655bc8  stp x0,x1,[sp]
04655bcc  mov x1,sp
04655bd0  mov x0,x20
04655bd4  mov x2,x19
04655bd8  bl 0x04655028
04655bdc  ldp x20,x19,[sp, #0x30]
04655be0  ldp x22,x21,[sp, #0x20]
04655be4  ldp x30,x23,[sp, #0x10]
04655be8  add sp,sp,#0x40
04655bec  ret
