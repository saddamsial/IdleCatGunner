02c4c3d0  stp x30,x21,[sp, #-0x20]!
02c4c3d4  stp x20,x19,[sp, #0x10]
02c4c3d8  adrp x20,0x625c000
02c4c3dc  mov x19,x0
02c4c3e0  ldrb w8,[x20, #0x130]
02c4c3e4  tbnz w8,#0x0,0x02c4c3fc
02c4c3e8  adrp x0,0x5e5d000
02c4c3ec  ldr x0,[x0, #0xd58]
02c4c3f0  bl 0x029f5a50
02c4c3f4  mov w8,#0x1
02c4c3f8  strb w8,[x20, #0x130]
02c4c3fc  mov x20,x19
02c4c400  ldr x1,[x20, #0x70]!
02c4c404  cbz x1,0x02c4c424
02c4c408  mov x0,x19
02c4c40c  mov x2,xzr
02c4c410  bl 0x057e237c
02c4c414  mov x0,x20
02c4c418  mov x1,xzr
02c4c41c  str xzr,[x19, #0x70]
02c4c420  bl 0x029f59f4
02c4c424  adrp x21,0x625b000
02c4c428  ldr x20,[x19, #0x28]
02c4c42c  ldrb w8,[x21, #0x26f]
02c4c430  cbnz w8,0x02c4c448
02c4c434  adrp x0,0x5e58000
02c4c438  ldr x0,[x0, #0xbf8]
02c4c43c  bl 0x029f5a50
02c4c440  mov w8,#0x1
02c4c444  strb w8,[x21, #0x26f]
02c4c448  cbz x20,0x02c4c4c4
02c4c44c  adrp x8,0x5e58000
02c4c450  adrp x21,0x5e5d000
02c4c454  mov x0,x20
02c4c458  ldr x8,[x8, #0xbf8]
02c4c45c  mov x1,xzr
02c4c460  ldr x8,[x8]
02c4c464  ldr x8,[x8, #0xb8]
02c4c468  ldr x21,[x21, #0xd58]
02c4c46c  ldp s1,s2,[x8, #0x4]
02c4c470  ldr s0,[x8]
02c4c474  bl 0x0586b344
02c4c478  ldr x0,[x21]
02c4c47c  ldr w8,[x0, #0xe4]
02c4c480  cbnz w8,0x02c4c48c
02c4c484  bl 0x029f5bd0
02c4c488  ldr x0,[x21]
02c4c48c  ldr x8,[x0, #0xb8]
02c4c490  ldr x0,[x8, #0x8]
02c4c494  cbz x0,0x02c4c4c4
02c4c498  mov x1,x19
02c4c49c  bl 0x02c4c95c
02c4c4a0  mov x0,x19
02c4c4a4  mov x1,xzr
02c4c4a8  bl 0x057dc1c8
02c4c4ac  cbz x0,0x02c4c4c4
02c4c4b0  ldp x20,x19,[sp, #0x10]
02c4c4b4  mov w1,wzr
02c4c4b8  mov x2,xzr
02c4c4bc  ldp x30,x21,[sp], #0x20
02c4c4c0  b 0x057dff3c
02c4c4c4  bl 0x029f5cfc
