02c884dc  stp x30,x19,[sp, #-0x10]!
02c884e0  mov x19,x0
02c884e4  bl 0x02c88410
02c884e8  tbz w0,#0x0,0x02c88504
02c884ec  mov x0,x19
02c884f0  bl 0x02c883a0
02c884f4  ldr w8,[x19, #0x50]
02c884f8  cmp w8,#0x1
02c884fc  cset w0,lt
02c88500  b 0x02c88508
02c88504  mov w0,wzr
02c88508  ldp x30,x19,[sp], #0x10
02c8850c  ret
