02c31440  lsl w9,w0,#0x1
02c31444  mov w8,#0x32
02c31448  add w9,w9,#0x2
02c3144c  cmp w9,#0x32
02c31450  csel w8,w9,w8,lt
02c31454  mov w9,#0x2
02c31458  cmp w8,#0x2
02c3145c  csel w0,w8,w9,gt
02c31460  ret
