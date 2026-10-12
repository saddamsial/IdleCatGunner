02c6bcf8  tbnz w1,#0x1f,0x02c6bd20
02c6bcfc  ldr w8,[x0, #0x28]
02c6bd00  mov w9,#0x10
02c6bd04  add w8,w8,#0x6
02c6bd08  cmp w8,#0x10
02c6bd0c  csel w8,w8,w9,lt
02c6bd10  bic w8,w8,w8, ASR #0x1f
02c6bd14  cmp w8,w1
02c6bd18  cset w0,hi
02c6bd1c  ret
02c6bd20  mov w0,wzr
02c6bd24  ret
