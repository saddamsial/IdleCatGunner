02b7f11c  sub sp,sp,#0x80
02b7f120  stp x30,x21,[sp, #0x60]
02b7f124  stp x20,x19,[sp, #0x70]
02b7f128  adrp x21,0x625b000
02b7f12c  adrp x20,0x5e5d000
02b7f130  mov x19,x0
02b7f134  ldrb w8,[x21, #0x8bd]
02b7f138  ldr x20,[x20, #0x338]
02b7f13c  tbnz w8,#0x0,0x02b7f154
02b7f140  adrp x0,0x5e5d000
02b7f144  ldr x0,[x0, #0x338]
02b7f148  bl 0x029f5a50
02b7f14c  mov w8,#0x1
02b7f150  strb w8,[x21, #0x8bd]
02b7f154  movi v0.2D,#0x0
02b7f158  ldr x0,[x20]
02b7f15c  ldr w8,[x0, #0xe4]
02b7f160  stp q0,q0,[sp, #0x40]
02b7f164  cbnz w8,0x02b7f170
02b7f168  bl 0x029f5bd0
02b7f16c  ldr x0,[x20]
02b7f170  ldr x9,[x0, #0xb8]
02b7f174  add x8,sp,#0x20
02b7f178  mov x1,x19
02b7f17c  mov x2,xzr
02b7f180  add x0,x9,#0x30
02b7f184  bl 0x04658270
02b7f188  ldr x8,[x20]
02b7f18c  ldp q0,q1,[sp, #0x20]
02b7f190  mov x1,xzr
02b7f194  ldr x9,[x8, #0xb8]
02b7f198  stp q0,q1,[x9, #0x30]
02b7f19c  ldr x8,[x8, #0xb8]
02b7f1a0  add x0,x8,#0x30
02b7f1a4  bl 0x029f59f4
02b7f1a8  mov x8,sp
02b7f1ac  mov w0,wzr
02b7f1b0  mov x1,xzr
02b7f1b4  bl 0x046544b8
02b7f1b8  ldr x8,[x20]
02b7f1bc  ldp q0,q1,[sp]
02b7f1c0  add x1,sp,#0x40
02b7f1c4  mov x2,xzr
02b7f1c8  ldr x8,[x8, #0xb8]
02b7f1cc  stp q0,q1,[sp, #0x40]
02b7f1d0  add x0,x8,#0x30
02b7f1d4  bl 0x046595c4
02b7f1d8  tbz w0,#0x0,0x02b7f238
02b7f1dc  add x8,sp,#0x20
02b7f1e0  mov w0,wzr
02b7f1e4  mov x1,xzr
02b7f1e8  bl 0x046544b8
02b7f1ec  ldp q0,q1,[sp, #0x20]
02b7f1f0  mov x8,sp
02b7f1f4  add x0,sp,#0x40
02b7f1f8  mov w1,#0x5
02b7f1fc  mov x2,xzr
02b7f200  stp q0,q1,[sp, #0x40]
02b7f204  bl 0x04658464
02b7f208  ldr x0,[x20]
02b7f20c  ldr w8,[x0, #0xe4]
02b7f210  cbnz w8,0x02b7f21c
02b7f214  bl 0x029f5bd0
02b7f218  ldr x0,[x20]
02b7f21c  ldp q0,q1,[sp]
02b7f220  mov x1,xzr
02b7f224  ldr x8,[x0, #0xb8]
02b7f228  stp q0,q1,[x8, #0x30]
02b7f22c  ldr x8,[x0, #0xb8]
02b7f230  add x0,x8,#0x30
02b7f234  bl 0x029f59f4
02b7f238  ldr x0,[x20]
02b7f23c  ldr w8,[x0, #0xe4]
02b7f240  cbnz w8,0x02b7f24c
02b7f244  bl 0x029f5bd0
02b7f248  ldr x0,[x20]
02b7f24c  ldr x8,[x0, #0xb8]
02b7f250  ldr x8,[x8, #0x8]
02b7f254  cbz x8,0x02b7f268
02b7f258  ldr x9,[x8, #0x18]
02b7f25c  ldr x0,[x8, #0x40]
02b7f260  ldr x1,[x8, #0x28]
02b7f264  blr x9
02b7f268  ldp x20,x19,[sp, #0x70]
02b7f26c  ldp x30,x21,[sp, #0x60]
02b7f270  add sp,sp,#0x80
02b7f274  ret
