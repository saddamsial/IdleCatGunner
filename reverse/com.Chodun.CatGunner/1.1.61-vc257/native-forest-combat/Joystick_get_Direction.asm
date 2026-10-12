02b87424  str d8,[sp, #-0x20]!
02b87428  stp x30,x19,[sp, #0x10]
02b8742c  ldrb w8,[x0, #0x2c]
02b87430  ldr s8,[x0, #0x58]
02b87434  mov x19,x0
02b87438  cbz w8,0x02b87450
02b8743c  fmov s0,s8
02b87440  mov x0,x19
02b87444  mov w1,#0x1
02b87448  bl 0x02b87488
02b8744c  fmov s8,s0
02b87450  ldrb w8,[x19, #0x2d]
02b87454  ldr s1,[x19, #0x5c]
02b87458  cbz w8,0x02b87470
02b8745c  fmov s0,s1
02b87460  mov x0,x19
02b87464  mov w1,#0x2
02b87468  bl 0x02b87488
02b8746c  fmov s1,s0
02b87470  ldp x30,x19,[sp, #0x10]
02b87474  fmov s0,s8
02b87478  ldr d8,[sp], #0x20
02b8747c  ret
