02c57c14  ldrb w8,[x0, #0x74]
02c57c18  cbz w8,0x02c57c20
02c57c1c  ret
02c57c20  mov w8,#0x1
02c57c24  mov w1,#0x2
02c57c28  strb w8,[x0, #0x74]
02c57c2c  b 0x02c577f8
