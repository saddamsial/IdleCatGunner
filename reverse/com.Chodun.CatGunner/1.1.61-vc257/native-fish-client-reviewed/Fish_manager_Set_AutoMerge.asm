02c5e260  stp x30,x21,[sp, #-0x20]!
02c5e264  stp x20,x19,[sp, #0x10]
02c5e268  adrp x21,0x625c000
02c5e26c  mov x19,x0
02c5e270  and w20,w1,#0x1
02c5e274  ldrb w8,[x21, #0x200]
02c5e278  tbnz w8,#0x0,0x02c5e290
02c5e27c  adrp x0,0x5e59000
02c5e280  ldr x0,[x0, #0x1c0]
02c5e284  bl 0x029f5a50
02c5e288  mov w8,#0x1
02c5e28c  strb w8,[x21, #0x200]
02c5e290  mov x0,x19
02c5e294  strb w20,[x19, #0xb0]
02c5e298  bl 0x02c5db28
02c5e29c  bl 0x02c5e1e0
02c5e2a0  tbz w0,#0x0,0x02c5e2bc
02c5e2a4  ldrb w8,[x19, #0xb0]
02c5e2a8  cbz w8,0x02c5e2bc
02c5e2ac  mov x0,x19
02c5e2b0  ldp x20,x19,[sp, #0x10]
02c5e2b4  ldp x30,x21,[sp], #0x20
02c5e2b8  b 0x02c5dcbc
02c5e2bc  adrp x8,0x5e59000
02c5e2c0  ldr x8,[x8, #0x1c0]
02c5e2c4  ldr x20,[x19, #0xa0]
02c5e2c8  ldr x0,[x8]
02c5e2cc  ldr w8,[x0, #0xe4]
02c5e2d0  cbnz w8,0x02c5e2d8
02c5e2d4  bl 0x029f5bd0
02c5e2d8  mov x0,x20
02c5e2dc  mov x1,xzr
02c5e2e0  mov x2,xzr
02c5e2e4  bl 0x057dfa70
02c5e2e8  tbz w0,#0x0,0x02c5e300
02c5e2ec  ldr x0,[x19, #0xa0]
02c5e2f0  cbz x0,0x02c5e30c
02c5e2f4  ldp x20,x19,[sp, #0x10]
02c5e2f8  ldp x30,x21,[sp], #0x20
02c5e2fc  b 0x02c5e310
02c5e300  ldp x20,x19,[sp, #0x10]
02c5e304  ldp x30,x21,[sp], #0x20
02c5e308  ret
02c5e30c  bl 0x029f5cfc
