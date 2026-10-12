02c63668  str x30,[sp, #-0x10]!
02c6366c  ldr x8,[x0, #0x20]
02c63670  cbz x8,0x02c636bc
02c63674  ldr w9,[x8, #0x18]
02c63678  cmp w9,#0x1
02c6367c  b.lt 0x02c636b0
02c63680  bic w10,w9,w9, ASR #0x1f
02c63684  mov w11,wzr
02c63688  cmp w9,w11
02c6368c  b.eq 0x02c636c0
02c63690  add x12,x8,w11, SXTW  #0x3
02c63694  ldr x0,[x12, #0x20]
02c63698  cbz x0,0x02c636bc
02c6369c  ldrb w12,[x0, #0x48]
02c636a0  cbz w12,0x02c636b4
02c636a4  add w11,w11,#0x1
02c636a8  cmp w10,w11
02c636ac  b.ne 0x02c63688
02c636b0  mov x0,xzr
02c636b4  ldr x30,[sp], #0x10
02c636b8  ret
02c636bc  bl 0x029f5cfc
02c636c0  bl 0x029f5d04
