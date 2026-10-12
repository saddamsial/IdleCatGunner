02b9c13c  ldrb w8,[x0, #0x48]
02b9c140  cbz w8,0x02b9c148
02b9c144  ret
02b9c148  fmov s0,0x3f000000
02b9c14c  ldr s1,[x0, #0x30]
02b9c150  mov w8,#0x1
02b9c154  strb w8,[x0, #0x48]
02b9c158  fmul s0,s1,s0
02b9c15c  str s0,[x0, #0x34]
02b9c160  ret
