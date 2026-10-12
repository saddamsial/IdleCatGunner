02c681e0  stp x30,x21,[sp, #-0x20]!
02c681e4  stp x20,x19,[sp, #0x10]
02c681e8  cmp w1,w2
02c681ec  b.ne 0x02c681fc
02c681f0  ldp x20,x19,[sp, #0x10]
02c681f4  ldp x30,x21,[sp], #0x20
02c681f8  ret
02c681fc  ldr x9,[x0, #0x40]
02c68200  mov x20,x0
02c68204  cbz x9,0x02c682c0
02c68208  ldr w8,[x9, #0x18]
02c6820c  cmp w8,w1
02c68210  b.ls 0x02c682bc
02c68214  mov w19,w2
02c68218  cmp w8,w2
02c6821c  b.ls 0x02c682bc
02c68220  add x8,x9,w1, SXTW  #0x2
02c68224  add x9,x9,w19, SXTW  #0x2
02c68228  ldr x10,[x20, #0x60]
02c6822c  mov w21,wzr
02c68230  tbnz w1,#0x1f,0x02c6825c
02c68234  cbz x10,0x02c6825c
02c68238  ldr w11,[x10, #0x18]
02c6823c  cmp w11,w1
02c68240  b.le 0x02c68258
02c68244  add x11,x10,w1, UXTW 
02c68248  ldrb w11,[x11, #0x20]
02c6824c  cmp w11,#0x0
02c68250  cset w21,ne
02c68254  b 0x02c6825c
02c68258  mov w21,wzr
02c6825c  ldr w11,[x8, #0x20]!
02c68260  mov w2,wzr
02c68264  ldr w12,[x9, #0x20]!
02c68268  tbnz w19,#0x1f,0x02c68294
02c6826c  cbz x10,0x02c68294
02c68270  ldr w13,[x10, #0x18]
02c68274  cmp w13,w19
02c68278  b.le 0x02c68290
02c6827c  add x10,x10,w19, UXTW 
02c68280  ldrb w10,[x10, #0x20]
02c68284  cmp w10,#0x0
02c68288  cset w2,ne
02c6828c  b 0x02c68294
02c68290  mov w2,wzr
02c68294  mov x0,x20
02c68298  str w12,[x8]
02c6829c  str w11,[x9]
02c682a0  bl 0x02c6802c
02c682a4  mov x0,x20
02c682a8  mov w1,w19
02c682ac  mov w2,w21
02c682b0  ldp x20,x19,[sp, #0x10]
02c682b4  ldp x30,x21,[sp], #0x20
02c682b8  b 0x02c6802c
02c682bc  bl 0x029f5d04
02c682c0  bl 0x029f5cfc
