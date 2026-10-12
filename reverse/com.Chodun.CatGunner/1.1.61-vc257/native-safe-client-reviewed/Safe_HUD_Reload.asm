02c6b244  str x30,[sp, #-0x30]!
02c6b248  stp x22,x21,[sp, #0x10]
02c6b24c  stp x20,x19,[sp, #0x20]
02c6b250  adrp x20,0x625c000
02c6b254  adrp x22,0x5e59000
02c6b258  mov x19,x0
02c6b25c  ldrb w8,[x20, #0x28b]
02c6b260  ldr x22,[x22, #0x1c0]
02c6b264  tbnz w8,#0x0,0x02c6b27c
02c6b268  adrp x0,0x5e59000
02c6b26c  ldr x0,[x0, #0x1c0]
02c6b270  bl 0x029f5a50
02c6b274  mov w8,#0x1
02c6b278  strb w8,[x20, #0x28b]
02c6b27c  bl 0x02c6b3f4
02c6b280  ldr x8,[x22]
02c6b284  ldr x21,[x19, #0x28]
02c6b288  mov w20,w0
02c6b28c  ldr w9,[x8, #0xe4]
02c6b290  cbnz w9,0x02c6b29c
02c6b294  mov x0,x8
02c6b298  bl 0x029f5bd0
02c6b29c  mov x0,x21
02c6b2a0  mov x1,xzr
02c6b2a4  mov x2,xzr
02c6b2a8  bl 0x057dfa70
02c6b2ac  tbz w0,#0x0,0x02c6b2c8
02c6b2b0  ldr x0,[x19, #0x28]
02c6b2b4  cbz x0,0x02c6b31c
02c6b2b8  mov w8,#0x1
02c6b2bc  mov x2,xzr
02c6b2c0  bic w1,w8,w20
02c6b2c4  bl 0x057dff3c
02c6b2c8  ldr x0,[x22]
02c6b2cc  ldr x20,[x19, #0x20]
02c6b2d0  ldr w8,[x0, #0xe4]
02c6b2d4  cbnz w8,0x02c6b2dc
02c6b2d8  bl 0x029f5bd0
02c6b2dc  mov x0,x20
02c6b2e0  mov x1,xzr
02c6b2e4  mov x2,xzr
02c6b2e8  bl 0x057dfa70
02c6b2ec  tbz w0,#0x0,0x02c6b304
02c6b2f0  ldr x0,[x19, #0x20]
02c6b2f4  cbz x0,0x02c6b31c
02c6b2f8  mov w1,wzr
02c6b2fc  mov x2,xzr
02c6b300  bl 0x057dff3c
02c6b304  mov x0,x19
02c6b308  ldp x20,x19,[sp, #0x20]
02c6b30c  ldp x22,x21,[sp, #0x10]
02c6b310  mov w1,wzr
02c6b314  ldr x30,[sp], #0x30
02c6b318  b 0x02c6b564
02c6b31c  bl 0x029f5cfc
