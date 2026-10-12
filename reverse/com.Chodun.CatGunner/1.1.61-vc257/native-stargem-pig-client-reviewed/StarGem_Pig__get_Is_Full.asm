02ca1158  stp x30,x19,[sp, #-0x10]!
02ca115c  ldr w19,[x0, #0x24]
02ca1160  bl 0x02ca0fa8
02ca1164  cmp w19,w0
02ca1168  cset w0,ge
02ca116c  ldp x30,x19,[sp], #0x10
02ca1170  ret
