02c5d358  str x30,[sp, #-0x40]!
02c5d35c  stp x24,x23,[sp, #0x10]
02c5d360  stp x22,x21,[sp, #0x20]
02c5d364  stp x20,x19,[sp, #0x30]
02c5d368  adrp x23,0x625c000
02c5d36c  adrp x21,0x5e59000
02c5d370  adrp x20,0x5e63000
02c5d374  adrp x22,0x5e5e000
02c5d378  ldr x21,[x21, #0x288]
02c5d37c  ldrb w8,[x23, #0x1f8]
02c5d380  ldr x20,[x20, #0x7e8]
02c5d384  ldr x22,[x22, #0xb8]
02c5d388  mov x19,x0
02c5d38c  tbnz w8,#0x0,0x02c5d3e0
02c5d390  adrp x0,0x5e59000
02c5d394  ldr x0,[x0, #0x288]
02c5d398  bl 0x029f5a50
02c5d39c  adrp x0,0x5e63000
02c5d3a0  ldr x0,[x0, #0x7e8]
02c5d3a4  bl 0x029f5a50
02c5d3a8  adrp x0,0x5e63000
02c5d3ac  ldr x0,[x0, #0x7f0]
02c5d3b0  bl 0x029f5a50
02c5d3b4  adrp x0,0x5e63000
02c5d3b8  ldr x0,[x0, #0x7f8]
02c5d3bc  bl 0x029f5a50
02c5d3c0  adrp x0,0x5e5e000
02c5d3c4  ldr x0,[x0, #0xb8]
02c5d3c8  bl 0x029f5a50
02c5d3cc  adrp x0,0x5e5d000
02c5d3d0  ldr x0,[x0, #0x3c0]
02c5d3d4  bl 0x029f5a50
02c5d3d8  mov w8,#0x1
02c5d3dc  strb w8,[x23, #0x1f8]
02c5d3e0  adrp x24,0x5e63000
02c5d3e4  adrp x23,0x5e5d000
02c5d3e8  ldr x24,[x24, #0x7f8]
02c5d3ec  ldr x23,[x23, #0x3c0]
02c5d3f0  ldr x0,[x21]
02c5d3f4  bl 0x029f5cec
02c5d3f8  ldr x2,[x20]
02c5d3fc  mov x1,x19
02c5d400  mov x3,xzr
02c5d404  mov x20,x0
02c5d408  bl 0x047b3618
02c5d40c  ldr x0,[x22]
02c5d410  ldr w8,[x0, #0xe4]
02c5d414  cbnz w8,0x02c5d41c
02c5d418  bl 0x029f5bd0
02c5d41c  adrp x22,0x5e63000
02c5d420  mov x0,x20
02c5d424  mov x1,xzr
02c5d428  ldr x22,[x22, #0x7f0]
02c5d42c  bl 0x02c90ab8
02c5d430  ldr x0,[x21]
02c5d434  bl 0x029f5cec
02c5d438  ldr x2,[x24]
02c5d43c  mov x1,x19
02c5d440  mov x3,xzr
02c5d444  mov x20,x0
02c5d448  bl 0x047b3618
02c5d44c  ldr x0,[x23]
02c5d450  ldr w8,[x0, #0xe4]
02c5d454  cbnz w8,0x02c5d45c
02c5d458  bl 0x029f5bd0
02c5d45c  mov x0,x20
02c5d460  mov x1,xzr
02c5d464  bl 0x02c23070
02c5d468  ldr x0,[x21]
02c5d46c  bl 0x029f5cec
02c5d470  ldr x2,[x22]
02c5d474  mov x1,x19
02c5d478  mov x3,xzr
02c5d47c  mov x20,x0
02c5d480  bl 0x047b3618
02c5d484  mov x0,x20
02c5d488  ldp x20,x19,[sp, #0x30]
02c5d48c  ldp x22,x21,[sp, #0x20]
02c5d490  mov x1,xzr
02c5d494  ldp x24,x23,[sp, #0x10]
02c5d498  ldr x30,[sp], #0x40
02c5d49c  b 0x02c235c8
