02c7cc68  mov x8,x0
02c7cc6c  mov w0,wzr
02c7cc70  tbnz w1,#0x1f,0x02c7cc98
02c7cc74  ldr x8,[x8, #0x40]
02c7cc78  cbz x8,0x02c7cc98
02c7cc7c  ldr w9,[x8, #0x18]
02c7cc80  cmp w9,w1
02c7cc84  b.le 0x02c7cc9c
02c7cc88  add x8,x8,w1, UXTW  #0x2
02c7cc8c  ldr w8,[x8, #0x20]
02c7cc90  cmn w8,#0x1
02c7cc94  cset w0,ne
02c7cc98  ret
02c7cc9c  mov w0,wzr
02c7cca0  ret
