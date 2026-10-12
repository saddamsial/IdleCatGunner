02c2ea20  scvtf s0,w1
02c2ea24  adrp x8,0x116c000
02c2ea28  ldr s1,[x8, #0x174]
02c2ea2c  fmul s0,s0,s1
02c2ea30  fmov s1,0x3f800000
02c2ea34  fadd s0,s0,s1
02c2ea38  ret
