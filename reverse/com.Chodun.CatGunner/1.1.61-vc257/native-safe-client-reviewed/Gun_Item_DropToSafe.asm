02c73358  str x30,[sp, #-0x30]!
02c7335c  stp x22,x21,[sp, #0x10]
02c73360  stp x20,x19,[sp, #0x20]
02c73364  adrp x20,0x625c000
02c73368  mov x19,x0
02c7336c  ldrb w8,[x20, #0x2d7]
02c73370  tbnz w8,#0x0,0x02c733ac
02c73374  adrp x0,0x5e63000
02c73378  ldr x0,[x0, #0xaa8]
02c7337c  bl 0x029f5a50
02c73380  adrp x0,0x5e5d000
02c73384  ldr x0,[x0, #0xd40]
02c73388  bl 0x029f5a50
02c7338c  adrp x0,0x5e59000
02c73390  ldr x0,[x0, #0x1c0]
02c73394  bl 0x029f5a50
02c73398  adrp x0,0x5e62000
02c7339c  ldr x0,[x0, #0x648]
02c733a0  bl 0x029f5a50
02c733a4  mov w8,#0x1
02c733a8  strb w8,[x20, #0x2d7]
02c733ac  adrp x21,0x5e63000
02c733b0  ldrb w8,[x19, #0x70]
02c733b4  ldr x21,[x21, #0xaa8]
02c733b8  cbz w8,0x02c733fc
02c733bc  ldr x8,[x21]
02c733c0  ldr x8,[x8, #0xb8]
02c733c4  ldr x0,[x8]
02c733c8  cbz x0,0x02c73490
02c733cc  adrp x19,0x5e5d000
02c733d0  ldr x19,[x19, #0xd40]
02c733d4  bl 0x02c73c20
02c733d8  ldr x8,[x19]
02c733dc  ldr x8,[x8, #0xb8]
02c733e0  ldr x0,[x8]
02c733e4  cbz x0,0x02c73490
02c733e8  ldp x20,x19,[sp, #0x20]
02c733ec  mov x1,xzr
02c733f0  ldp x22,x21,[sp, #0x10]
02c733f4  ldr x30,[sp], #0x30
02c733f8  b 0x02c6a910
02c733fc  adrp x22,0x5e62000
02c73400  adrp x8,0x5e59000
02c73404  ldr x22,[x22, #0x648]
02c73408  ldr x8,[x8, #0x1c0]
02c7340c  ldr x9,[x22]
02c73410  ldr x0,[x8]
02c73414  ldr x8,[x9, #0xb8]
02c73418  ldr w9,[x0, #0xe4]
02c7341c  ldr x20,[x8]
02c73420  cbnz w9,0x02c73428
02c73424  bl 0x029f5bd0
02c73428  mov x0,x20
02c7342c  mov x1,xzr
02c73430  mov x2,xzr
02c73434  bl 0x057e14b4
02c73438  tbnz w0,#0x0,0x02c73470
02c7343c  ldr x8,[x22]
02c73440  ldr x8,[x8, #0xb8]
02c73444  ldr x0,[x8]
02c73448  cbz x0,0x02c73490
02c7344c  ldr w1,[x19, #0x90]
02c73450  mov x2,xzr
02c73454  bl 0x02c6be58
02c73458  cmn w0,#0x1
02c7345c  b.eq 0x02c73470
02c73460  ldp x20,x19,[sp, #0x20]
02c73464  ldp x22,x21,[sp, #0x10]
02c73468  ldr x30,[sp], #0x30
02c7346c  ret
02c73470  ldr x8,[x21]
02c73474  ldr x8,[x8, #0xb8]
02c73478  ldr x0,[x8]
02c7347c  cbz x0,0x02c73490
02c73480  ldp x20,x19,[sp, #0x20]
02c73484  ldp x22,x21,[sp, #0x10]
02c73488  ldr x30,[sp], #0x30
02c7348c  b 0x02c73c20
02c73490  bl 0x029f5cfc
