029fc96c  stp x30,x19,[sp, #-0x10]!
029fc970  mov x19,x0
029fc974  adrp x1,0x1180000
029fc978  add x1,x1,#0xfe5
029fc97c  mov w0,#0x6
029fc980  bl 0x05afb830
029fc984  mov x0,x19
029fc988  bl 0x02a54100
029fc98c  and w0,w0,#0x1
029fc990  ldp x30,x19,[sp], #0x10
029fc994  ret
