02c910dc  str x30,[sp, #-0x30]!
02c910e0  stp x22,x21,[sp, #0x10]
02c910e4  stp x20,x19,[sp, #0x20]
02c910e8  adrp x21,0x625c000
02c910ec  adrp x20,0x5e5e000
02c910f0  mov w19,w0
02c910f4  ldrb w8,[x21, #0x3f0]
02c910f8  ldr x20,[x20, #0xb8]
02c910fc  tbnz w8,#0x0,0x02c91138
02c91100  adrp x0,0x5e59000
02c91104  ldr x0,[x0, #0x7d0]
02c91108  bl 0x029f5a50
02c9110c  adrp x0,0x5e5e000
02c91110  ldr x0,[x0, #0xb8]
02c91114  bl 0x029f5a50
02c91118  adrp x0,0x5e5a000
02c9111c  ldr x0,[x0, #0x180]
02c91120  bl 0x029f5a50
02c91124  adrp x0,0x5e5d000
02c91128  ldr x0,[x0, #0x3c0]
02c9112c  bl 0x029f5a50
02c91130  mov w8,#0x1
02c91134  strb w8,[x21, #0x3f0]
02c91138  ldr x0,[x20]
02c9113c  ldr w8,[x0, #0xe4]
02c91140  cbnz w8,0x02c91148
02c91144  bl 0x029f5bd0
02c91148  adrp x21,0x5e5a000
02c9114c  mov w0,w19
02c91150  ldr x21,[x21, #0x180]
02c91154  bl 0x02c9077c
02c91158  tbz w0,#0x0,0x02c91200
02c9115c  ldr x0,[x20]
02c91160  adrp x22,0x5e5d000
02c91164  ldr w8,[x0, #0xe4]
02c91168  ldr x22,[x22, #0x3c0]
02c9116c  cbnz w8,0x02c91174
02c91170  bl 0x029f5bd0
02c91174  adrp x20,0x5e59000
02c91178  mov w0,w19
02c9117c  ldr x20,[x20, #0x7d0]
02c91180  bl 0x02c90ff0
02c91184  ldr x8,[x22]
02c91188  mov x19,x0
02c9118c  ldr w9,[x8, #0xe4]
02c91190  cbnz w9,0x02c9119c
02c91194  mov x0,x8
02c91198  bl 0x029f5bd0
02c9119c  mov x0,xzr
02c911a0  bl 0x02c1a570
02c911a4  ldr x8,[x20]
02c911a8  mov x20,x0
02c911ac  ldr w9,[x8, #0xe4]
02c911b0  cbnz w9,0x02c911bc
02c911b4  mov x0,x8
02c911b8  bl 0x029f5bd0
02c911bc  mov x0,x19
02c911c0  mov x1,x20
02c911c4  mov x2,xzr
02c911c8  bl 0x048330d0
02c911cc  ldr x8,[x21]
02c911d0  mov x19,x0
02c911d4  ldr w9,[x8, #0xe4]
02c911d8  cbnz w9,0x02c911e8
02c911dc  mov x0,x8
02c911e0  bl 0x029f5bd0
02c911e4  ldr x8,[x21]
02c911e8  ldr x8,[x8, #0xb8]
02c911ec  mov x0,x19
02c911f0  mov x2,xzr
02c911f4  ldr x1,[x8]
02c911f8  bl 0x04868dcc
02c911fc  tbz w0,#0x0,0x02c9121c
02c91200  ldr x0,[x21]
02c91204  ldr w8,[x0, #0xe4]
02c91208  cbnz w8,0x02c91214
02c9120c  bl 0x029f5bd0
02c91210  ldr x0,[x21]
02c91214  ldr x8,[x0, #0xb8]
02c91218  ldr x19,[x8]
02c9121c  mov x0,x19
02c91220  ldp x20,x19,[sp, #0x20]
02c91224  ldp x22,x21,[sp, #0x10]
02c91228  ldr x30,[sp], #0x30
02c9122c  ret
