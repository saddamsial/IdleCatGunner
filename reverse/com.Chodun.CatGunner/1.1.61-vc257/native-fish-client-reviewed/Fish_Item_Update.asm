02c60d8c  ldrb w8,[x0, #0x48]
02c60d90  cbz w8,0x02c60da4
02c60d94  ldrb w8,[x0, #0x84]
02c60d98  cbnz w8,0x02c60da4
02c60d9c  ldrb w8,[x0, #0x86]
02c60da0  cbz w8,0x02c60da8
02c60da4  ret
02c60da8  b 0x02c60dac
