02c67de0  str x30,[sp, #-0x10]!
02c67de4  ldr x8,[x0, #0x40]
02c67de8  cbz x8,0x02c67e34
02c67dec  ldr w9,[x8, #0x18]
02c67df0  cmp w9,#0x1
02c67df4  b.lt 0x02c67e24
02c67df8  bic w10,w9,w9, ASR #0x1f
02c67dfc  mov w0,wzr
02c67e00  cmp w9,w0
02c67e04  b.eq 0x02c67e30
02c67e08  add x11,x8,w0, SXTW  #0x2
02c67e0c  ldr w11,[x11, #0x20]
02c67e10  cmn w11,#0x1
02c67e14  b.eq 0x02c67e28
02c67e18  add w0,w0,#0x1
02c67e1c  cmp w10,w0
02c67e20  b.ne 0x02c67e00
02c67e24  mov w0,#0xffffffff
02c67e28  ldr x30,[sp], #0x10
02c67e2c  ret
02c67e30  bl 0x029f5d04
02c67e34  bl 0x029f5cfc
