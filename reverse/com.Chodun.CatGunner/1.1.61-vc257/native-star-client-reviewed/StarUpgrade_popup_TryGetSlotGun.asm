02c6f1a0  sub sp,sp,#0x50
02c6f1a4  stp x30,x23,[sp, #0x20]
02c6f1a8  stp x22,x21,[sp, #0x30]
02c6f1ac  stp x20,x19,[sp, #0x40]
02c6f1b0  adrp x22,0x625c000
02c6f1b4  mov x19,x2
02c6f1b8  mov x20,x1
02c6f1bc  ldrb w8,[x22, #0x2b6]
02c6f1c0  mov x21,x0
02c6f1c4  tbnz w8,#0x0,0x02c6f1f4
02c6f1c8  adrp x0,0x5e5d000
02c6f1cc  ldr x0,[x0, #0xd40]
02c6f1d0  bl 0x029f5a50
02c6f1d4  adrp x0,0x5e59000
02c6f1d8  ldr x0,[x0, #0x1c0]
02c6f1dc  bl 0x029f5a50
02c6f1e0  adrp x0,0x5e5e000
02c6f1e4  ldr x0,[x0, #0x70]
02c6f1e8  bl 0x029f5a50
02c6f1ec  mov w8,#0x1
02c6f1f0  strb w8,[x22, #0x2b6]
02c6f1f4  adrp x22,0x5e59000
02c6f1f8  mov w8,#0xffffffff
02c6f1fc  mov w0,wzr
02c6f200  ldr x22,[x22, #0x1c0]
02c6f204  str w8,[x20]
02c6f208  mov x8,sp
02c6f20c  mov x1,xzr
02c6f210  bl 0x046544b8
02c6f214  ldp q0,q1,[sp]
02c6f218  mov x0,x19
02c6f21c  mov x1,xzr
02c6f220  stp q0,q1,[x19]
02c6f224  bl 0x029f59f4
02c6f228  ldrb w8,[x21, #0x9c]
02c6f22c  cbz w8,0x02c6f2f0
02c6f230  adrp x23,0x5e5e000
02c6f234  ldr x23,[x23, #0x70]
02c6f238  ldr x0,[x23]
02c6f23c  ldr w8,[x0, #0xe4]
02c6f240  cbnz w8,0x02c6f24c
02c6f244  bl 0x029f5bd0
02c6f248  ldr x0,[x23]
02c6f24c  ldr x8,[x22]
02c6f250  ldr x9,[x0, #0xb8]
02c6f254  ldr w10,[x8, #0xe4]
02c6f258  ldr x22,[x9]
02c6f25c  cbnz w10,0x02c6f268
02c6f260  mov x0,x8
02c6f264  bl 0x029f5bd0
02c6f268  mov x0,x22
02c6f26c  mov x1,xzr
02c6f270  mov x2,xzr
02c6f274  bl 0x057e14b4
02c6f278  tbnz w0,#0x0,0x02c6f3a0
02c6f27c  ldr x0,[x23]
02c6f280  ldr w8,[x0, #0xe4]
02c6f284  cbnz w8,0x02c6f290
02c6f288  bl 0x029f5bd0
02c6f28c  ldr x0,[x23]
02c6f290  ldr x8,[x0, #0xb8]
02c6f294  ldr x8,[x8]
02c6f298  cbz x8,0x02c6f3b8
02c6f29c  ldr x8,[x8, #0x88]
02c6f2a0  cbz x8,0x02c6f3b8
02c6f2a4  ldrsw x9,[x21, #0x98]
02c6f2a8  ldr w10,[x8, #0x18]
02c6f2ac  cmp w9,w10
02c6f2b0  b.cs 0x02c6f3bc
02c6f2b4  add x8,x8,x9, LSL #0x2
02c6f2b8  ldr w21,[x8, #0x20]
02c6f2bc  cmn w21,#0x1
02c6f2c0  str w21,[x20]
02c6f2c4  b.eq 0x02c6f3a0
02c6f2c8  ldr w8,[x0, #0xe4]
02c6f2cc  cbnz w8,0x02c6f2d4
02c6f2d0  bl 0x029f5bd0
02c6f2d4  mov x8,sp
02c6f2d8  mov w0,w21
02c6f2dc  mov x1,xzr
02c6f2e0  bl 0x02c51d80
02c6f2e4  ldp q0,q1,[sp]
02c6f2e8  stp q0,q1,[x19]
02c6f2ec  b 0x02c6f38c
02c6f2f0  adrp x23,0x5e5d000
02c6f2f4  ldr x23,[x23, #0xd40]
02c6f2f8  ldr x0,[x22]
02c6f2fc  ldr x8,[x23]
02c6f300  ldr w9,[x0, #0xe4]
02c6f304  ldr x8,[x8, #0xb8]
02c6f308  ldr x22,[x8]
02c6f30c  cbnz w9,0x02c6f314
02c6f310  bl 0x029f5bd0
02c6f314  mov x0,x22
02c6f318  mov x1,xzr
02c6f31c  mov x2,xzr
02c6f320  bl 0x057e14b4
02c6f324  tbnz w0,#0x0,0x02c6f3a0
02c6f328  ldr x8,[x23]
02c6f32c  ldr x8,[x8, #0xb8]
02c6f330  ldr x8,[x8]
02c6f334  cbz x8,0x02c6f3b8
02c6f338  ldr x9,[x8, #0x28]
02c6f33c  cbz x9,0x02c6f3b8
02c6f340  ldrsw x10,[x21, #0x98]
02c6f344  ldr w11,[x9, #0x18]
02c6f348  cmp w10,w11
02c6f34c  b.cs 0x02c6f3bc
02c6f350  add x9,x9,x10, LSL #0x2
02c6f354  ldrsw x9,[x9, #0x20]
02c6f358  cmn w9,#0x1
02c6f35c  str w9,[x20]
02c6f360  b.eq 0x02c6f3a0
02c6f364  ldr x8,[x8, #0x20]
02c6f368  cbz x8,0x02c6f3b8
02c6f36c  ldr w10,[x8, #0x18]
02c6f370  cmp w9,w10
02c6f374  b.cs 0x02c6f3bc
02c6f378  add x8,x8,x9, LSL #0x3
02c6f37c  ldr x8,[x8, #0x20]
02c6f380  cbz x8,0x02c6f3b8
02c6f384  ldp q1,q0,[x8, #0x20]
02c6f388  stp q1,q0,[x19]
02c6f38c  mov x0,x19
02c6f390  mov x1,xzr
02c6f394  bl 0x029f59f4
02c6f398  mov w0,#0x1
02c6f39c  b 0x02c6f3a4
02c6f3a0  mov w0,wzr
02c6f3a4  ldp x20,x19,[sp, #0x40]
02c6f3a8  ldp x22,x21,[sp, #0x30]
02c6f3ac  ldp x30,x23,[sp, #0x20]
02c6f3b0  add sp,sp,#0x50
02c6f3b4  ret
02c6f3b8  bl 0x029f5cfc
02c6f3bc  bl 0x029f5d04
