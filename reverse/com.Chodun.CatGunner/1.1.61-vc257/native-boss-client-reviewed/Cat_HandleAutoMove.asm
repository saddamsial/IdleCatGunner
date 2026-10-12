02c3c100  sub sp,sp,#0x90
02c3c104  stp d15,d14,[sp, #0x20]
02c3c108  stp d13,d12,[sp, #0x30]
02c3c10c  stp d11,d10,[sp, #0x40]
02c3c110  stp d9,d8,[sp, #0x50]
02c3c114  stp x30,x23,[sp, #0x60]
02c3c118  stp x22,x21,[sp, #0x70]
02c3c11c  stp x20,x19,[sp, #0x80]
02c3c120  adrp x20,0x625c000
02c3c124  adrp x22,0x5e5d000
02c3c128  mov x19,x0
02c3c12c  ldrb w8,[x20, #0x92]
02c3c130  ldr x22,[x22, #0x368]
02c3c134  tbnz w8,#0x0,0x02c3c17c
02c3c138  adrp x0,0x5e63000
02c3c13c  ldr x0,[x0, #0x1d8]
02c3c140  bl 0x029f5a50
02c3c144  adrp x0,0x5e59000
02c3c148  ldr x0,[x0, #0x1c0]
02c3c14c  bl 0x029f5a50
02c3c150  adrp x0,0x5e5e000
02c3c154  ldr x0,[x0, #0x70]
02c3c158  bl 0x029f5a50
02c3c15c  adrp x0,0x5e5d000
02c3c160  ldr x0,[x0, #0x368]
02c3c164  bl 0x029f5a50
02c3c168  adrp x0,0x5e61000
02c3c16c  ldr x0,[x0, #0x878]
02c3c170  bl 0x029f5a50
02c3c174  mov w8,#0x1
02c3c178  strb w8,[x20, #0x92]
02c3c17c  ldr x8,[x22]
02c3c180  ldr x8,[x8, #0xb8]
02c3c184  ldr x8,[x8]
02c3c188  cbz x8,0x02c3d230
02c3c18c  ldr w8,[x8, #0x20]
02c3c190  cmp w8,#0x1
02c3c194  b.ne 0x02c3c1f0
02c3c198  adrp x21,0x5e59000
02c3c19c  ldr x21,[x21, #0x1c0]
02c3c1a0  ldr x20,[x19, #0x1e0]
02c3c1a4  ldr x0,[x21]
02c3c1a8  ldr w8,[x0, #0xe4]
02c3c1ac  cbnz w8,0x02c3c1b4
02c3c1b0  bl 0x029f5bd0
02c3c1b4  mov x0,x20
02c3c1b8  mov x1,xzr
02c3c1bc  mov x2,xzr
02c3c1c0  bl 0x057dfa70
02c3c1c4  tbz w0,#0x0,0x02c3c27c
02c3c1c8  ldr x0,[x19, #0x1e0]
02c3c1cc  cbz x0,0x02c3d230
02c3c1d0  mov x1,xzr
02c3c1d4  bl 0x057dc0f8
02c3c1d8  mov x1,x0
02c3c1dc  str x0,[x19, #0x178]
02c3c1e0  add x0,x19,#0x178
02c3c1e4  bl 0x029f59f4
02c3c1e8  str wzr,[x19, #0x174]
02c3c1ec  b 0x02c3c414
02c3c1f0  ldr s8,[x19, #0x174]
02c3c1f4  mov x0,xzr
02c3c1f8  bl 0x057ebabc
02c3c1fc  fadd s0,s8,s0
02c3c200  ldr s1,[x19, #0x160]
02c3c204  fcmp s0,s1
02c3c208  str s0,[x19, #0x174]
02c3c20c  b.ge 0x02c3c240
02c3c210  adrp x8,0x5e59000
02c3c214  ldr x8,[x8, #0x1c0]
02c3c218  ldr x20,[x19, #0x178]
02c3c21c  ldr x0,[x8]
02c3c220  ldr w8,[x0, #0xe4]
02c3c224  cbnz w8,0x02c3c22c
02c3c228  bl 0x029f5bd0
02c3c22c  mov x0,x20
02c3c230  mov x1,xzr
02c3c234  mov x2,xzr
02c3c238  bl 0x057e14b4
02c3c23c  tbz w0,#0x0,0x02c3c32c
02c3c240  ldr x8,[x22]
02c3c244  str wzr,[x19, #0x174]
02c3c248  ldr x8,[x8, #0xb8]
02c3c24c  ldr x8,[x8]
02c3c250  cbz x8,0x02c3d230
02c3c254  ldr w8,[x8, #0x20]
02c3c258  cmp w8,#0x5
02c3c25c  b.eq 0x02c3c2dc
02c3c260  cmp w8,#0x3
02c3c264  b.eq 0x02c3c2d4
02c3c268  mov x0,x19
02c3c26c  cmp w8,#0x2
02c3c270  b.ne 0x02c3c318
02c3c274  bl 0x02c3eb48
02c3c278  b 0x02c3c31c
02c3c27c  ldr s8,[x19, #0x174]
02c3c280  mov x0,xzr
02c3c284  bl 0x057ebabc
02c3c288  fadd s0,s8,s0
02c3c28c  ldr s1,[x19, #0x160]
02c3c290  fcmp s0,s1
02c3c294  str s0,[x19, #0x174]
02c3c298  b.ge 0x02c3c2c4
02c3c29c  ldr x0,[x21]
02c3c2a0  ldr x20,[x19, #0x178]
02c3c2a4  ldr w8,[x0, #0xe4]
02c3c2a8  cbnz w8,0x02c3c2b0
02c3c2ac  bl 0x029f5bd0
02c3c2b0  mov x0,x20
02c3c2b4  mov x1,xzr
02c3c2b8  mov x2,xzr
02c3c2bc  bl 0x057e14b4
02c3c2c0  tbz w0,#0x0,0x02c3c3b0
02c3c2c4  mov x0,x19
02c3c2c8  str wzr,[x19, #0x174]
02c3c2cc  bl 0x02c3e910
02c3c2d0  b 0x02c3c404
02c3c2d4  bl 0x02c3ec6c
02c3c2d8  b 0x02c3c31c
02c3c2dc  adrp x20,0x5e5e000
02c3c2e0  ldr x20,[x20, #0x70]
02c3c2e4  ldr x0,[x20]
02c3c2e8  ldr w8,[x0, #0xe4]
02c3c2ec  cbnz w8,0x02c3c2f8
02c3c2f0  bl 0x029f5bd0
02c3c2f4  ldr x0,[x20]
02c3c2f8  ldr x8,[x0, #0xb8]
02c3c2fc  ldr x8,[x8]
02c3c300  cbz x8,0x02c3d230
02c3c304  ldr x0,[x8, #0xf0]
02c3c308  cbz x0,0x02c3d230
02c3c30c  mov x1,xzr
02c3c310  bl 0x057dc0f8
02c3c314  b 0x02c3c31c
02c3c318  bl 0x02c3ecd8
02c3c31c  mov x1,x0
02c3c320  str x0,[x19, #0x178]
02c3c324  add x0,x19,#0x178
02c3c328  bl 0x029f59f4
02c3c32c  adrp x8,0x5e59000
02c3c330  ldr x8,[x8, #0x1c0]
02c3c334  ldr x20,[x19, #0x178]
02c3c338  ldr x0,[x8]
02c3c33c  ldr w8,[x0, #0xe4]
02c3c340  cbnz w8,0x02c3c348
02c3c344  bl 0x029f5bd0
02c3c348  mov x0,x20
02c3c34c  mov x1,xzr
02c3c350  mov x2,xzr
02c3c354  bl 0x057dfa70
02c3c358  tbz w0,#0x0,0x02c3c414
02c3c35c  ldr x0,[x19, #0x178]
02c3c360  cbz x0,0x02c3d230
02c3c364  mov x1,xzr
02c3c368  bl 0x057dc1c8
02c3c36c  cbz x0,0x02c3d230
02c3c370  mov x1,xzr
02c3c374  bl 0x057e00b4
02c3c378  tbnz w0,#0x0,0x02c3c414
02c3c37c  add x0,x19,#0x178
02c3c380  mov x1,xzr
02c3c384  str xzr,[x19, #0x178]
02c3c388  bl 0x029f59f4
02c3c38c  ldr x8,[x22]
02c3c390  ldr x8,[x8, #0xb8]
02c3c394  ldr x8,[x8]
02c3c398  cbz x8,0x02c3d230
02c3c39c  ldr w8,[x8, #0x20]
02c3c3a0  cmp w8,#0x3
02c3c3a4  b.ne 0x02c3c3fc
02c3c3a8  bl 0x02c3ec6c
02c3c3ac  b 0x02c3c404
02c3c3b0  ldr x0,[x21]
02c3c3b4  ldr x20,[x19, #0x178]
02c3c3b8  ldr w8,[x0, #0xe4]
02c3c3bc  cbnz w8,0x02c3c3c4
02c3c3c0  bl 0x029f5bd0
02c3c3c4  mov x0,x20
02c3c3c8  mov x1,xzr
02c3c3cc  mov x2,xzr
02c3c3d0  bl 0x057dfa70
02c3c3d4  tbz w0,#0x0,0x02c3c414
02c3c3d8  ldr x0,[x19, #0x178]
02c3c3dc  cbz x0,0x02c3d230
02c3c3e0  mov x1,xzr
02c3c3e4  bl 0x057dc1c8
02c3c3e8  cbz x0,0x02c3d230
02c3c3ec  mov x1,xzr
02c3c3f0  bl 0x057e00b4
02c3c3f4  tbz w0,#0x0,0x02c3c2c4
02c3c3f8  b 0x02c3c414
02c3c3fc  mov x0,x19
02c3c400  bl 0x02c3ecd8
02c3c404  mov x1,x0
02c3c408  str x0,[x19, #0x178]
02c3c40c  add x0,x19,#0x178
02c3c410  bl 0x029f59f4
02c3c414  ldr x8,[x22]
02c3c418  ldr x8,[x8, #0xb8]
02c3c41c  ldr x8,[x8]
02c3c420  cbz x8,0x02c3d230
02c3c424  ldr w8,[x8, #0x20]
02c3c428  cmp w8,#0x4
02c3c42c  b.ne 0x02c3c4d4
02c3c430  adrp x21,0x5e63000
02c3c434  ldr x21,[x21, #0x1d8]
02c3c438  ldr x0,[x21]
02c3c43c  ldr w8,[x0, #0xe4]
02c3c440  cbnz w8,0x02c3c44c
02c3c444  bl 0x029f5bd0
02c3c448  ldr x0,[x21]
02c3c44c  adrp x22,0x5e59000
02c3c450  ldr x22,[x22, #0x1c0]
02c3c454  ldr x9,[x0, #0xb8]
02c3c458  ldr x20,[x19, #0x1e0]
02c3c45c  ldr x8,[x22]
02c3c460  ldr s10,[x9, #0x54]
02c3c464  ldr s11,[x9, #0x5c]
02c3c468  ldr w10,[x8, #0xe4]
02c3c46c  cbnz w10,0x02c3c478
02c3c470  mov x0,x8
02c3c474  bl 0x029f5bd0
02c3c478  mov x0,x20
02c3c47c  mov x1,xzr
02c3c480  mov x2,xzr
02c3c484  bl 0x057dfa70
02c3c488  tbz w0,#0x0,0x02c3c510
02c3c48c  ldr x0,[x19, #0x1e0]
02c3c490  cbz x0,0x02c3d230
02c3c494  mov x1,xzr
02c3c498  bl 0x057dc0f8
02c3c49c  cbz x0,0x02c3d230
02c3c4a0  mov x1,xzr
02c3c4a4  bl 0x057eed98
02c3c4a8  ldr x0,[x19, #0x1e0]
02c3c4ac  cbz x0,0x02c3d230
02c3c4b0  mov x1,xzr
02c3c4b4  fmov s8,s0
02c3c4b8  bl 0x057dc0f8
02c3c4bc  cbz x0,0x02c3d230
02c3c4c0  mov x1,xzr
02c3c4c4  bl 0x057eed98
02c3c4c8  fsub s8,s8,s10
02c3c4cc  fsub s9,s2,s11
02c3c4d0  b 0x02c3c528
02c3c4d4  adrp x21,0x5e59000
02c3c4d8  ldr x21,[x21, #0x1c0]
02c3c4dc  ldr x20,[x19, #0x178]
02c3c4e0  ldr x0,[x21]
02c3c4e4  ldr w8,[x0, #0xe4]
02c3c4e8  cbnz w8,0x02c3c4f0
02c3c4ec  bl 0x029f5bd0
02c3c4f0  mov x0,x20
02c3c4f4  mov x1,xzr
02c3c4f8  mov x2,xzr
02c3c4fc  bl 0x057e14b4
02c3c500  tbz w0,#0x0,0x02c3c59c
02c3c504  mov x0,x19
02c3c508  bl 0x02c3f3d4
02c3c50c  b 0x02c3d1f0
02c3c510  ldrb w8,[x19, #0x294]
02c3c514  cbz w8,0x02c3cb38
02c3c518  ldr s0,[x19, #0x288]
02c3c51c  ldr s1,[x19, #0x290]
02c3c520  fsub s8,s0,s10
02c3c524  fsub s9,s1,s11
02c3c528  fmul s0,s8,s8
02c3c52c  fmul s1,s9,s9
02c3c530  adrp x8,0x116c000
02c3c534  fadd s12,s0,s1
02c3c538  ldr s0,[x8, #0x268]
02c3c53c  fcmp s12,s0
02c3c540  b.le 0x02c3cb38
02c3c544  adrp x20,0x625b000
02c3c548  ldrb w8,[x20, #0x52e]
02c3c54c  cbnz w8,0x02c3c564
02c3c550  adrp x0,0x5e59000
02c3c554  ldr x0,[x0]
02c3c558  bl 0x029f5a50
02c3c55c  mov w8,#0x1
02c3c560  strb w8,[x20, #0x52e]
02c3c564  adrp x8,0x5e59000
02c3c568  ldr x8,[x8]
02c3c56c  ldr x0,[x8]
02c3c570  ldr w8,[x0, #0xe4]
02c3c574  cbnz w8,0x02c3c57c
02c3c578  bl 0x029f5bd0
02c3c57c  fsqrt s1,s12
02c3c580  adrp x8,0x116c000
02c3c584  ldr s0,[x8, #0x240]
02c3c588  fcmp s1,s0
02c3c58c  b.le 0x02c3caec
02c3c590  fdiv s0,s8,s1
02c3c594  fdiv s1,s9,s1
02c3c598  b 0x02c3cb24
02c3c59c  ldr x0,[x19, #0x178]
02c3c5a0  cbz x0,0x02c3d230
02c3c5a4  mov x1,xzr
02c3c5a8  bl 0x057eed98
02c3c5ac  mov x0,x19
02c3c5b0  mov x1,xzr
02c3c5b4  fmov s8,s0
02c3c5b8  fmov s9,s2
02c3c5bc  bl 0x057dc0f8
02c3c5c0  cbz x0,0x02c3d230
02c3c5c4  mov x1,xzr
02c3c5c8  bl 0x057eed98
02c3c5cc  mov x0,x19
02c3c5d0  mov x1,xzr
02c3c5d4  fmov s10,s0
02c3c5d8  bl 0x057dc0f8
02c3c5dc  cbz x0,0x02c3d230
02c3c5e0  mov x1,xzr
02c3c5e4  bl 0x057eed98
02c3c5e8  ldr x0,[x21]
02c3c5ec  fmov s11,s2
02c3c5f0  ldr x20,[x19, #0x1e0]
02c3c5f4  ldr w8,[x0, #0xe4]
02c3c5f8  cbnz w8,0x02c3c600
02c3c5fc  bl 0x029f5bd0
02c3c600  mov x0,x20
02c3c604  mov x1,xzr
02c3c608  mov x2,xzr
02c3c60c  bl 0x057dfa70
02c3c610  fmov s13,s9
02c3c614  fmov s12,s8
02c3c618  tbz w0,#0x0,0x02c3c624
02c3c61c  ldr s12,[x19, #0x1e8]
02c3c620  ldr s13,[x19, #0x1f0]
02c3c624  adrp x20,0x625c000
02c3c628  ldrb w8,[x20, #0xbe]
02c3c62c  cbnz w8,0x02c3c644
02c3c630  adrp x0,0x5e59000
02c3c634  ldr x0,[x0]
02c3c638  bl 0x029f5a50
02c3c63c  mov w8,#0x1
02c3c640  strb w8,[x20, #0xbe]
02c3c644  adrp x23,0x5e59000
02c3c648  ldr x23,[x23]
02c3c64c  ldr x0,[x23]
02c3c650  ldr w8,[x0, #0xe4]
02c3c654  cbnz w8,0x02c3c65c
02c3c658  bl 0x029f5bd0
02c3c65c  fsub s0,s11,s13
02c3c660  fsub s1,s10,s12
02c3c664  ldr s12,[x19, #0x150]
02c3c668  fmul s1,s1,s1
02c3c66c  fmul s0,s0,s0
02c3c670  fadd s0,s0,s1
02c3c674  fsqrt s11,s0
02c3c678  fcmp s11,s12
02c3c67c  b.ls 0x02c3c9c4
02c3c680  ldr x8,[x22]
02c3c684  ldr x8,[x8, #0xb8]
02c3c688  ldr x8,[x8]
02c3c68c  cbz x8,0x02c3d230
02c3c690  fmov s13,s9
02c3c694  ldr w8,[x8, #0x20]
02c3c698  cmp w8,#0x1
02c3c69c  b.eq 0x02c3c75c
02c3c6a0  ldr s1,[x19, #0x158]
02c3c6a4  ldr s3,[x19, #0x15c]
02c3c6a8  movi d0,#0x0
02c3c6ac  movi d2,#0x0
02c3c6b0  fcmp s1,s3
02c3c6b4  b.eq 0x02c3c6dc
02c3c6b8  fsub s2,s11,s1
02c3c6bc  fsub s1,s3,s1
02c3c6c0  movi d3,#0x0
02c3c6c4  fdiv s1,s2,s1
02c3c6c8  fmov s2,0x3f800000
02c3c6cc  fcmp s1,s2
02c3c6d0  fcsel s2,s2,s1,gt
02c3c6d4  fcmp s1,#0.0
02c3c6d8  fcsel s2,s3,s2,mi
02c3c6dc  fcmp s2,#0.0
02c3c6e0  ldrb w8,[x20, #0xbe]
02c3c6e4  fcsel s1,s0,s2,mi
02c3c6e8  ldr s2,[x19, #0x154]
02c3c6ec  fmul s1,s2,s1
02c3c6f0  fadd s10,s1,s0
02c3c6f4  cbnz w8,0x02c3c70c
02c3c6f8  adrp x0,0x5e59000
02c3c6fc  ldr x0,[x0]
02c3c700  bl 0x029f5a50
02c3c704  mov w8,#0x1
02c3c708  strb w8,[x20, #0xbe]
02c3c70c  ldr x0,[x23]
02c3c710  fadd s13,s9,s10
02c3c714  ldr w8,[x0, #0xe4]
02c3c718  cbnz w8,0x02c3c720
02c3c71c  bl 0x029f5bd0
02c3c720  fsub s0,s13,s9
02c3c724  fsub s1,s8,s8
02c3c728  adrp x8,0x116b000
02c3c72c  ldr s2,[x8, #0xea0]
02c3c730  fmul s1,s1,s1
02c3c734  fmul s0,s0,s0
02c3c738  fadd s0,s1,s0
02c3c73c  ldr s1,[x19, #0x150]
02c3c740  fmul s1,s1,s2
02c3c744  fsqrt s0,s0
02c3c748  fcmp s0,s1
02c3c74c  b.le 0x02c3c75c
02c3c750  fdiv s0,s1,s0
02c3c754  fmul s0,s10,s0
02c3c758  fadd s13,s9,s0
02c3c75c  mov x0,x19
02c3c760  mov x1,xzr
02c3c764  bl 0x057dc0f8
02c3c768  cbz x0,0x02c3d230
02c3c76c  mov x1,xzr
02c3c770  bl 0x057eed98
02c3c774  fmov s9,s0
02c3c778  fmov s10,s2
02c3c77c  adrp x20,0x625b000
02c3c780  ldrb w8,[x20, #0xae8]
02c3c784  cbnz w8,0x02c3c79c
02c3c788  adrp x0,0x5e59000
02c3c78c  ldr x0,[x0]
02c3c790  bl 0x029f5a50
02c3c794  mov w8,#0x1
02c3c798  strb w8,[x20, #0xae8]
02c3c79c  ldr x0,[x23]
02c3c7a0  fsub s8,s8,s9
02c3c7a4  fsub s10,s13,s10
02c3c7a8  ldr w8,[x0, #0xe4]
02c3c7ac  cbnz w8,0x02c3c7b4
02c3c7b0  bl 0x029f5bd0
02c3c7b4  fmul s0,s8,s8
02c3c7b8  fmul s1,s10,s10
02c3c7bc  adrp x8,0x116c000
02c3c7c0  fadd s0,s0,s1
02c3c7c4  ldr s1,[x8, #0x190]
02c3c7c8  fsqrt s0,s0
02c3c7cc  fcmp s0,s1
02c3c7d0  b.mi 0x02c3c504
02c3c7d4  ldr s2,[x19, #0x168]
02c3c7d8  movi d1,#0x0
02c3c7dc  fmov s13,0x3f800000
02c3c7e0  fadd s3,s12,s2
02c3c7e4  fcmp s11,s3
02c3c7e8  b.pl 0x02c3c838
02c3c7ec  fsub s3,s11,s12
02c3c7f0  fmov s5,0x40400000
02c3c7f4  adrp x8,0x116c000
02c3c7f8  fdiv s2,s3,s2
02c3c7fc  fmov s3,0x3f800000
02c3c800  fcmp s2,s3
02c3c804  fcsel s4,s3,s2,gt
02c3c808  fcmp s2,#0.0
02c3c80c  fcsel s2,s1,s4,mi
02c3c810  fadd s4,s2,s2
02c3c814  fmul s5,s2,s5
02c3c818  fmul s4,s2,s4
02c3c81c  fmul s4,s2,s4
02c3c820  fmul s2,s2,s5
02c3c824  fsub s2,s2,s4
02c3c828  ldr s4,[x8, #0x60]
02c3c82c  fsub s3,s3,s2
02c3c830  fmul s3,s3,s4
02c3c834  fadd s13,s2,s3
02c3c838  fdiv s8,s8,s0
02c3c83c  adrp x22,0x5e63000
02c3c840  ldr x22,[x22, #0x1d8]
02c3c844  ldr x0,[x22]
02c3c848  ldr w8,[x0, #0xe4]
02c3c84c  fdiv s9,s1,s0
02c3c850  fdiv s10,s10,s0
02c3c854  cbnz w8,0x02c3c85c
02c3c858  bl 0x029f5bd0
02c3c85c  fmov s0,s8
02c3c860  fmov s1,s9
02c3c864  fmov s2,s10
02c3c868  bl 0x02c38be8
02c3c86c  ldr s1,[x19, #0x20]
02c3c870  ldr s11,[x19, #0x190]
02c3c874  mov x0,xzr
02c3c878  fmul s2,s10,s1
02c3c87c  fmul s1,s8,s1
02c3c880  fmul s2,s13,s2
02c3c884  fmul s1,s13,s1
02c3c888  ldr d13,[x19, #0x188]
02c3c88c  fmul s2,s0,s2
02c3c890  fmul s0,s0,s1
02c3c894  str q0,[sp, #0x10]
02c3c898  fsub s12,s2,s11
02c3c89c  bl 0x057ebabc
02c3c8a0  fmov s1,0x41000000
02c3c8a4  movi d2,#0x0
02c3c8a8  ldr q3,[sp, #0x10]
02c3c8ac  ldr x20,[x19, #0x30]
02c3c8b0  fmul s0,s0,s1
02c3c8b4  fmov s1,0x3f800000
02c3c8b8  mov v2.S[0x0],v3.S[0x0]
02c3c8bc  movi d3,#0x0
02c3c8c0  fcmp s0,s1
02c3c8c4  fcsel s1,s1,s0,gt
02c3c8c8  fcmp s0,#0.0
02c3c8cc  fsub v0.2S,v2.2S,v13.2S
02c3c8d0  fcsel s1,s3,s1,mi
02c3c8d4  fmul v0.2S,v0.2S,v1.S[0x0]
02c3c8d8  fmul s1,s12,s1
02c3c8dc  fadd v2.2S,v13.2S,v0.2S
02c3c8e0  fadd s0,s11,s1
02c3c8e4  str q2,[sp, #0x10]
02c3c8e8  str d2,[x19, #0x188]
02c3c8ec  str s0,[x19, #0x190]
02c3c8f0  cbz x20,0x02c3d230
02c3c8f4  mov x0,x20
02c3c8f8  mov x1,xzr
02c3c8fc  bl 0x0586b268
02c3c900  ldr s2,[x19, #0x190]
02c3c904  mov x0,x20
02c3c908  ldr q0,[sp, #0x10]
02c3c90c  mov x1,xzr
02c3c910  bl 0x0586b344
02c3c914  ldr x0,[x21]
02c3c918  ldr x20,[x19, #0x1e0]
02c3c91c  ldr w8,[x0, #0xe4]
02c3c920  cbnz w8,0x02c3c928
02c3c924  bl 0x029f5bd0
02c3c928  mov x0,x20
02c3c92c  mov x1,xzr
02c3c930  mov x2,xzr
02c3c934  bl 0x057dfa70
02c3c938  mov w8,w0
02c3c93c  ldr x0,[x22]
02c3c940  ldr w9,[x0, #0xe4]
02c3c944  tbz w8,#0x0,0x02c3ce34
02c3c948  cbnz w9,0x02c3c954
02c3c94c  bl 0x029f5bd0
02c3c950  ldr x0,[x22]
02c3c954  ldr x8,[x19, #0x1e0]
02c3c958  cbz x8,0x02c3d230
02c3c95c  ldr x9,[x0, #0xb8]
02c3c960  mov x0,x8
02c3c964  mov x1,xzr
02c3c968  ldp s8,s9,[x9, #0x44]
02c3c96c  ldp s10,s11,[x9, #0x4c]
02c3c970  bl 0x057dc0f8
02c3c974  cbz x0,0x02c3d230
02c3c978  mov x1,xzr
02c3c97c  bl 0x057eed98
02c3c980  mov x0,x19
02c3c984  mov x1,xzr
02c3c988  fmov s12,s0
02c3c98c  fmov s13,s1
02c3c990  fmov s14,s2
02c3c994  bl 0x057dc0f8
02c3c998  cbz x0,0x02c3d230
02c3c99c  mov x1,xzr
02c3c9a0  bl 0x057eed98
02c3c9a4  fsub s4,s12,s0
02c3c9a8  fsub s5,s13,s1
02c3c9ac  fsub s6,s14,s2
02c3c9b0  fmov s0,s8
02c3c9b4  fmov s1,s9
02c3c9b8  fmov s2,s10
02c3c9bc  fmov s3,s11
02c3c9c0  b 0x02c3ce58
02c3c9c4  ldr s0,[x19, #0x1b8]
02c3c9c8  fcmp s11,s0
02c3c9cc  b.pl 0x02c3d0cc
02c3c9d0  ldr x0,[x21]
02c3c9d4  ldr x20,[x19, #0x1e0]
02c3c9d8  ldr w8,[x0, #0xe4]
02c3c9dc  cbnz w8,0x02c3c9e4
02c3c9e0  bl 0x029f5bd0
02c3c9e4  mov x0,x20
02c3c9e8  mov x1,xzr
02c3c9ec  mov x2,xzr
02c3c9f0  bl 0x057dfa70
02c3c9f4  tbz w0,#0x0,0x02c3d0cc
02c3c9f8  mov x0,x19
02c3c9fc  mov x1,xzr
02c3ca00  bl 0x057dc0f8
02c3ca04  cbz x0,0x02c3d230
02c3ca08  mov x1,xzr
02c3ca0c  bl 0x057eed98
02c3ca10  ldr s13,[x19, #0x1e8]
02c3ca14  mov x0,x19
02c3ca18  mov x1,xzr
02c3ca1c  fmov s10,s0
02c3ca20  fmov s11,s1
02c3ca24  fmov s12,s2
02c3ca28  bl 0x057dc0f8
02c3ca2c  cbz x0,0x02c3d230
02c3ca30  mov x1,xzr
02c3ca34  bl 0x057eed98
02c3ca38  fsub s10,s10,s13
02c3ca3c  fsub s11,s11,s1
02c3ca40  ldr s0,[x19, #0x1f0]
02c3ca44  adrp x8,0x116c000
02c3ca48  fsub s12,s12,s0
02c3ca4c  fmul s0,s10,s10
02c3ca50  fmul s1,s11,s11
02c3ca54  fadd s0,s0,s1
02c3ca58  fmul s1,s12,s12
02c3ca5c  fadd s0,s1,s0
02c3ca60  ldr s1,[x8, #0x268]
02c3ca64  fcmp s0,s1
02c3ca68  b.pl 0x02c3ca80
02c3ca6c  mov x0,xzr
02c3ca70  bl 0x02c432dc
02c3ca74  fmov s10,s0
02c3ca78  fmov s11,s1
02c3ca7c  fmov s12,s2
02c3ca80  adrp x20,0x625b000
02c3ca84  ldrb w8,[x20, #0x52e]
02c3ca88  cbnz w8,0x02c3caa0
02c3ca8c  adrp x0,0x5e59000
02c3ca90  ldr x0,[x0]
02c3ca94  bl 0x029f5a50
02c3ca98  mov w8,#0x1
02c3ca9c  strb w8,[x20, #0x52e]
02c3caa0  ldr x0,[x23]
02c3caa4  ldr w8,[x0, #0xe4]
02c3caa8  cbnz w8,0x02c3cab0
02c3caac  bl 0x029f5bd0
02c3cab0  fmul s0,s10,s10
02c3cab4  fmul s1,s11,s11
02c3cab8  adrp x8,0x116c000
02c3cabc  fadd s0,s0,s1
02c3cac0  fmul s1,s12,s12
02c3cac4  fadd s0,s1,s0
02c3cac8  ldr s1,[x8, #0x240]
02c3cacc  fsqrt s0,s0
02c3cad0  fcmp s0,s1
02c3cad4  b.le 0x02c3cee8
02c3cad8  fdiv s1,s11,s0
02c3cadc  fdiv s10,s10,s0
02c3cae0  str s1,[sp, #0x10]
02c3cae4  fdiv s12,s12,s0
02c3cae8  b 0x02c3cf24
02c3caec  adrp x20,0x625b000
02c3caf0  ldrb w8,[x20, #0x26f]
02c3caf4  cbnz w8,0x02c3cb0c
02c3caf8  adrp x0,0x5e58000
02c3cafc  ldr x0,[x0, #0xbf8]
02c3cb00  bl 0x029f5a50
02c3cb04  mov w8,#0x1
02c3cb08  strb w8,[x20, #0x26f]
02c3cb0c  adrp x8,0x5e58000
02c3cb10  ldr x8,[x8, #0xbf8]
02c3cb14  ldr x8,[x8]
02c3cb18  ldr x8,[x8, #0xb8]
02c3cb1c  ldr s0,[x8]
02c3cb20  ldr s1,[x8, #0x8]
02c3cb24  fmov s2,0x41600000
02c3cb28  fmul s0,s0,s2
02c3cb2c  fmul s1,s1,s2
02c3cb30  fadd s10,s10,s0
02c3cb34  fadd s11,s11,s1
02c3cb38  mov x0,x19
02c3cb3c  mov x1,xzr
02c3cb40  bl 0x057dc0f8
02c3cb44  cbz x0,0x02c3d230
02c3cb48  mov x1,xzr
02c3cb4c  bl 0x057eed98
02c3cb50  mov x0,x19
02c3cb54  mov x1,xzr
02c3cb58  bl 0x057dc0f8
02c3cb5c  cbz x0,0x02c3d230
02c3cb60  mov x1,xzr
02c3cb64  bl 0x057eed98
02c3cb68  fmov s8,s0
02c3cb6c  fmov s9,s2
02c3cb70  adrp x20,0x625b000
02c3cb74  ldrb w8,[x20, #0xae8]
02c3cb78  cbnz w8,0x02c3cb90
02c3cb7c  adrp x0,0x5e59000
02c3cb80  ldr x0,[x0]
02c3cb84  bl 0x029f5a50
02c3cb88  mov w8,#0x1
02c3cb8c  strb w8,[x20, #0xae8]
02c3cb90  adrp x8,0x5e59000
02c3cb94  fsub s8,s10,s8
02c3cb98  fsub s10,s11,s9
02c3cb9c  ldr x8,[x8]
02c3cba0  ldr x0,[x8]
02c3cba4  ldr w8,[x0, #0xe4]
02c3cba8  cbnz w8,0x02c3cbb0
02c3cbac  bl 0x029f5bd0
02c3cbb0  fmul s0,s8,s8
02c3cbb4  fmul s1,s10,s10
02c3cbb8  fadd s0,s0,s1
02c3cbbc  fmov s1,0x3f800000
02c3cbc0  fsqrt s0,s0
02c3cbc4  fcmp s0,s1
02c3cbc8  b.pl 0x02c3cc84
02c3cbcc  mov x0,x19
02c3cbd0  bl 0x02c3f3d4
02c3cbd4  ldr x0,[x22]
02c3cbd8  ldr x20,[x19, #0x1e0]
02c3cbdc  ldr w8,[x0, #0xe4]
02c3cbe0  cbnz w8,0x02c3cbe8
02c3cbe4  bl 0x029f5bd0
02c3cbe8  mov x0,x20
02c3cbec  mov x1,xzr
02c3cbf0  mov x2,xzr
02c3cbf4  bl 0x057dfa70
02c3cbf8  tbz w0,#0x0,0x02c3d1f0
02c3cbfc  ldr x0,[x21]
02c3cc00  ldr w8,[x0, #0xe4]
02c3cc04  cbnz w8,0x02c3cc10
02c3cc08  bl 0x029f5bd0
02c3cc0c  ldr x0,[x21]
02c3cc10  ldr x8,[x19, #0x1e0]
02c3cc14  cbz x8,0x02c3d230
02c3cc18  ldr x9,[x0, #0xb8]
02c3cc1c  mov x0,x8
02c3cc20  mov x1,xzr
02c3cc24  ldp s8,s9,[x9, #0x44]
02c3cc28  ldp s10,s11,[x9, #0x4c]
02c3cc2c  bl 0x057dc0f8
02c3cc30  cbz x0,0x02c3d230
02c3cc34  mov x1,xzr
02c3cc38  bl 0x057eed98
02c3cc3c  mov x0,x19
02c3cc40  mov x1,xzr
02c3cc44  fmov s12,s0
02c3cc48  fmov s13,s1
02c3cc4c  fmov s14,s2
02c3cc50  bl 0x057dc0f8
02c3cc54  cbz x0,0x02c3d230
02c3cc58  mov x1,xzr
02c3cc5c  bl 0x057eed98
02c3cc60  fsub s4,s12,s0
02c3cc64  fsub s5,s13,s1
02c3cc68  mov x0,xzr
02c3cc6c  fsub s6,s14,s2
02c3cc70  fmov s0,s8
02c3cc74  fmov s1,s9
02c3cc78  fmov s2,s10
02c3cc7c  fmov s3,s11
02c3cc80  b 0x02c3d178
02c3cc84  movi d11,#0x0
02c3cc88  fdiv s8,s8,s0
02c3cc8c  ldr x0,[x21]
02c3cc90  ldr w8,[x0, #0xe4]
02c3cc94  fdiv s9,s11,s0
02c3cc98  fdiv s10,s10,s0
02c3cc9c  cbnz w8,0x02c3cca4
02c3cca0  bl 0x029f5bd0
02c3cca4  fmov s0,s8
02c3cca8  fmov s1,s9
02c3ccac  fmov s2,s10
02c3ccb0  bl 0x02c38be8
02c3ccb4  ldr s1,[x19, #0x20]
02c3ccb8  ldr s12,[x19, #0x190]
02c3ccbc  mov x0,xzr
02c3ccc0  ldr d14,[x19, #0x188]
02c3ccc4  fmul s2,s10,s1
02c3ccc8  fmul s1,s8,s1
02c3cccc  fmul s2,s0,s2
02c3ccd0  fmul s0,s0,s1
02c3ccd4  str q0,[sp, #0x10]
02c3ccd8  fsub s13,s2,s12
02c3ccdc  bl 0x057ebabc
02c3cce0  fmov s1,0x41000000
02c3cce4  movi d2,#0x0
02c3cce8  ldr q3,[sp, #0x10]
02c3ccec  ldr x20,[x19, #0x30]
02c3ccf0  fmul s0,s0,s1
02c3ccf4  fmov s1,0x3f800000
02c3ccf8  mov v2.S[0x0],v3.S[0x0]
02c3ccfc  fcmp s0,s1
02c3cd00  fcsel s1,s1,s0,gt
02c3cd04  fcmp s0,#0.0
02c3cd08  fsub v0.2S,v2.2S,v14.2S
02c3cd0c  fcsel s1,s11,s1,mi
02c3cd10  fmul v0.2S,v0.2S,v1.S[0x0]
02c3cd14  fmul s1,s13,s1
02c3cd18  fadd v2.2S,v14.2S,v0.2S
02c3cd1c  fadd s0,s12,s1
02c3cd20  str q2,[sp, #0x10]
02c3cd24  str d2,[x19, #0x188]
02c3cd28  str s0,[x19, #0x190]
02c3cd2c  cbz x20,0x02c3d230
02c3cd30  mov x0,x20
02c3cd34  mov x1,xzr
02c3cd38  bl 0x0586b268
02c3cd3c  ldr s2,[x19, #0x190]
02c3cd40  mov x0,x20
02c3cd44  ldr q0,[sp, #0x10]
02c3cd48  mov x1,xzr
02c3cd4c  bl 0x0586b344
02c3cd50  ldr x8,[x21]
02c3cd54  ldr x0,[x22]
02c3cd58  ldr x20,[x19, #0x1e0]
02c3cd5c  ldr x8,[x8, #0xb8]
02c3cd60  ldr w9,[x0, #0xe4]
02c3cd64  ldp s11,s12,[x8, #0x44]
02c3cd68  ldp s13,s14,[x8, #0x4c]
02c3cd6c  cbnz w9,0x02c3cd74
02c3cd70  bl 0x029f5bd0
02c3cd74  mov x0,x20
02c3cd78  mov x1,xzr
02c3cd7c  mov x2,xzr
02c3cd80  bl 0x057dfa70
02c3cd84  tbz w0,#0x0,0x02c3cdd4
02c3cd88  ldr x0,[x19, #0x1e0]
02c3cd8c  cbz x0,0x02c3d230
02c3cd90  mov x1,xzr
02c3cd94  bl 0x057dc0f8
02c3cd98  cbz x0,0x02c3d230
02c3cd9c  mov x1,xzr
02c3cda0  bl 0x057eed98
02c3cda4  mov x0,x19
02c3cda8  mov x1,xzr
02c3cdac  fmov s8,s0
02c3cdb0  fmov s9,s1
02c3cdb4  fmov s10,s2
02c3cdb8  bl 0x057dc0f8
02c3cdbc  cbz x0,0x02c3d230
02c3cdc0  mov x1,xzr
02c3cdc4  bl 0x057eed98
02c3cdc8  fsub s8,s8,s0
02c3cdcc  fsub s9,s9,s1
02c3cdd0  fsub s10,s10,s2
02c3cdd4  fmov s0,s11
02c3cdd8  fmov s1,s12
02c3cddc  fmov s2,s13
02c3cde0  fmov s3,s14
02c3cde4  fmov s4,s8
02c3cde8  fmov s5,s9
02c3cdec  fmov s6,s10
02c3cdf0  mov x0,xzr
02c3cdf4  bl 0x057cdb04
02c3cdf8  fcmp s0,#0.0
02c3cdfc  ldr x0,[x21]
02c3ce00  ldr x20,[x19, #0xb8]
02c3ce04  ldr w8,[x0, #0xe4]
02c3ce08  cset w9,ls
02c3ce0c  strb w9,[x19, #0x1f8]
02c3ce10  b.hi 0x02c3ce24
02c3ce14  cbnz w8,0x02c3ce88
02c3ce18  bl 0x029f5bd0
02c3ce1c  ldr x0,[x21]
02c3ce20  b 0x02c3ce88
02c3ce24  cbnz w8,0x02c3cea8
02c3ce28  bl 0x029f5bd0
02c3ce2c  ldr x0,[x21]
02c3ce30  b 0x02c3cea8
02c3ce34  cbnz w9,0x02c3ce40
02c3ce38  bl 0x029f5bd0
02c3ce3c  ldr x0,[x22]
02c3ce40  ldr x8,[x0, #0xb8]
02c3ce44  fmov s4,s8
02c3ce48  fmov s5,s9
02c3ce4c  fmov s6,s10
02c3ce50  ldp s0,s1,[x8, #0x44]
02c3ce54  ldp s2,s3,[x8, #0x4c]
02c3ce58  mov x0,xzr
02c3ce5c  bl 0x057cdb04
02c3ce60  fcmp s0,#0.0
02c3ce64  ldr x0,[x22]
02c3ce68  ldr x20,[x19, #0xb8]
02c3ce6c  ldr w8,[x0, #0xe4]
02c3ce70  cset w9,ls
02c3ce74  strb w9,[x19, #0x1f8]
02c3ce78  b.hi 0x02c3ce9c
02c3ce7c  cbnz w8,0x02c3ce88
02c3ce80  bl 0x029f5bd0
02c3ce84  ldr x0,[x22]
02c3ce88  ldr x10,[x0, #0xb8]
02c3ce8c  add x8,x10,#0x20
02c3ce90  add x9,x10,#0x24
02c3ce94  add x10,x10,#0x28
02c3ce98  b 0x02c3ceb8
02c3ce9c  cbnz w8,0x02c3cea8
02c3cea0  bl 0x029f5bd0
02c3cea4  ldr x0,[x22]
02c3cea8  ldr x10,[x0, #0xb8]
02c3ceac  add x8,x10,#0x2c
02c3ceb0  add x9,x10,#0x30
02c3ceb4  add x10,x10,#0x34
02c3ceb8  cbz x20,0x02c3d230
02c3cebc  ldr s2,[x10]
02c3cec0  ldr s1,[x9]
02c3cec4  mov x0,x20
02c3cec8  ldr s0,[x8]
02c3cecc  mov x1,xzr
02c3ced0  bl 0x057ef218
02c3ced4  ldr x0,[x19, #0x38]
02c3ced8  cbz x0,0x02c3d230
02c3cedc  adrp x8,0x5e61000
02c3cee0  mov w2,#0x1
02c3cee4  b 0x02c3d200
02c3cee8  adrp x20,0x625b000
02c3ceec  ldrb w8,[x20, #0x26f]
02c3cef0  cbnz w8,0x02c3cf08
02c3cef4  adrp x0,0x5e58000
02c3cef8  ldr x0,[x0, #0xbf8]
02c3cefc  bl 0x029f5a50
02c3cf00  mov w8,#0x1
02c3cf04  strb w8,[x20, #0x26f]
02c3cf08  adrp x8,0x5e58000
02c3cf0c  ldr x8,[x8, #0xbf8]
02c3cf10  ldr x8,[x8]
02c3cf14  ldr x8,[x8, #0xb8]
02c3cf18  ldp s10,s0,[x8]
02c3cf1c  ldr s12,[x8, #0x8]
02c3cf20  str s0,[sp, #0x10]
02c3cf24  ldr s13,[x19, #0x1e8]
02c3cf28  mov x0,x19
02c3cf2c  mov x1,xzr
02c3cf30  bl 0x057dc0f8
02c3cf34  cbz x0,0x02c3d230
02c3cf38  mov x1,xzr
02c3cf3c  bl 0x057eed98
02c3cf40  ldr s11,[x19, #0x1f0]
02c3cf44  ldr s14,[x19, #0x1b8]
02c3cf48  mov x0,x19
02c3cf4c  mov x1,xzr
02c3cf50  bl 0x057dc0f8
02c3cf54  cbz x0,0x02c3d230
02c3cf58  fmov s0,0x3f000000
02c3cf5c  mov x1,xzr
02c3cf60  fadd s0,s14,s0
02c3cf64  fmul s1,s12,s0
02c3cf68  fmul s0,s10,s0
02c3cf6c  fadd s15,s11,s1
02c3cf70  fadd s11,s13,s0
02c3cf74  bl 0x057eed98
02c3cf78  fmov s13,s0
02c3cf7c  fmov s14,s2
02c3cf80  adrp x20,0x625b000
02c3cf84  ldrb w8,[x20, #0xae8]
02c3cf88  cbnz w8,0x02c3cfa0
02c3cf8c  adrp x0,0x5e59000
02c3cf90  ldr x0,[x0]
02c3cf94  bl 0x029f5a50
02c3cf98  mov w8,#0x1
02c3cf9c  strb w8,[x20, #0xae8]
02c3cfa0  ldr x0,[x23]
02c3cfa4  fsub s13,s11,s13
02c3cfa8  fsub s11,s15,s14
02c3cfac  ldr w8,[x0, #0xe4]
02c3cfb0  cbnz w8,0x02c3cfb8
02c3cfb4  bl 0x029f5bd0
02c3cfb8  fmul s0,s13,s13
02c3cfbc  fmul s1,s11,s11
02c3cfc0  adrp x8,0x116c000
02c3cfc4  fadd s0,s0,s1
02c3cfc8  ldr s1,[x8, #0x94]
02c3cfcc  fsqrt s0,s0
02c3cfd0  fcmp s0,s1
02c3cfd4  b.le 0x02c3d0cc
02c3cfd8  movi d14,#0x0
02c3cfdc  fdiv s8,s13,s0
02c3cfe0  adrp x21,0x5e63000
02c3cfe4  ldr x21,[x21, #0x1d8]
02c3cfe8  ldr x0,[x21]
02c3cfec  ldr w8,[x0, #0xe4]
02c3cff0  fdiv s13,s14,s0
02c3cff4  fdiv s9,s11,s0
02c3cff8  cbnz w8,0x02c3d000
02c3cffc  bl 0x029f5bd0
02c3d000  fmov s0,s8
02c3d004  fmov s1,s13
02c3d008  fmov s2,s9
02c3d00c  bl 0x02c38be8
02c3d010  ldr s1,[x19, #0x20]
02c3d014  ldr d11,[x19, #0x188]
02c3d018  mov x0,xzr
02c3d01c  fmul s2,s9,s1
02c3d020  fmul s1,s8,s1
02c3d024  ldr s8,[x19, #0x190]
02c3d028  fmul s2,s0,s2
02c3d02c  fmul s0,s0,s1
02c3d030  str q0,[sp]
02c3d034  fsub s9,s2,s8
02c3d038  bl 0x057ebabc
02c3d03c  fmov s1,0x41000000
02c3d040  movi d2,#0x0
02c3d044  ldr q3,[sp]
02c3d048  ldr x20,[x19, #0x30]
02c3d04c  fmul s0,s0,s1
02c3d050  fmov s1,0x3f800000
02c3d054  mov v2.S[0x0],v3.S[0x0]
02c3d058  fcmp s0,s1
02c3d05c  fcsel s1,s1,s0,gt
02c3d060  fcmp s0,#0.0
02c3d064  fsub v0.2S,v2.2S,v11.2S
02c3d068  fcsel s1,s14,s1,mi
02c3d06c  fmul v0.2S,v0.2S,v1.S[0x0]
02c3d070  fmul s1,s9,s1
02c3d074  fadd v2.2S,v11.2S,v0.2S
02c3d078  fadd s0,s8,s1
02c3d07c  str q2,[sp]
02c3d080  str d2,[x19, #0x188]
02c3d084  str s0,[x19, #0x190]
02c3d088  cbz x20,0x02c3d230
02c3d08c  mov x0,x20
02c3d090  mov x1,xzr
02c3d094  bl 0x0586b268
02c3d098  ldr s2,[x19, #0x190]
02c3d09c  mov x0,x20
02c3d0a0  ldr q0,[sp]
02c3d0a4  mov x1,xzr
02c3d0a8  bl 0x0586b344
02c3d0ac  ldr x8,[x21]
02c3d0b0  ldr s5,[sp, #0x10]
02c3d0b4  fmov s4,s10
02c3d0b8  fmov s6,s12
02c3d0bc  ldr x8,[x8, #0xb8]
02c3d0c0  ldp s0,s1,[x8, #0x44]
02c3d0c4  ldp s2,s3,[x8, #0x4c]
02c3d0c8  b 0x02c3cdf0
02c3d0cc  mov x0,x19
02c3d0d0  bl 0x02c3f3d4
02c3d0d4  ldr x0,[x21]
02c3d0d8  ldr x20,[x19, #0x1e0]
02c3d0dc  ldr w8,[x0, #0xe4]
02c3d0e0  cbnz w8,0x02c3d0e8
02c3d0e4  bl 0x029f5bd0
02c3d0e8  mov x0,x20
02c3d0ec  mov x1,xzr
02c3d0f0  mov x2,xzr
02c3d0f4  bl 0x057dfa70
02c3d0f8  tbz w0,#0x0,0x02c3d120
02c3d0fc  ldr x0,[x19, #0x1e0]
02c3d100  cbz x0,0x02c3d230
02c3d104  mov x1,xzr
02c3d108  bl 0x057dc0f8
02c3d10c  cbz x0,0x02c3d230
02c3d110  mov x1,xzr
02c3d114  bl 0x057eed98
02c3d118  fmov s8,s0
02c3d11c  fmov s9,s2
02c3d120  mov x0,x19
02c3d124  mov x1,xzr
02c3d128  bl 0x057dc0f8
02c3d12c  cbz x0,0x02c3d230
02c3d130  mov x1,xzr
02c3d134  bl 0x057eed98
02c3d138  adrp x21,0x5e63000
02c3d13c  fsub s8,s8,s0
02c3d140  fsub s9,s9,s2
02c3d144  ldr x21,[x21, #0x1d8]
02c3d148  ldr x0,[x21]
02c3d14c  ldr w8,[x0, #0xe4]
02c3d150  cbnz w8,0x02c3d15c
02c3d154  bl 0x029f5bd0
02c3d158  ldr x0,[x21]
02c3d15c  ldr x8,[x0, #0xb8]
02c3d160  movi d5,#0x0
02c3d164  fmov s4,s8
02c3d168  fmov s6,s9
02c3d16c  mov x0,xzr
02c3d170  ldp s0,s1,[x8, #0x44]
02c3d174  ldp s2,s3,[x8, #0x4c]
02c3d178  bl 0x057cdb04
02c3d17c  fcmp s0,#0.0
02c3d180  ldr x0,[x21]
02c3d184  ldr x20,[x19, #0xb8]
02c3d188  ldr w8,[x0, #0xe4]
02c3d18c  cset w9,ls
02c3d190  strb w9,[x19, #0x1f8]
02c3d194  b.hi 0x02c3d1b8
02c3d198  cbnz w8,0x02c3d1a4
02c3d19c  bl 0x029f5bd0
02c3d1a0  ldr x0,[x21]
02c3d1a4  ldr x10,[x0, #0xb8]
02c3d1a8  add x8,x10,#0x20
02c3d1ac  add x9,x10,#0x24
02c3d1b0  add x10,x10,#0x28
02c3d1b4  b 0x02c3d1d4
02c3d1b8  cbnz w8,0x02c3d1c4
02c3d1bc  bl 0x029f5bd0
02c3d1c0  ldr x0,[x21]
02c3d1c4  ldr x10,[x0, #0xb8]
02c3d1c8  add x8,x10,#0x2c
02c3d1cc  add x9,x10,#0x30
02c3d1d0  add x10,x10,#0x34
02c3d1d4  cbz x20,0x02c3d230
02c3d1d8  ldr s2,[x10]
02c3d1dc  ldr s1,[x9]
02c3d1e0  mov x0,x20
02c3d1e4  ldr s0,[x8]
02c3d1e8  mov x1,xzr
02c3d1ec  bl 0x057ef218
02c3d1f0  ldr x0,[x19, #0x38]
02c3d1f4  cbz x0,0x02c3d230
02c3d1f8  adrp x8,0x5e61000
02c3d1fc  mov w2,wzr
02c3d200  ldr x8,[x8, #0x878]
02c3d204  ldr x1,[x8]
02c3d208  ldp x20,x19,[sp, #0x80]
02c3d20c  mov x3,xzr
02c3d210  ldp x22,x21,[sp, #0x70]
02c3d214  ldp x30,x23,[sp, #0x60]
02c3d218  ldp d9,d8,[sp, #0x50]
02c3d21c  ldp d11,d10,[sp, #0x40]
02c3d220  ldp d13,d12,[sp, #0x30]
02c3d224  ldp d15,d14,[sp, #0x20]
02c3d228  add sp,sp,#0x90
02c3d22c  b 0x05784a20
02c3d230  bl 0x029f5cfc
