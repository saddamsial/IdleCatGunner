02b9bd20  ldrb w8,[x0, #0x4c]
02b9bd24  cbz w8,0x02b9bd2c
02b9bd28  ret
02b9bd2c  fmov s0,0x3f000000
02b9bd30  ldr s1,[x0, #0x34]
02b9bd34  mov w8,#0x1
02b9bd38  strb w8,[x0, #0x4c]
02b9bd3c  fmul s0,s1,s0
02b9bd40  str s0,[x0, #0x38]
02b9bd44  ret
