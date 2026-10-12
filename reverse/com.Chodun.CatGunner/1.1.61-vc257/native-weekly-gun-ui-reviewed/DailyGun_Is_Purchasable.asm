02c8b4e4  cmp w1,#0x2
02c8b4e8  b.hi 0x02c8b520
02c8b4ec  str x30,[sp, #-0x20]!
02c8b4f0  stp x20,x19,[sp, #0x10]
02c8b4f4  mov w19,w1
02c8b4f8  mov x20,x0
02c8b4fc  bl 0x02c8b2d0
02c8b500  mov x0,x20
02c8b504  mov w1,w19
02c8b508  bl 0x02c8b42c
02c8b50c  ldp x20,x19,[sp, #0x10]
02c8b510  cmp w0,#0x0
02c8b514  cset w0,gt
02c8b518  ldr x30,[sp], #0x20
02c8b51c  ret
02c8b520  mov w0,wzr
02c8b524  ret
