02b9f18c  stp x30,x21,[sp, #-0x20]!
02b9f190  stp x20,x19,[sp, #0x10]
02b9f194  ldr w8,[x0, #0x30]
02b9f198  mov x19,x0
02b9f19c  cmp w8,#0x7
02b9f1a0  b.ne 0x02b9f1b4
02b9f1a4  mov x0,x19
02b9f1a8  bl 0x02b9f50c
02b9f1ac  tbz w0,#0x0,0x02b9f1b4
02b9f1b0  str wzr,[x19, #0x30]
02b9f1b4  ldr x8,[x19, #0x40]
02b9f1b8  cbz x8,0x02b9f220
02b9f1bc  mov w21,wzr
02b9f1c0  ldr w9,[x8, #0x18]
02b9f1c4  cmp w21,w9
02b9f1c8  b.ge 0x02b9f224
02b9f1cc  b.cs 0x02b9f248
02b9f1d0  add x9,x8,w21, SXTW  #0x3
02b9f1d4  ldr w8,[x19, #0x30]
02b9f1d8  ldr x20,[x9, #0x20]
02b9f1dc  cmp w8,w21
02b9f1e0  b.le 0x02b9f1ec
02b9f1e4  mov w1,#0x2
02b9f1e8  b 0x02b9f208
02b9f1ec  cmp w21,w8
02b9f1f0  b.ne 0x02b9f204
02b9f1f4  mov x0,x19
02b9f1f8  bl 0x02b9f50c
02b9f1fc  and w1,w0,#0x1
02b9f200  b 0x02b9f208
02b9f204  mov w1,wzr
02b9f208  cbz x20,0x02b9f220
02b9f20c  mov x0,x20
02b9f210  bl 0x02b9f624
02b9f214  ldr x8,[x19, #0x40]
02b9f218  add w21,w21,#0x1
02b9f21c  cbnz x8,0x02b9f1c0
02b9f220  bl 0x029f5cfc
02b9f224  ldr x0,[x19, #0x20]
02b9f228  cbz x0,0x02b9f220
02b9f22c  mov w1,#0x1
02b9f230  mov x2,xzr
02b9f234  bl 0x057dff3c
02b9f238  mov x0,x19
02b9f23c  ldp x20,x19,[sp, #0x10]
02b9f240  ldp x30,x21,[sp], #0x20
02b9f244  b 0x02b9f69c
02b9f248  bl 0x029f5d04
