02c7e07c  stp x30,x19,[sp, #-0x10]!
02c7e080  mov x19,x0
02c7e084  bl 0x02c7df1c
02c7e088  tbz w0,#0x0,0x02c7e09c
02c7e08c  mov x0,x19
02c7e090  bl 0x02c7e018
02c7e094  eor w8,w0,#0x1
02c7e098  b 0x02c7e0a0
02c7e09c  mov w8,wzr
02c7e0a0  and w0,w8,#0x1
02c7e0a4  ldp x30,x19,[sp], #0x10
02c7e0a8  ret
