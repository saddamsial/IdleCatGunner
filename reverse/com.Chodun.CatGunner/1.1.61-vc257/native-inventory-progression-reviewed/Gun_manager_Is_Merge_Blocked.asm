02c68364  str x30,[sp, #-0x20]!
02c68368  stp x20,x19,[sp, #0x10]
02c6836c  mov w19,w2
02c68370  mov x20,x0
02c68374  bl 0x02c67eec
02c68378  tbz w0,#0x0,0x02c6838c
02c6837c  ldp x20,x19,[sp, #0x10]
02c68380  mov w0,#0x1
02c68384  ldr x30,[sp], #0x20
02c68388  ret
02c6838c  mov x0,x20
02c68390  mov w1,w19
02c68394  ldp x20,x19,[sp, #0x10]
02c68398  ldr x30,[sp], #0x20
02c6839c  b 0x02c67eec
