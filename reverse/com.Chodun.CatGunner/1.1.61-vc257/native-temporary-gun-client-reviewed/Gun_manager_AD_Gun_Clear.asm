02c693b4  stp x30,x19,[sp, #-0x10]!
02c693b8  mov x19,x0
02c693bc  tbz w1,#0x0,0x02c69408
02c693c0  ldr w8,[x19, #0xc0]
02c693c4  tbnz w8,#0x1f,0x02c69408
02c693c8  ldr x9,[x19, #0x40]
02c693cc  cbz x9,0x02c6941c
02c693d0  ldr w10,[x9, #0x18]
02c693d4  cmp w8,w10
02c693d8  b.ge 0x02c69408
02c693dc  add x8,x9,x8, LSL #0x2
02c693e0  ldr w10,[x19, #0xc4]
02c693e4  ldr w9,[x8, #0x20]!
02c693e8  cmp w9,w10
02c693ec  b.ne 0x02c69408
02c693f0  mov w9,#0xffffffff
02c693f4  mov x0,x19
02c693f8  mov w2,wzr
02c693fc  str w9,[x8]
02c69400  ldr w1,[x19, #0xc0]
02c69404  bl 0x02c6802c
02c69408  movi v0.2D,#-0x1
02c6940c  str xzr,[x19, #0xc8]
02c69410  str d0,[x19, #0xc0]
02c69414  ldp x30,x19,[sp], #0x10
02c69418  ret
02c6941c  bl 0x029f5cfc
