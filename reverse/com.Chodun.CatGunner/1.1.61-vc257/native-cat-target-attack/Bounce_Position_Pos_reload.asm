02b9c164  ldrb w8,[x0, #0x48]
02b9c168  cbz w8,0x02b9c170
02b9c16c  ret
02b9c170  fmov s0,0x3f000000
02b9c174  ldr s1,[x0, #0x30]
02b9c178  mov w8,#0x1
02b9c17c  strb w8,[x0, #0x48]
02b9c180  fmul s0,s1,s0
02b9c184  str s0,[x0, #0x34]
02b9c188  ret
