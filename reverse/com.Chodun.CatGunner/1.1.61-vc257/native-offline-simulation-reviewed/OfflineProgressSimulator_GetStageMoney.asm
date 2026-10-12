02c090c8  sub sp,sp,#0x150
02c090cc  stp x29,x30,[sp, #0x120]
02c090d0  stp x22,x21,[sp, #0x130]
02c090d4  stp x20,x19,[sp, #0x140]
02c090d8  adrp x22,0x625b000
02c090dc  adrp x21,0x5e5d000
02c090e0  mov w20,w0
02c090e4  ldrb w9,[x22, #0xe8c]
02c090e8  ldr x21,[x21, #0xc20]
02c090ec  mov x19,x8
02c090f0  tbnz w9,#0x0,0x02c09120
02c090f4  adrp x0,0x5e62000
02c090f8  ldr x0,[x0, #0xb8]
02c090fc  bl 0x029f5a50
02c09100  adrp x0,0x5e59000
02c09104  ldr x0,[x0, #0x1c0]
02c09108  bl 0x029f5a50
02c0910c  adrp x0,0x5e5d000
02c09110  ldr x0,[x0, #0xc20]
02c09114  bl 0x029f5a50
02c09118  mov w8,#0x1
02c0911c  strb w8,[x22, #0xe8c]
02c09120  movi v0.2D,#0x0
02c09124  ldr x0,[x21]
02c09128  adrp x22,0x5e59000
02c0912c  ldr w8,[x0, #0xe4]
02c09130  stp q0,q0,[sp, #0xc0]
02c09134  stp q0,q0,[sp, #0xe0]
02c09138  stp q0,q0,[sp, #0x100]
02c0913c  ldr x22,[x22, #0x1c0]
02c09140  stp q0,q0,[sp, #0xa0]
02c09144  cbnz w8,0x02c09150
02c09148  bl 0x029f5bd0
02c0914c  ldr x0,[x21]
02c09150  ldr x8,[x22]
02c09154  ldr x9,[x0, #0xb8]
02c09158  bic w20,w20,w20, ASR #0x1f
02c0915c  ldr w10,[x8, #0xe4]
02c09160  ldr x21,[x9, #0x10]
02c09164  cbnz w10,0x02c09170
02c09168  mov x0,x8
02c0916c  bl 0x029f5bd0
02c09170  mov x0,x21
02c09174  mov x1,xzr
02c09178  mov x2,xzr
02c0917c  bl 0x057dfa70
02c09180  tbz w0,#0x0,0x02c091ac
02c09184  cbz x21,0x02c09260
02c09188  ldr x8,[x21, #0x78]
02c0918c  cbz x8,0x02c091ac
02c09190  add x8,sp,#0x80
02c09194  mov x0,x21
02c09198  mov w1,w20
02c0919c  mov x2,xzr
02c091a0  bl 0x02cab768
02c091a4  ldp q0,q1,[sp, #0x80]
02c091a8  b 0x02c09248
02c091ac  adrp x21,0x5e62000
02c091b0  add x8,sp,#0x80
02c091b4  mov w0,#0x14
02c091b8  ldr x21,[x21, #0xb8]
02c091bc  mov x1,xzr
02c091c0  bl 0x046544b8
02c091c4  ldp q0,q1,[sp, #0x80]
02c091c8  add x8,sp,#0x60
02c091cc  mov x0,xzr
02c091d0  stp q0,q1,[sp, #0x100]
02c091d4  fmov d0,0x4008000000000000
02c091d8  bl 0x04656c9c
02c091dc  ldr x0,[x21]
02c091e0  ldp q0,q1,[sp, #0x60]
02c091e4  ldr w8,[x0, #0xe4]
02c091e8  stp q0,q1,[sp, #0xe0]
02c091ec  cbnz w8,0x02c091f4
02c091f0  bl 0x029f5bd0
02c091f4  add x8,sp,#0x40
02c091f8  add x0,sp,#0xe0
02c091fc  mov w1,w20
02c09200  mov w2,#0x1
02c09204  mov x3,xzr
02c09208  bl 0x0465ef6c
02c0920c  ldp q0,q1,[sp, #0x40]
02c09210  add x8,sp,#0x20
02c09214  add x0,sp,#0x100
02c09218  add x1,sp,#0xc0
02c0921c  mov x2,xzr
02c09220  stp q0,q1,[sp, #0xc0]
02c09224  bl 0x04658538
02c09228  ldp q0,q1,[sp, #0x20]
02c0922c  mov x8,sp
02c09230  add x0,sp,#0xa0
02c09234  mov w1,#0x2
02c09238  mov x2,xzr
02c0923c  stp q0,q1,[sp, #0xa0]
02c09240  bl 0x04658464
02c09244  ldp q0,q1,[sp]
02c09248  stp q0,q1,[x19]
02c0924c  ldp x20,x19,[sp, #0x140]
02c09250  ldp x22,x21,[sp, #0x130]
02c09254  ldp x29,x30,[sp, #0x120]
02c09258  add sp,sp,#0x150
02c0925c  ret
02c09260  bl 0x029f5cfc
