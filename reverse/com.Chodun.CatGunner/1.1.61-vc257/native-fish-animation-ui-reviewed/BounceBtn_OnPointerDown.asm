02b9b410  stp x30,x19,[sp, #-0x10]!
02b9b414  ldrb w8,[x0, #0x30]
02b9b418  cbnz w8,0x02b9b460
02b9b41c  mov w8,#0x1
02b9b420  mov x1,xzr
02b9b424  mov x19,x0
02b9b428  str xzr,[x0, #0x20]
02b9b42c  strb w8,[x0, #0x30]
02b9b430  bl 0x057dc1c8
02b9b434  cbz x0,0x02b9b468
02b9b438  mov x1,xzr
02b9b43c  bl 0x057e00b4
02b9b440  tbz w0,#0x0,0x02b9b460
02b9b444  mov x0,x19
02b9b448  bl 0x02b9b37c
02b9b44c  mov x1,x0
02b9b450  mov x0,x19
02b9b454  mov x2,xzr
02b9b458  ldp x30,x19,[sp], #0x10
02b9b45c  b 0x057e2120
02b9b460  ldp x30,x19,[sp], #0x10
02b9b464  ret
02b9b468  bl 0x029f5cfc
