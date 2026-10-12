02cb0114  stp x30,x25,[sp, #-0x40]!
02cb0118  stp x24,x23,[sp, #0x10]
02cb011c  stp x22,x21,[sp, #0x20]
02cb0120  stp x20,x19,[sp, #0x30]
02cb0124  adrp x20,0x625c000
02cb0128  mov x19,x0
02cb012c  ldrb w8,[x20, #0x542]
02cb0130  tbnz w8,#0x0,0x02cb0160
02cb0134  adrp x0,0x5e5d000
02cb0138  ldr x0,[x0, #0xd40]
02cb013c  bl 0x029f5a50
02cb0140  adrp x0,0x5e59000
02cb0144  ldr x0,[x0, #0x1c0]
02cb0148  bl 0x029f5a50
02cb014c  adrp x0,0x5e5a000
02cb0150  ldr x0,[x0, #0x710]
02cb0154  bl 0x029f5a50
02cb0158  mov w8,#0x1
02cb015c  strb w8,[x20, #0x542]
02cb0160  ldr w8,[x19, #0x10]
02cb0164  cmp w8,#0x2
02cb0168  b.cs 0x02cb02e0
02cb016c  ldr x20,[x19, #0x20]
02cb0170  mov w8,#0xffffffff
02cb0174  str w8,[x19, #0x10]
02cb0178  cbz x20,0x02cb02f8
02cb017c  ldr w8,[x20, #0x60]
02cb0180  cmp w8,#0x2
02cb0184  b.ne 0x02cb02e0
02cb0188  ldr x0,[x20, #0x50]
02cb018c  cbz x0,0x02cb02f8
02cb0190  ldr x21,[x20, #0x30]
02cb0194  mov x1,xzr
02cb0198  bl 0x057e00b4
02cb019c  cbz x21,0x02cb02f8
02cb01a0  and w1,w0,#0x1
02cb01a4  mov x0,x21
02cb01a8  mov x2,xzr
02cb01ac  bl 0x057dff3c
02cb01b0  adrp x23,0x5e5d000
02cb01b4  adrp x22,0x5e59000
02cb01b8  ldr x23,[x23, #0xd40]
02cb01bc  ldr x22,[x22, #0x1c0]
02cb01c0  ldr x8,[x23]
02cb01c4  ldr x0,[x22]
02cb01c8  ldr x8,[x8, #0xb8]
02cb01cc  ldr w9,[x0, #0xe4]
02cb01d0  ldr x21,[x8]
02cb01d4  cbnz w9,0x02cb01dc
02cb01d8  bl 0x029f5bd0
02cb01dc  mov x0,x21
02cb01e0  mov x1,xzr
02cb01e4  mov x2,xzr
02cb01e8  bl 0x057dfa70
02cb01ec  tbz w0,#0x0,0x02cb0280
02cb01f0  ldr x8,[x23]
02cb01f4  ldr x8,[x8, #0xb8]
02cb01f8  ldr x8,[x8]
02cb01fc  cbz x8,0x02cb02f8
02cb0200  ldr x23,[x8, #0x98]
02cb0204  cbz x23,0x02cb0280
02cb0208  ldr x8,[x23, #0x18]
02cb020c  cmp w8,#0x1
02cb0210  b.lt 0x02cb0280
02cb0214  mov x24,xzr
02cb0218  and x8,x8,#0xffffffff
02cb021c  add x25,x23,#0x20
02cb0220  cmp x24,w8, UXTW 
02cb0224  b.cs 0x02cb02fc
02cb0228  ldr x0,[x22]
02cb022c  ldr x21,[x25, x24, LSL #0x3]
02cb0230  ldr w8,[x0, #0xe4]
02cb0234  cbnz w8,0x02cb023c
02cb0238  bl 0x029f5bd0
02cb023c  mov x0,x21
02cb0240  mov x1,xzr
02cb0244  mov x2,xzr
02cb0248  bl 0x057dfa70
02cb024c  tbz w0,#0x0,0x02cb0270
02cb0250  cbz x21,0x02cb02f8
02cb0254  mov x0,x21
02cb0258  mov x1,xzr
02cb025c  bl 0x057dc1c8
02cb0260  cbz x0,0x02cb02f8
02cb0264  mov x1,xzr
02cb0268  bl 0x057e00b4
02cb026c  tbnz w0,#0x0,0x02cb02c0
02cb0270  ldr w8,[x23, #0x18]
02cb0274  add x24,x24,#0x1
02cb0278  cmp x24,w8, SXTW 
02cb027c  b.lt 0x02cb0220
02cb0280  adrp x8,0x5e5a000
02cb0284  ldr x8,[x8, #0x710]
02cb0288  ldr x0,[x8]
02cb028c  bl 0x029f5cec
02cb0290  adrp x8,0x116c000
02cb0294  mov x1,xzr
02cb0298  mov x20,x0
02cb029c  ldr s0,[x8, #0x60]
02cb02a0  bl 0x057e84e0
02cb02a4  str x20,[x19, #0x18]!
02cb02a8  mov x0,x19
02cb02ac  mov x1,x20
02cb02b0  bl 0x029f59f4
02cb02b4  mov w0,#0x1
02cb02b8  stur w0,[x19, #-0x8]
02cb02bc  b 0x02cb02e4
02cb02c0  ldr x0,[x20, #0x30]
02cb02c4  cbz x0,0x02cb02f8
02cb02c8  mov w1,wzr
02cb02cc  mov x2,xzr
02cb02d0  bl 0x057dff3c
02cb02d4  mov x0,x20
02cb02d8  mov w1,#0x3
02cb02dc  bl 0x02caf65c
02cb02e0  mov w0,wzr
02cb02e4  ldp x20,x19,[sp, #0x30]
02cb02e8  ldp x22,x21,[sp, #0x20]
02cb02ec  ldp x24,x23,[sp, #0x10]
02cb02f0  ldp x30,x25,[sp], #0x40
02cb02f4  ret
02cb02f8  bl 0x029f5cfc
02cb02fc  bl 0x029f5d04
