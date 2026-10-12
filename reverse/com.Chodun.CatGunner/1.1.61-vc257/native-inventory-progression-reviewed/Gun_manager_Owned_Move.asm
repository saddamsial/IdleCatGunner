02c6810c  stp x30,x21,[sp, #-0x20]!
02c68110  stp x20,x19,[sp, #0x10]
02c68114  cmp w1,w2
02c68118  b.ne 0x02c68128
02c6811c  ldp x20,x19,[sp, #0x10]
02c68120  ldp x30,x21,[sp], #0x20
02c68124  ret
02c68128  ldr x9,[x0, #0x40]
02c6812c  mov x20,x0
02c68130  cbz x9,0x02c681dc
02c68134  ldr w8,[x9, #0x18]
02c68138  mov w19,w1
02c6813c  cmp w8,w1
02c68140  b.ls 0x02c681d8
02c68144  cmp w8,w2
02c68148  b.ls 0x02c681d8
02c6814c  sxtw x21,w19
02c68150  add x9,x9,#0x20
02c68154  mov w8,wzr
02c68158  ldr w10,[x9, x21, LSL #0x2]
02c6815c  str w10,[x9, w2, SXTW #0x2]
02c68160  tbnz w19,#0x1f,0x02c68190
02c68164  ldr x9,[x20, #0x60]
02c68168  cbz x9,0x02c68190
02c6816c  ldr w8,[x9, #0x18]
02c68170  cmp w8,w19
02c68174  b.le 0x02c6818c
02c68178  add x8,x9,w19, UXTW 
02c6817c  ldrb w8,[x8, #0x20]
02c68180  cmp w8,#0x0
02c68184  cset w8,ne
02c68188  b 0x02c68190
02c6818c  mov w8,wzr
02c68190  mov x0,x20
02c68194  mov w1,w2
02c68198  mov w2,w8
02c6819c  bl 0x02c6802c
02c681a0  ldr x8,[x20, #0x40]
02c681a4  cbz x8,0x02c681dc
02c681a8  ldr w9,[x8, #0x18]
02c681ac  cmp w9,w19
02c681b0  b.ls 0x02c681d8
02c681b4  add x8,x8,x21, LSL #0x2
02c681b8  mov x0,x20
02c681bc  mov w1,w19
02c681c0  ldp x20,x19,[sp, #0x10]
02c681c4  mov w9,#0xffffffff
02c681c8  mov w2,wzr
02c681cc  str w9,[x8, #0x20]
02c681d0  ldp x30,x21,[sp], #0x20
02c681d4  b 0x02c6802c
02c681d8  bl 0x029f5d04
02c681dc  bl 0x029f5cfc
