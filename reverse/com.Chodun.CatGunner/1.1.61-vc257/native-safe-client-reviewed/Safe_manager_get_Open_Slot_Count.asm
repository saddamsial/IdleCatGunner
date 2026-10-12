02c6bcdc  ldr w9,[x0, #0x28]
02c6bce0  mov w8,#0x10
02c6bce4  add w9,w9,#0x6
02c6bce8  cmp w9,#0x10
02c6bcec  csel w8,w9,w8,lt
02c6bcf0  bic w0,w8,w8, ASR #0x1f
02c6bcf4  ret
