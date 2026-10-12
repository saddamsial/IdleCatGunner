02c8607c  sub sp,sp,#0x60
02c86080  str x30,[sp, #0x10]
02c86084  stp x26,x25,[sp, #0x20]
02c86088  stp x24,x23,[sp, #0x30]
02c8608c  stp x22,x21,[sp, #0x40]
02c86090  stp x20,x19,[sp, #0x50]
02c86094  adrp x20,0x625c000
02c86098  adrp x21,0x5e5d000
02c8609c  mov x19,x0
02c860a0  ldrb w8,[x20, #0x37d]
02c860a4  ldr x21,[x21, #0x4d0]
02c860a8  tbnz w8,#0x0,0x02c86108
02c860ac  adrp x0,0x5e58000
02c860b0  ldr x0,[x0, #0xf08]
02c860b4  bl 0x029f5a50
02c860b8  adrp x0,0x5e59000
02c860bc  ldr x0,[x0, #0x1c0]
02c860c0  bl 0x029f5a50
02c860c4  adrp x0,0x5e63000
02c860c8  ldr x0,[x0, #0xd98]
02c860cc  bl 0x029f5a50
02c860d0  adrp x0,0x5e5d000
02c860d4  ldr x0,[x0, #0x4d0]
02c860d8  bl 0x029f5a50
02c860dc  adrp x0,0x5e63000
02c860e0  ldr x0,[x0, #0xe90]
02c860e4  bl 0x029f5a50
02c860e8  adrp x0,0x5e63000
02c860ec  ldr x0,[x0, #0xce8]
02c860f0  bl 0x029f5a50
02c860f4  adrp x0,0x5e63000
02c860f8  ldr x0,[x0, #0xcf8]
02c860fc  bl 0x029f5a50
02c86100  mov w8,#0x1
02c86104  strb w8,[x20, #0x37d]
02c86108  ldr x0,[x21]
02c8610c  ldr w8,[x0, #0xe4]
02c86110  cbnz w8,0x02c8611c
02c86114  bl 0x029f5bd0
02c86118  ldr x0,[x21]
02c8611c  ldr x8,[x0, #0xb8]
02c86120  ldr x8,[x8, #0x28]
02c86124  cbz x8,0x02c864a8
02c86128  ldr x23,[x8, #0x30]
02c8612c  cbz x23,0x02c864a8
02c86130  ldr w9,[x19, #0x20]
02c86134  ldr w10,[x23, #0x18]
02c86138  cmp w9,w10
02c8613c  b.cs 0x02c864a4
02c86140  sxtw x10,w9
02c86144  add x10,x23,x10, LSL #0x2
02c86148  ldr w22,[x10, #0x20]
02c8614c  cmn w22,#0x1
02c86150  b.eq 0x02c863e4
02c86154  ldr w9,[x0, #0xe4]
02c86158  cbnz w9,0x02c86170
02c8615c  bl 0x029f5bd0
02c86160  ldr x8,[x21]
02c86164  ldr x8,[x8, #0xb8]
02c86168  ldr x8,[x8, #0x28]
02c8616c  cbz x8,0x02c864a8
02c86170  mov x0,x8
02c86174  mov x1,xzr
02c86178  bl 0x02c7d2b8
02c8617c  cmn w0,#0x1
02c86180  b.eq 0x02c86460
02c86184  mov w20,w0
02c86188  ldr x0,[x21]
02c8618c  ldr w8,[x0, #0xe4]
02c86190  cbnz w8,0x02c8619c
02c86194  bl 0x029f5bd0
02c86198  ldr x0,[x21]
02c8619c  ldr x8,[x0, #0xb8]
02c861a0  ldr x9,[x8, #0x28]
02c861a4  cbz x9,0x02c864a8
02c861a8  ldr x8,[x9, #0x38]
02c861ac  cbz x8,0x02c864a8
02c861b0  ldr w10,[x8, #0x18]
02c861b4  cmp w20,w10
02c861b8  b.cs 0x02c864a4
02c861bc  sxtw x11,w20
02c861c0  add x10,x8,x11, LSL #0x2
02c861c4  ldr x8,[x9, #0x48]
02c861c8  str w22,[x10, #0x20]
02c861cc  cbz x8,0x02c864a8
02c861d0  ldrsw x12,[x19, #0x20]
02c861d4  ldr w10,[x8, #0x18]
02c861d8  cmp w12,w10
02c861dc  b.cs 0x02c864a4
02c861e0  ldr x9,[x9, #0x40]
02c861e4  cbz x9,0x02c864a8
02c861e8  ldr w13,[x9, #0x18]
02c861ec  cmp w20,w13
02c861f0  b.cs 0x02c864a4
02c861f4  add x12,x8,x12, LSL #0x2
02c861f8  add x9,x9,x11, LSL #0x2
02c861fc  ldr w11,[x23, #0x18]
02c86200  ldr w12,[x12, #0x20]
02c86204  str w12,[x9, #0x20]
02c86208  ldrsw x9,[x19, #0x20]
02c8620c  cmp w9,w11
02c86210  b.cs 0x02c864a4
02c86214  add x11,x23,x9, LSL #0x2
02c86218  mov w9,#0xffffffff
02c8621c  str w9,[x11, #0x20]
02c86220  ldrsw x11,[x19, #0x20]
02c86224  cmp w11,w10
02c86228  b.cs 0x02c864a4
02c8622c  add x8,x8,x11, LSL #0x2
02c86230  mov x0,x19
02c86234  str w9,[x8, #0x20]
02c86238  bl 0x02c83634
02c8623c  adrp x24,0x5e63000
02c86240  adrp x23,0x5e59000
02c86244  ldr x24,[x24, #0xd98]
02c86248  ldr x23,[x23, #0x1c0]
02c8624c  ldr x8,[x24]
02c86250  ldr x0,[x23]
02c86254  ldr x8,[x8, #0xb8]
02c86258  ldr w9,[x0, #0xe4]
02c8625c  ldr x20,[x8]
02c86260  cbnz w9,0x02c86268
02c86264  bl 0x029f5bd0
02c86268  mov x0,x20
02c8626c  mov x1,xzr
02c86270  mov x2,xzr
02c86274  bl 0x057dfa70
02c86278  tbz w0,#0x0,0x02c86290
02c8627c  ldr x8,[x24]
02c86280  ldr x8,[x8, #0xb8]
02c86284  ldr x0,[x8]
02c86288  cbz x0,0x02c864a8
02c8628c  bl 0x02c825a8
02c86290  ldr x0,[x21]
02c86294  ldr w8,[x0, #0xe4]
02c86298  cbnz w8,0x02c862a4
02c8629c  bl 0x029f5bd0
02c862a0  ldr x0,[x21]
02c862a4  ldr x8,[x0, #0xb8]
02c862a8  ldr x8,[x8, #0x28]
02c862ac  cbz x8,0x02c864a8
02c862b0  ldr x24,[x8, #0x90]
02c862b4  cbz x24,0x02c864a8
02c862b8  ldr x8,[x24, #0x18]
02c862bc  cmp w8,#0x1
02c862c0  b.lt 0x02c8631c
02c862c4  mov x25,xzr
02c862c8  and x8,x8,#0xffffffff
02c862cc  add x26,x24,#0x20
02c862d0  cmp x25,w8, UXTW 
02c862d4  b.cs 0x02c864a4
02c862d8  ldr x0,[x23]
02c862dc  ldr x20,[x26, x25, LSL #0x3]
02c862e0  ldr w8,[x0, #0xe4]
02c862e4  cbnz w8,0x02c862ec
02c862e8  bl 0x029f5bd0
02c862ec  mov x0,x20
02c862f0  mov x1,xzr
02c862f4  mov x2,xzr
02c862f8  bl 0x057dfa70
02c862fc  tbz w0,#0x0,0x02c8630c
02c86300  cbz x20,0x02c864a8
02c86304  mov x0,x20
02c86308  bl 0x02c83634
02c8630c  ldr w8,[x24, #0x18]
02c86310  add x25,x25,#0x1
02c86314  cmp x25,w8, SXTW 
02c86318  b.lt 0x02c862d0
02c8631c  ldr x0,[x21]
02c86320  ldr w8,[x0, #0xe4]
02c86324  cbnz w8,0x02c86330
02c86328  bl 0x029f5bd0
02c8632c  ldr x0,[x21]
02c86330  ldr x8,[x0, #0xb8]
02c86334  ldr x0,[x8, #0x28]
02c86338  cbz x0,0x02c864a8
02c8633c  mov x1,xzr
02c86340  bl 0x02c7c524
02c86344  adrp x20,0x625b000
02c86348  ldrb w8,[x20, #0xa57]
02c8634c  cbnz w8,0x02c86364
02c86350  adrp x0,0x5e5d000
02c86354  ldr x0,[x0, #0xd70]
02c86358  bl 0x029f5a50
02c8635c  mov w8,#0x1
02c86360  strb w8,[x20, #0xa57]
02c86364  adrp x8,0x5e5d000
02c86368  ldr x8,[x8, #0xd70]
02c8636c  ldr x8,[x8]
02c86370  ldr x8,[x8, #0xb8]
02c86374  ldr x0,[x8]
02c86378  cbz x0,0x02c864a8
02c8637c  fmov s0,0x3f800000
02c86380  mov w1,#0xd
02c86384  mov x2,xzr
02c86388  mov x3,xzr
02c8638c  bl 0x02c1f10c
02c86390  adrp x20,0x5e58000
02c86394  add x1,sp,#0x18
02c86398  ldr x20,[x20, #0xa10]
02c8639c  ldr w8,[x19, #0x20]
02c863a0  ldr x0,[x20, #0x48]
02c863a4  str w8,[sp, #0x18]
02c863a8  bl 0x029f5bd8
02c863ac  mov x19,x0
02c863b0  ldr x0,[x20, #0x48]
02c863b4  add x1,sp,#0xc
02c863b8  str w22,[sp, #0xc]
02c863bc  bl 0x029f5bd8
02c863c0  adrp x8,0x5e63000
02c863c4  mov x2,x0
02c863c8  mov x1,x19
02c863cc  ldr x8,[x8, #0xe90]
02c863d0  mov x3,xzr
02c863d4  ldr x8,[x8]
02c863d8  mov x0,x8
02c863dc  bl 0x046c1d14
02c863e0  b 0x02c86418
02c863e4  adrp x8,0x5e58000
02c863e8  add x1,sp,#0x1c
02c863ec  ldr x8,[x8, #0xa10]
02c863f0  str w9,[sp, #0x1c]
02c863f4  ldr x0,[x8, #0x48]
02c863f8  bl 0x029f5bd8
02c863fc  adrp x8,0x5e63000
02c86400  mov x1,x0
02c86404  mov x2,xzr
02c86408  ldr x8,[x8, #0xcf8]
02c8640c  ldr x8,[x8]
02c86410  mov x0,x8
02c86414  bl 0x046b6c0c
02c86418  adrp x8,0x5e58000
02c8641c  mov x19,x0
02c86420  ldr x8,[x8, #0xf08]
02c86424  ldr x8,[x8]
02c86428  ldr w9,[x8, #0xe4]
02c8642c  cbnz w9,0x02c86438
02c86430  mov x0,x8
02c86434  bl 0x029f5bd0
02c86438  mov x0,x19
02c8643c  mov x1,xzr
02c86440  bl 0x05799e30
02c86444  ldp x20,x19,[sp, #0x50]
02c86448  ldr x30,[sp, #0x10]
02c8644c  ldp x22,x21,[sp, #0x40]
02c86450  ldp x24,x23,[sp, #0x30]
02c86454  ldp x26,x25,[sp, #0x20]
02c86458  add sp,sp,#0x60
02c8645c  ret
02c86460  adrp x8,0x5e58000
02c86464  ldr x8,[x8, #0xf08]
02c86468  ldr x0,[x8]
02c8646c  ldr w8,[x0, #0xe4]
02c86470  cbnz w8,0x02c86478
02c86474  bl 0x029f5bd0
02c86478  adrp x8,0x5e63000
02c8647c  mov x1,xzr
02c86480  ldr x8,[x8, #0xce8]
02c86484  ldp x20,x19,[sp, #0x50]
02c86488  ldp x22,x21,[sp, #0x40]
02c8648c  ldr x30,[sp, #0x10]
02c86490  ldp x24,x23,[sp, #0x30]
02c86494  ldr x0,[x8]
02c86498  ldp x26,x25,[sp, #0x20]
02c8649c  add sp,sp,#0x60
02c864a0  b 0x0579a8d0
02c864a4  bl 0x029f5d04
02c864a8  bl 0x029f5cfc
