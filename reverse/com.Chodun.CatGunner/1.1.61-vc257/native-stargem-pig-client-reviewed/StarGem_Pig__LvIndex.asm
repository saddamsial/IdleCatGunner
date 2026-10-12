02ca0f8c  mov w8,#0x3
02ca0f90  cmp w0,#0x3
02ca0f94  csel w8,w0,w8,lt
02ca0f98  cmp w8,#0x1
02ca0f9c  csinc w8,w8,wzr,gt
02ca0fa0  sub w0,w8,#0x1
02ca0fa4  ret
