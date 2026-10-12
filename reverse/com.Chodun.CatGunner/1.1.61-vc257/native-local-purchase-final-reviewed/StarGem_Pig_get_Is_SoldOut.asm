02ca1174  ldr w8,[x0, #0x20]
02ca1178  cmp w8,#0x3
02ca117c  b.ge 0x02ca1188
02ca1180  mov w0,wzr
02ca1184  ret
02ca1188  stp x30,x19,[sp, #-0x10]!
02ca118c  ldr w19,[x0, #0x28]
02ca1190  bl 0x02ca1040
02ca1194  cmp w19,w0
02ca1198  cset w0,ge
02ca119c  ldp x30,x19,[sp], #0x10
02ca11a0  ret
