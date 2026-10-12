02c1f10c  sub sp,sp,#0x60
02c1f110  str d10,[sp, #0x10]
02c1f114  stp d9,d8,[sp, #0x18]
02c1f118  str x30,[sp, #0x28]
02c1f11c  stp x24,x23,[sp, #0x30]
02c1f120  stp x22,x21,[sp, #0x40]
02c1f124  stp x20,x19,[sp, #0x50]
02c1f128  fmov s8,s0
02c1f12c  adrp x24,0x625b000
02c1f130  adrp x23,0x5e62000
02c1f134  adrp x22,0x5e59000
02c1f138  ldrb w8,[x24, #0xf70]
02c1f13c  ldr x23,[x23, #0x670]
02c1f140  ldr x22,[x22, #0x1c0]
02c1f144  mov x20,x2
02c1f148  mov w21,w1
02c1f14c  mov x19,x0
02c1f150  tbnz w8,#0x0,0x02c1f1c8
02c1f154  adrp x0,0x5e62000
02c1f158  ldr x0,[x0, #0xa18]
02c1f15c  bl 0x029f5a50
02c1f160  adrp x0,0x5e62000
02c1f164  ldr x0,[x0, #0xa20]
02c1f168  bl 0x029f5a50
02c1f16c  adrp x0,0x5e62000
02c1f170  ldr x0,[x0, #0xa28]
02c1f174  bl 0x029f5a50
02c1f178  adrp x0,0x5e62000
02c1f17c  ldr x0,[x0, #0xa30]
02c1f180  bl 0x029f5a50
02c1f184  adrp x0,0x5e62000
02c1f188  ldr x0,[x0, #0xa38]
02c1f18c  bl 0x029f5a50
02c1f190  adrp x0,0x5e62000
02c1f194  ldr x0,[x0, #0xa40]
02c1f198  bl 0x029f5a50
02c1f19c  adrp x0,0x5e62000
02c1f1a0  ldr x0,[x0, #0xa48]
02c1f1a4  bl 0x029f5a50
02c1f1a8  adrp x0,0x5e59000
02c1f1ac  ldr x0,[x0, #0x1c0]
02c1f1b0  bl 0x029f5a50
02c1f1b4  adrp x0,0x5e62000
02c1f1b8  ldr x0,[x0, #0x670]
02c1f1bc  bl 0x029f5a50
02c1f1c0  mov w8,#0x1
02c1f1c4  strb w8,[x24, #0xf70]
02c1f1c8  ldr x8,[x23]
02c1f1cc  ldr x0,[x22]
02c1f1d0  stp xzr,xzr,[sp]
02c1f1d4  ldr x8,[x8, #0xb8]
02c1f1d8  ldr w9,[x0, #0xe4]
02c1f1dc  ldr x22,[x8, #0x8]
02c1f1e0  cbnz w9,0x02c1f1e8
02c1f1e4  bl 0x029f5bd0
02c1f1e8  mov x0,x22
02c1f1ec  mov x1,xzr
02c1f1f0  mov x2,xzr
02c1f1f4  bl 0x057dfa70
02c1f1f8  tbz w0,#0x0,0x02c1f214
02c1f1fc  ldr x8,[x23]
02c1f200  ldr x8,[x8, #0xb8]
02c1f204  ldr x8,[x8, #0x8]
02c1f208  cbz x8,0x02c1f3a8
02c1f20c  ldrb w8,[x8, #0x21]
02c1f210  cbnz w8,0x02c1f388
02c1f214  ldr x0,[x19, #0x40]
02c1f218  cbz x0,0x02c1f3a8
02c1f21c  adrp x8,0x5e62000
02c1f220  add x2,sp,#0x8
02c1f224  mov w1,w21
02c1f228  ldr x8,[x8, #0xa20]
02c1f22c  ldr x3,[x8]
02c1f230  bl 0x03df20e0
02c1f234  tbz w0,#0x0,0x02c1f388
02c1f238  ldrb w8,[x19, #0x38]
02c1f23c  cbz w8,0x02c1f2a0
02c1f240  mov x0,xzr
02c1f244  bl 0x057d901c
02c1f248  ldr x8,[x19, #0x48]
02c1f24c  cbz x8,0x02c1f3a8
02c1f250  adrp x9,0x5e62000
02c1f254  mov w22,w0
02c1f258  add x2,sp,#0x4
02c1f25c  ldr x9,[x9, #0xa28]
02c1f260  mov x0,x8
02c1f264  mov w1,w21
02c1f268  ldr x3,[x9]
02c1f26c  bl 0x03debb70
02c1f270  tbz w0,#0x0,0x02c1f280
02c1f274  ldr w8,[sp, #0x4]
02c1f278  cmp w8,w22
02c1f27c  b.eq 0x02c1f388
02c1f280  ldr x0,[x19, #0x48]
02c1f284  cbz x0,0x02c1f3a8
02c1f288  adrp x8,0x5e62000
02c1f28c  mov w1,w21
02c1f290  mov w2,w22
02c1f294  ldr x8,[x8, #0xa30]
02c1f298  ldr x3,[x8]
02c1f29c  bl 0x03dea1f0
02c1f2a0  ldrb w8,[x19, #0x39]
02c1f2a4  cbz w8,0x02c1f30c
02c1f2a8  mov x0,xzr
02c1f2ac  bl 0x057ebae4
02c1f2b0  ldr x0,[x19, #0x50]
02c1f2b4  cbz x0,0x02c1f3a8
02c1f2b8  adrp x8,0x5e62000
02c1f2bc  mov x2,sp
02c1f2c0  mov w1,w21
02c1f2c4  ldr x8,[x8, #0xa18]
02c1f2c8  fmov s9,s0
02c1f2cc  ldr x3,[x8]
02c1f2d0  bl 0x03df52e4
02c1f2d4  tbz w0,#0x0,0x02c1f2ec
02c1f2d8  ldr s0,[sp]
02c1f2dc  ldr s1,[x19, #0x3c]
02c1f2e0  fsub s0,s9,s0
02c1f2e4  fcmp s0,s1
02c1f2e8  b.mi 0x02c1f388
02c1f2ec  ldr x0,[x19, #0x50]
02c1f2f0  cbz x0,0x02c1f3a8
02c1f2f4  adrp x8,0x5e62000
02c1f2f8  fmov s0,s9
02c1f2fc  mov w1,w21
02c1f300  ldr x8,[x8, #0xa38]
02c1f304  ldr x2,[x8]
02c1f308  bl 0x03df3958
02c1f30c  tst x20,#0xff
02c1f310  b.eq 0x02c1f320
02c1f314  lsr x8,x20,#0x20
02c1f318  fmov s9,w8
02c1f31c  b 0x02c1f32c
02c1f320  ldr x8,[sp, #0x8]
02c1f324  cbz x8,0x02c1f3a8
02c1f328  ldr s9,[x8, #0x20]
02c1f32c  ldr x0,[x19, #0x20]
02c1f330  cbz x0,0x02c1f3a8
02c1f334  mov x1,xzr
02c1f338  bl 0x057888e0
02c1f33c  ldr x0,[x19, #0x20]
02c1f340  cbz x0,0x02c1f3a8
02c1f344  fmov s10,s0
02c1f348  fmov s0,s8
02c1f34c  mov x1,xzr
02c1f350  bl 0x057888e4
02c1f354  ldr x8,[sp, #0x8]
02c1f358  cbz x8,0x02c1f3a8
02c1f35c  ldr x0,[x19, #0x20]
02c1f360  cbz x0,0x02c1f3a8
02c1f364  fmov s0,s9
02c1f368  ldr x1,[x8, #0x18]
02c1f36c  mov x2,xzr
02c1f370  bl 0x05788b18
02c1f374  ldr x0,[x19, #0x20]
02c1f378  cbz x0,0x02c1f3a8
02c1f37c  fmov s0,s10
02c1f380  mov x1,xzr
02c1f384  bl 0x057888e4
02c1f388  ldp x20,x19,[sp, #0x50]
02c1f38c  ldr x30,[sp, #0x28]
02c1f390  ldp x22,x21,[sp, #0x40]
02c1f394  ldr d10,[sp, #0x10]
02c1f398  ldp x24,x23,[sp, #0x30]
02c1f39c  ldp d9,d8,[sp, #0x18]
02c1f3a0  add sp,sp,#0x60
02c1f3a4  ret
02c1f3a8  bl 0x029f5cfc
