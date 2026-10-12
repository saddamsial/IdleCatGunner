02c35290  stp x30,x21,[sp, #-0x20]!
02c35294  stp x20,x19,[sp, #0x10]
02c35298  adrp x20,0x625c000
02c3529c  adrp x21,0x5e5d000
02c352a0  mov x19,x0
02c352a4  ldrb w8,[x20, #0x60]
02c352a8  ldr x21,[x21, #0xd28]
02c352ac  tbnz w8,#0x0,0x02c352c4
02c352b0  adrp x0,0x5e5d000
02c352b4  ldr x0,[x0, #0xd28]
02c352b8  bl 0x029f5a50
02c352bc  mov w8,#0x1
02c352c0  strb w8,[x20, #0x60]
02c352c4  ldr x0,[x21]
02c352c8  ldr x20,[x19, #0x30]
02c352cc  ldr w8,[x0, #0xe4]
02c352d0  cbnz w8,0x02c352dc
02c352d4  bl 0x029f5bd0
02c352d8  ldr x0,[x21]
02c352dc  ldr x8,[x0, #0xb8]
02c352e0  ldr x0,[x8, #0x10]
02c352e4  cbz x0,0x02c35338
02c352e8  ldr w1,[x19, #0x20]
02c352ec  mov x2,xzr
02c352f0  bl 0x02c2e7d4
02c352f4  cbz x20,0x02c35338
02c352f8  and w1,w0,#0x1
02c352fc  mov x0,x20
02c35300  mov x2,xzr
02c35304  bl 0x057dff3c
02c35308  ldr w0,[x19, #0x20]
02c3530c  ldr x20,[x19, #0x38]
02c35310  mov x1,xzr
02c35314  bl 0x02c2e664
02c35318  cbz x20,0x02c35338
02c3531c  mov w8,#0x1
02c35320  mov x2,xzr
02c35324  bic w1,w8,w0
02c35328  mov x0,x20
02c3532c  ldp x20,x19,[sp, #0x10]
02c35330  ldp x30,x21,[sp], #0x20
02c35334  b 0x057dff3c
02c35338  bl 0x029f5cfc
