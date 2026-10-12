02c3b00c  sub sp,sp,#0x80
02c3b010  stp d15,d14,[sp, #0x10]
02c3b014  stp d13,d12,[sp, #0x20]
02c3b018  stp d11,d10,[sp, #0x30]
02c3b01c  stp d9,d8,[sp, #0x40]
02c3b020  str x30,[sp, #0x50]
02c3b024  stp x22,x21,[sp, #0x60]
02c3b028  stp x20,x19,[sp, #0x70]
02c3b02c  adrp x20,0x625c000
02c3b030  adrp x21,0x5e59000
02c3b034  mov x19,x0
02c3b038  ldrb w8,[x20, #0xaf]
02c3b03c  ldr x21,[x21, #0x1c0]
02c3b040  tbnz w8,#0x0,0x02c3b064
02c3b044  adrp x0,0x5e63000
02c3b048  ldr x0,[x0, #0x1d8]
02c3b04c  bl 0x029f5a50
02c3b050  adrp x0,0x5e59000
02c3b054  ldr x0,[x0, #0x1c0]
02c3b058  bl 0x029f5a50
02c3b05c  mov w8,#0x1
02c3b060  strb w8,[x20, #0xaf]
02c3b064  ldr x0,[x21]
02c3b068  ldr s15,[x19, #0x1f4]
02c3b06c  ldr x20,[x19, #0x1e0]
02c3b070  ldr w8,[x0, #0xe4]
02c3b074  cbnz w8,0x02c3b07c
02c3b078  bl 0x029f5bd0
02c3b07c  mov x0,x20
02c3b080  mov x1,xzr
02c3b084  mov x2,xzr
02c3b088  bl 0x057dfa70
02c3b08c  tbz w0,#0x0,0x02c3b204
02c3b090  ldr x8,[x19, #0x48]
02c3b094  cbz x8,0x02c3b648
02c3b098  ldr w8,[x8, #0x18]
02c3b09c  adrp x22,0x5e59000
02c3b0a0  ldr x0,[x19, #0xd8]
02c3b0a4  ldr x22,[x22]
02c3b0a8  cmp w8,#0x5
02c3b0ac  b.ne 0x02c3b210
02c3b0b0  cbz x0,0x02c3b648
02c3b0b4  mov x1,xzr
02c3b0b8  bl 0x057eed98
02c3b0bc  ldr x0,[x19, #0x1e0]
02c3b0c0  cbz x0,0x02c3b648
02c3b0c4  mov x1,xzr
02c3b0c8  fmov s9,s0
02c3b0cc  fmov s8,s1
02c3b0d0  fmov s10,s2
02c3b0d4  bl 0x057dc0f8
02c3b0d8  cbz x0,0x02c3b648
02c3b0dc  mov x1,xzr
02c3b0e0  bl 0x057eed98
02c3b0e4  fmov s12,s0
02c3b0e8  fmov s11,s1
02c3b0ec  adrp x20,0x625b000
02c3b0f0  fmov s13,s2
02c3b0f4  ldrb w8,[x20, #0xae8]
02c3b0f8  cbnz w8,0x02c3b110
02c3b0fc  adrp x0,0x5e59000
02c3b100  ldr x0,[x0]
02c3b104  bl 0x029f5a50
02c3b108  mov w8,#0x1
02c3b10c  strb w8,[x20, #0xae8]
02c3b110  ldr x0,[x22]
02c3b114  ldr w8,[x0, #0xe4]
02c3b118  cbnz w8,0x02c3b120
02c3b11c  bl 0x029f5bd0
02c3b120  ldr x0,[x19, #0xd8]
02c3b124  str s15,[sp, #0x5c]
02c3b128  cbz x0,0x02c3b648
02c3b12c  fsub s12,s12,s9
02c3b130  fsub s13,s13,s10
02c3b134  adrp x8,0x116c000
02c3b138  ldr s1,[x8, #0x21c]
02c3b13c  mov x1,xzr
02c3b140  fsub s11,s11,s8
02c3b144  fmul s14,s12,s12
02c3b148  fmul s15,s13,s13
02c3b14c  fadd s0,s14,s15
02c3b150  fsqrt s0,s0
02c3b154  fmul s0,s0,s1
02c3b158  fmov s1,0x40800000
02c3b15c  fmul s8,s0,s1
02c3b160  bl 0x057eed98
02c3b164  fmov s9,s0
02c3b168  fmov s10,s2
02c3b16c  adrp x20,0x625b000
02c3b170  ldrb w8,[x20, #0x52e]
02c3b174  cbnz w8,0x02c3b1a4
02c3b178  adrp x0,0x5e59000
02c3b17c  ldr x0,[x0]
02c3b180  str s10,[sp, #0x58]
02c3b184  fmov s10,s9
02c3b188  fmov s9,s1
02c3b18c  bl 0x029f5a50
02c3b190  fmov s1,s9
02c3b194  fmov s9,s10
02c3b198  ldr s10,[sp, #0x58]
02c3b19c  mov w8,#0x1
02c3b1a0  strb w8,[x20, #0x52e]
02c3b1a4  ldr x0,[x22]
02c3b1a8  fadd s8,s11,s8
02c3b1ac  ldr w8,[x0, #0xe4]
02c3b1b0  cbnz w8,0x02c3b1d0
02c3b1b4  fmov s11,s10
02c3b1b8  fmov s10,s9
02c3b1bc  fmov s9,s1
02c3b1c0  bl 0x029f5bd0
02c3b1c4  fmov s1,s9
02c3b1c8  fmov s9,s10
02c3b1cc  fmov s10,s11
02c3b1d0  fmul s0,s8,s8
02c3b1d4  adrp x8,0x116c000
02c3b1d8  fadd s0,s14,s0
02c3b1dc  fadd s0,s15,s0
02c3b1e0  fsqrt s2,s0
02c3b1e4  ldr s0,[x8, #0x240]
02c3b1e8  fcmp s2,s0
02c3b1ec  b.le 0x02c3b230
02c3b1f0  ldr s15,[sp, #0x5c]
02c3b1f4  fdiv s0,s12,s2
02c3b1f8  fdiv s4,s8,s2
02c3b1fc  fdiv s2,s13,s2
02c3b200  b 0x02c3b274
02c3b204  mov w8,#0x43020000
02c3b208  fmov s12,w8
02c3b20c  b 0x02c3b578
02c3b210  cbz x0,0x02c3b648
02c3b214  ldr s1,[x19, #0x1e8]
02c3b218  ldr s0,[x19, #0x1f0]
02c3b21c  mov x1,xzr
02c3b220  stp s0,s1,[sp, #0x58]
02c3b224  bl 0x057eed98
02c3b228  str s1,[sp, #0xc]
02c3b22c  b 0x02c3b298
02c3b230  adrp x20,0x625b000
02c3b234  ldr s15,[sp, #0x5c]
02c3b238  ldrb w8,[x20, #0x26f]
02c3b23c  cbnz w8,0x02c3b25c
02c3b240  adrp x0,0x5e58000
02c3b244  fmov s8,s1
02c3b248  ldr x0,[x0, #0xbf8]
02c3b24c  bl 0x029f5a50
02c3b250  fmov s1,s8
02c3b254  mov w8,#0x1
02c3b258  strb w8,[x20, #0x26f]
02c3b25c  adrp x8,0x5e58000
02c3b260  ldr x8,[x8, #0xbf8]
02c3b264  ldr x8,[x8]
02c3b268  ldr x8,[x8, #0xb8]
02c3b26c  ldp s0,s4,[x8]
02c3b270  ldr s2,[x8, #0x8]
02c3b274  fmov s3,0x41200000
02c3b278  fmul s0,s0,s3
02c3b27c  fmul s4,s4,s3
02c3b280  fmul s2,s2,s3
02c3b284  fadd s3,s9,s0
02c3b288  fadd s0,s1,s4
02c3b28c  str s0,[sp, #0xc]
02c3b290  fadd s0,s10,s2
02c3b294  stp s0,s3,[sp, #0x58]
02c3b298  ldr x0,[x19, #0xd8]
02c3b29c  cbz x0,0x02c3b648
02c3b2a0  mov x1,xzr
02c3b2a4  bl 0x057eed98
02c3b2a8  fmov s12,s0
02c3b2ac  fmov s13,s1
02c3b2b0  adrp x20,0x625c000
02c3b2b4  fmov s14,s2
02c3b2b8  ldrb w8,[x20, #0xbe]
02c3b2bc  cbnz w8,0x02c3b2d4
02c3b2c0  adrp x0,0x5e59000
02c3b2c4  ldr x0,[x0]
02c3b2c8  bl 0x029f5a50
02c3b2cc  mov w8,#0x1
02c3b2d0  strb w8,[x20, #0xbe]
02c3b2d4  ldr x0,[x22]
02c3b2d8  ldr w8,[x0, #0xe4]
02c3b2dc  cbnz w8,0x02c3b2e4
02c3b2e0  bl 0x029f5bd0
02c3b2e4  ldr x0,[x19, #0xd8]
02c3b2e8  cbz x0,0x02c3b648
02c3b2ec  mov x1,xzr
02c3b2f0  fmov s8,s15
02c3b2f4  bl 0x057eed98
02c3b2f8  mov x0,x19
02c3b2fc  mov x1,xzr
02c3b300  fmov s9,s0
02c3b304  fmov s11,s1
02c3b308  fmov s10,s2
02c3b30c  bl 0x057dc0f8
02c3b310  cbz x0,0x02c3b648
02c3b314  ldp s2,s1,[sp, #0x58]
02c3b318  mov x1,xzr
02c3b31c  ldr s0,[sp, #0xc]
02c3b320  fsub s0,s13,s0
02c3b324  fsub s1,s12,s1
02c3b328  fsub s2,s14,s2
02c3b32c  fmul s1,s1,s1
02c3b330  fmul s0,s0,s0
02c3b334  fadd s0,s1,s0
02c3b338  fmul s1,s2,s2
02c3b33c  fadd s15,s1,s0
02c3b340  bl 0x057eed98
02c3b344  fmov s12,s0
02c3b348  fmov s13,s1
02c3b34c  ldrb w8,[x20, #0xbe]
02c3b350  fmov s14,s2
02c3b354  cbnz w8,0x02c3b36c
02c3b358  adrp x0,0x5e59000
02c3b35c  ldr x0,[x0]
02c3b360  bl 0x029f5a50
02c3b364  mov w8,#0x1
02c3b368  strb w8,[x20, #0xbe]
02c3b36c  fsqrt s15,s15
02c3b370  ldr x0,[x22]
02c3b374  ldr w8,[x0, #0xe4]
02c3b378  cbnz w8,0x02c3b380
02c3b37c  bl 0x029f5bd0
02c3b380  fsub s0,s11,s13
02c3b384  fsub s1,s9,s12
02c3b388  fsub s2,s10,s14
02c3b38c  fmul s1,s1,s1
02c3b390  fmul s0,s0,s0
02c3b394  fadd s0,s1,s0
02c3b398  fmul s1,s2,s2
02c3b39c  fadd s0,s1,s0
02c3b3a0  fsqrt s0,s0
02c3b3a4  fcmp s15,s0
02c3b3a8  b.le 0x02c3b48c
02c3b3ac  ldr x0,[x19, #0xd8]
02c3b3b0  cbz x0,0x02c3b648
02c3b3b4  mov x1,xzr
02c3b3b8  fmov s12,s8
02c3b3bc  bl 0x057eed98
02c3b3c0  ldr s3,[sp, #0x5c]
02c3b3c4  adrp x8,0x116c000
02c3b3c8  fsub s9,s3,s0
02c3b3cc  ldr s0,[sp, #0xc]
02c3b3d0  fsub s8,s0,s1
02c3b3d4  ldr s0,[sp, #0x58]
02c3b3d8  fsub s11,s0,s2
02c3b3dc  fmul s0,s9,s9
02c3b3e0  fmul s1,s8,s8
02c3b3e4  fadd s0,s0,s1
02c3b3e8  fmul s1,s11,s11
02c3b3ec  fadd s10,s1,s0
02c3b3f0  ldr s0,[x8, #0x200]
02c3b3f4  fcmp s10,s0
02c3b3f8  b.le 0x02c3b578
02c3b3fc  ldr x0,[x19, #0xd8]
02c3b400  cbz x0,0x02c3b648
02c3b404  mov x1,xzr
02c3b408  bl 0x057eecc8
02c3b40c  ldr x8,[x21]
02c3b410  mov x20,x0
02c3b414  ldr w9,[x8, #0xe4]
02c3b418  cbnz w9,0x02c3b424
02c3b41c  mov x0,x8
02c3b420  bl 0x029f5bd0
02c3b424  mov x0,x20
02c3b428  mov x1,xzr
02c3b42c  mov x2,xzr
02c3b430  bl 0x057dfa70
02c3b434  adrp x21,0x625b000
02c3b438  ldrb w8,[x21, #0x52e]
02c3b43c  tbz w0,#0x0,0x02c3b494
02c3b440  cbnz w8,0x02c3b458
02c3b444  adrp x0,0x5e59000
02c3b448  ldr x0,[x0]
02c3b44c  bl 0x029f5a50
02c3b450  mov w8,#0x1
02c3b454  strb w8,[x21, #0x52e]
02c3b458  ldr x0,[x22]
02c3b45c  ldr w8,[x0, #0xe4]
02c3b460  cbnz w8,0x02c3b468
02c3b464  bl 0x029f5bd0
02c3b468  fsqrt s2,s10
02c3b46c  adrp x8,0x116c000
02c3b470  ldr s0,[x8, #0x240]
02c3b474  fcmp s2,s0
02c3b478  b.le 0x02c3b4dc
02c3b47c  fdiv s0,s9,s2
02c3b480  fdiv s1,s8,s2
02c3b484  fdiv s2,s11,s2
02c3b488  b 0x02c3b514
02c3b48c  fmov s12,s8
02c3b490  b 0x02c3b578
02c3b494  cbnz w8,0x02c3b4ac
02c3b498  adrp x0,0x5e59000
02c3b49c  ldr x0,[x0]
02c3b4a0  bl 0x029f5a50
02c3b4a4  mov w8,#0x1
02c3b4a8  strb w8,[x21, #0x52e]
02c3b4ac  ldr x0,[x22]
02c3b4b0  ldr w8,[x0, #0xe4]
02c3b4b4  cbnz w8,0x02c3b4bc
02c3b4b8  bl 0x029f5bd0
02c3b4bc  fsqrt s0,s10
02c3b4c0  adrp x8,0x116c000
02c3b4c4  ldr s1,[x8, #0x240]
02c3b4c8  fcmp s0,s1
02c3b4cc  b.le 0x02c3b530
02c3b4d0  fdiv s2,s9,s0
02c3b4d4  fdiv s0,s8,s0
02c3b4d8  b 0x02c3b564
02c3b4dc  adrp x21,0x625b000
02c3b4e0  ldrb w8,[x21, #0x26f]
02c3b4e4  cbnz w8,0x02c3b4fc
02c3b4e8  adrp x0,0x5e58000
02c3b4ec  ldr x0,[x0, #0xbf8]
02c3b4f0  bl 0x029f5a50
02c3b4f4  mov w8,#0x1
02c3b4f8  strb w8,[x21, #0x26f]
02c3b4fc  adrp x8,0x5e58000
02c3b500  ldr x8,[x8, #0xbf8]
02c3b504  ldr x8,[x8]
02c3b508  ldr x8,[x8, #0xb8]
02c3b50c  ldp s0,s1,[x8]
02c3b510  ldr s2,[x8, #0x8]
02c3b514  cbz x20,0x02c3b648
02c3b518  mov x0,x20
02c3b51c  mov x1,xzr
02c3b520  bl 0x057f041c
02c3b524  fmov s2,s0
02c3b528  fmov s0,s1
02c3b52c  b 0x02c3b564
02c3b530  adrp x20,0x625b000
02c3b534  ldrb w8,[x20, #0x26f]
02c3b538  cbnz w8,0x02c3b550
02c3b53c  adrp x0,0x5e58000
02c3b540  ldr x0,[x0, #0xbf8]
02c3b544  bl 0x029f5a50
02c3b548  mov w8,#0x1
02c3b54c  strb w8,[x20, #0x26f]
02c3b550  adrp x8,0x5e58000
02c3b554  ldr x8,[x8, #0xbf8]
02c3b558  ldr x8,[x8]
02c3b55c  ldr x8,[x8, #0xb8]
02c3b560  ldp s2,s0,[x8]
02c3b564  fmov s1,s2
02c3b568  bl 0x05afb2e0
02c3b56c  adrp x8,0x116c000
02c3b570  ldr s1,[x8, #0x74]
02c3b574  fmul s12,s0,s1
02c3b578  adrp x20,0x5e63000
02c3b57c  mov x0,xzr
02c3b580  ldr x20,[x20, #0x1d8]
02c3b584  ldr s8,[x19, #0x1f4]
02c3b588  ldr s9,[x19, #0x120]
02c3b58c  bl 0x057ebabc
02c3b590  fsub s1,s12,s8
02c3b594  mov w8,#0x43b40000
02c3b598  fmul s0,s9,s0
02c3b59c  fmov s2,w8
02c3b5a0  mov w8,#0xc3b40000
02c3b5a4  ldr x0,[x20]
02c3b5a8  fmov s4,w8
02c3b5ac  mov w8,#0x43340000
02c3b5b0  ldr x20,[x19, #0xd8]
02c3b5b4  fdiv s3,s1,s2
02c3b5b8  frintm s3,s3
02c3b5bc  fmul s3,s3,s4
02c3b5c0  fadd s1,s1,s3
02c3b5c4  movi d3,#0x0
02c3b5c8  fcmp s1,s2
02c3b5cc  fcsel s2,s2,s1,gt
02c3b5d0  fcmp s1,#0.0
02c3b5d4  fcsel s1,s3,s2,mi
02c3b5d8  fadd s2,s1,s4
02c3b5dc  fmov s4,w8
02c3b5e0  ldr w8,[x0, #0xe4]
02c3b5e4  fcmp s1,s4
02c3b5e8  fmov s4,0x3f800000
02c3b5ec  fcsel s1,s2,s1,gt
02c3b5f0  fcmp s0,s4
02c3b5f4  fcsel s2,s4,s0,gt
02c3b5f8  fcmp s0,#0.0
02c3b5fc  fcsel s0,s3,s2,mi
02c3b600  fmul s0,s0,s1
02c3b604  fadd s8,s8,s0
02c3b608  str s8,[x19, #0x1f4]
02c3b60c  cbnz w8,0x02c3b614
02c3b610  bl 0x029f5bd0
02c3b614  fmov s0,s8
02c3b618  mov x0,x20
02c3b61c  bl 0x02c3a370
02c3b620  mov x0,x19
02c3b624  ldp x20,x19,[sp, #0x70]
02c3b628  ldp x22,x21,[sp, #0x60]
02c3b62c  ldr x30,[sp, #0x50]
02c3b630  ldp d9,d8,[sp, #0x40]
02c3b634  ldp d11,d10,[sp, #0x30]
02c3b638  ldp d13,d12,[sp, #0x20]
02c3b63c  ldp d15,d14,[sp, #0x10]
02c3b640  add sp,sp,#0x80
02c3b644  b 0x02c417e8
02c3b648  bl 0x029f5cfc
