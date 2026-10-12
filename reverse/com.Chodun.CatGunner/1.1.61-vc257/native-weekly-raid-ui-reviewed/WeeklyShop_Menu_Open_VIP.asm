02ca7398  str x30,[sp, #-0x20]!
02ca739c  stp x20,x19,[sp, #0x10]
02ca73a0  mov x19,x0
02ca73a4  bl 0x02ca7008
02ca73a8  tbz w0,#0x0,0x02ca740c
02ca73ac  mov x0,x19
02ca73b0  mov w1,#0x1
02ca73b4  mov w19,#0x1
02ca73b8  bl 0x02ca71a8
02ca73bc  adrp x20,0x625b000
02ca73c0  ldrb w8,[x20, #0xa57]
02ca73c4  cbnz w8,0x02ca73d8
02ca73c8  adrp x0,0x5e5d000
02ca73cc  ldr x0,[x0, #0xd70]
02ca73d0  bl 0x029f5a50
02ca73d4  strb w19,[x20, #0xa57]
02ca73d8  adrp x8,0x5e5d000
02ca73dc  ldr x8,[x8, #0xd70]
02ca73e0  ldr x8,[x8]
02ca73e4  ldr x8,[x8, #0xb8]
02ca73e8  ldr x0,[x8]
02ca73ec  cbz x0,0x02ca74a4
02ca73f0  ldp x20,x19,[sp, #0x10]
02ca73f4  fmov s0,0x3f800000
02ca73f8  mov w1,#0x1
02ca73fc  mov x2,xzr
02ca7400  mov x3,xzr
02ca7404  ldr x30,[sp], #0x20
02ca7408  b 0x02c1f10c
02ca740c  mov x0,xzr
02ca7410  bl 0x02be0118
02ca7414  adrp x8,0x5e58000
02ca7418  mov x19,x0
02ca741c  mov w9,#0x14
02ca7420  ldr x8,[x8, #0xa10]
02ca7424  add x1,sp,#0xc
02ca7428  str w9,[sp, #0xc]
02ca742c  ldr x0,[x8, #0x48]
02ca7430  bl 0x029f5bd8
02ca7434  mov x1,x0
02ca7438  mov x0,x19
02ca743c  mov x2,xzr
02ca7440  bl 0x046b6c0c
02ca7444  mov x1,xzr
02ca7448  bl 0x02c1dd54
02ca744c  adrp x19,0x625b000
02ca7450  ldrb w8,[x19, #0xa57]
02ca7454  cbnz w8,0x02ca746c
02ca7458  adrp x0,0x5e5d000
02ca745c  ldr x0,[x0, #0xd70]
02ca7460  bl 0x029f5a50
02ca7464  mov w8,#0x1
02ca7468  strb w8,[x19, #0xa57]
02ca746c  adrp x8,0x5e5d000
02ca7470  ldr x8,[x8, #0xd70]
02ca7474  ldr x8,[x8]
02ca7478  ldr x8,[x8, #0xb8]
02ca747c  ldr x0,[x8]
02ca7480  cbz x0,0x02ca74a4
02ca7484  fmov s0,0x3f800000
02ca7488  mov w1,#0x5
02ca748c  mov x2,xzr
02ca7490  mov x3,xzr
02ca7494  bl 0x02c1f10c
02ca7498  ldp x20,x19,[sp, #0x10]
02ca749c  ldr x30,[sp], #0x20
02ca74a0  ret
02ca74a4  bl 0x029f5cfc
