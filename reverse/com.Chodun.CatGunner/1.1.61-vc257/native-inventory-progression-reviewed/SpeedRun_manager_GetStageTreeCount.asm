02ca87fc  ldr w9,[x0, #0x30]
02ca8800  mov w8,#0xbe
02ca8804  lsl w10,w9,#0x4
02ca8808  sub w9,w10,w9
02ca880c  add w9,w9,#0x14
02ca8810  cmp w9,#0xbe
02ca8814  csel w8,w9,w8,lt
02ca8818  mov w9,#0x14
02ca881c  cmp w8,#0x14
02ca8820  csel w0,w8,w9,gt
02ca8824  ret
