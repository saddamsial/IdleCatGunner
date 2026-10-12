02c7d310  stp x30,x21,[sp, #-0x20]!
02c7d314  stp x20,x19,[sp, #0x10]
02c7d318  adrp x20,0x625c000
02c7d31c  adrp x21,0x5e5d000
02c7d320  mov x19,x0
02c7d324  ldrb w8,[x20, #0x327]
02c7d328  ldr x21,[x21, #0x338]
02c7d32c  tbnz w8,#0x0,0x02c7d344
02c7d330  adrp x0,0x5e5d000
02c7d334  ldr x0,[x0, #0x338]
02c7d338  bl 0x029f5a50
02c7d33c  mov w8,#0x1
02c7d340  strb w8,[x20, #0x327]
02c7d344  ldr x0,[x21]
02c7d348  ldr w8,[x0, #0xe4]
02c7d34c  cbnz w8,0x02c7d358
02c7d350  bl 0x029f5bd0
02c7d354  ldr x0,[x21]
02c7d358  ldr x8,[x0, #0xb8]
02c7d35c  ldr w8,[x8, #0xc0]
02c7d360  cmp w8,#0x64
02c7d364  b.lt 0x02c7d3ec
02c7d368  mov x0,x19
02c7d36c  mov w1,wzr
02c7d370  bl 0x02c7d16c
02c7d374  cmn w0,#0x1
02c7d378  b.eq 0x02c7d3ec
02c7d37c  mov w20,w0
02c7d380  ldr x0,[x21]
02c7d384  ldr w8,[x0, #0xe4]
02c7d388  cbnz w8,0x02c7d390
02c7d38c  bl 0x029f5bd0
02c7d390  mov w0,#0x64
02c7d394  mov x1,xzr
02c7d398  bl 0x02b7f63c
02c7d39c  mov x0,x19
02c7d3a0  mov w1,w20
02c7d3a4  bl 0x02c7d444
02c7d3a8  adrp x19,0x625b000
02c7d3ac  ldrb w8,[x19, #0xa57]
02c7d3b0  cbnz w8,0x02c7d3c8
02c7d3b4  adrp x0,0x5e5d000
02c7d3b8  ldr x0,[x0, #0xd70]
02c7d3bc  bl 0x029f5a50
02c7d3c0  mov w8,#0x1
02c7d3c4  strb w8,[x19, #0xa57]
02c7d3c8  adrp x8,0x5e5d000
02c7d3cc  ldr x8,[x8, #0xd70]
02c7d3d0  ldr x8,[x8]
02c7d3d4  ldr x8,[x8, #0xb8]
02c7d3d8  ldr x0,[x8]
02c7d3dc  cbz x0,0x02c7d440
02c7d3e0  fmov s0,0x3f800000
02c7d3e4  mov w1,#0x2
02c7d3e8  b 0x02c7d42c
02c7d3ec  adrp x19,0x625b000
02c7d3f0  ldrb w8,[x19, #0xa57]
02c7d3f4  cbnz w8,0x02c7d40c
02c7d3f8  adrp x0,0x5e5d000
02c7d3fc  ldr x0,[x0, #0xd70]
02c7d400  bl 0x029f5a50
02c7d404  mov w8,#0x1
02c7d408  strb w8,[x19, #0xa57]
02c7d40c  adrp x8,0x5e5d000
02c7d410  ldr x8,[x8, #0xd70]
02c7d414  ldr x8,[x8]
02c7d418  ldr x8,[x8, #0xb8]
02c7d41c  ldr x0,[x8]
02c7d420  cbz x0,0x02c7d440
02c7d424  fmov s0,0x3f800000
02c7d428  mov w1,#0x5
02c7d42c  ldp x20,x19,[sp, #0x10]
02c7d430  mov x2,xzr
02c7d434  mov x3,xzr
02c7d438  ldp x30,x21,[sp], #0x20
02c7d43c  b 0x02c1f10c
02c7d440  bl 0x029f5cfc
