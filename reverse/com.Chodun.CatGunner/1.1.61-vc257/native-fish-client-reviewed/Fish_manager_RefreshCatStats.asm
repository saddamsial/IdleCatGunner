02c5e13c  stp x30,x21,[sp, #-0x20]!
02c5e140  stp x20,x19,[sp, #0x10]
02c5e144  adrp x21,0x625c000
02c5e148  adrp x20,0x5e5d000
02c5e14c  adrp x19,0x5e59000
02c5e150  ldrb w8,[x21, #0x1fe]
02c5e154  ldr x20,[x20, #0x5b0]
02c5e158  ldr x19,[x19, #0x1c0]
02c5e15c  tbnz w8,#0x0,0x02c5e180
02c5e160  adrp x0,0x5e5d000
02c5e164  ldr x0,[x0, #0x5b0]
02c5e168  bl 0x029f5a50
02c5e16c  adrp x0,0x5e59000
02c5e170  ldr x0,[x0, #0x1c0]
02c5e174  bl 0x029f5a50
02c5e178  mov w8,#0x1
02c5e17c  strb w8,[x21, #0x1fe]
02c5e180  ldr x8,[x20]
02c5e184  ldr x0,[x19]
02c5e188  ldr x8,[x8, #0xb8]
02c5e18c  ldr w9,[x0, #0xe4]
02c5e190  ldr x19,[x8, #0x8]
02c5e194  cbnz w9,0x02c5e19c
02c5e198  bl 0x029f5bd0
02c5e19c  mov x0,x19
02c5e1a0  mov x1,xzr
02c5e1a4  mov x2,xzr
02c5e1a8  bl 0x057e14b4
02c5e1ac  tbz w0,#0x0,0x02c5e1bc
02c5e1b0  ldp x20,x19,[sp, #0x10]
02c5e1b4  ldp x30,x21,[sp], #0x20
02c5e1b8  ret
02c5e1bc  ldr x8,[x20]
02c5e1c0  ldr x8,[x8, #0xb8]
02c5e1c4  ldr x0,[x8, #0x8]
02c5e1c8  cbz x0,0x02c5e1dc
02c5e1cc  ldp x20,x19,[sp, #0x10]
02c5e1d0  mov x1,xzr
02c5e1d4  ldp x30,x21,[sp], #0x20
02c5e1d8  b 0x02c43744
02c5e1dc  bl 0x029f5cfc
