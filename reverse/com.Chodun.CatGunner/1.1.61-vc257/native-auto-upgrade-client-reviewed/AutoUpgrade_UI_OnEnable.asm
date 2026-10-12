02c1d3b0  str x30,[sp, #-0x40]!
02c1d3b4  stp x24,x23,[sp, #0x10]
02c1d3b8  stp x22,x21,[sp, #0x20]
02c1d3bc  stp x20,x19,[sp, #0x30]
02c1d3c0  adrp x20,0x625b000
02c1d3c4  adrp x22,0x5e59000
02c1d3c8  adrp x21,0x5e62000
02c1d3cc  adrp x24,0x5e5d000
02c1d3d0  ldr x22,[x22, #0x288]
02c1d3d4  ldrb w8,[x20, #0xf32]
02c1d3d8  ldr x21,[x21, #0x958]
02c1d3dc  ldr x24,[x24, #0x920]
02c1d3e0  mov x19,x0
02c1d3e4  tbnz w8,#0x0,0x02c1d420
02c1d3e8  adrp x0,0x5e59000
02c1d3ec  ldr x0,[x0, #0x288]
02c1d3f0  bl 0x029f5a50
02c1d3f4  adrp x0,0x5e62000
02c1d3f8  ldr x0,[x0, #0x958]
02c1d3fc  bl 0x029f5a50
02c1d400  adrp x0,0x5e5d000
02c1d404  ldr x0,[x0, #0x920]
02c1d408  bl 0x029f5a50
02c1d40c  adrp x0,0x5e5d000
02c1d410  ldr x0,[x0, #0x4e8]
02c1d414  bl 0x029f5a50
02c1d418  mov w8,#0x1
02c1d41c  strb w8,[x20, #0xf32]
02c1d420  adrp x23,0x5e5d000
02c1d424  mov x0,x19
02c1d428  ldr x23,[x23, #0x4e8]
02c1d42c  bl 0x02c1d4b0
02c1d430  ldr x0,[x22]
02c1d434  bl 0x029f5cec
02c1d438  ldr x2,[x21]
02c1d43c  mov x1,x19
02c1d440  mov x3,xzr
02c1d444  mov x20,x0
02c1d448  bl 0x047b3618
02c1d44c  ldr x0,[x24]
02c1d450  ldr w8,[x0, #0xe4]
02c1d454  cbnz w8,0x02c1d45c
02c1d458  bl 0x029f5bd0
02c1d45c  mov x0,x20
02c1d460  mov x1,xzr
02c1d464  bl 0x02c8d8b0
02c1d468  ldr x0,[x22]
02c1d46c  bl 0x029f5cec
02c1d470  ldr x2,[x21]
02c1d474  mov x1,x19
02c1d478  mov x3,xzr
02c1d47c  mov x20,x0
02c1d480  bl 0x047b3618
02c1d484  ldr x0,[x23]
02c1d488  ldr w8,[x0, #0xe4]
02c1d48c  cbnz w8,0x02c1d494
02c1d490  bl 0x029f5bd0
02c1d494  mov x0,x20
02c1d498  ldp x20,x19,[sp, #0x30]
02c1d49c  ldp x22,x21,[sp, #0x20]
02c1d4a0  mov x1,xzr
02c1d4a4  ldp x24,x23,[sp, #0x10]
02c1d4a8  ldr x30,[sp], #0x40
02c1d4ac  b 0x02cb31c4
