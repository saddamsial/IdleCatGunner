02c446b4  stp x30,x21,[sp, #-0x20]!
02c446b8  stp x20,x19,[sp, #0x10]
02c446bc  adrp x21,0x625c000
02c446c0  adrp x20,0x5e59000
02c446c4  mov x19,x0
02c446c8  ldrb w8,[x21, #0xc9]
02c446cc  ldr x20,[x20, #0x1c0]
02c446d0  tbnz w8,#0x0,0x02c446e8
02c446d4  adrp x0,0x5e59000
02c446d8  ldr x0,[x0, #0x1c0]
02c446dc  bl 0x029f5a50
02c446e0  mov w8,#0x1
02c446e4  strb w8,[x21, #0xc9]
02c446e8  ldr x0,[x20]
02c446ec  ldr x20,[x19, #0x28]
02c446f0  ldr w8,[x0, #0xe4]
02c446f4  cbnz w8,0x02c446fc
02c446f8  bl 0x029f5bd0
02c446fc  mov x0,x20
02c44700  mov x1,xzr
02c44704  mov x2,xzr
02c44708  bl 0x057dfa70
02c4470c  tbz w0,#0x0,0x02c44738
02c44710  ldr x0,[x19, #0x28]
02c44714  cbz x0,0x02c44744
02c44718  mov x1,xzr
02c4471c  bl 0x057dc1c8
02c44720  cbz x0,0x02c44744
02c44724  ldp x20,x19,[sp, #0x10]
02c44728  mov w1,wzr
02c4472c  mov x2,xzr
02c44730  ldp x30,x21,[sp], #0x20
02c44734  b 0x057dff3c
02c44738  ldp x20,x19,[sp, #0x10]
02c4473c  ldp x30,x21,[sp], #0x20
02c44740  ret
02c44744  bl 0x029f5cfc
