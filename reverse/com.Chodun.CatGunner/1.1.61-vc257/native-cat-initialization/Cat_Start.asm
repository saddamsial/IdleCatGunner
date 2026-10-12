02c3a200  stp x30,x21,[sp, #-0x20]!
02c3a204  stp x20,x19,[sp, #0x10]
02c3a208  adrp x21,0x625c000
02c3a20c  adrp x20,0x5e63000
02c3a210  mov x19,x0
02c3a214  ldrb w8,[x21, #0x8d]
02c3a218  ldr x20,[x20, #0x1d8]
02c3a21c  tbnz w8,#0x0,0x02c3a240
02c3a220  adrp x0,0x5e63000
02c3a224  ldr x0,[x0, #0x1d8]
02c3a228  bl 0x029f5a50
02c3a22c  adrp x0,0x5e63000
02c3a230  ldr x0,[x0, #0x1e8]
02c3a234  bl 0x029f5a50
02c3a238  mov w8,#0x1
02c3a23c  strb w8,[x21, #0x8d]
02c3a240  ldr x0,[x20]
02c3a244  ldr x20,[x19, #0xd8]
02c3a248  mov w9,#0x43020000
02c3a24c  str w9,[x19, #0x1f4]
02c3a250  ldr w8,[x0, #0xe4]
02c3a254  cbnz w8,0x02c3a25c
02c3a258  bl 0x029f5bd0
02c3a25c  mov w8,#0x43020000
02c3a260  adrp x21,0x5e63000
02c3a264  mov x0,x20
02c3a268  fmov s0,w8
02c3a26c  ldr x21,[x21, #0x1e8]
02c3a270  bl 0x02c3a370
02c3a274  ldr x0,[x19, #0xd0]
02c3a278  ldr s0,[x19, #0x1f4]
02c3a27c  bl 0x02c3a370
02c3a280  ldrb w8,[x19, #0x1b0]
02c3a284  cbz w8,0x02c3a34c
02c3a288  mov x0,x19
02c3a28c  mov x1,xzr
02c3a290  bl 0x057e4ed0
02c3a294  mov x1,xzr
02c3a298  bl 0x057d549c
02c3a29c  adrp x8,0x116c000
02c3a2a0  adrp x9,0x116b000
02c3a2a4  mov x0,xzr
02c3a2a8  ldr s0,[x8, #0x30]
02c3a2ac  ldr s1,[x9, #0xf44]
02c3a2b0  bl 0x057d55d4
02c3a2b4  adrp x8,0x116b000
02c3a2b8  adrp x9,0x116c000
02c3a2bc  str s0,[x19, #0x248]
02c3a2c0  ldr s0,[x8, #0xe9c]
02c3a2c4  ldr s1,[x9, #0x98]
02c3a2c8  mov x0,xzr
02c3a2cc  bl 0x057d55d4
02c3a2d0  adrp x8,0x116c000
02c3a2d4  fmov s1,0x40600000
02c3a2d8  str s0,[x19, #0x24c]
02c3a2dc  ldr s0,[x8, #0x7c]
02c3a2e0  mov x0,xzr
02c3a2e4  bl 0x057d55d4
02c3a2e8  str s0,[x19, #0x254]
02c3a2ec  movi d0,#0x0
02c3a2f0  adrp x8,0x116c000
02c3a2f4  ldr s1,[x8, #0x21c]
02c3a2f8  mov x0,xzr
02c3a2fc  bl 0x057d55d4
02c3a300  adrp x20,0x625b000
02c3a304  str s0,[x19, #0x264]
02c3a308  ldrb w8,[x20, #0x26f]
02c3a30c  str s0,[x19, #0xac]
02c3a310  str wzr,[x19, #0x22c]
02c3a314  cbnz w8,0x02c3a32c
02c3a318  adrp x0,0x5e58000
02c3a31c  ldr x0,[x0, #0xbf8]
02c3a320  bl 0x029f5a50
02c3a324  mov w8,#0x1
02c3a328  strb w8,[x20, #0x26f]
02c3a32c  adrp x8,0x5e58000
02c3a330  ldr x8,[x8, #0xbf8]
02c3a334  ldr x8,[x8]
02c3a338  ldr x8,[x8, #0xb8]
02c3a33c  ldr d0,[x8]
02c3a340  ldr s1,[x8, #0x8]
02c3a344  str d0,[x19, #0x230]
02c3a348  str s1,[x19, #0x238]
02c3a34c  ldr w1,[x19, #0x19c]
02c3a350  ldr x0,[x21]
02c3a354  bl 0x029f5b40
02c3a358  mov x1,x0
02c3a35c  add x0,x19,#0x1a8
02c3a360  str x1,[x19, #0x1a8]
02c3a364  ldp x20,x19,[sp, #0x10]
02c3a368  ldp x30,x21,[sp], #0x20
02c3a36c  b 0x029f59f4
