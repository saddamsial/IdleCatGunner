02c5e234  stp x30,x19,[sp, #-0x10]!
02c5e238  mov x19,x0
02c5e23c  bl 0x02c5e1e0
02c5e240  tbz w0,#0x0,0x02c5e254
02c5e244  ldrb w8,[x19, #0xb0]
02c5e248  cmp w8,#0x0
02c5e24c  cset w0,ne
02c5e250  b 0x02c5e258
02c5e254  mov w0,wzr
02c5e258  ldp x30,x19,[sp], #0x10
02c5e25c  ret
