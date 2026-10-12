02c7d7b8  stp x30,x19,[sp, #-0x10]!
02c7d7bc  mov x19,x0
02c7d7c0  bl 0x02c7d764
02c7d7c4  tbz w0,#0x0,0x02c7d7d8
02c7d7c8  ldrb w8,[x19, #0x60]
02c7d7cc  cmp w8,#0x0
02c7d7d0  cset w0,ne
02c7d7d4  b 0x02c7d7dc
02c7d7d8  mov w0,wzr
02c7d7dc  ldp x30,x19,[sp], #0x10
02c7d7e0  ret
