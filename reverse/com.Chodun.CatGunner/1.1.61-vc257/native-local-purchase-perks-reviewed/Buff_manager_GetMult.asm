02c376a8  stp x30,x19,[sp, #-0x10]!
02c376ac  mov x19,x0
02c376b0  bl 0x02c37494
02c376b4  tbz w0,#0x0,0x02c376d0
02c376b8  mov x0,x19
02c376bc  bl 0x02c375b8
02c376c0  mov w8,#0x3
02c376c4  tst w0,#0x1
02c376c8  cinc w0,w8,ne
02c376cc  b 0x02c376d4
02c376d0  mov w0,#0x1
02c376d4  ldp x30,x19,[sp], #0x10
02c376d8  ret
