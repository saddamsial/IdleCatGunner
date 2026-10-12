02c91230  sub sp,sp,#0x50
02c91234  stp x30,x23,[sp, #0x20]
02c91238  stp x22,x21,[sp, #0x30]
02c9123c  stp x20,x19,[sp, #0x40]
02c91240  adrp x21,0x625c000
02c91244  adrp x20,0x5e5e000
02c91248  mov w19,w0
02c9124c  ldrb w8,[x21, #0x3f1]
02c91250  ldr x20,[x20, #0xb8]
02c91254  tbnz w8,#0x0,0x02c91290
02c91258  adrp x0,0x5e5e000
02c9125c  ldr x0,[x0, #0xb8]
02c91260  bl 0x029f5a50
02c91264  adrp x0,0x5e5a000
02c91268  ldr x0,[x0, #0x180]
02c9126c  bl 0x029f5a50
02c91270  adrp x0,0x5e64000
02c91274  ldr x0,[x0, #0x158]
02c91278  bl 0x029f5a50
02c9127c  adrp x0,0x5e63000
02c91280  ldr x0,[x0, #0xf10]
02c91284  bl 0x029f5a50
02c91288  mov w8,#0x1
02c9128c  strb w8,[x21, #0x3f1]
02c91290  ldr x0,[x20]
02c91294  adrp x21,0x5e5a000
02c91298  ldr w8,[x0, #0xe4]
02c9129c  ldr x21,[x21, #0x180]
02c912a0  str xzr,[sp, #0x18]
02c912a4  cbnz w8,0x02c912ac
02c912a8  bl 0x029f5bd0
02c912ac  adrp x23,0x5e63000
02c912b0  mov w0,w19
02c912b4  ldr x23,[x23, #0xf10]
02c912b8  bl 0x02c910dc
02c912bc  ldr x8,[x21]
02c912c0  str x0,[sp, #0x18]
02c912c4  ldr w9,[x8, #0xe4]
02c912c8  cbnz w9,0x02c912d4
02c912cc  mov x0,x8
02c912d0  bl 0x029f5bd0
02c912d4  add x0,sp,#0x18
02c912d8  mov x1,xzr
02c912dc  bl 0x04868108
02c912e0  adrp x22,0x5e58000
02c912e4  add x1,sp,#0x14
02c912e8  ldr x22,[x22, #0xa10]
02c912ec  str w0,[sp, #0x14]
02c912f0  ldr x8,[x22, #0x48]
02c912f4  mov x0,x8
02c912f8  bl 0x029f5bd8
02c912fc  mov x19,x0
02c91300  add x0,sp,#0x18
02c91304  mov x1,xzr
02c91308  bl 0x0486814c
02c9130c  ldr x8,[x22, #0x48]
02c91310  str w0,[sp, #0x10]
02c91314  add x1,sp,#0x10
02c91318  mov x0,x8
02c9131c  bl 0x029f5bd8
02c91320  mov x20,x0
02c91324  add x0,sp,#0x18
02c91328  mov x1,xzr
02c9132c  bl 0x04868194
02c91330  ldr x8,[x22, #0x48]
02c91334  str w0,[sp, #0xc]
02c91338  add x1,sp,#0xc
02c9133c  mov x0,x8
02c91340  bl 0x029f5bd8
02c91344  ldr x8,[x23]
02c91348  mov x3,x0
02c9134c  mov x1,x19
02c91350  mov x2,x20
02c91354  mov x4,xzr
02c91358  mov x0,x8
02c9135c  bl 0x046c1d58
02c91360  mov x19,x0
02c91364  add x0,sp,#0x18
02c91368  mov x1,xzr
02c9136c  bl 0x048680dc
02c91370  cmp w0,#0x1
02c91374  b.lt 0x02c913cc
02c91378  ldr x0,[x21]
02c9137c  adrp x20,0x5e64000
02c91380  ldr w8,[x0, #0xe4]
02c91384  ldr x20,[x20, #0x158]
02c91388  cbnz w8,0x02c91390
02c9138c  bl 0x029f5bd0
02c91390  add x0,sp,#0x18
02c91394  mov x1,xzr
02c91398  bl 0x048680dc
02c9139c  ldr x8,[x22, #0x48]
02c913a0  str w0,[sp, #0x14]
02c913a4  add x1,sp,#0x14
02c913a8  mov x0,x8
02c913ac  bl 0x029f5bd8
02c913b0  ldr x8,[x20]
02c913b4  mov x1,x0
02c913b8  mov x2,x19
02c913bc  mov x3,xzr
02c913c0  mov x0,x8
02c913c4  bl 0x046c1d14
02c913c8  mov x19,x0
02c913cc  mov x0,x19
02c913d0  ldp x20,x19,[sp, #0x40]
02c913d4  ldp x22,x21,[sp, #0x30]
02c913d8  ldp x30,x23,[sp, #0x20]
02c913dc  add sp,sp,#0x50
02c913e0  ret
