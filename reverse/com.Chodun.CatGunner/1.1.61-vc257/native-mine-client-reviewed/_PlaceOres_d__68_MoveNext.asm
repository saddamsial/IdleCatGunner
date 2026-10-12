02c4b158  sub sp,sp,#0x80
02c4b15c  stp d9,d8,[sp, #0x10]
02c4b160  stp x29,x30,[sp, #0x20]
02c4b164  stp x28,x27,[sp, #0x30]
02c4b168  stp x26,x25,[sp, #0x40]
02c4b16c  stp x24,x23,[sp, #0x50]
02c4b170  stp x22,x21,[sp, #0x60]
02c4b174  stp x20,x19,[sp, #0x70]
02c4b178  adrp x20,0x625c000
02c4b17c  mov x19,x0
02c4b180  ldrb w8,[x20, #0x120]
02c4b184  tbnz w8,#0x0,0x02c4b28c
02c4b188  adrp x0,0x5e63000
02c4b18c  ldr x0,[x0, #0x3f8]
02c4b190  bl 0x029f5a50
02c4b194  adrp x0,0x5e58000
02c4b198  ldr x0,[x0, #0xf08]
02c4b19c  bl 0x029f5a50
02c4b1a0  adrp x0,0x5e5d000
02c4b1a4  ldr x0,[x0, #0x790]
02c4b1a8  bl 0x029f5a50
02c4b1ac  adrp x0,0x5e63000
02c4b1b0  ldr x0,[x0, #0x108]
02c4b1b4  bl 0x029f5a50
02c4b1b8  adrp x0,0x5e63000
02c4b1bc  ldr x0,[x0, #0x400]
02c4b1c0  bl 0x029f5a50
02c4b1c4  adrp x0,0x5e63000
02c4b1c8  ldr x0,[x0, #0x408]
02c4b1cc  bl 0x029f5a50
02c4b1d0  adrp x0,0x5e62000
02c4b1d4  ldr x0,[x0, #0x680]
02c4b1d8  bl 0x029f5a50
02c4b1dc  adrp x0,0x5e63000
02c4b1e0  ldr x0,[x0, #0x410]
02c4b1e4  bl 0x029f5a50
02c4b1e8  adrp x0,0x5e63000
02c4b1ec  ldr x0,[x0, #0x418]
02c4b1f0  bl 0x029f5a50
02c4b1f4  adrp x0,0x5e62000
02c4b1f8  ldr x0,[x0, #0xfe8]
02c4b1fc  bl 0x029f5a50
02c4b200  adrp x0,0x5e63000
02c4b204  ldr x0,[x0, #0x420]
02c4b208  bl 0x029f5a50
02c4b20c  adrp x0,0x5e63000
02c4b210  ldr x0,[x0, #0x128]
02c4b214  bl 0x029f5a50
02c4b218  adrp x0,0x5e63000
02c4b21c  ldr x0,[x0, #0x428]
02c4b220  bl 0x029f5a50
02c4b224  adrp x0,0x5e62000
02c4b228  ldr x0,[x0, #0x628]
02c4b22c  bl 0x029f5a50
02c4b230  adrp x0,0x5e63000
02c4b234  ldr x0,[x0, #0x430]
02c4b238  bl 0x029f5a50
02c4b23c  adrp x0,0x5e59000
02c4b240  ldr x0,[x0, #0x1c0]
02c4b244  bl 0x029f5a50
02c4b248  adrp x0,0x5e59000
02c4b24c  ldr x0,[x0, #0x960]
02c4b250  bl 0x029f5a50
02c4b254  adrp x0,0x5e63000
02c4b258  ldr x0,[x0, #0x438]
02c4b25c  bl 0x029f5a50
02c4b260  adrp x0,0x5e63000
02c4b264  ldr x0,[x0, #0x3d8]
02c4b268  bl 0x029f5a50
02c4b26c  adrp x0,0x5e63000
02c4b270  ldr x0,[x0, #0x440]
02c4b274  bl 0x029f5a50
02c4b278  adrp x0,0x5e63000
02c4b27c  ldr x0,[x0, #0x448]
02c4b280  bl 0x029f5a50
02c4b284  mov w8,#0x1
02c4b288  strb w8,[x20, #0x120]
02c4b28c  adrp x23,0x5e59000
02c4b290  adrp x24,0x5e63000
02c4b294  ldr x23,[x23, #0x1c0]
02c4b298  ldr w8,[x19, #0x10]
02c4b29c  ldr x24,[x24, #0x420]
02c4b2a0  ldr x28,[x19, #0x20]
02c4b2a4  cmp w8,#0x2
02c4b2a8  b.eq 0x02c4b448
02c4b2ac  adrp x22,0x5e63000
02c4b2b0  adrp x23,0x5e63000
02c4b2b4  cmp w8,#0x1
02c4b2b8  ldr x22,[x22, #0x440]
02c4b2bc  ldr x23,[x23, #0x400]
02c4b2c0  b.eq 0x02c4b43c
02c4b2c4  cbnz w8,0x02c4b9e4
02c4b2c8  mov w8,#0xffffffff
02c4b2cc  str w8,[x19, #0x10]
02c4b2d0  cbz x28,0x02c4ba2c
02c4b2d4  ldr x8,[x28, #0x20]
02c4b2d8  cbz x8,0x02c4b454
02c4b2dc  ldr x8,[x8, #0x18]
02c4b2e0  cbz x8,0x02c4b454
02c4b2e4  mov w1,#0x869f
02c4b2e8  mov w0,wzr
02c4b2ec  mov x2,xzr
02c4b2f0  movk w1,#0x1, LSL #16
02c4b2f4  bl 0x057d5614
02c4b2f8  adrp x8,0x5e59000
02c4b2fc  mov w20,w0
02c4b300  ldr x8,[x8, #0x960]
02c4b304  ldr x8,[x8]
02c4b308  mov x0,x8
02c4b30c  bl 0x029f5cec
02c4b310  mov w1,w20
02c4b314  mov x2,xzr
02c4b318  mov x21,x0
02c4b31c  bl 0x04862240
02c4b320  mov x20,x19
02c4b324  mov x1,x21
02c4b328  str x21,[x20, #0x28]!
02c4b32c  mov x0,x20
02c4b330  bl 0x029f59f4
02c4b334  ldr x0,[x20]
02c4b338  cbz x0,0x02c4ba2c
02c4b33c  ldr x8,[x0]
02c4b340  ldp x9,x1,[x8, #0x1b8]
02c4b344  blr x9
02c4b348  adrp x8,0x1170000
02c4b34c  ldr x0,[x19, #0x28]
02c4b350  ldr d8,[x8, #0xa08]
02c4b354  fmul d0,d0,d8
02c4b358  fcvt s0,d0
02c4b35c  str s0,[x19, #0x30]
02c4b360  cbz x0,0x02c4ba2c
02c4b364  ldr x8,[x0]
02c4b368  ldp x9,x1,[x8, #0x1b8]
02c4b36c  blr x9
02c4b370  fmul d0,d0,d8
02c4b374  adrp x20,0x625b000
02c4b378  fmov s8,0x3e800000
02c4b37c  ldrb w8,[x20, #0xaea]
02c4b380  ldr s9,[x28, #0x10c]
02c4b384  fcvt s0,d0
02c4b388  str s0,[x19, #0x34]
02c4b38c  cbnz w8,0x02c4b3a4
02c4b390  adrp x0,0x5e59000
02c4b394  ldr x0,[x0]
02c4b398  bl 0x029f5a50
02c4b39c  mov w8,#0x1
02c4b3a0  strb w8,[x20, #0xaea]
02c4b3a4  adrp x8,0x5e59000
02c4b3a8  fmul s8,s9,s8
02c4b3ac  add x20,x28,#0x10c
02c4b3b0  ldr x8,[x8]
02c4b3b4  ldr x0,[x8]
02c4b3b8  ldr w8,[x0, #0xe4]
02c4b3bc  cbnz w8,0x02c4b3c4
02c4b3c0  bl 0x029f5bd0
02c4b3c4  frintp s0,s8
02c4b3c8  mov w8,#0x7f800000
02c4b3cc  ldr d1,[x20]
02c4b3d0  fmov s2,w8
02c4b3d4  fcvtps w9,s8
02c4b3d8  adrp x10,0x5e63000
02c4b3dc  ldr x10,[x10, #0x430]
02c4b3e0  mov w8,#0x80000000
02c4b3e4  fcmp s0,s2
02c4b3e8  fmul v0.2S,v1.2S,v1.2S
02c4b3ec  ldr x0,[x10]
02c4b3f0  csel w8,w8,w9,eq
02c4b3f4  str w8,[x19, #0x38]
02c4b3f8  stur d0,[x19, #0x3c]
02c4b3fc  bl 0x029f5cec
02c4b400  adrp x8,0x5e63000
02c4b404  mov x20,x0
02c4b408  ldr x8,[x8, #0x410]
02c4b40c  ldr x1,[x8]
02c4b410  bl 0x044764a8
02c4b414  mov x21,x19
02c4b418  mov x1,x20
02c4b41c  str x20,[x21, #0x48]!
02c4b420  mov x0,x21
02c4b424  bl 0x029f59f4
02c4b428  ldr w8,[x19, #0x38]
02c4b42c  str wzr,[x21, #0x8]
02c4b430  neg w9,w8
02c4b434  str w9,[x21, #0x18]
02c4b438  b 0x02c4b5d0
02c4b43c  mov w8,#0xffffffff
02c4b440  str w8,[x19, #0x10]
02c4b444  b 0x02c4b5ac
02c4b448  mov w8,#0xffffffff
02c4b44c  str w8,[x19, #0x10]
02c4b450  b 0x02c4b9c0
02c4b454  adrp x8,0x5e58000
02c4b458  ldr x8,[x8, #0xf08]
02c4b45c  ldr x0,[x8]
02c4b460  ldr w8,[x0, #0xe4]
02c4b464  cbnz w8,0x02c4b46c
02c4b468  bl 0x029f5bd0
02c4b46c  adrp x8,0x5e63000
02c4b470  mov x1,xzr
02c4b474  ldr x8,[x8, #0x448]
02c4b478  ldr x0,[x8]
02c4b47c  bl 0x0579a8d0
02c4b480  b 0x02c4b9e4
02c4b484  neg w9,w8
02c4b488  b 0x02c4b5b8
02c4b48c  cbz x28,0x02c4ba2c
02c4b490  ldr w8,[x19, #0x60]
02c4b494  lsl w9,w9,#0x2
02c4b498  ldr s2,[x28, #0x114]
02c4b49c  ldr s3,[x28, #0x11c]
02c4b4a0  lsl w8,w8,#0x2
02c4b4a4  scvtf s1,w9
02c4b4a8  scvtf s0,w8
02c4b4ac  fadd s8,s3,s1
02c4b4b0  fadd s9,s2,s0
02c4b4b4  fsub s0,s8,s3
02c4b4b8  fsub s1,s9,s2
02c4b4bc  fmul s0,s0,s0
02c4b4c0  fmul s1,s1,s1
02c4b4c4  fadd s0,s0,s1
02c4b4c8  ldr s1,[x19, #0x40]
02c4b4cc  fcmp s0,s1
02c4b4d0  b.mi 0x02c4b5ac
02c4b4d4  ldr s1,[x19, #0x3c]
02c4b4d8  fcmp s0,s1
02c4b4dc  b.gt 0x02c4b5ac
02c4b4e0  ldp s0,s1,[x19, #0x30]
02c4b4e4  mov x0,xzr
02c4b4e8  ldr s2,[x28, #0x120]
02c4b4ec  fadd s0,s9,s0
02c4b4f0  fadd s1,s8,s1
02c4b4f4  fmul s0,s0,s2
02c4b4f8  fmul s1,s2,s1
02c4b4fc  bl 0x057ce500
02c4b500  ldr s1,[x28, #0x124]
02c4b504  fcmp s0,s1
02c4b508  b.lt 0x02c4b590
02c4b50c  fmov s3,s0
02c4b510  fmov s0,s9
02c4b514  ldr s1,[x28, #0x118]
02c4b518  fmov s2,s8
02c4b51c  ldr x1,[x22]
02c4b520  ldr x20,[x19, #0x48]
02c4b524  mov x0,sp
02c4b528  stp xzr,xzr,[sp]
02c4b52c  bl 0x03b9cf88
02c4b530  cbz x20,0x02c4ba2c
02c4b534  ldr w9,[x20, #0x1c]
02c4b538  ldp s0,s1,[sp]
02c4b53c  ldp s2,s3,[sp, #0x8]
02c4b540  ldr x8,[x20, #0x10]
02c4b544  add w9,w9,#0x1
02c4b548  ldr x10,[x23]
02c4b54c  str w9,[x20, #0x1c]
02c4b550  cbz x8,0x02c4ba2c
02c4b554  ldrsw x9,[x20, #0x18]
02c4b558  ldr w11,[x8, #0x18]
02c4b55c  cmp w9,w11
02c4b560  b.cs 0x02c4b57c
02c4b564  add x8,x8,x9, LSL #0x4
02c4b568  add w10,w9,#0x1
02c4b56c  str w10,[x20, #0x18]
02c4b570  stp s0,s1,[x8, #0x20]
02c4b574  stp s2,s3,[x8, #0x28]
02c4b578  b 0x02c4b590
02c4b57c  ldr x8,[x10, #0x20]
02c4b580  mov x0,x20
02c4b584  ldr x8,[x8, #0xc0]
02c4b588  ldr x1,[x8, #0x70]
02c4b58c  bl 0x04476d64
02c4b590  ldr w8,[x19, #0x50]
02c4b594  ldr w9,[x28, #0xa0]
02c4b598  add w8,w8,#0x1
02c4b59c  sdiv w10,w8,w9
02c4b5a0  str w8,[x19, #0x50]
02c4b5a4  msub w9,w10,w9,w8
02c4b5a8  cbz w9,0x02c4b85c
02c4b5ac  ldr w8,[x19, #0x64]
02c4b5b0  add w9,w8,#0x1
02c4b5b4  ldr w8,[x19, #0x38]
02c4b5b8  cmp w9,w8
02c4b5bc  str w9,[x19, #0x64]
02c4b5c0  b.le 0x02c4b48c
02c4b5c4  ldr w9,[x19, #0x60]
02c4b5c8  add w9,w9,#0x1
02c4b5cc  str w9,[x19, #0x60]
02c4b5d0  cmp w9,w8
02c4b5d4  b.le 0x02c4b484
02c4b5d8  adrp x23,0x5e63000
02c4b5dc  ldr x23,[x23, #0x3d8]
02c4b5e0  ldr x20,[x19, #0x48]
02c4b5e4  ldr x0,[x23]
02c4b5e8  ldr w8,[x0, #0xe4]
02c4b5ec  cbnz w8,0x02c4b5f8
02c4b5f0  bl 0x029f5bd0
02c4b5f4  ldr x0,[x23]
02c4b5f8  ldr x8,[x0, #0xb8]
02c4b5fc  ldr x21,[x8, #0x8]
02c4b600  cbnz x21,0x02c4b65c
02c4b604  ldr w9,[x0, #0xe4]
02c4b608  cbnz w9,0x02c4b618
02c4b60c  bl 0x029f5bd0
02c4b610  ldr x8,[x23]
02c4b614  ldr x8,[x8, #0xb8]
02c4b618  adrp x9,0x5e63000
02c4b61c  ldr x9,[x9, #0x3f8]
02c4b620  ldr x22,[x8]
02c4b624  ldr x0,[x9]
02c4b628  bl 0x029f5cec
02c4b62c  adrp x8,0x5e63000
02c4b630  mov x1,x22
02c4b634  mov x3,xzr
02c4b638  ldr x8,[x8, #0x438]
02c4b63c  mov x21,x0
02c4b640  ldr x2,[x8]
02c4b644  bl 0x03cf5e1c
02c4b648  ldr x8,[x23]
02c4b64c  mov x1,x21
02c4b650  ldr x0,[x8, #0xb8]
02c4b654  str x21,[x0, #0x8]!
02c4b658  bl 0x029f59f4
02c4b65c  cbz x20,0x02c4ba2c
02c4b660  adrp x8,0x5e63000
02c4b664  mov x0,x20
02c4b668  mov x1,x21
02c4b66c  ldr x8,[x8, #0x408]
02c4b670  ldr x2,[x8]
02c4b674  bl 0x04478828
02c4b678  cbz x28,0x02c4ba2c
02c4b67c  ldr x8,[x28, #0x20]
02c4b680  cbz x8,0x02c4ba2c
02c4b684  ldr x9,[x19, #0x48]
02c4b688  cbz x9,0x02c4ba2c
02c4b68c  adrp x10,0x5e5d000
02c4b690  ldr w9,[x9, #0x18]
02c4b694  ldr w8,[x8, #0x18]
02c4b698  ldr x10,[x10, #0x790]
02c4b69c  cmp w8,w9
02c4b6a0  ldr x0,[x10]
02c4b6a4  csel w1,w8,w9,lt
02c4b6a8  str w1,[x19, #0x54]
02c4b6ac  bl 0x029f5b40
02c4b6b0  mov x20,x19
02c4b6b4  mov x1,x0
02c4b6b8  str x0,[x20, #0x58]!
02c4b6bc  mov x0,x20
02c4b6c0  bl 0x029f59f4
02c4b6c4  adrp x8,0x5e62000
02c4b6c8  ldr x8,[x8, #0x628]
02c4b6cc  ldr x0,[x8]
02c4b6d0  bl 0x029f5cec
02c4b6d4  adrp x8,0x5e62000
02c4b6d8  mov x21,x0
02c4b6dc  ldr x8,[x8, #0x680]
02c4b6e0  ldr x1,[x8]
02c4b6e4  bl 0x044f7180
02c4b6e8  ldr w8,[x19, #0x54]
02c4b6ec  cmp w8,#0x1
02c4b6f0  b.lt 0x02c4b840
02c4b6f4  cbz x21,0x02c4ba2c
02c4b6f8  adrp x23,0x5e63000
02c4b6fc  mov w22,wzr
02c4b700  ldr x23,[x23, #0x108]
02c4b704  ldr x8,[x23]
02c4b708  ldr w10,[x21, #0x1c]
02c4b70c  ldr x9,[x21, #0x10]
02c4b710  add w10,w10,#0x1
02c4b714  str w10,[x21, #0x1c]
02c4b718  cbz x9,0x02c4ba2c
02c4b71c  ldrsw x10,[x21, #0x18]
02c4b720  ldr w11,[x9, #0x18]
02c4b724  cmp w10,w11
02c4b728  b.cs 0x02c4b740
02c4b72c  add x9,x9,x10, LSL #0x2
02c4b730  add w11,w10,#0x1
02c4b734  str w11,[x21, #0x18]
02c4b738  str w22,[x9, #0x20]
02c4b73c  b 0x02c4b75c
02c4b740  ldr x8,[x8, #0x20]
02c4b744  mov x0,x21
02c4b748  mov w1,w22
02c4b74c  ldr x8,[x8, #0xc0]
02c4b750  ldr x2,[x8, #0x70]
02c4b754  bl 0x044f7a10
02c4b758  ldr x8,[x23]
02c4b75c  ldr w9,[x19, #0x54]
02c4b760  add w22,w22,#0x1
02c4b764  cmp w22,w9
02c4b768  b.lt 0x02c4b708
02c4b76c  cmp w9,#0x64
02c4b770  mov w8,#0x64
02c4b774  csel w29,w9,w8,lt
02c4b778  cmp w9,#0x1
02c4b77c  b.lt 0x02c4b840
02c4b780  adrp x27,0x5e63000
02c4b784  adrp x26,0x5e63000
02c4b788  mov w22,wzr
02c4b78c  ldr x27,[x27, #0x128]
02c4b790  ldr x26,[x26, #0x428]
02c4b794  ldr x0,[x19, #0x28]
02c4b798  cbz x0,0x02c4ba2c
02c4b79c  ldr x8,[x0]
02c4b7a0  ldr w2,[x21, #0x18]
02c4b7a4  mov w1,w22
02c4b7a8  ldp x9,x3,[x8, #0x198]
02c4b7ac  blr x9
02c4b7b0  ldr x2,[x27]
02c4b7b4  mov w23,w0
02c4b7b8  mov x0,x21
02c4b7bc  mov w1,w23
02c4b7c0  bl 0x044f7718
02c4b7c4  ldr x2,[x27]
02c4b7c8  mov w24,w0
02c4b7cc  mov x0,x21
02c4b7d0  mov w1,w22
02c4b7d4  bl 0x044f7718
02c4b7d8  ldr x3,[x26]
02c4b7dc  mov w25,w0
02c4b7e0  mov x0,x21
02c4b7e4  mov w1,w22
02c4b7e8  mov w2,w24
02c4b7ec  bl 0x044f776c
02c4b7f0  ldr x3,[x26]
02c4b7f4  mov x0,x21
02c4b7f8  mov w1,w23
02c4b7fc  mov w2,w25
02c4b800  bl 0x044f776c
02c4b804  ldr x2,[x27]
02c4b808  ldr x23,[x20]
02c4b80c  mov x0,x21
02c4b810  mov w1,w22
02c4b814  bl 0x044f7718
02c4b818  cbz x23,0x02c4ba2c
02c4b81c  ldr w8,[x23, #0x18]
02c4b820  cmp w0,w8
02c4b824  b.cs 0x02c4ba30
02c4b828  add x8,x23,w0, SXTW  #0x2
02c4b82c  add w22,w22,#0x1
02c4b830  mov w9,#0x1
02c4b834  cmp w29,w22
02c4b838  str w9,[x8, #0x20]
02c4b83c  b.ne 0x02c4b794
02c4b840  str wzr,[x19, #0x60]
02c4b844  adrp x23,0x5e59000
02c4b848  adrp x24,0x5e63000
02c4b84c  ldr x23,[x23, #0x1c0]
02c4b850  ldr x24,[x24, #0x420]
02c4b854  mov w8,wzr
02c4b858  b 0x02c4b9cc
02c4b85c  str xzr,[x19, #0x18]!
02c4b860  mov x0,x19
02c4b864  mov x1,xzr
02c4b868  bl 0x029f59f4
02c4b86c  mov w0,#0x1
02c4b870  stur w0,[x19, #-0x8]
02c4b874  b 0x02c4b9e8
02c4b878  b.cs 0x02c4ba30
02c4b87c  ldr x0,[x23]
02c4b880  add x8,x9,w8, SXTW  #0x3
02c4b884  ldr w9,[x0, #0xe4]
02c4b888  ldr x20,[x8, #0x20]
02c4b88c  cbnz w9,0x02c4b894
02c4b890  bl 0x029f5bd0
02c4b894  mov x0,x20
02c4b898  mov x1,xzr
02c4b89c  mov x2,xzr
02c4b8a0  bl 0x057e14b4
02c4b8a4  tbnz w0,#0x0,0x02c4b9c0
02c4b8a8  ldrsw x8,[x19, #0x60]
02c4b8ac  ldr w9,[x19, #0x54]
02c4b8b0  cmp w8,w9
02c4b8b4  b.ge 0x02c4b970
02c4b8b8  ldr x9,[x19, #0x58]
02c4b8bc  cbz x9,0x02c4ba2c
02c4b8c0  ldr w10,[x9, #0x18]
02c4b8c4  cmp w8,w10
02c4b8c8  b.cs 0x02c4ba30
02c4b8cc  ldr x10,[x28, #0x20]
02c4b8d0  cbz x10,0x02c4ba2c
02c4b8d4  ldr w11,[x10, #0x18]
02c4b8d8  cmp w8,w11
02c4b8dc  b.cs 0x02c4ba30
02c4b8e0  add x10,x10,x8, LSL #0x3
02c4b8e4  ldr x0,[x10, #0x20]
02c4b8e8  cbz x0,0x02c4ba2c
02c4b8ec  add x8,x9,x8, LSL #0x2
02c4b8f0  mov x1,xzr
02c4b8f4  ldrsw x20,[x8, #0x20]
02c4b8f8  bl 0x057dc1c8
02c4b8fc  cbz x0,0x02c4ba2c
02c4b900  mov w1,#0x1
02c4b904  mov x2,xzr
02c4b908  bl 0x057dff3c
02c4b90c  ldr x8,[x28, #0x20]
02c4b910  cbz x8,0x02c4ba2c
02c4b914  ldrsw x1,[x19, #0x60]
02c4b918  ldr w9,[x8, #0x18]
02c4b91c  cmp w1,w9
02c4b920  b.cs 0x02c4ba30
02c4b924  ldr x9,[x28, #0x40]
02c4b928  cbz x9,0x02c4ba2c
02c4b92c  ldr w10,[x9, #0x18]
02c4b930  cmp w20,w10
02c4b934  b.cs 0x02c4ba30
02c4b938  ldr x0,[x19, #0x48]
02c4b93c  cbz x0,0x02c4ba2c
02c4b940  add x8,x8,x1, LSL #0x3
02c4b944  add x9,x9,x20, LSL #0x3
02c4b948  ldr x2,[x24]
02c4b94c  ldr x22,[x8, #0x20]
02c4b950  ldr x21,[x9, #0x20]
02c4b954  bl 0x04476a40
02c4b958  cbz x22,0x02c4ba2c
02c4b95c  mov x0,x22
02c4b960  mov w1,w20
02c4b964  mov x2,x21
02c4b968  bl 0x02c4ba34
02c4b96c  b 0x02c4b9a8
02c4b970  ldr x9,[x28, #0x20]
02c4b974  cbz x9,0x02c4ba2c
02c4b978  ldr w10,[x9, #0x18]
02c4b97c  cmp w8,w10
02c4b980  b.cs 0x02c4ba30
02c4b984  add x8,x9,x8, LSL #0x3
02c4b988  ldr x0,[x8, #0x20]
02c4b98c  cbz x0,0x02c4ba2c
02c4b990  mov x1,xzr
02c4b994  bl 0x057dc1c8
02c4b998  cbz x0,0x02c4ba2c
02c4b99c  mov w1,wzr
02c4b9a0  mov x2,xzr
02c4b9a4  bl 0x057dff3c
02c4b9a8  ldr w8,[x19, #0x60]
02c4b9ac  ldr w9,[x28, #0xa0]
02c4b9b0  add w8,w8,#0x1
02c4b9b4  sdiv w10,w8,w9
02c4b9b8  msub w8,w10,w9,w8
02c4b9bc  cbz w8,0x02c4ba0c
02c4b9c0  ldr w8,[x19, #0x60]
02c4b9c4  add w8,w8,#0x1
02c4b9c8  str w8,[x19, #0x60]
02c4b9cc  cbz x28,0x02c4ba2c
02c4b9d0  ldr x9,[x28, #0x20]
02c4b9d4  cbz x9,0x02c4ba2c
02c4b9d8  ldr w10,[x9, #0x18]
02c4b9dc  cmp w8,w10
02c4b9e0  b.lt 0x02c4b878
02c4b9e4  mov w0,wzr
02c4b9e8  ldp x20,x19,[sp, #0x70]
02c4b9ec  ldp x22,x21,[sp, #0x60]
02c4b9f0  ldp x24,x23,[sp, #0x50]
02c4b9f4  ldp x26,x25,[sp, #0x40]
02c4b9f8  ldp x28,x27,[sp, #0x30]
02c4b9fc  ldp x29,x30,[sp, #0x20]
02c4ba00  ldp d9,d8,[sp, #0x10]
02c4ba04  add sp,sp,#0x80
02c4ba08  ret
02c4ba0c  str xzr,[x19, #0x18]!
02c4ba10  mov x0,x19
02c4ba14  mov x1,xzr
02c4ba18  bl 0x029f59f4
02c4ba1c  mov w8,#0x2
02c4ba20  mov w0,#0x1
02c4ba24  stur w8,[x19, #-0x8]
02c4ba28  b 0x02c4b9e8
02c4ba2c  bl 0x029f5cfc
02c4ba30  bl 0x029f5d04
