02c695b4  stp x30,x19,[sp, #-0x10]!
02c695b8  ldr w19,[x0, #0x74]
02c695bc  bl 0x02c69554
02c695c0  sub w9,w0,#0x1
02c695c4  mov w8,#0x6
02c695c8  cmp w19,w9
02c695cc  csel w9,w19,w9,lt
02c695d0  cmp w9,#0x6
02c695d4  csel w0,w9,w8,lt
02c695d8  ldp x30,x19,[sp], #0x10
02c695dc  ret
