02b7f278  str d8,[sp, #-0x30]!
02b7f27c  str x30,[sp, #0x8]
02b7f280  stp x22,x21,[sp, #0x10]
02b7f284  stp x20,x19,[sp, #0x20]
02b7f288  adrp x21,0x625b000
02b7f28c  adrp x22,0x5e5d000
02b7f290  mov w19,w1
02b7f294  ldrb w8,[x21, #0x8be]
02b7f298  ldr x22,[x22, #0x338]
02b7f29c  mov w20,w0
02b7f2a0  tbnz w8,#0x0,0x02b7f2d0
02b7f2a4  adrp x0,0x5e5d000
02b7f2a8  ldr x0,[x0, #0x540]
02b7f2ac  bl 0x029f5a50
02b7f2b0  adrp x0,0x5e5d000
02b7f2b4  ldr x0,[x0, #0x338]
02b7f2b8  bl 0x029f5a50
02b7f2bc  adrp x0,0x5e5d000
02b7f2c0  ldr x0,[x0, #0x548]
02b7f2c4  bl 0x029f5a50
02b7f2c8  mov w8,#0x1
02b7f2cc  strb w8,[x21, #0x8be]
02b7f2d0  ldr x0,[x22]
02b7f2d4  ldr w8,[x0, #0xe4]
02b7f2d8  cbnz w8,0x02b7f2e4
02b7f2dc  bl 0x029f5bd0
02b7f2e0  ldr x0,[x22]
02b7f2e4  ldr x8,[x0, #0xb8]
02b7f2e8  mov x2,xzr
02b7f2ec  ldp x0,x1,[x8, #0x90]
02b7f2f0  bl 0x02b1e644
02b7f2f4  sub w0,w0,w20
02b7f2f8  mov x1,xzr
02b7f2fc  bl 0x02b1e5c8
02b7f300  ldr x8,[x22]
02b7f304  mov x2,xzr
02b7f308  ldr x9,[x8, #0xb8]
02b7f30c  stp x0,x1,[x9, #0x90]
02b7f310  ldr x8,[x8, #0xb8]
02b7f314  ldp x0,x1,[x8, #0xb0]
02b7f318  bl 0x02b1e644
02b7f31c  add w8,w20,w20, LSL #0x1
02b7f320  mov x1,xzr
02b7f324  add w0,w0,w8
02b7f328  bl 0x02b1e5c8
02b7f32c  mov x8,x0
02b7f330  ldr x0,[x22]
02b7f334  ldr x9,[x0, #0xb8]
02b7f338  stp x8,x1,[x9, #0xb0]
02b7f33c  ldr x8,[x0, #0xb8]
02b7f340  ldr x8,[x8, #0x10]
02b7f344  cbz x8,0x02b7f35c
02b7f348  ldr x9,[x8, #0x18]
02b7f34c  ldr x0,[x8, #0x40]
02b7f350  ldr x1,[x8, #0x28]
02b7f354  blr x9
02b7f358  ldr x0,[x22]
02b7f35c  ldr w8,[x0, #0xe4]
02b7f360  cbnz w8,0x02b7f36c
02b7f364  bl 0x029f5bd0
02b7f368  ldr x0,[x22]
02b7f36c  ldr x8,[x0, #0xb8]
02b7f370  ldp x0,x1,[x8, #0x90]
02b7f374  mov x2,xzr
02b7f378  bl 0x02b1e644
02b7f37c  adrp x8,0x5e5d000
02b7f380  mov w21,w0
02b7f384  ldr x8,[x8, #0x540]
02b7f388  ldr x0,[x8]
02b7f38c  ldr w8,[x0, #0xe4]
02b7f390  cbnz w8,0x02b7f398
02b7f394  bl 0x029f5bd0
02b7f398  adrp x8,0x5e5d000
02b7f39c  ldr x8,[x8, #0x548]
02b7f3a0  ldr x2,[x8]
02b7f3a4  mov w0,w19
02b7f3a8  mov w1,w20
02b7f3ac  mov w3,w21
02b7f3b0  mov x4,xzr
02b7f3b4  bl 0x02b99344
02b7f3b8  mov x0,xzr
02b7f3bc  bl 0x057e85b4
02b7f3c0  ldr x0,[x22]
02b7f3c4  fmov s8,s0
02b7f3c8  ldr w8,[x0, #0xe4]
02b7f3cc  cbnz w8,0x02b7f3d8
02b7f3d0  bl 0x029f5bd0
02b7f3d4  ldr x0,[x22]
02b7f3d8  ldr x8,[x0, #0xb8]
02b7f3dc  fmov s1,0x40a00000
02b7f3e0  ldr s0,[x8, #0x158]
02b7f3e4  fsub s0,s8,s0
02b7f3e8  fcmp s0,s1
02b7f3ec  b.ge 0x02b7f404
02b7f3f0  ldp x20,x19,[sp, #0x20]
02b7f3f4  ldr x30,[sp, #0x8]
02b7f3f8  ldp x22,x21,[sp, #0x10]
02b7f3fc  ldr d8,[sp], #0x30
02b7f400  ret
02b7f404  mov x0,xzr
02b7f408  bl 0x057e85b4
02b7f40c  ldr x0,[x22]
02b7f410  fmov s8,s0
02b7f414  ldr w8,[x0, #0xe4]
02b7f418  cbnz w8,0x02b7f424
02b7f41c  bl 0x029f5bd0
02b7f420  ldr x0,[x22]
02b7f424  ldr x8,[x0, #0xb8]
02b7f428  ldp x20,x19,[sp, #0x20]
02b7f42c  ldp x22,x21,[sp, #0x10]
02b7f430  mov x0,xzr
02b7f434  ldr x30,[sp, #0x8]
02b7f438  str s8,[x8, #0x158]
02b7f43c  ldr d8,[sp], #0x30
02b7f440  b 0x02c0faf8
