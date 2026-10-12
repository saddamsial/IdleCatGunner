02c17d84  stp x30,x19,[sp, #-0x10]!
02c17d88  ldr x8,[x0, #0x20]
02c17d8c  cbz x8,0x02c17ddc
02c17d90  ldr w9,[x8, #0x18]
02c17d94  cmp w9,w1
02c17d98  b.ls 0x02c17de0
02c17d9c  mov w9,#0x18
02c17da0  smaddl x8,w1,w9,x8
02c17da4  add x0,x8,#0x20
02c17da8  bl 0x02c17de4
02c17dac  cbz x0,0x02c17ddc
02c17db0  mov x1,xzr
02c17db4  mov x19,x0
02c17db8  bl 0x057e00b4
02c17dbc  tbz w0,#0x0,0x02c17dd0
02c17dc0  mov x0,x19
02c17dc4  mov w1,#0x1
02c17dc8  mov x2,xzr
02c17dcc  bl 0x057dff3c
02c17dd0  mov x0,x19
02c17dd4  ldp x30,x19,[sp], #0x10
02c17dd8  ret
02c17ddc  bl 0x029f5cfc
02c17de0  bl 0x029f5d04
