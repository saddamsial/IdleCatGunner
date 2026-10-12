02c086e8  mov w8,#0xa
02c086ec  mov w9,#0x1e
02c086f0  madd w8,w0,w8,w9
02c086f4  mov w9,#0x64
02c086f8  cmp w8,#0x64
02c086fc  csel w8,w8,w9,lt
02c08700  mov w9,#0x1e
02c08704  cmp w8,#0x1e
02c08708  csel w8,w8,w9,gt
02c0870c  madd w0,w8,w1,w8
02c08710  ret
