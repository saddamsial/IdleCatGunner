02c36774  str x30,[sp, #-0x20]!
02c36778  stp x20,x19,[sp, #0x10]
02c3677c  mov x20,x0
02c36780  mov x19,x0
02c36784  ldr x1,[x20, #0x98]!
02c36788  cbz x1,0x02c367a8
02c3678c  mov x0,x19
02c36790  mov x2,xzr
02c36794  bl 0x057e237c
02c36798  mov x0,x20
02c3679c  mov x1,xzr
02c367a0  str xzr,[x19, #0x98]
02c367a4  bl 0x029f59f4
02c367a8  mov x0,x19
02c367ac  mov x1,xzr
02c367b0  bl 0x057dc1c8
02c367b4  cbz x0,0x02c367cc
02c367b8  ldp x20,x19,[sp, #0x10]
02c367bc  mov w1,wzr
02c367c0  mov x2,xzr
02c367c4  ldr x30,[sp], #0x20
02c367c8  b 0x057dff3c
02c367cc  bl 0x029f5cfc
