02c6bd28  ldr w9,[x0, #0x28]
02c6bd2c  mov w8,#0x10
02c6bd30  add w9,w9,#0x6
02c6bd34  cmp w9,#0x10
02c6bd38  csel w8,w9,w8,lt
02c6bd3c  cmp w1,#0x10
02c6bd40  bic w8,w8,w8, ASR #0x1f
02c6bd44  ccmp w8,w1,#0x0,lt
02c6bd48  cset w0,eq
02c6bd4c  ret
