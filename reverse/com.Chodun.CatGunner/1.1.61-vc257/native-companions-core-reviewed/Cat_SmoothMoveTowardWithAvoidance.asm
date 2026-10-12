02c3e32c  sub sp,sp,#0x80
02c3e330  str d14,[sp, #0x20]
02c3e334  stp d13,d12,[sp, #0x28]
02c3e338  stp d11,d10,[sp, #0x38]
02c3e33c  stp d9,d8,[sp, #0x48]
02c3e340  str x30,[sp, #0x58]
02c3e344  stp x22,x21,[sp, #0x60]
02c3e348  stp x20,x19,[sp, #0x70]
02c3e34c  fmov s8,s2
02c3e350  fmov s12,s1
02c3e354  adrp x20,0x625c000
02c3e358  fmov s9,s0
02c3e35c  ldrb w8,[x20, #0xa3]
02c3e360  mov x19,x0
02c3e364  tbnz w8,#0x0,0x02c3e394
02c3e368  adrp x0,0x5e63000
02c3e36c  ldr x0,[x0, #0x1d8]
02c3e370  bl 0x029f5a50
02c3e374  adrp x0,0x5e59000
02c3e378  ldr x0,[x0, #0x1c0]
02c3e37c  bl 0x029f5a50
02c3e380  adrp x0,0x5e61000
02c3e384  ldr x0,[x0, #0x878]
02c3e388  bl 0x029f5a50
02c3e38c  mov w8,#0x1
02c3e390  strb w8,[x20, #0xa3]
02c3e394  mov x0,x19
02c3e398  mov x1,xzr
02c3e39c  bl 0x057dc0f8
02c3e3a0  cbz x0,0x02c3e90c
02c3e3a4  mov x1,xzr
02c3e3a8  bl 0x057eed98
02c3e3ac  fmov s3,s9
02c3e3b0  fmov s4,s12
02c3e3b4  mov x0,x19
02c3e3b8  fmov s5,s8
02c3e3bc  fmov s10,s0
02c3e3c0  fmov s13,s1
02c3e3c4  fmov s11,s2
02c3e3c8  bl 0x02c40d74
02c3e3cc  adrp x20,0x5e59000
02c3e3d0  adrp x22,0x625b000
02c3e3d4  adrp x21,0x116c000
02c3e3d8  ldr x20,[x20]
02c3e3dc  tbz w0,#0x0,0x02c3e40c
02c3e3e0  ldrb w8,[x22, #0xae8]
02c3e3e4  cbnz w8,0x02c3e3fc
02c3e3e8  adrp x0,0x5e59000
02c3e3ec  ldr x0,[x0]
02c3e3f0  bl 0x029f5a50
02c3e3f4  mov w8,#0x1
02c3e3f8  strb w8,[x22, #0xae8]
02c3e3fc  fsub s2,s9,s10
02c3e400  fsub s9,s8,s11
02c3e404  ldr x0,[x20]
02c3e408  b 0x02c3e44c
02c3e40c  fmov s0,s10
02c3e410  fmov s1,s13
02c3e414  fmov s2,s11
02c3e418  bl 0x02c40f4c
02c3e41c  fmov s8,s0
02c3e420  fmov s9,s2
02c3e424  ldrb w8,[x22, #0xae8]
02c3e428  cbnz w8,0x02c3e440
02c3e42c  adrp x0,0x5e59000
02c3e430  ldr x0,[x0]
02c3e434  bl 0x029f5a50
02c3e438  mov w8,#0x1
02c3e43c  strb w8,[x22, #0xae8]
02c3e440  ldr x0,[x20]
02c3e444  fsub s2,s8,s10
02c3e448  fsub s9,s9,s11
02c3e44c  ldr w8,[x0, #0xe4]
02c3e450  cbnz w8,0x02c3e460
02c3e454  str q2,[sp, #0x10]
02c3e458  bl 0x029f5bd0
02c3e45c  ldr q2,[sp, #0x10]
02c3e460  fmul s0,s2,s2
02c3e464  fmul s1,s9,s9
02c3e468  fadd s0,s0,s1
02c3e46c  fsqrt s3,s0
02c3e470  ldr s0,[x21, #0x268]
02c3e474  fcmp s3,s0
02c3e478  b.le 0x02c3e494
02c3e47c  movi d0,#0x0
02c3e480  dup v1.2S,v3.S[0x0]
02c3e484  fdiv s9,s9,s3
02c3e488  mov v0.S[0x0],v2.S[0x0]
02c3e48c  fdiv v8.2S,v0.2S,v1.2S
02c3e490  b 0x02c3e4d4
02c3e494  adrp x21,0x625b000
02c3e498  ldrb w8,[x21, #0x26f]
02c3e49c  cbnz w8,0x02c3e4bc
02c3e4a0  adrp x0,0x5e58000
02c3e4a4  ldr x0,[x0, #0xbf8]
02c3e4a8  str q3,[sp]
02c3e4ac  bl 0x029f5a50
02c3e4b0  ldr q3,[sp]
02c3e4b4  mov w8,#0x1
02c3e4b8  strb w8,[x21, #0x26f]
02c3e4bc  adrp x8,0x5e58000
02c3e4c0  ldr x8,[x8, #0xbf8]
02c3e4c4  ldr x8,[x8]
02c3e4c8  ldr x8,[x8, #0xb8]
02c3e4cc  ldr d8,[x8]
02c3e4d0  ldr s9,[x8, #0x8]
02c3e4d4  fmul v0.2S,v8.2S,v8.2S
02c3e4d8  fmul s1,s9,s9
02c3e4dc  adrp x8,0x116c000
02c3e4e0  faddp s0,v0.2S
02c3e4e4  fadd s10,s0,s1
02c3e4e8  ldr s0,[x8, #0x200]
02c3e4ec  fcmp s10,s0
02c3e4f0  b.le 0x02c3e554
02c3e4f4  adrp x21,0x625b000
02c3e4f8  str q3,[sp]
02c3e4fc  ldrb w8,[x21, #0x52e]
02c3e500  cbnz w8,0x02c3e51c
02c3e504  adrp x0,0x5e59000
02c3e508  ldr x0,[x0]
02c3e50c  bl 0x029f5a50
02c3e510  ldr q3,[sp]
02c3e514  mov w8,#0x1
02c3e518  strb w8,[x21, #0x52e]
02c3e51c  ldr x0,[x20]
02c3e520  ldr w8,[x0, #0xe4]
02c3e524  cbnz w8,0x02c3e530
02c3e528  bl 0x029f5bd0
02c3e52c  ldr q3,[sp]
02c3e530  fsqrt s2,s10
02c3e534  adrp x8,0x116c000
02c3e538  ldr s1,[x8, #0x240]
02c3e53c  fcmp s2,s1
02c3e540  b.le 0x02c3e5a8
02c3e544  dup v1.2S,v2.S[0x0]
02c3e548  fdiv v0.2S,v8.2S,v1.2S
02c3e54c  fdiv s8,s9,s2
02c3e550  b 0x02c3e5e4
02c3e554  ldr d0,[x19, #0x1d0]
02c3e558  ldr s1,[x19, #0x1d8]
02c3e55c  adrp x8,0x116c000
02c3e560  fmul v0.2S,v0.2S,v0.2S
02c3e564  fmul s1,s1,s1
02c3e568  faddp s0,v0.2S
02c3e56c  fadd s0,s0,s1
02c3e570  ldr s1,[x8, #0x88]
02c3e574  fcmp s0,s1
02c3e578  b.le 0x02c3e804
02c3e57c  mov x0,x19
02c3e580  ldp x20,x19,[sp, #0x70]
02c3e584  ldp x22,x21,[sp, #0x60]
02c3e588  fmov s0,0x3f000000
02c3e58c  ldp d9,d8,[sp, #0x48]
02c3e590  ldr x30,[sp, #0x58]
02c3e594  ldp d11,d10,[sp, #0x38]
02c3e598  ldr d14,[sp, #0x20]
02c3e59c  ldp d13,d12,[sp, #0x28]
02c3e5a0  add sp,sp,#0x80
02c3e5a4  b 0x02c40a90
02c3e5a8  adrp x20,0x625b000
02c3e5ac  ldrb w8,[x20, #0x26f]
02c3e5b0  cbnz w8,0x02c3e5cc
02c3e5b4  adrp x0,0x5e58000
02c3e5b8  ldr x0,[x0, #0xbf8]
02c3e5bc  bl 0x029f5a50
02c3e5c0  ldr q3,[sp]
02c3e5c4  mov w8,#0x1
02c3e5c8  strb w8,[x20, #0x26f]
02c3e5cc  adrp x8,0x5e58000
02c3e5d0  ldr x8,[x8, #0xbf8]
02c3e5d4  ldr x8,[x8]
02c3e5d8  ldr x8,[x8, #0xb8]
02c3e5dc  ldr d0,[x8]
02c3e5e0  ldr s8,[x8, #0x8]
02c3e5e4  ldr s1,[x19, #0x220]
02c3e5e8  fmov s10,0x3f800000
02c3e5ec  add x8,x19,#0x20c
02c3e5f0  str d0,[x8]
02c3e5f4  fcmp s1,#0.0
02c3e5f8  str s8,[x19, #0x214]
02c3e5fc  b.le 0x02c3e650
02c3e600  fcmp s3,s1
02c3e604  b.pl 0x02c3e650
02c3e608  fdiv s4,s3,s1
02c3e60c  fmov s1,0x3f800000
02c3e610  movi d3,#0x0
02c3e614  fcmp s4,s1
02c3e618  fcsel s2,s1,s4,gt
02c3e61c  fcmp s4,#0.0
02c3e620  fcsel s4,s3,s2,mi
02c3e624  fmov s3,0x40400000
02c3e628  fadd s2,s4,s4
02c3e62c  fmul s3,s4,s3
02c3e630  fmul s2,s4,s2
02c3e634  fmul s3,s4,s3
02c3e638  fmul s2,s4,s2
02c3e63c  fsub s3,s3,s2
02c3e640  ldr s2,[x19, #0x224]
02c3e644  fsub s1,s1,s3
02c3e648  fmul s1,s1,s2
02c3e64c  fadd s10,s3,s1
02c3e650  adrp x21,0x5e63000
02c3e654  ldr x21,[x21, #0x1d8]
02c3e658  ldr s11,[x19, #0x20]
02c3e65c  ldr s12,[x19, #0x24c]
02c3e660  str q0,[sp, #0x10]
02c3e664  ldr x0,[x21]
02c3e668  ldr w8,[x0, #0xe4]
02c3e66c  cbnz w8,0x02c3e678
02c3e670  bl 0x029f5bd0
02c3e674  ldr q0,[sp, #0x10]
02c3e678  dup s9,v0.S[0x1]
02c3e67c  fmov s2,s8
02c3e680  fmov s1,s9
02c3e684  bl 0x02c38be8
02c3e688  fmul s1,s11,s12
02c3e68c  movi d3,#0x0
02c3e690  ldr s2,[x19, #0x20]
02c3e694  ldr s4,[x19, #0x1d0]
02c3e698  ldr q5,[sp, #0x10]
02c3e69c  movi d6,#0x0
02c3e6a0  ldr s13,[x19, #0x228]
02c3e6a4  ldr d14,[x19, #0x230]
02c3e6a8  mov x0,xzr
02c3e6ac  mov v4.S[0x1],v2.S[0x0]
02c3e6b0  fmul s1,s10,s1
02c3e6b4  mov v3.S[0x0],v2.S[0x0]
02c3e6b8  ldr s10,[x19, #0x238]
02c3e6bc  fmul s0,s1,s0
02c3e6c0  ldr s1,[x19, #0x1d8]
02c3e6c4  fmul s1,s1,s2
02c3e6c8  fmul s5,s0,s5
02c3e6cc  fmul s0,s8,s0
02c3e6d0  fadd s0,s0,s1
02c3e6d4  fmul v1.2S,v4.2S,v3.2S
02c3e6d8  mov v6.S[0x0],v5.S[0x0]
02c3e6dc  fsub s11,s0,s10
02c3e6e0  fadd v12.2S,v1.2S,v6.2S
02c3e6e4  bl 0x057ebabc
02c3e6e8  fmul s0,s13,s0
02c3e6ec  fmov s1,0x3f800000
02c3e6f0  movi d2,#0x0
02c3e6f4  ldr x20,[x19, #0x30]
02c3e6f8  fcmp s0,s1
02c3e6fc  fcsel s1,s1,s0,gt
02c3e700  fcmp s0,#0.0
02c3e704  fsub v0.2S,v12.2S,v14.2S
02c3e708  fcsel s1,s2,s1,mi
02c3e70c  fmul v0.2S,v0.2S,v1.S[0x0]
02c3e710  fmul s1,s11,s1
02c3e714  fadd v2.2S,v14.2S,v0.2S
02c3e718  fadd s0,s10,s1
02c3e71c  str q2,[sp]
02c3e720  str d2,[x19, #0x230]
02c3e724  str s0,[x19, #0x238]
02c3e728  cbz x20,0x02c3e90c
02c3e72c  mov x0,x20
02c3e730  mov x1,xzr
02c3e734  bl 0x0586b268
02c3e738  ldr s2,[x19, #0x238]
02c3e73c  mov x0,x20
02c3e740  ldr q0,[sp]
02c3e744  mov x1,xzr
02c3e748  bl 0x0586b344
02c3e74c  adrp x8,0x5e59000
02c3e750  ldr x8,[x8, #0x1c0]
02c3e754  ldr x20,[x19, #0x1e0]
02c3e758  ldr x0,[x8]
02c3e75c  ldr w8,[x0, #0xe4]
02c3e760  cbnz w8,0x02c3e768
02c3e764  bl 0x029f5bd0
02c3e768  mov x0,x20
02c3e76c  mov x1,xzr
02c3e770  mov x2,xzr
02c3e774  bl 0x057dfa70
02c3e778  mov w8,w0
02c3e77c  ldr x0,[x21]
02c3e780  ldr w9,[x0, #0xe4]
02c3e784  tbz w8,#0x0,0x02c3e82c
02c3e788  cbnz w9,0x02c3e794
02c3e78c  bl 0x029f5bd0
02c3e790  ldr x0,[x21]
02c3e794  ldr x8,[x19, #0x1e0]
02c3e798  cbz x8,0x02c3e90c
02c3e79c  ldr x9,[x0, #0xb8]
02c3e7a0  mov x0,x8
02c3e7a4  mov x1,xzr
02c3e7a8  ldp s8,s9,[x9, #0x44]
02c3e7ac  ldp s10,s11,[x9, #0x4c]
02c3e7b0  bl 0x057dc0f8
02c3e7b4  cbz x0,0x02c3e90c
02c3e7b8  mov x1,xzr
02c3e7bc  bl 0x057eed98
02c3e7c0  mov x0,x19
02c3e7c4  mov x1,xzr
02c3e7c8  fmov s12,s0
02c3e7cc  fmov s13,s1
02c3e7d0  fmov s14,s2
02c3e7d4  bl 0x057dc0f8
02c3e7d8  cbz x0,0x02c3e90c
02c3e7dc  mov x1,xzr
02c3e7e0  bl 0x057eed98
02c3e7e4  fsub s4,s12,s0
02c3e7e8  fsub s5,s13,s1
02c3e7ec  fsub s6,s14,s2
02c3e7f0  fmov s0,s8
02c3e7f4  fmov s1,s9
02c3e7f8  fmov s2,s10
02c3e7fc  fmov s3,s11
02c3e800  b 0x02c3e850
02c3e804  mov x0,x19
02c3e808  ldp x20,x19,[sp, #0x70]
02c3e80c  ldp x22,x21,[sp, #0x60]
02c3e810  ldr x30,[sp, #0x58]
02c3e814  ldp d9,d8,[sp, #0x48]
02c3e818  ldr d14,[sp, #0x20]
02c3e81c  ldp d11,d10,[sp, #0x38]
02c3e820  ldp d13,d12,[sp, #0x28]
02c3e824  add sp,sp,#0x80
02c3e828  b 0x02c3d9a0
02c3e82c  cbnz w9,0x02c3e838
02c3e830  bl 0x029f5bd0
02c3e834  ldr x0,[x21]
02c3e838  ldr x8,[x0, #0xb8]
02c3e83c  ldr q4,[sp, #0x10]
02c3e840  fmov s5,s9
02c3e844  fmov s6,s8
02c3e848  ldp s0,s1,[x8, #0x44]
02c3e84c  ldp s2,s3,[x8, #0x4c]
02c3e850  mov x0,xzr
02c3e854  bl 0x057cdb04
02c3e858  fcmp s0,#0.0
02c3e85c  ldr x0,[x21]
02c3e860  ldr x20,[x19, #0xb8]
02c3e864  ldr w8,[x0, #0xe4]
02c3e868  cset w9,ls
02c3e86c  strb w9,[x19, #0x1f8]
02c3e870  b.hi 0x02c3e894
02c3e874  cbnz w8,0x02c3e880
02c3e878  bl 0x029f5bd0
02c3e87c  ldr x0,[x21]
02c3e880  ldr x10,[x0, #0xb8]
02c3e884  add x8,x10,#0x20
02c3e888  add x9,x10,#0x24
02c3e88c  add x10,x10,#0x28
02c3e890  b 0x02c3e8b0
02c3e894  cbnz w8,0x02c3e8a0
02c3e898  bl 0x029f5bd0
02c3e89c  ldr x0,[x21]
02c3e8a0  ldr x10,[x0, #0xb8]
02c3e8a4  add x8,x10,#0x2c
02c3e8a8  add x9,x10,#0x30
02c3e8ac  add x10,x10,#0x34
02c3e8b0  cbz x20,0x02c3e90c
02c3e8b4  ldr s2,[x10]
02c3e8b8  ldr s1,[x9]
02c3e8bc  mov x0,x20
02c3e8c0  ldr s0,[x8]
02c3e8c4  mov x1,xzr
02c3e8c8  bl 0x057ef218
02c3e8cc  ldr x0,[x19, #0x38]
02c3e8d0  cbz x0,0x02c3e90c
02c3e8d4  adrp x8,0x5e61000
02c3e8d8  mov w2,#0x1
02c3e8dc  mov x3,xzr
02c3e8e0  ldr x8,[x8, #0x878]
02c3e8e4  ldp x20,x19,[sp, #0x70]
02c3e8e8  ldp x22,x21,[sp, #0x60]
02c3e8ec  ldr x30,[sp, #0x58]
02c3e8f0  ldp d9,d8,[sp, #0x48]
02c3e8f4  ldr x1,[x8]
02c3e8f8  ldp d11,d10,[sp, #0x38]
02c3e8fc  ldr d14,[sp, #0x20]
02c3e900  ldp d13,d12,[sp, #0x28]
02c3e904  add sp,sp,#0x80
02c3e908  b 0x05784a20
02c3e90c  bl 0x029f5cfc
