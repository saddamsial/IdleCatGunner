02c3a370  str d8,[sp, #-0x20]!
02c3a374  stp x30,x19,[sp, #0x10]
02c3a378  cbz x0,0x02c3a3a4
02c3a37c  mov x1,xzr
02c3a380  mov x19,x0
02c3a384  fmov s8,s0
02c3a388  bl 0x057ef154
02c3a38c  mov x0,x19
02c3a390  ldp x30,x19,[sp, #0x10]
02c3a394  fmov s2,s8
02c3a398  mov x1,xzr
02c3a39c  ldr d8,[sp], #0x20
02c3a3a0  b 0x057ef218
02c3a3a4  bl 0x029f5cfc
