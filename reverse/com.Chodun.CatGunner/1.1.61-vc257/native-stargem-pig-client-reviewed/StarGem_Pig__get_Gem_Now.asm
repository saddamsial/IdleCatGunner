02ca10d8  stp x30,x19,[sp, #-0x10]!
02ca10dc  ldr w19,[x0, #0x24]
02ca10e0  bl 0x02ca0fa8
02ca10e4  cmp w19,w0
02ca10e8  csel w8,w19,w0,lt
02ca10ec  cmp w19,#0x0
02ca10f0  csel w0,wzr,w8,lt
02ca10f4  ldp x30,x19,[sp], #0x10
02ca10f8  ret
