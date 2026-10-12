02c71070  str x30,[sp, #-0x20]!
02c71074  stp x20,x19,[sp, #0x10]
02c71078  adrp x20,0x625c000
02c7107c  mov x19,x0
02c71080  ldrb w8,[x20, #0x2c8]
02c71084  tbnz w8,#0x0,0x02c7109c
02c71088  adrp x0,0x5e59000
02c7108c  ldr x0,[x0, #0x1c0]
02c71090  bl 0x029f5a50
02c71094  mov w8,#0x1
02c71098  strb w8,[x20, #0x2c8]
02c7109c  ldrb w8,[x19, #0xb8]
02c710a0  cbz w8,0x02c71144
02c710a4  adrp x8,0x5e59000
02c710a8  ldr x8,[x8, #0x1c0]
02c710ac  ldr x20,[x19, #0xa8]
02c710b0  strb wzr,[x19, #0xb8]
02c710b4  ldr x0,[x8]
02c710b8  ldr w8,[x0, #0xe4]
02c710bc  cbnz w8,0x02c710c4
02c710c0  bl 0x029f5bd0
02c710c4  mov x0,x20
02c710c8  mov x1,xzr
02c710cc  mov x2,xzr
02c710d0  bl 0x057dfa70
02c710d4  tbz w0,#0x0,0x02c710ec
02c710d8  ldr x0,[x19, #0xa8]
02c710dc  cbz x0,0x02c711cc
02c710e0  mov w1,#0x1
02c710e4  mov x2,xzr
02c710e8  bl 0x05a9f1dc
02c710ec  bl 0x02c711d0
02c710f0  bl 0x02c71368
02c710f4  mov x0,x19
02c710f8  bl 0x02c70f1c
02c710fc  mov x0,x19
02c71100  mov w1,wzr
02c71104  bl 0x02c70fb0
02c71108  mov x0,x19
02c7110c  mov x1,xzr
02c71110  str xzr,[x0, #0xc0]!
02c71114  bl 0x029f59f4
02c71118  mov x0,x19
02c7111c  mov x1,xzr
02c71120  strb wzr,[x19, #0xc8]
02c71124  str xzr,[x0, #0xd0]!
02c71128  bl 0x029f59f4
02c7112c  mov x0,x19
02c71130  mov w8,#0xffffffff
02c71134  mov x1,xzr
02c71138  str xzr,[x0, #0xe0]!
02c7113c  stur w8,[x0, #-0x8]
02c71140  bl 0x029f59f4
02c71144  mov x0,x19
02c71148  bl 0x02c714e8
02c7114c  mov x20,x19
02c71150  ldr x1,[x20, #0xf0]!
02c71154  cbz x1,0x02c71174
02c71158  mov x0,x19
02c7115c  mov x2,xzr
02c71160  bl 0x057e237c
02c71164  mov x0,x20
02c71168  mov x1,xzr
02c7116c  str xzr,[x19, #0xf0]
02c71170  bl 0x029f59f4
02c71174  ldr x1,[x19, #0x110]
02c71178  cbz x1,0x02c71198
02c7117c  mov x0,x19
02c71180  mov x2,xzr
02c71184  bl 0x057e237c
02c71188  add x0,x19,#0x110
02c7118c  mov x1,xzr
02c71190  str xzr,[x19, #0x110]
02c71194  bl 0x029f59f4
02c71198  mov x0,x19
02c7119c  mov x1,xzr
02c711a0  bl 0x057dc0f8
02c711a4  cbz x0,0x02c711cc
02c711a8  ldp s1,s2,[x19, #0xfc]
02c711ac  mov x1,xzr
02c711b0  ldr s0,[x19, #0xf8]
02c711b4  bl 0x057ef654
02c711b8  mov x0,x19
02c711bc  strb wzr,[x19, #0xb9]
02c711c0  ldp x20,x19,[sp, #0x10]
02c711c4  ldr x30,[sp], #0x20
02c711c8  b 0x02c70d14
02c711cc  bl 0x029f5cfc
