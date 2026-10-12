02c7e208  str x30,[sp, #-0x20]!
02c7e20c  stp x20,x19,[sp, #0x10]
02c7e210  adrp x20,0x625c000
02c7e214  mov x19,x0
02c7e218  ldrb w8,[x20, #0x337]
02c7e21c  tbnz w8,#0x0,0x02c7e240
02c7e220  adrp x0,0x5e5d000
02c7e224  ldr x0,[x0, #0x4d0]
02c7e228  bl 0x029f5a50
02c7e22c  adrp x0,0x5e63000
02c7e230  ldr x0,[x0, #0xd58]
02c7e234  bl 0x029f5a50
02c7e238  mov w8,#0x1
02c7e23c  strb w8,[x20, #0x337]
02c7e240  mov x0,x19
02c7e244  bl 0x02c7e018
02c7e248  tbz w0,#0x0,0x02c7e258
02c7e24c  ldp x20,x19,[sp, #0x10]
02c7e250  ldr x30,[sp], #0x20
02c7e254  ret
02c7e258  mov x0,x19
02c7e25c  mov w1,#0x1
02c7e260  bl 0x02c7d16c
02c7e264  cmn w0,#0x1
02c7e268  b.eq 0x02c7e304
02c7e26c  adrp x8,0x5e5d000
02c7e270  mov w20,w0
02c7e274  ldr x8,[x8, #0x4d0]
02c7e278  ldr x0,[x8]
02c7e27c  ldr w8,[x0, #0xe4]
02c7e280  cbnz w8,0x02c7e288
02c7e284  bl 0x029f5bd0
02c7e288  bl 0x02c7deac
02c7e28c  mov x1,x0
02c7e290  mov x0,x19
02c7e294  str x1,[x0, #0xb8]!
02c7e298  bl 0x029f59f4
02c7e29c  mov x0,x19
02c7e2a0  mov w1,w20
02c7e2a4  bl 0x02c7d444
02c7e2a8  adrp x20,0x625b000
02c7e2ac  ldrb w8,[x20, #0xa57]
02c7e2b0  cbnz w8,0x02c7e2c8
02c7e2b4  adrp x0,0x5e5d000
02c7e2b8  ldr x0,[x0, #0xd70]
02c7e2bc  bl 0x029f5a50
02c7e2c0  mov w8,#0x1
02c7e2c4  strb w8,[x20, #0xa57]
02c7e2c8  adrp x8,0x5e5d000
02c7e2cc  ldr x8,[x8, #0xd70]
02c7e2d0  ldr x8,[x8]
02c7e2d4  ldr x8,[x8, #0xb8]
02c7e2d8  ldr x0,[x8]
02c7e2dc  cbz x0,0x02c7e320
02c7e2e0  fmov s0,0x3f800000
02c7e2e4  mov w1,#0x2
02c7e2e8  mov x2,xzr
02c7e2ec  mov x3,xzr
02c7e2f0  bl 0x02c1f10c
02c7e2f4  mov x0,x19
02c7e2f8  ldp x20,x19,[sp, #0x10]
02c7e2fc  ldr x30,[sp], #0x20
02c7e300  b 0x02c7d9d8
02c7e304  adrp x8,0x5e63000
02c7e308  mov x1,xzr
02c7e30c  ldr x8,[x8, #0xd58]
02c7e310  ldp x20,x19,[sp, #0x10]
02c7e314  ldr x0,[x8]
02c7e318  ldr x30,[sp], #0x20
02c7e31c  b 0x02c1dd54
02c7e320  bl 0x029f5cfc
