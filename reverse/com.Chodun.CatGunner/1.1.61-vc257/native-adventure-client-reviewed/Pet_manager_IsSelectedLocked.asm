02c7cca4  mov x8,x0
02c7cca8  mov w0,wzr
02c7ccac  tbnz w1,#0x1f,0x02c7ccd4
02c7ccb0  ldr x8,[x8, #0x48]
02c7ccb4  cbz x8,0x02c7ccd4
02c7ccb8  ldr w9,[x8, #0x18]
02c7ccbc  cmp w9,w1
02c7ccc0  b.le 0x02c7ccd8
02c7ccc4  add x8,x8,w1, UXTW  #0x2
02c7ccc8  ldr w8,[x8, #0x20]
02c7cccc  cmn w8,#0x1
02c7ccd0  cset w0,ne
02c7ccd4  ret
02c7ccd8  mov w0,wzr
02c7ccdc  ret
