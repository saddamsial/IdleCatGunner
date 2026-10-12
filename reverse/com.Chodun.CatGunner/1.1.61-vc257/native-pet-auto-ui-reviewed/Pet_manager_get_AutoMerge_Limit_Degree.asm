02c7d834  stp x30,x19,[sp, #-0x10]!
02c7d838  ldr w19,[x0, #0x64]
02c7d83c  bl 0x02c7d7e4
02c7d840  sub w9,w0,#0x1
02c7d844  mov w8,#0x6
02c7d848  cmp w19,w9
02c7d84c  csel w9,w19,w9,lt
02c7d850  cmp w9,#0x6
02c7d854  csel w0,w9,w8,lt
02c7d858  ldp x30,x19,[sp], #0x10
02c7d85c  ret
