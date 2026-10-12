02caa234  sub sp,sp,#0xc0
02caa238  stp d15,d14,[sp, #0x20]
02caa23c  stp d13,d12,[sp, #0x30]
02caa240  stp d11,d10,[sp, #0x40]
02caa244  stp d9,d8,[sp, #0x50]
02caa248  stp x29,x30,[sp, #0x60]
02caa24c  stp x28,x27,[sp, #0x70]
02caa250  stp x26,x25,[sp, #0x80]
02caa254  stp x24,x23,[sp, #0x90]
02caa258  stp x22,x21,[sp, #0xa0]
02caa25c  stp x20,x19,[sp, #0xb0]
02caa260  adrp x19,0x625c000
02caa264  mov x20,x0
02caa268  str w1,[sp, #0xc]
02caa26c  ldrb w8,[x19, #0x503]
02caa270  tbnz w8,#0x0,0x02caa294
02caa274  adrp x0,0x5e5d000
02caa278  ldr x0,[x0, #0x790]
02caa27c  bl 0x029f5a50
02caa280  adrp x0,0x5e5d000
02caa284  ldr x0,[x0, #0x5e8]
02caa288  bl 0x029f5a50
02caa28c  mov w8,#0x1
02caa290  strb w8,[x19, #0x503]
02caa294  ldr x8,[x20, #0x20]
02caa298  cbz x8,0x02caa6d8
02caa29c  ldr w9,[sp, #0xc]
02caa2a0  cmp w9,#0x1
02caa2a4  b.lt 0x02caa6d8
02caa2a8  ldr x8,[x8, #0x18]
02caa2ac  cbz x8,0x02caa6d8
02caa2b0  ldp s1,s0,[x20, #0xe0]
02caa2b4  adrp x8,0x116c000
02caa2b8  adrp x25,0x625b000
02caa2bc  fmul s2,s0,s0
02caa2c0  fmul s3,s1,s1
02caa2c4  fsub s10,s0,s1
02caa2c8  fsub s2,s2,s3
02caa2cc  ldr s3,[x8, #0x1ac]
02caa2d0  ldr w8,[sp, #0xc]
02caa2d4  scvtf s9,w8
02caa2d8  ldrb w8,[x25, #0x95a]
02caa2dc  fmul s2,s2,s3
02caa2e0  fdiv s2,s2,s9
02caa2e4  fsqrt s8,s2
02caa2e8  cbnz w8,0x02caa300
02caa2ec  adrp x0,0x5e59000
02caa2f0  ldr x0,[x0]
02caa2f4  bl 0x029f5a50
02caa2f8  mov w8,#0x1
02caa2fc  strb w8,[x25, #0x95a]
02caa300  fdiv s10,s10,s8
02caa304  adrp x24,0x5e59000
02caa308  ldr x24,[x24]
02caa30c  ldr x0,[x24]
02caa310  ldr w8,[x0, #0xe4]
02caa314  cbnz w8,0x02caa31c
02caa318  bl 0x029f5bd0
02caa31c  fcvt d8,s10
02caa320  add x0,sp,#0x18
02caa324  fmov d0,d8
02caa328  bl 0x05afb230
02caa32c  fcmp s10,#0.0
02caa330  b.ge 0x02caa34c
02caa334  fmov d1,-0x4020000000000000
02caa338  fcmp d0,d1
02caa33c  b.ne 0x02caa374
02caa340  ldr d0,[sp, #0x18]
02caa344  fmov d1,-0x4010000000000000
02caa348  b 0x02caa360
02caa34c  fmov d1,0x3fe0000000000000
02caa350  fcmp d0,d1
02caa354  b.ne 0x02caa380
02caa358  fmov d1,0x3ff0000000000000
02caa35c  ldr d0,[sp, #0x18]
02caa360  fcvtzs x8,d0
02caa364  fadd d1,d0,d1
02caa368  tst x8,#0x1
02caa36c  fcsel d0,d0,d1,eq
02caa370  b 0x02caa388
02caa374  fadd d0,d8,d1
02caa378  frintp d0,d0
02caa37c  b 0x02caa388
02caa380  fadd d0,d8,d1
02caa384  frintm d0,d0
02caa388  fcvtzs w8,d0
02caa38c  mov x9,#0x7ff0000000000000
02caa390  fmov d1,x9
02caa394  adrp x9,0x5e5d000
02caa398  ldr x9,[x9, #0x5e8]
02caa39c  ldp s10,s8,[x20, #0xe0]
02caa3a0  cmp w8,#0x1
02caa3a4  ldr x0,[x9]
02caa3a8  csinc w8,w8,wzr,gt
02caa3ac  fcmp d0,d1
02caa3b0  csinc w21,w8,wzr,ne
02caa3b4  mov w1,w21
02caa3b8  bl 0x029f5b40
02caa3bc  cbz x0,0x02caa70c
02caa3c0  fsub s0,s8,s10
02caa3c4  scvtf s1,w21
02caa3c8  adrp x10,0x116b000
02caa3cc  movi d10,#0x0
02caa3d0  ldr w9,[x0, #0x18]
02caa3d4  ldr s11,[x10, #0xe60]
02caa3d8  mov x22,x0
02caa3dc  mov x8,xzr
02caa3e0  add x10,x0,#0x20
02caa3e4  fdiv s0,s0,s1
02caa3e8  fmov s1,0x3f000000
02caa3ec  cmp x9,x8
02caa3f0  b.eq 0x02caa708
02caa3f4  scvtf s2,w8
02caa3f8  ldr s3,[x20, #0xe0]
02caa3fc  fadd s2,s2,s1
02caa400  fmul s2,s0,s2
02caa404  fadd s2,s2,s3
02caa408  str s2,[x10,x8, lsl #2]
02caa40c  add x8,x8,#0x1
02caa410  fmul s3,s2,s11
02caa414  cmp x21,x8
02caa418  fadd s10,s10,s3
02caa41c  b.ne 0x02caa3ec
02caa420  adrp x8,0x5e5d000
02caa424  mov w1,w21
02caa428  ldr x8,[x8, #0x790]
02caa42c  ldr x0,[x8]
02caa430  bl 0x029f5b40
02caa434  fmov d12,-0x4020000000000000
02caa438  fmov d14,0x3fe0000000000000
02caa43c  mov x23,x0
02caa440  fmov d15,0x3ff0000000000000
02caa444  mov x27,xzr
02caa448  mov w26,wzr
02caa44c  add x28,x22,#0x20
02caa450  add x29,x0,#0x20
02caa454  mov x19,#0x7ff0000000000000
02caa458  ldr w8,[x22, #0x18]
02caa45c  cmp x27,x8
02caa460  b.cs 0x02caa708
02caa464  ldrb w8,[x25, #0x95a]
02caa468  ldr s8,[x28,x27, lsl #2]
02caa46c  cbnz w8,0x02caa480
02caa470  mov x0,x24
02caa474  bl 0x029f5a50
02caa478  mov w8,#0x1
02caa47c  strb w8,[x25, #0x95a]
02caa480  ldr x0,[x24]
02caa484  ldr w8,[x0, #0xe4]
02caa488  cbnz w8,0x02caa490
02caa48c  bl 0x029f5bd0
02caa490  fmul s0,s8,s11
02caa494  add x0,sp,#0x18
02caa498  fdiv s0,s0,s10
02caa49c  fmul s13,s0,s9
02caa4a0  fcvt d8,s13
02caa4a4  fmov d0,d8
02caa4a8  bl 0x05afb230
02caa4ac  fcmp s13,#0.0
02caa4b0  b.ge 0x02caa4d0
02caa4b4  fcmp d0,d12
02caa4b8  b.ne 0x02caa4f0
02caa4bc  fmov d1,-0x4010000000000000
02caa4c0  ldr d0,[sp, #0x18]
02caa4c4  fcvtzs x8,d0
02caa4c8  fadd d1,d0,d1
02caa4cc  b 0x02caa4e4
02caa4d0  fcmp d0,d14
02caa4d4  b.ne 0x02caa4fc
02caa4d8  ldr d0,[sp, #0x18]
02caa4dc  fcvtzs x8,d0
02caa4e0  fadd d1,d0,d15
02caa4e4  tst x8,#0x1
02caa4e8  fcsel d0,d0,d1,eq
02caa4ec  b 0x02caa504
02caa4f0  fadd d0,d8,d12
02caa4f4  frintp d0,d0
02caa4f8  b 0x02caa504
02caa4fc  fadd d0,d8,d14
02caa500  frintm d0,d0
02caa504  fcvtzs w8,d0
02caa508  fmov d1,x19
02caa50c  cmp w8,#0x1
02caa510  csinc w8,w8,wzr,gt
02caa514  fcmp d0,d1
02caa518  csinc w9,w8,wzr,ne
02caa51c  cbz x23,0x02caa70c
02caa520  ldr w8,[x23, #0x18]
02caa524  cmp x27,x8
02caa528  b.cs 0x02caa708
02caa52c  str w9,[x29, x27, LSL #0x2]
02caa530  add x27,x27,#0x1
02caa534  add w26,w9,w26
02caa538  cmp x21,x27
02caa53c  b.ne 0x02caa458
02caa540  ldr w9,[sp, #0xc]
02caa544  subs w10,w9,w26
02caa548  b.eq 0x02caa57c
02caa54c  sub w9,w21,#0x1
02caa550  cmp w9,w8
02caa554  b.cs 0x02caa708
02caa558  add x8,x23,w9, UXTW  #0x2
02caa55c  ldr w11,[x8, #0x20]
02caa560  add w10,w10,w11
02caa564  cmp w10,#0x0
02caa568  str w10,[x8, #0x20]
02caa56c  b.gt 0x02caa57c
02caa570  add x8,x23,x9, LSL #0x2
02caa574  mov w9,#0x1
02caa578  str w9,[x8, #0x20]
02caa57c  adrp x8,0x116c000
02caa580  mov x24,xzr
02caa584  mov w25,wzr
02caa588  ldr s12,[x8, #0x26c]
02caa58c  ldr w8,[x23, #0x18]
02caa590  cmp x24,x8
02caa594  b.cs 0x02caa708
02caa598  ldr w8,[x22, #0x18]
02caa59c  cmp x24,x8
02caa5a0  b.cs 0x02caa708
02caa5a4  add x8,x23,x24, LSL #0x2
02caa5a8  tst x24,#0x1
02caa5ac  ldr w27,[x8, #0x20]
02caa5b0  mov w8,#0x43b40000
02caa5b4  fmov s1,w8
02caa5b8  scvtf s0,w27
02caa5bc  fdiv s13,s1,s0
02caa5c0  fmov s0,0x3f000000
02caa5c4  movi d1,#0x0
02caa5c8  fmul s0,s13,s0
02caa5cc  fcsel s14,s1,s0,eq
02caa5d0  cmp w27,#0x1
02caa5d4  b.lt 0x02caa6cc
02caa5d8  ldr w9,[sp, #0xc]
02caa5dc  add x8,x22,x24, LSL #0x2
02caa5e0  sbfiz x10,x25,#0x3,#0x20
02caa5e4  mov x28,xzr
02caa5e8  mov w26,w25
02caa5ec  cmp w25,w9
02caa5f0  ldr s15,[x8, #0x20]
02caa5f4  add x19,x10,#0x20
02caa5f8  csel w9,w25,w9,gt
02caa5fc  neg w9,w9
02caa600  add x29,x9,w25, UXTW 
02caa604  cmn w29,w28
02caa608  b.eq 0x02caa6d8
02caa60c  scvtf s0,w28
02caa610  add x0,sp,#0x14
02caa614  add x1,sp,#0x10
02caa618  fmul s0,s13,s0
02caa61c  fadd s0,s14,s0
02caa620  fmul s0,s0,s12
02caa624  bl 0x05afb270
02caa628  ldr s1,[x20, #0xe8]
02caa62c  ldp s10,s11,[sp, #0x10]
02caa630  mov x0,xzr
02caa634  fneg s0,s1
02caa638  bl 0x057d55d4
02caa63c  ldr s1,[x20, #0xec]
02caa640  fmov s8,s0
02caa644  mov x0,xzr
02caa648  fneg s2,s1
02caa64c  fmov s0,s2
02caa650  bl 0x057d55d4
02caa654  ldr x8,[x20, #0x20]
02caa658  cbz x8,0x02caa70c
02caa65c  ldr w9,[x8, #0x18]
02caa660  add x10,x26,x28
02caa664  cmp w10,w9
02caa668  b.cs 0x02caa708
02caa66c  add x8,x8,x19
02caa670  ldr x0,[x8, x28, LSL #0x3]
02caa674  cbz x0,0x02caa70c
02caa678  mov x1,xzr
02caa67c  fmov s9,s0
02caa680  bl 0x057dc0f8
02caa684  cbz x0,0x02caa70c
02caa688  fmul s0,s15,s10
02caa68c  fmul s1,s10,s8
02caa690  mov x1,xzr
02caa694  fmul s2,s15,s11
02caa698  fmul s3,s11,s8
02caa69c  fadd s0,s0,s1
02caa6a0  fadd s1,s2,s3
02caa6a4  fmul s2,s11,s9
02caa6a8  fmul s3,s10,s9
02caa6ac  fsub s0,s0,s2
02caa6b0  fadd s2,s1,s3
02caa6b4  movi d1,#0x0
02caa6b8  bl 0x057ee3b4
02caa6bc  add x28,x28,#0x1
02caa6c0  cmp w27,w28
02caa6c4  b.ne 0x02caa604
02caa6c8  add w25,w25,w28
02caa6cc  add x24,x24,#0x1
02caa6d0  cmp x24,x21
02caa6d4  b.ne 0x02caa58c
02caa6d8  ldp x20,x19,[sp, #0xb0]
02caa6dc  ldp x22,x21,[sp, #0xa0]
02caa6e0  ldp x24,x23,[sp, #0x90]
02caa6e4  ldp x26,x25,[sp, #0x80]
02caa6e8  ldp x28,x27,[sp, #0x70]
02caa6ec  ldp x29,x30,[sp, #0x60]
02caa6f0  ldp d9,d8,[sp, #0x50]
02caa6f4  ldp d11,d10,[sp, #0x40]
02caa6f8  ldp d13,d12,[sp, #0x30]
02caa6fc  ldp d15,d14,[sp, #0x20]
02caa700  add sp,sp,#0xc0
02caa704  ret
02caa708  bl 0x029f5d04
02caa70c  bl 0x029f5cfc
