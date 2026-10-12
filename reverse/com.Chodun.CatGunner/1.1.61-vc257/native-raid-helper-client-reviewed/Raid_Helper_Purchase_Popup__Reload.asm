02c52064  stp x30,x23,[sp, #-0x30]!
02c52068  stp x22,x21,[sp, #0x10]
02c5206c  stp x20,x19,[sp, #0x20]
02c52070  adrp x20,0x625c000
02c52074  adrp x22,0x5e5e000
02c52078  mov x19,x0
02c5207c  ldrb w8,[x20, #0x163]
02c52080  ldr x22,[x22, #0x70]
02c52084  tbnz w8,#0x0,0x02c520a8
02c52088  adrp x0,0x5e59000
02c5208c  ldr x0,[x0, #0x1c0]
02c52090  bl 0x029f5a50
02c52094  adrp x0,0x5e5e000
02c52098  ldr x0,[x0, #0x70]
02c5209c  bl 0x029f5a50
02c520a0  mov w8,#0x1
02c520a4  strb w8,[x20, #0x163]
02c520a8  ldr x0,[x22]
02c520ac  adrp x23,0x5e59000
02c520b0  ldr w8,[x0, #0xe4]
02c520b4  ldr x23,[x23, #0x1c0]
02c520b8  cbnz w8,0x02c520c4
02c520bc  bl 0x029f5bd0
02c520c0  ldr x0,[x22]
02c520c4  ldr x8,[x23]
02c520c8  ldr x9,[x0, #0xb8]
02c520cc  ldr w10,[x8, #0xe4]
02c520d0  ldr x20,[x9]
02c520d4  cbnz w10,0x02c520e0
02c520d8  mov x0,x8
02c520dc  bl 0x029f5bd0
02c520e0  mov x0,x20
02c520e4  mov x1,xzr
02c520e8  mov x2,xzr
02c520ec  bl 0x057dfa70
02c520f0  tbz w0,#0x0,0x02c52108
02c520f4  cbz x20,0x02c52204
02c520f8  mov x0,x20
02c520fc  bl 0x02c444d8
02c52100  mov w20,w0
02c52104  b 0x02c5210c
02c52108  mov w20,wzr
02c5210c  ldr x0,[x23]
02c52110  ldr x21,[x19, #0x28]
02c52114  ldr w8,[x0, #0xe4]
02c52118  cbnz w8,0x02c52120
02c5211c  bl 0x029f5bd0
02c52120  mov x0,x21
02c52124  mov x1,xzr
02c52128  mov x2,xzr
02c5212c  bl 0x057dfa70
02c52130  tbz w0,#0x0,0x02c52148
02c52134  ldr x0,[x19, #0x28]
02c52138  cbz x0,0x02c52204
02c5213c  and w1,w20,#0x1
02c52140  mov x2,xzr
02c52144  bl 0x057dff3c
02c52148  ldr x0,[x23]
02c5214c  ldr x21,[x19, #0x30]
02c52150  ldr w8,[x0, #0xe4]
02c52154  cbnz w8,0x02c5215c
02c52158  bl 0x029f5bd0
02c5215c  mov x0,x21
02c52160  mov x1,xzr
02c52164  mov x2,xzr
02c52168  bl 0x057dfa70
02c5216c  tbz w0,#0x0,0x02c52188
02c52170  ldr x0,[x19, #0x30]
02c52174  cbz x0,0x02c52204
02c52178  mov w8,#0x1
02c5217c  mov x2,xzr
02c52180  bic w1,w8,w20
02c52184  bl 0x057dff3c
02c52188  ldr x0,[x22]
02c5218c  ldr w8,[x0, #0xe4]
02c52190  cbnz w8,0x02c52198
02c52194  bl 0x029f5bd0
02c52198  bl 0x02c44548
02c5219c  ldr x8,[x23]
02c521a0  ldr x21,[x19, #0x20]
02c521a4  mov w20,w0
02c521a8  ldr w9,[x8, #0xe4]
02c521ac  cbnz w9,0x02c521b8
02c521b0  mov x0,x8
02c521b4  bl 0x029f5bd0
02c521b8  mov x0,x21
02c521bc  mov x1,xzr
02c521c0  mov x2,xzr
02c521c4  bl 0x057dfa70
02c521c8  tbz w0,#0x0,0x02c521f4
02c521cc  cmn w20,#0x1
02c521d0  b.eq 0x02c521f4
02c521d4  ldr x0,[x19, #0x20]
02c521d8  cbz x0,0x02c52204
02c521dc  mov w1,w20
02c521e0  ldp x20,x19,[sp, #0x20]
02c521e4  ldp x22,x21,[sp, #0x10]
02c521e8  mov x2,xzr
02c521ec  ldp x30,x23,[sp], #0x30
02c521f0  b 0x02c75ad0
02c521f4  ldp x20,x19,[sp, #0x20]
02c521f8  ldp x22,x21,[sp, #0x10]
02c521fc  ldp x30,x23,[sp], #0x30
02c52200  ret
02c52204  bl 0x029f5cfc
