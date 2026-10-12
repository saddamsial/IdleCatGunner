02cab214  stp x30,x21,[sp, #-0x20]!
02cab218  stp x20,x19,[sp, #0x10]
02cab21c  adrp x20,0x625c000
02cab220  mov x19,x0
02cab224  ldrb w8,[x20, #0x509]
02cab228  tbnz w8,#0x0,0x02cab240
02cab22c  adrp x0,0x5e5a000
02cab230  ldr x0,[x0, #0x710]
02cab234  bl 0x029f5a50
02cab238  mov w8,#0x1
02cab23c  strb w8,[x20, #0x509]
02cab240  ldr w21,[x19, #0x10]
02cab244  ldr x0,[x19, #0x20]
02cab248  cbz w21,0x02cab268
02cab24c  cmp w21,#0x1
02cab250  b.ne 0x02cab2bc
02cab254  mov w8,#0xffffffff
02cab258  str w8,[x19, #0x10]
02cab25c  cbz x0,0x02cab2d0
02cab260  bl 0x02ca8d78
02cab264  b 0x02cab2bc
02cab268  mov w8,#0xffffffff
02cab26c  str w8,[x19, #0x10]
02cab270  cbz x0,0x02cab2d0
02cab274  ldr x1,[x0, #0x68]
02cab278  cbz x1,0x02cab284
02cab27c  mov x2,xzr
02cab280  bl 0x057e2250
02cab284  adrp x8,0x5e5a000
02cab288  ldr x8,[x8, #0x710]
02cab28c  ldr x0,[x8]
02cab290  bl 0x029f5cec
02cab294  fmov s0,0x40000000
02cab298  mov x1,xzr
02cab29c  mov x20,x0
02cab2a0  bl 0x057e84e0
02cab2a4  str x20,[x19, #0x18]!
02cab2a8  mov x0,x19
02cab2ac  mov x1,x20
02cab2b0  bl 0x029f59f4
02cab2b4  mov w8,#0x1
02cab2b8  stur w8,[x19, #-0x8]
02cab2bc  ldp x20,x19,[sp, #0x10]
02cab2c0  cmp w21,#0x0
02cab2c4  cset w0,eq
02cab2c8  ldp x30,x21,[sp], #0x20
02cab2cc  ret
02cab2d0  bl 0x029f5cfc
