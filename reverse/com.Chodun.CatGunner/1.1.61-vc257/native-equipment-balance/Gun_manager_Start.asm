02c6796c  stp x30,x21,[sp, #-0x20]!
02c67970  stp x20,x19,[sp, #0x10]
02c67974  adrp x21,0x625c000
02c67978  adrp x20,0x5e59000
02c6797c  mov x19,x0
02c67980  ldrb w8,[x21, #0x25f]
02c67984  ldr x20,[x20, #0x1c0]
02c67988  tbnz w8,#0x0,0x02c679a0
02c6798c  adrp x0,0x5e59000
02c67990  ldr x0,[x0, #0x1c0]
02c67994  bl 0x029f5a50
02c67998  mov w8,#0x1
02c6799c  strb w8,[x21, #0x25f]
02c679a0  ldr x0,[x20]
02c679a4  ldr x20,[x19, #0x58]
02c679a8  ldr w8,[x0, #0xe4]
02c679ac  cbnz w8,0x02c679b4
02c679b0  bl 0x029f5bd0
02c679b4  mov x0,x20
02c679b8  mov x1,xzr
02c679bc  mov x2,xzr
02c679c0  bl 0x057dfa70
02c679c4  tbz w0,#0x0,0x02c679d8
02c679c8  ldr x0,[x19, #0x58]
02c679cc  cbz x0,0x02c679f8
02c679d0  mov x1,xzr
02c679d4  bl 0x02c73c20
02c679d8  mov x0,x19
02c679dc  bl 0x02c679fc
02c679e0  mov x0,x19
02c679e4  bl 0x02c67abc
02c679e8  mov x0,x19
02c679ec  ldp x20,x19,[sp, #0x10]
02c679f0  ldp x30,x21,[sp], #0x20
02c679f4  b 0x02c67c50
02c679f8  bl 0x029f5cfc
