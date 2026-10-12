02c585b8  str x30,[sp, #-0x10]!
02c585bc  ldr x12,[x0, #0x90]
02c585c0  cbz x12,0x02c58624
02c585c4  ldr x10,[x12, #0x18]
02c585c8  mov x9,xzr
02c585cc  cmp w10,#0x1
02c585d0  and x8,x10,#0xffffffff
02c585d4  b.lt 0x02c58610
02c585d8  bic w10,w10,w10, ASR #0x1f
02c585dc  ldr w11,[x0, #0x98]
02c585e0  add x12,x12,#0x20
02c585e4  cmp x11,x9
02c585e8  b.eq 0x02c58604
02c585ec  cbz x8,0x02c58620
02c585f0  ldr w13,[x12, x9, LSL #0x2]
02c585f4  cmn w13,#0x1
02c585f8  b.eq 0x02c58604
02c585fc  cmp w13,w1
02c58600  b.eq 0x02c58610
02c58604  add x9,x9,#0x1
02c58608  cmp x10,x9
02c5860c  b.ne 0x02c585e4
02c58610  cmp x9,w8, SXTW 
02c58614  cset w0,lt
02c58618  ldr x30,[sp], #0x10
02c5861c  ret
02c58620  bl 0x029f5d04
02c58624  bl 0x029f5cfc
