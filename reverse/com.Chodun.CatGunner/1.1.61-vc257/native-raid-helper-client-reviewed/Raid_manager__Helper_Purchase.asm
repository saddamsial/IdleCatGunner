02c52384  str x30,[sp, #-0x20]!
02c52388  stp x20,x19,[sp, #0x10]
02c5238c  adrp x20,0x625c000
02c52390  mov x19,x0
02c52394  ldrb w8,[x20, #0x1cb]
02c52398  tbnz w8,#0x0,0x02c523bc
02c5239c  adrp x0,0x5e5d000
02c523a0  ldr x0,[x0, #0x920]
02c523a4  bl 0x029f5a50
02c523a8  adrp x0,0x5e63000
02c523ac  ldr x0,[x0, #0x5a8]
02c523b0  bl 0x029f5a50
02c523b4  mov w8,#0x1
02c523b8  strb w8,[x20, #0x1cb]
02c523bc  mov x0,x19
02c523c0  bl 0x02c444d8
02c523c4  tbz w0,#0x0,0x02c52424
02c523c8  adrp x20,0x625b000
02c523cc  ldrb w8,[x20, #0xa57]
02c523d0  cbnz w8,0x02c523e8
02c523d4  adrp x0,0x5e5d000
02c523d8  ldr x0,[x0, #0xd70]
02c523dc  bl 0x029f5a50
02c523e0  mov w8,#0x1
02c523e4  strb w8,[x20, #0xa57]
02c523e8  adrp x8,0x5e5d000
02c523ec  ldr x8,[x8, #0xd70]
02c523f0  ldr x8,[x8]
02c523f4  ldr x8,[x8, #0xb8]
02c523f8  ldr x0,[x8]
02c523fc  cbz x0,0x02c52498
02c52400  fmov s0,0x3f800000
02c52404  mov w1,#0x5
02c52408  mov x2,xzr
02c5240c  mov x3,xzr
02c52410  bl 0x02c1f10c
02c52414  mov x0,x19
02c52418  ldp x20,x19,[sp, #0x10]
02c5241c  ldr x30,[sp], #0x20
02c52420  b 0x02c574f8
02c52424  adrp x19,0x5e5d000
02c52428  ldr x19,[x19, #0x920]
02c5242c  ldr x0,[x19]
02c52430  ldr w8,[x0, #0xe4]
02c52434  cbnz w8,0x02c5243c
02c52438  bl 0x029f5bd0
02c5243c  adrp x20,0x625b000
02c52440  ldrb w8,[x20, #0x960]
02c52444  cbnz w8,0x02c5245c
02c52448  adrp x0,0x5e5d000
02c5244c  ldr x0,[x0, #0x920]
02c52450  bl 0x029f5a50
02c52454  mov w8,#0x1
02c52458  strb w8,[x20, #0x960]
02c5245c  ldr x0,[x19]
02c52460  ldr w8,[x0, #0xe4]
02c52464  cbnz w8,0x02c52470
02c52468  bl 0x029f5bd0
02c5246c  ldr x0,[x19]
02c52470  ldr x8,[x0, #0xb8]
02c52474  ldr x0,[x8]
02c52478  cbz x0,0x02c52498
02c5247c  adrp x8,0x5e63000
02c52480  mov x2,xzr
02c52484  ldr x8,[x8, #0x5a8]
02c52488  ldp x20,x19,[sp, #0x10]
02c5248c  ldr x1,[x8]
02c52490  ldr x30,[sp], #0x20
02c52494  b 0x02c9cb98
02c52498  bl 0x029f5cfc
