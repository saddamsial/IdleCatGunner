02c5a16c  stp x30,x21,[sp, #-0x20]!
02c5a170  stp x20,x19,[sp, #0x10]
02c5a174  adrp x20,0x625c000
02c5a178  mov x19,x0
02c5a17c  ldrb w8,[x20, #0x1d2]
02c5a180  tbnz w8,#0x0,0x02c5a1b0
02c5a184  adrp x0,0x5e5d000
02c5a188  ldr x0,[x0, #0x910]
02c5a18c  bl 0x029f5a50
02c5a190  adrp x0,0x5e5d000
02c5a194  ldr x0,[x0, #0x368]
02c5a198  bl 0x029f5a50
02c5a19c  adrp x0,0x5e5a000
02c5a1a0  ldr x0,[x0, #0x710]
02c5a1a4  bl 0x029f5a50
02c5a1a8  mov w8,#0x1
02c5a1ac  strb w8,[x20, #0x1d2]
02c5a1b0  ldr w21,[x19, #0x10]
02c5a1b4  cbz w21,0x02c5a240
02c5a1b8  cmp w21,#0x1
02c5a1bc  b.ne 0x02c5a2c0
02c5a1c0  adrp x8,0x5e5d000
02c5a1c4  ldr x8,[x8, #0x368]
02c5a1c8  ldr x20,[x19, #0x20]
02c5a1cc  ldr x8,[x8]
02c5a1d0  ldr x8,[x8, #0xb8]
02c5a1d4  ldr x0,[x8]
02c5a1d8  mov w8,#0xffffffff
02c5a1dc  str w8,[x19, #0x10]
02c5a1e0  cbz x0,0x02c5a2d4
02c5a1e4  mov x1,xzr
02c5a1e8  bl 0x02c2a620
02c5a1ec  adrp x19,0x625b000
02c5a1f0  ldrb w8,[x19, #0xa57]
02c5a1f4  cbnz w8,0x02c5a20c
02c5a1f8  adrp x0,0x5e5d000
02c5a1fc  ldr x0,[x0, #0xd70]
02c5a200  bl 0x029f5a50
02c5a204  mov w8,#0x1
02c5a208  strb w8,[x19, #0xa57]
02c5a20c  adrp x8,0x5e5d000
02c5a210  ldr x8,[x8, #0xd70]
02c5a214  ldr x8,[x8]
02c5a218  ldr x8,[x8, #0xb8]
02c5a21c  ldr x0,[x8]
02c5a220  cbz x0,0x02c5a2d4
02c5a224  mov x1,xzr
02c5a228  bl 0x02c226a0
02c5a22c  cbz x20,0x02c5a2d4
02c5a230  mov x0,x20
02c5a234  mov x1,xzr
02c5a238  bl 0x02c58a38
02c5a23c  b 0x02c5a2c0
02c5a240  adrp x8,0x5e5d000
02c5a244  ldr x8,[x8, #0x368]
02c5a248  ldr x8,[x8]
02c5a24c  ldr x8,[x8, #0xb8]
02c5a250  ldr x0,[x8]
02c5a254  mov w8,#0xffffffff
02c5a258  str w8,[x19, #0x10]
02c5a25c  cbz x0,0x02c5a2d4
02c5a260  mov x1,xzr
02c5a264  bl 0x02c2a604
02c5a268  adrp x8,0x5e5d000
02c5a26c  ldr x8,[x8, #0x910]
02c5a270  ldr x8,[x8]
02c5a274  ldr x8,[x8, #0xb8]
02c5a278  ldr x0,[x8]
02c5a27c  cbz x0,0x02c5a2d4
02c5a280  mov x1,xzr
02c5a284  bl 0x02b8c5a0
02c5a288  adrp x8,0x5e5a000
02c5a28c  ldr x8,[x8, #0x710]
02c5a290  ldr x0,[x8]
02c5a294  bl 0x029f5cec
02c5a298  fmov s0,0x40000000
02c5a29c  mov x1,xzr
02c5a2a0  mov x20,x0
02c5a2a4  bl 0x057e84e0
02c5a2a8  str x20,[x19, #0x18]!
02c5a2ac  mov x0,x19
02c5a2b0  mov x1,x20
02c5a2b4  bl 0x029f59f4
02c5a2b8  mov w8,#0x1
02c5a2bc  stur w8,[x19, #-0x8]
02c5a2c0  ldp x20,x19,[sp, #0x10]
02c5a2c4  cmp w21,#0x0
02c5a2c8  cset w0,eq
02c5a2cc  ldp x30,x21,[sp], #0x20
02c5a2d0  ret
02c5a2d4  bl 0x029f5cfc
