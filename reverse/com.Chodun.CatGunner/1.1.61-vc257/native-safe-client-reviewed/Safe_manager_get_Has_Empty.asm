02c6bde4  str x30,[sp, #-0x10]!
02c6bde8  bl 0x02c6bd74
02c6bdec  cmn w0,#0x1
02c6bdf0  cset w0,ne
02c6bdf4  ldr x30,[sp], #0x10
02c6bdf8  ret
