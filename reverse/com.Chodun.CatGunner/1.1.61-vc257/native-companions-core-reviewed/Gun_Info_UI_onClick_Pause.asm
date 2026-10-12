02c7040c  stp x30,x21,[sp, #-0x20]!
02c70410  stp x20,x19,[sp, #0x10]
02c70414  adrp x20,0x625c000
02c70418  mov x19,x0
02c7041c  ldrb w8,[x20, #0x2c2]
02c70420  tbnz w8,#0x0,0x02c70438
02c70424  adrp x0,0x5e5d000
02c70428  ldr x0,[x0, #0xd40]
02c7042c  bl 0x029f5a50
02c70430  mov w8,#0x1
02c70434  strb w8,[x20, #0x2c2]
02c70438  bl 0x02c6febc
02c7043c  tbz w0,#0x0,0x02c704c0
02c70440  mov x0,x19
02c70444  bl 0x02c7008c
02c70448  tbz w0,#0x0,0x02c704cc
02c7044c  mov x0,x19
02c70450  bl 0x02c7000c
02c70454  tbz w0,#0x0,0x02c704cc
02c70458  mov x0,x19
02c7045c  mov w1,#0x1
02c70460  mov w20,#0x1
02c70464  bl 0x02c701c8
02c70468  adrp x21,0x625b000
02c7046c  ldrb w8,[x21, #0xa57]
02c70470  cbnz w8,0x02c70484
02c70474  adrp x0,0x5e5d000
02c70478  ldr x0,[x0, #0xd70]
02c7047c  bl 0x029f5a50
02c70480  strb w20,[x21, #0xa57]
02c70484  adrp x8,0x5e5d000
02c70488  ldr x8,[x8, #0xd70]
02c7048c  ldr x8,[x8]
02c70490  ldr x8,[x8, #0xb8]
02c70494  ldr x0,[x8]
02c70498  cbz x0,0x02c704fc
02c7049c  fmov s0,0x3f800000
02c704a0  mov w1,#0x1
02c704a4  mov x2,xzr
02c704a8  mov x3,xzr
02c704ac  bl 0x02c1f10c
02c704b0  mov x0,x19
02c704b4  ldp x20,x19,[sp, #0x10]
02c704b8  ldp x30,x21,[sp], #0x20
02c704bc  b 0x02c6fc9c
02c704c0  ldp x20,x19,[sp, #0x10]
02c704c4  ldp x30,x21,[sp], #0x20
02c704c8  b 0x02c70370
02c704cc  mov x0,x19
02c704d0  bl 0x02c7034c
02c704d4  adrp x8,0x5e5d000
02c704d8  ldr x8,[x8, #0xd40]
02c704dc  ldr x8,[x8]
02c704e0  ldr x8,[x8, #0xb8]
02c704e4  ldr x0,[x8]
02c704e8  cbz x0,0x02c704fc
02c704ec  ldp x20,x19,[sp, #0x10]
02c704f0  mov x1,xzr
02c704f4  ldp x30,x21,[sp], #0x20
02c704f8  b 0x02c6841c
02c704fc  bl 0x029f5cfc
