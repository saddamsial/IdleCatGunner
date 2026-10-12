02c89284  sub sp,sp,#0x30
02c89288  stp x30,x21,[sp, #0x10]
02c8928c  stp x20,x19,[sp, #0x20]
02c89290  adrp x20,0x625c000
02c89294  adrp x21,0x5e5d000
02c89298  mov x19,x0
02c8929c  ldrb w8,[x20, #0x396]
02c892a0  ldr x21,[x21, #0xd60]
02c892a4  tbnz w8,#0x0,0x02c892f8
02c892a8  adrp x0,0x5e5e000
02c892ac  ldr x0,[x0, #0x528]
02c892b0  bl 0x029f5a50
02c892b4  adrp x0,0x5e5d000
02c892b8  ldr x0,[x0, #0xd60]
02c892bc  bl 0x029f5a50
02c892c0  adrp x0,0x5e5d000
02c892c4  ldr x0,[x0, #0x920]
02c892c8  bl 0x029f5a50
02c892cc  adrp x0,0x5e5d000
02c892d0  ldr x0,[x0, #0xc20]
02c892d4  bl 0x029f5a50
02c892d8  adrp x0,0x5e63000
02c892dc  ldr x0,[x0, #0xeb8]
02c892e0  bl 0x029f5a50
02c892e4  adrp x0,0x5e5c000
02c892e8  ldr x0,[x0, #0x70]
02c892ec  bl 0x029f5a50
02c892f0  mov w8,#0x1
02c892f4  strb w8,[x20, #0x396]
02c892f8  ldr x8,[x21]
02c892fc  ldr x8,[x8, #0xb8]
02c89300  ldr x0,[x8]
02c89304  cbz x0,0x02c89428
02c89308  bl 0x02c884dc
02c8930c  tbz w0,#0x0,0x02c893b8
02c89310  adrp x19,0x5e5d000
02c89314  ldr x19,[x19, #0xc20]
02c89318  ldr x0,[x19]
02c8931c  ldr w8,[x0, #0xe4]
02c89320  cbnz w8,0x02c8932c
02c89324  bl 0x029f5bd0
02c89328  ldr x0,[x19]
02c8932c  ldr x8,[x0, #0xb8]
02c89330  ldr x8,[x8, #0x10]
02c89334  cbz x8,0x02c89428
02c89338  ldr w8,[x8, #0x28]
02c8933c  cmp w8,#0x1
02c89340  b.le 0x02c893cc
02c89344  adrp x19,0x5e5d000
02c89348  ldr x19,[x19, #0x920]
02c8934c  ldr x0,[x19]
02c89350  ldr w8,[x0, #0xe4]
02c89354  cbnz w8,0x02c8935c
02c89358  bl 0x029f5bd0
02c8935c  adrp x20,0x625b000
02c89360  ldrb w8,[x20, #0x960]
02c89364  cbnz w8,0x02c8937c
02c89368  adrp x0,0x5e5d000
02c8936c  ldr x0,[x0, #0x920]
02c89370  bl 0x029f5a50
02c89374  mov w8,#0x1
02c89378  strb w8,[x20, #0x960]
02c8937c  ldr x0,[x19]
02c89380  ldr w8,[x0, #0xe4]
02c89384  cbnz w8,0x02c89390
02c89388  bl 0x029f5bd0
02c8938c  ldr x0,[x19]
02c89390  ldr x8,[x0, #0xb8]
02c89394  ldr x0,[x8]
02c89398  cbz x0,0x02c89428
02c8939c  adrp x8,0x5e5c000
02c893a0  ldr x8,[x8, #0x70]
02c893a4  ldp x20,x19,[sp, #0x20]
02c893a8  ldp x30,x21,[sp, #0x10]
02c893ac  ldr x1,[x8]
02c893b0  add sp,sp,#0x30
02c893b4  b 0x02c8942c
02c893b8  mov x0,x19
02c893bc  ldp x20,x19,[sp, #0x20]
02c893c0  ldp x30,x21,[sp, #0x10]
02c893c4  add sp,sp,#0x30
02c893c8  b 0x02c8785c
02c893cc  adrp x8,0x5e5e000
02c893d0  ldr x8,[x8, #0x528]
02c893d4  ldr x0,[x8]
02c893d8  ldr w8,[x0, #0xe4]
02c893dc  cbnz w8,0x02c893e4
02c893e0  bl 0x029f5bd0
02c893e4  adrp x8,0x5e63000
02c893e8  mov w1,#0x1
02c893ec  mov w2,wzr
02c893f0  ldr x8,[x8, #0xeb8]
02c893f4  mov w3,#0x1
02c893f8  mov w4,wzr
02c893fc  mov x5,xzr
02c89400  mov x6,xzr
02c89404  mov w7,#0x1
02c89408  ldr x0,[x8]
02c8940c  str xzr,[sp]
02c89410  bl 0x02bccb00
02c89414  ldp x20,x19,[sp, #0x20]
02c89418  mov x1,xzr
02c8941c  ldp x30,x21,[sp, #0x10]
02c89420  add sp,sp,#0x30
02c89424  b 0x02c1dd54
02c89428  bl 0x029f5cfc
