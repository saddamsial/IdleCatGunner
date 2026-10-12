02c5030c  str x30,[sp, #-0x20]!
02c50310  stp x20,x19,[sp, #0x10]
02c50314  adrp x20,0x625c000
02c50318  mov x19,x0
02c5031c  ldrb w8,[x20, #0x152]
02c50320  tbnz w8,#0x0,0x02c50368
02c50324  adrp x0,0x5e5d000
02c50328  ldr x0,[x0, #0x910]
02c5032c  bl 0x029f5a50
02c50330  adrp x0,0x5e59000
02c50334  ldr x0,[x0, #0x1c0]
02c50338  bl 0x029f5a50
02c5033c  adrp x0,0x5e5d000
02c50340  ldr x0,[x0, #0xc20]
02c50344  bl 0x029f5a50
02c50348  adrp x0,0x5e5d000
02c5034c  ldr x0,[x0, #0x368]
02c50350  bl 0x029f5a50
02c50354  adrp x0,0x5e5a000
02c50358  ldr x0,[x0, #0x710]
02c5035c  bl 0x029f5a50
02c50360  mov w8,#0x1
02c50364  strb w8,[x20, #0x152]
02c50368  ldr w8,[x19, #0x10]
02c5036c  cmp w8,#0x2
02c50370  b.eq 0x02c50460
02c50374  cmp w8,#0x1
02c50378  b.eq 0x02c503e4
02c5037c  cbnz w8,0x02c504a0
02c50380  adrp x8,0x5e5d000
02c50384  ldr x8,[x8, #0x368]
02c50388  ldr x8,[x8]
02c5038c  ldr x8,[x8, #0xb8]
02c50390  ldr x0,[x8]
02c50394  mov w8,#0xffffffff
02c50398  str w8,[x19, #0x10]
02c5039c  cbz x0,0x02c50520
02c503a0  mov x1,xzr
02c503a4  bl 0x02c2a604
02c503a8  adrp x8,0x5e5a000
02c503ac  ldr x8,[x8, #0x710]
02c503b0  ldr x0,[x8]
02c503b4  bl 0x029f5cec
02c503b8  fmov s0,0x3fc00000
02c503bc  mov x1,xzr
02c503c0  mov x20,x0
02c503c4  bl 0x057e84e0
02c503c8  str x20,[x19, #0x18]!
02c503cc  mov x0,x19
02c503d0  mov x1,x20
02c503d4  bl 0x029f59f4
02c503d8  mov w0,#0x1
02c503dc  stur w0,[x19, #-0x8]
02c503e0  b 0x02c504a4
02c503e4  adrp x20,0x5e5d000
02c503e8  mov w9,#0xffffffff
02c503ec  ldr x20,[x20, #0xc20]
02c503f0  str w9,[x19, #0x10]
02c503f4  ldr x0,[x20]
02c503f8  ldr w8,[x0, #0xe4]
02c503fc  cbnz w8,0x02c50408
02c50400  bl 0x029f5bd0
02c50404  ldr x0,[x20]
02c50408  ldr x8,[x0, #0xb8]
02c5040c  ldr x0,[x8, #0x10]
02c50410  cbz x0,0x02c50520
02c50414  mov x1,xzr
02c50418  bl 0x02caac18
02c5041c  adrp x8,0x5e5a000
02c50420  ldr x8,[x8, #0x710]
02c50424  ldr x0,[x8]
02c50428  bl 0x029f5cec
02c5042c  adrp x8,0x116c000
02c50430  mov x1,xzr
02c50434  mov x20,x0
02c50438  ldr s0,[x8, #0x60]
02c5043c  bl 0x057e84e0
02c50440  str x20,[x19, #0x18]!
02c50444  mov x0,x19
02c50448  mov x1,x20
02c5044c  bl 0x029f59f4
02c50450  mov w8,#0x2
02c50454  mov w0,#0x1
02c50458  stur w8,[x19, #-0x8]
02c5045c  b 0x02c504a4
02c50460  adrp x8,0x5e5d000
02c50464  ldr x8,[x8, #0x368]
02c50468  ldr x20,[x19, #0x20]
02c5046c  ldr x8,[x8]
02c50470  ldr x8,[x8, #0xb8]
02c50474  ldr x0,[x8]
02c50478  mov w8,#0xffffffff
02c5047c  str w8,[x19, #0x10]
02c50480  cbz x0,0x02c50520
02c50484  mov x1,xzr
02c50488  bl 0x02c2a620
02c5048c  cbz x20,0x02c50520
02c50490  ldrb w8,[x20, #0xb9]
02c50494  cbz w8,0x02c504a0
02c50498  ldrb w8,[x20, #0xba]
02c5049c  cbz w8,0x02c504b0
02c504a0  mov w0,wzr
02c504a4  ldp x20,x19,[sp, #0x10]
02c504a8  ldr x30,[sp], #0x20
02c504ac  ret
02c504b0  ldr w8,[x20, #0x13c]
02c504b4  cmp w8,#0x1
02c504b8  b.lt 0x02c504a0
02c504bc  adrp x20,0x5e5d000
02c504c0  adrp x8,0x5e59000
02c504c4  ldr x20,[x20, #0x910]
02c504c8  ldr x8,[x8, #0x1c0]
02c504cc  ldr x9,[x20]
02c504d0  ldr x0,[x8]
02c504d4  ldr x8,[x9, #0xb8]
02c504d8  ldr w9,[x0, #0xe4]
02c504dc  ldr x19,[x8]
02c504e0  cbnz w9,0x02c504e8
02c504e4  bl 0x029f5bd0
02c504e8  mov x0,x19
02c504ec  mov x1,xzr
02c504f0  mov x2,xzr
02c504f4  bl 0x057dfa70
02c504f8  tbz w0,#0x0,0x02c504a0
02c504fc  ldr x8,[x20]
02c50500  ldr x8,[x8, #0xb8]
02c50504  ldr x0,[x8]
02c50508  cbz x0,0x02c50520
02c5050c  mov w1,#0x4
02c50510  mov x2,xzr
02c50514  mov x3,xzr
02c50518  bl 0x02b8ddb4
02c5051c  b 0x02c504a0
02c50520  bl 0x029f5cfc
