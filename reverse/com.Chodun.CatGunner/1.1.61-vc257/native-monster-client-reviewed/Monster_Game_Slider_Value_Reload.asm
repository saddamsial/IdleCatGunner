02c4d3e8  str d8,[sp, #-0x30]!
02c4d3ec  stp x30,x21,[sp, #0x10]
02c4d3f0  stp x20,x19,[sp, #0x20]
02c4d3f4  fmov s8,s0
02c4d3f8  adrp x20,0x625c000
02c4d3fc  adrp x21,0x5e63000
02c4d400  ldrb w8,[x20, #0x135]
02c4d404  ldr x21,[x21, #0x338]
02c4d408  mov x19,x0
02c4d40c  tbnz w8,#0x0,0x02c4d424
02c4d410  adrp x0,0x5e63000
02c4d414  ldr x0,[x0, #0x338]
02c4d418  bl 0x029f5a50
02c4d41c  mov w8,#0x1
02c4d420  strb w8,[x20, #0x135]
02c4d424  mov w8,#0x42c80000
02c4d428  mov w10,#0x80000000
02c4d42c  add x1,sp,#0xc
02c4d430  fmov s0,w8
02c4d434  mov w8,#0x7f800000
02c4d438  fmov s1,w8
02c4d43c  adrp x8,0x5e58000
02c4d440  ldr x8,[x8, #0xa10]
02c4d444  ldr x20,[x19, #0x38]
02c4d448  fmul s0,s8,s0
02c4d44c  ldr x0,[x8, #0x48]
02c4d450  fcvtzs w9,s0
02c4d454  fcmp s0,s1
02c4d458  csel w9,w10,w9,eq
02c4d45c  str w9,[sp, #0xc]
02c4d460  bl 0x029f5bd8
02c4d464  ldr x8,[x21]
02c4d468  mov x1,x0
02c4d46c  mov x2,xzr
02c4d470  mov x0,x8
02c4d474  bl 0x046b6c0c
02c4d478  cbz x20,0x02c4d4b8
02c4d47c  ldr x8,[x20]
02c4d480  mov x1,x0
02c4d484  mov x0,x20
02c4d488  ldr x9,[x8, #0x558]
02c4d48c  ldr x2,[x8, #0x560]
02c4d490  blr x9
02c4d494  ldr x0,[x19, #0x28]
02c4d498  cbz x0,0x02c4d4b8
02c4d49c  fmov s0,s8
02c4d4a0  mov x1,xzr
02c4d4a4  bl 0x02c28290
02c4d4a8  ldp x20,x19,[sp, #0x20]
02c4d4ac  ldp x30,x21,[sp, #0x10]
02c4d4b0  ldr d8,[sp], #0x30
02c4d4b4  ret
02c4d4b8  bl 0x029f5cfc
