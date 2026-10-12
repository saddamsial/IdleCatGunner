02c2d344  str x30,[sp, #-0x30]!
02c2d348  stp x22,x21,[sp, #0x10]
02c2d34c  stp x20,x19,[sp, #0x20]
02c2d350  adrp x20,0x625c000
02c2d354  mov x19,x0
02c2d358  ldrb w8,[x20, #0x5]
02c2d35c  tbnz w8,#0x0,0x02c2d398
02c2d360  adrp x0,0x5e5d000
02c2d364  ldr x0,[x0, #0xd28]
02c2d368  bl 0x029f5a50
02c2d36c  adrp x0,0x5e59000
02c2d370  ldr x0,[x0, #0x7d0]
02c2d374  bl 0x029f5a50
02c2d378  adrp x0,0x5e5a000
02c2d37c  ldr x0,[x0, #0x180]
02c2d380  bl 0x029f5a50
02c2d384  adrp x0,0x5e5d000
02c2d388  ldr x0,[x0, #0x3c0]
02c2d38c  bl 0x029f5a50
02c2d390  mov w8,#0x1
02c2d394  strb w8,[x20, #0x5]
02c2d398  ldr w8,[x19, #0x58]
02c2d39c  adrp x21,0x5e5a000
02c2d3a0  ldr x21,[x21, #0x180]
02c2d3a4  cmp w8,#0x14
02c2d3a8  b.ge 0x02c2d464
02c2d3ac  adrp x8,0x5e5d000
02c2d3b0  adrp x20,0x5e59000
02c2d3b4  ldr x8,[x8, #0xd28]
02c2d3b8  ldr x0,[x8]
02c2d3bc  ldr w8,[x0, #0xe4]
02c2d3c0  ldr x20,[x20, #0x7d0]
02c2d3c4  ldr x19,[x19, #0x60]
02c2d3c8  cbnz w8,0x02c2d3d0
02c2d3cc  bl 0x029f5bd0
02c2d3d0  adrp x22,0x5e5d000
02c2d3d4  ldr x22,[x22, #0x3c0]
02c2d3d8  bl 0x02c2d114
02c2d3dc  ldr x8,[x20]
02c2d3e0  mov x20,x0
02c2d3e4  ldr w9,[x8, #0xe4]
02c2d3e8  cbnz w9,0x02c2d3f4
02c2d3ec  mov x0,x8
02c2d3f0  bl 0x029f5bd0
02c2d3f4  mov x0,x19
02c2d3f8  mov x1,x20
02c2d3fc  mov x2,xzr
02c2d400  bl 0x04832ed8
02c2d404  ldr x8,[x22]
02c2d408  mov x19,x0
02c2d40c  ldr w9,[x8, #0xe4]
02c2d410  cbnz w9,0x02c2d41c
02c2d414  mov x0,x8
02c2d418  bl 0x029f5bd0
02c2d41c  bl 0x02c25b48
02c2d420  mov x1,x0
02c2d424  mov x0,x19
02c2d428  mov x2,xzr
02c2d42c  bl 0x048330d0
02c2d430  ldr x8,[x21]
02c2d434  mov x19,x0
02c2d438  ldr w9,[x8, #0xe4]
02c2d43c  cbnz w9,0x02c2d44c
02c2d440  mov x0,x8
02c2d444  bl 0x029f5bd0
02c2d448  ldr x8,[x21]
02c2d44c  ldr x8,[x8, #0xb8]
02c2d450  mov x0,x19
02c2d454  mov x2,xzr
02c2d458  ldr x1,[x8]
02c2d45c  bl 0x04868dcc
02c2d460  tbz w0,#0x0,0x02c2d480
02c2d464  ldr x0,[x21]
02c2d468  ldr w8,[x0, #0xe4]
02c2d46c  cbnz w8,0x02c2d478
02c2d470  bl 0x029f5bd0
02c2d474  ldr x0,[x21]
02c2d478  ldr x8,[x0, #0xb8]
02c2d47c  ldr x19,[x8]
02c2d480  mov x0,x19
02c2d484  ldp x20,x19,[sp, #0x20]
02c2d488  ldp x22,x21,[sp, #0x10]
02c2d48c  ldr x30,[sp], #0x30
02c2d490  ret
