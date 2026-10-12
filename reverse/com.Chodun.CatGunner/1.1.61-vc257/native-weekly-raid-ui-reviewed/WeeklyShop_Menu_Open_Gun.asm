02ca7338  stp x30,x19,[sp, #-0x10]!
02ca733c  mov w1,wzr
02ca7340  bl 0x02ca71a8
02ca7344  adrp x19,0x625b000
02ca7348  ldrb w8,[x19, #0xa57]
02ca734c  cbnz w8,0x02ca7364
02ca7350  adrp x0,0x5e5d000
02ca7354  ldr x0,[x0, #0xd70]
02ca7358  bl 0x029f5a50
02ca735c  mov w8,#0x1
02ca7360  strb w8,[x19, #0xa57]
02ca7364  adrp x8,0x5e5d000
02ca7368  ldr x8,[x8, #0xd70]
02ca736c  ldr x8,[x8]
02ca7370  ldr x8,[x8, #0xb8]
02ca7374  ldr x0,[x8]
02ca7378  cbz x0,0x02ca7394
02ca737c  fmov s0,0x3f800000
02ca7380  mov w1,#0x1
02ca7384  mov x2,xzr
02ca7388  mov x3,xzr
02ca738c  ldp x30,x19,[sp], #0x10
02ca7390  b 0x02c1f10c
02ca7394  bl 0x029f5cfc
