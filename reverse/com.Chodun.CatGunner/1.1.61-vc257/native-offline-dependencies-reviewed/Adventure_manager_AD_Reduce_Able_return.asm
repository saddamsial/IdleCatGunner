02c2f174  stp x30,x23,[sp, #-0x30]!
02c2f178  stp x22,x21,[sp, #0x10]
02c2f17c  stp x20,x19,[sp, #0x20]
02c2f180  adrp x22,0x625c000
02c2f184  adrp x23,0x5e5e000
02c2f188  mov w20,w2
02c2f18c  ldrb w8,[x22, #0x19]
02c2f190  ldr x23,[x23, #0xb8]
02c2f194  mov w21,w1
02c2f198  mov x19,x0
02c2f19c  tbnz w8,#0x0,0x02c2f1b4
02c2f1a0  adrp x0,0x5e5e000
02c2f1a4  ldr x0,[x0, #0xb8]
02c2f1a8  bl 0x029f5a50
02c2f1ac  mov w8,#0x1
02c2f1b0  strb w8,[x22, #0x19]
02c2f1b4  ldr x0,[x23]
02c2f1b8  ldr w8,[x0, #0xe4]
02c2f1bc  cbnz w8,0x02c2f1c4
02c2f1c0  bl 0x029f5bd0
02c2f1c4  mov w0,#0x2
02c2f1c8  mov x1,xzr
02c2f1cc  bl 0x02c9077c
02c2f1d0  tbnz w0,#0x0,0x02c2f218
02c2f1d4  mov x0,x19
02c2f1d8  bl 0x02c2f0a8
02c2f1dc  cmp w0,w20
02c2f1e0  b.ne 0x02c2f218
02c2f1e4  mov x0,x19
02c2f1e8  mov w1,w21
02c2f1ec  mov w2,w20
02c2f1f0  bl 0x02c2e5f8
02c2f1f4  cmp w0,#0x2
02c2f1f8  b.ne 0x02c2f218
02c2f1fc  mov x0,x19
02c2f200  bl 0x02c2ef68
02c2f204  ldr w8,[x19, #0x78]
02c2f208  sub w8,w8,#0x3
02c2f20c  cmn w8,#0x1
02c2f210  cset w0,lt
02c2f214  b 0x02c2f21c
02c2f218  mov w0,wzr
02c2f21c  ldp x20,x19,[sp, #0x20]
02c2f220  ldp x22,x21,[sp, #0x10]
02c2f224  ldp x30,x23,[sp], #0x30
02c2f228  ret
