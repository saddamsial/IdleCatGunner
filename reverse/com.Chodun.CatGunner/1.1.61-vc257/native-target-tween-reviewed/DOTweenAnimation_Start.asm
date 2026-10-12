02b77154  ldrb w8,[x0, #0x130]
02b77158  cbz w8,0x02b77160
02b7715c  ret
02b77160  stp x30,x19,[sp, #-0x10]!
02b77164  ldrb w8,[x0, #0xad]
02b77168  mov x19,x0
02b7716c  cbz w8,0x02b77190
02b77170  ldrb w8,[x19, #0xac]
02b77174  cbz w8,0x02b77190
02b77178  ldrb w2,[x19, #0xc4]
02b7717c  mov x0,x19
02b77180  mov w1,wzr
02b77184  bl 0x02b75c54
02b77188  mov w8,#0x1
02b7718c  strb w8,[x19, #0x130]
02b77190  ldp x30,x19,[sp], #0x10
02b77194  ret
