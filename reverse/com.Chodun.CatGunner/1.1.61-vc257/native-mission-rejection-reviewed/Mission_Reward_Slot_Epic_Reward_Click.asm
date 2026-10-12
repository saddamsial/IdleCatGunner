02c04978  stp x30,x21,[sp, #-0x20]!
02c0497c  stp x20,x19,[sp, #0x10]
02c04980  adrp x21,0x625b000
02c04984  adrp x20,0x5e5d000
02c04988  mov x19,x0
02c0498c  ldrb w8,[x21, #0xe63]
02c04990  ldr x20,[x20, #0xd50]
02c04994  tbnz w8,#0x0,0x02c049ac
02c04998  adrp x0,0x5e5d000
02c0499c  ldr x0,[x0, #0xd50]
02c049a0  bl 0x029f5a50
02c049a4  mov w8,#0x1
02c049a8  strb w8,[x21, #0xe63]
02c049ac  ldr x0,[x20]
02c049b0  ldr w8,[x0, #0xe4]
02c049b4  cbnz w8,0x02c049c0
02c049b8  bl 0x029f5bd0
02c049bc  ldr x0,[x20]
02c049c0  ldr x8,[x0, #0xb8]
02c049c4  ldr x0,[x8, #0x8]
02c049c8  cbz x0,0x02c049e4
02c049cc  ldr w2,[x19, #0x20]
02c049d0  ldp x20,x19,[sp, #0x10]
02c049d4  mov w1,#0x1
02c049d8  mov x3,xzr
02c049dc  ldp x30,x21,[sp], #0x20
02c049e0  b 0x02ba5e74
02c049e4  bl 0x029f5cfc
