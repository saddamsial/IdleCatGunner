02be0358  sub sp,sp,#0x30
02be035c  str x30,[sp, #0x10]
02be0360  stp x20,x19,[sp, #0x20]
02be0364  adrp x20,0x625b000
02be0368  adrp x19,0x5e5e000
02be036c  ldrb w8,[x20, #0xc55]
02be0370  ldr x19,[x19, #0x528]
02be0374  tbnz w8,#0x0,0x02be0398
02be0378  adrp x0,0x5e5e000
02be037c  ldr x0,[x0, #0x528]
02be0380  bl 0x029f5a50
02be0384  adrp x0,0x5e60000
02be0388  ldr x0,[x0, #0xd50]
02be038c  bl 0x029f5a50
02be0390  mov w8,#0x1
02be0394  strb w8,[x20, #0xc55]
02be0398  ldr x0,[x19]
02be039c  adrp x19,0x5e60000
02be03a0  ldr w8,[x0, #0xe4]
02be03a4  ldr x19,[x19, #0xd50]
02be03a8  cbnz w8,0x02be03b0
02be03ac  bl 0x029f5bd0
02be03b0  ldr x0,[x19]
02be03b4  mov w1,#0x1
02be03b8  mov w2,wzr
02be03bc  mov w3,#0x1
02be03c0  mov w4,wzr
02be03c4  mov x5,xzr
02be03c8  mov x6,xzr
02be03cc  mov w7,#0x1
02be03d0  str xzr,[sp]
02be03d4  bl 0x02bccb00
02be03d8  ldp x20,x19,[sp, #0x20]
02be03dc  ldr x30,[sp, #0x10]
02be03e0  add sp,sp,#0x30
02be03e4  ret
