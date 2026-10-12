02c46350  stp x30,x21,[sp, #-0x20]!
02c46354  stp x20,x19,[sp, #0x10]
02c46358  adrp x20,0x625c000
02c4635c  adrp x21,0x5e63000
02c46360  mov x19,x0
02c46364  ldrb w8,[x20, #0xdf]
02c46368  ldr x21,[x21, #0x320]
02c4636c  tbnz w8,#0x0,0x02c46384
02c46370  adrp x0,0x5e63000
02c46374  ldr x0,[x0, #0x320]
02c46378  bl 0x029f5a50
02c4637c  mov w8,#0x1
02c46380  strb w8,[x20, #0xdf]
02c46384  ldr x0,[x21]
02c46388  bl 0x029f5cec
02c4638c  mov x1,xzr
02c46390  mov x20,x0
02c46394  bl 0x04893238
02c46398  mov x0,x20
02c4639c  mov x1,x19
02c463a0  str wzr,[x20, #0x10]
02c463a4  str x19,[x0, #0x20]!
02c463a8  bl 0x029f59f4
02c463ac  mov x0,x20
02c463b0  ldp x20,x19,[sp, #0x10]
02c463b4  ldp x30,x21,[sp], #0x20
02c463b8  ret
