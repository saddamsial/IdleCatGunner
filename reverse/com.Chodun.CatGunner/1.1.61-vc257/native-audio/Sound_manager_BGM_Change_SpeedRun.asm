02c226a0  stp x30,x21,[sp, #-0x20]!
02c226a4  stp x20,x19,[sp, #0x10]
02c226a8  adrp x20,0x625b000
02c226ac  mov x19,x0
02c226b0  ldrb w8,[x20, #0xf71]
02c226b4  tbnz w8,#0x0,0x02c226cc
02c226b8  adrp x0,0x5e59000
02c226bc  ldr x0,[x0, #0x1c0]
02c226c0  bl 0x029f5a50
02c226c4  mov w8,#0x1
02c226c8  strb w8,[x20, #0xf71]
02c226cc  ldr x0,[x19, #0x28]
02c226d0  cbz x0,0x02c2274c
02c226d4  adrp x20,0x5e59000
02c226d8  mov x1,xzr
02c226dc  ldr x20,[x20, #0x1c0]
02c226e0  bl 0x057888e8
02c226e4  ldr x8,[x20]
02c226e8  ldr x20,[x19, #0x60]
02c226ec  mov x21,x0
02c226f0  ldr w9,[x8, #0xe4]
02c226f4  cbnz w9,0x02c22700
02c226f8  mov x0,x8
02c226fc  bl 0x029f5bd0
02c22700  mov x0,x21
02c22704  mov x1,x20
02c22708  mov x2,xzr
02c2270c  bl 0x057dfa70
02c22710  tbz w0,#0x0,0x02c22740
02c22714  ldr x0,[x19, #0x28]
02c22718  cbz x0,0x02c2274c
02c2271c  ldr x1,[x19, #0x60]
02c22720  mov x2,xzr
02c22724  bl 0x057889d8
02c22728  ldr x0,[x19, #0x28]
02c2272c  cbz x0,0x02c2274c
02c22730  ldp x20,x19,[sp, #0x10]
02c22734  mov x1,xzr
02c22738  ldp x30,x21,[sp], #0x20
02c2273c  b 0x05788b10
02c22740  ldp x20,x19,[sp, #0x10]
02c22744  ldp x30,x21,[sp], #0x20
02c22748  ret
02c2274c  bl 0x029f5cfc
