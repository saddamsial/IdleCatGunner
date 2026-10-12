02c350e4  str x30,[sp, #-0x30]!
02c350e8  stp x22,x21,[sp, #0x10]
02c350ec  stp x20,x19,[sp, #0x20]
02c350f0  adrp x20,0x625c000
02c350f4  mov x19,x0
02c350f8  ldrb w8,[x20, #0x5f]
02c350fc  tbnz w8,#0x0,0x02c3512c
02c35100  adrp x0,0x5e5d000
02c35104  ldr x0,[x0, #0xd28]
02c35108  bl 0x029f5a50
02c3510c  adrp x0,0x5e5a000
02c35110  ldr x0,[x0, #0x180]
02c35114  bl 0x029f5a50
02c35118  adrp x0,0x5e5a000
02c3511c  ldr x0,[x0, #0x710]
02c35120  bl 0x029f5a50
02c35124  mov w8,#0x1
02c35128  strb w8,[x20, #0x5f]
02c3512c  ldr w8,[x19, #0x10]
02c35130  cmp w8,#0x1
02c35134  b.hi 0x02c351c4
02c35138  adrp x21,0x5e5d000
02c3513c  mov w9,#0xffffffff
02c35140  ldr x21,[x21, #0xd28]
02c35144  ldr x20,[x19, #0x20]
02c35148  str w9,[x19, #0x10]
02c3514c  ldr x0,[x21]
02c35150  ldr w8,[x0, #0xe4]
02c35154  cbnz w8,0x02c35160
02c35158  bl 0x029f5bd0
02c3515c  ldr x0,[x21]
02c35160  cbz x20,0x02c35244
02c35164  ldr x8,[x0, #0xb8]
02c35168  ldr x0,[x8, #0x10]
02c3516c  cbz x0,0x02c35244
02c35170  ldp w1,w2,[x20, #0x90]
02c35174  mov x3,xzr
02c35178  bl 0x02c2dfb8
02c3517c  adrp x22,0x5e5a000
02c35180  mov x21,x0
02c35184  ldr x22,[x22, #0x180]
02c35188  ldr x8,[x22]
02c3518c  ldr w9,[x8, #0xe4]
02c35190  cbnz w9,0x02c351a0
02c35194  mov x0,x8
02c35198  bl 0x029f5bd0
02c3519c  ldr x8,[x22]
02c351a0  ldr x8,[x8, #0xb8]
02c351a4  mov x0,x21
02c351a8  mov x2,xzr
02c351ac  ldr x1,[x8]
02c351b0  bl 0x04868dd8
02c351b4  tbz w0,#0x0,0x02c351cc
02c351b8  ldp w1,w2,[x20, #0x90]
02c351bc  mov x0,x20
02c351c0  bl 0x02c345c8
02c351c4  mov w0,wzr
02c351c8  b 0x02c35234
02c351cc  ldr x22,[x20, #0x70]
02c351d0  mov x1,x21
02c351d4  bl 0x02c34dc0
02c351d8  cbz x22,0x02c35244
02c351dc  ldr x8,[x22]
02c351e0  mov x1,x0
02c351e4  mov x0,x22
02c351e8  ldr x9,[x8, #0x558]
02c351ec  ldr x2,[x8, #0x560]
02c351f0  blr x9
02c351f4  mov x0,x20
02c351f8  bl 0x02c34c00
02c351fc  adrp x8,0x5e5a000
02c35200  ldr x8,[x8, #0x710]
02c35204  ldr x0,[x8]
02c35208  bl 0x029f5cec
02c3520c  fmov s0,0x3f800000
02c35210  mov x1,xzr
02c35214  mov x20,x0
02c35218  bl 0x057e84e0
02c3521c  str x20,[x19, #0x18]!
02c35220  mov x0,x19
02c35224  mov x1,x20
02c35228  bl 0x029f59f4
02c3522c  mov w0,#0x1
02c35230  stur w0,[x19, #-0x8]
02c35234  ldp x20,x19,[sp, #0x20]
02c35238  ldp x22,x21,[sp, #0x10]
02c3523c  ldr x30,[sp], #0x30
02c35240  ret
02c35244  bl 0x029f5cfc
