02c6d978  mov w8,#0x14
02c6d97c  cmp w0,#0x14
02c6d980  csel w8,w0,w8,lt
02c6d984  bic w0,w8,w8, ASR #0x1f
02c6d988  ret
