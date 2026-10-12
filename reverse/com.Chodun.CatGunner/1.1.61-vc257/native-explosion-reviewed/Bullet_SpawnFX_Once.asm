02c66e24  ldrb w8,[x0, #0xdc]
02c66e28  cbz w8,0x02c66e30
02c66e2c  ret
02c66e30  mov w8,#0x1
02c66e34  strb w8,[x0, #0xdc]
02c66e38  b 0x02c66180
