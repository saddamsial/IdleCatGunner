02c344b0  stp x30,x21,[sp, #-0x20]!
02c344b4  stp x20,x19,[sp, #0x10]
02c344b8  adrp x21,0x625c000
02c344bc  adrp x20,0x5e5d000
02c344c0  mov x19,x0
02c344c4  ldrb w8,[x21, #0x54]
02c344c8  ldr x20,[x20, #0xd28]
02c344cc  tbnz w8,#0x0,0x02c344e4
02c344d0  adrp x0,0x5e5d000
02c344d4  ldr x0,[x0, #0xd28]
02c344d8  bl 0x029f5a50
02c344dc  mov w8,#0x1
02c344e0  strb w8,[x21, #0x54]
02c344e4  ldr x0,[x20]
02c344e8  ldr w8,[x0, #0xe4]
02c344ec  cbnz w8,0x02c344f8
02c344f0  bl 0x029f5bd0
02c344f4  ldr x0,[x20]
02c344f8  ldr x8,[x0, #0xb8]
02c344fc  ldr x0,[x8, #0x10]
02c34500  cbz x0,0x02c34534
02c34504  ldp w1,w2,[x19, #0x20]
02c34508  mov x3,xzr
02c3450c  bl 0x02c2e384
02c34510  mov x0,x19
02c34514  mov x1,xzr
02c34518  bl 0x057dc1c8
02c3451c  cbz x0,0x02c34534
02c34520  ldp x20,x19,[sp, #0x10]
02c34524  mov w1,wzr
02c34528  mov x2,xzr
02c3452c  ldp x30,x21,[sp], #0x20
02c34530  b 0x057dff3c
02c34534  bl 0x029f5cfc
