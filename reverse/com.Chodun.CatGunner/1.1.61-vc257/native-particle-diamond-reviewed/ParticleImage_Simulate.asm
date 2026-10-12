049bd23c  stp d15,d14,[sp, #-0xa0]!
049bd240  stp d13,d12,[sp, #0x10]
049bd244  stp d11,d10,[sp, #0x20]
049bd248  stp d9,d8,[sp, #0x30]
049bd24c  stp x29,x30,[sp, #0x40]
049bd250  stp x28,x27,[sp, #0x50]
049bd254  stp x26,x25,[sp, #0x60]
049bd258  stp x24,x23,[sp, #0x70]
049bd25c  stp x22,x21,[sp, #0x80]
049bd260  stp x20,x19,[sp, #0x90]
049bd264  sub sp,sp,#0x8, LSL #12
049bd268  sub sp,sp,#0xa80
049bd26c  str w1,[sp, #0xb8]
049bd270  mrs x8,tpidr_el0
049bd274  fmov s8,s0
049bd278  str x8,[sp, #0xb0]
049bd27c  add x9,sp,#0xa80
049bd280  adrp x20,0x6262000
049bd284  ldr x8,[x8, #0x28]
049bd288  add x27,sp,#0x5, LSL #12
049bd28c  mov x19,x0
049bd290  add x27,x27,#0x440
049bd294  str x8,[x9, #0x7ff8]
049bd298  mov w9,#0x3140
049bd29c  ldrb w8,[x20, #0x83f]
049bd2a0  add x26,x0,x9
049bd2a4  tbnz w8,#0x0,0x049bd460
049bd2a8  adrp x0,0x5e85000
049bd2ac  ldr x0,[x0, #0xfc0]
049bd2b0  bl 0x029f5a50
049bd2b4  adrp x0,0x5e85000
049bd2b8  ldr x0,[x0, #0xfc8]
049bd2bc  bl 0x029f5a50
049bd2c0  adrp x0,0x5e85000
049bd2c4  ldr x0,[x0, #0xfd0]
049bd2c8  bl 0x029f5a50
049bd2cc  adrp x0,0x5e85000
049bd2d0  ldr x0,[x0, #0xfd8]
049bd2d4  bl 0x029f5a50
049bd2d8  adrp x0,0x5e85000
049bd2dc  ldr x0,[x0, #0xfe0]
049bd2e0  bl 0x029f5a50
049bd2e4  adrp x0,0x5e85000
049bd2e8  ldr x0,[x0, #0xec8]
049bd2ec  bl 0x029f5a50
049bd2f0  adrp x0,0x5e85000
049bd2f4  ldr x0,[x0, #0xf40]
049bd2f8  bl 0x029f5a50
049bd2fc  adrp x0,0x5e85000
049bd300  ldr x0,[x0, #0xfb0]
049bd304  bl 0x029f5a50
049bd308  adrp x0,0x5e85000
049bd30c  ldr x0,[x0, #0xfb8]
049bd310  bl 0x029f5a50
049bd314  adrp x0,0x5e85000
049bd318  ldr x0,[x0, #0xfe8]
049bd31c  bl 0x029f5a50
049bd320  adrp x0,0x5e85000
049bd324  ldr x0,[x0, #0xff0]
049bd328  bl 0x029f5a50
049bd32c  adrp x0,0x5e85000
049bd330  ldr x0,[x0, #0xff8]
049bd334  bl 0x029f5a50
049bd338  adrp x0,0x5e86000
049bd33c  ldr x0,[x0]
049bd340  bl 0x029f5a50
049bd344  adrp x0,0x5e86000
049bd348  ldr x0,[x0, #0x8]
049bd34c  bl 0x029f5a50
049bd350  adrp x0,0x5e86000
049bd354  ldr x0,[x0, #0x10]
049bd358  bl 0x029f5a50
049bd35c  adrp x0,0x5e85000
049bd360  ldr x0,[x0, #0xee0]
049bd364  bl 0x029f5a50
049bd368  adrp x0,0x5e85000
049bd36c  ldr x0,[x0, #0xee8]
049bd370  bl 0x029f5a50
049bd374  adrp x0,0x5e85000
049bd378  ldr x0,[x0, #0xef0]
049bd37c  bl 0x029f5a50
049bd380  adrp x0,0x5e86000
049bd384  ldr x0,[x0, #0x18]
049bd388  bl 0x029f5a50
049bd38c  adrp x0,0x5e86000
049bd390  ldr x0,[x0, #0x20]
049bd394  bl 0x029f5a50
049bd398  adrp x0,0x5e86000
049bd39c  ldr x0,[x0, #0x28]
049bd3a0  bl 0x029f5a50
049bd3a4  adrp x0,0x5e86000
049bd3a8  ldr x0,[x0, #0x30]
049bd3ac  bl 0x029f5a50
049bd3b0  adrp x0,0x5e86000
049bd3b4  ldr x0,[x0, #0x38]
049bd3b8  bl 0x029f5a50
049bd3bc  adrp x0,0x5e86000
049bd3c0  ldr x0,[x0, #0x40]
049bd3c4  bl 0x029f5a50
049bd3c8  adrp x0,0x5e86000
049bd3cc  ldr x0,[x0, #0x48]
049bd3d0  bl 0x029f5a50
049bd3d4  adrp x0,0x5e86000
049bd3d8  ldr x0,[x0, #0x50]
049bd3dc  bl 0x029f5a50
049bd3e0  adrp x0,0x5e86000
049bd3e4  ldr x0,[x0, #0x58]
049bd3e8  bl 0x029f5a50
049bd3ec  adrp x0,0x5e85000
049bd3f0  ldr x0,[x0, #0xf48]
049bd3f4  bl 0x029f5a50
049bd3f8  adrp x0,0x5e86000
049bd3fc  ldr x0,[x0, #0x60]
049bd400  bl 0x029f5a50
049bd404  adrp x0,0x5e86000
049bd408  ldr x0,[x0, #0x68]
049bd40c  bl 0x029f5a50
049bd410  adrp x0,0x5e86000
049bd414  ldr x0,[x0, #0x70]
049bd418  bl 0x029f5a50
049bd41c  adrp x0,0x5e59000
049bd420  ldr x0,[x0, #0x1c0]
049bd424  bl 0x029f5a50
049bd428  adrp x0,0x5e5b000
049bd42c  ldr x0,[x0, #0xfa8]
049bd430  bl 0x029f5a50
049bd434  adrp x0,0x5e86000
049bd438  ldr x0,[x0, #0x78]
049bd43c  bl 0x029f5a50
049bd440  adrp x0,0x5e86000
049bd444  ldr x0,[x0, #0x80]
049bd448  bl 0x029f5a50
049bd44c  adrp x0,0x5e86000
049bd450  ldr x0,[x0, #0x88]
049bd454  bl 0x029f5a50
049bd458  mov w8,#0x1
049bd45c  strb w8,[x20, #0x83f]
049bd460  add x0,sp,#0x6c8
049bd464  mov w1,wzr
049bd468  mov w2,#0xe8
049bd46c  bl 0x05afb2a0
049bd470  add x0,sp,#0x6, LSL #12
049bd474  mov w1,wzr
049bd478  mov w2,#0x114
049bd47c  add x0,x0,#0x98c
049bd480  str xzr,[sp, #0x6c0]
049bd484  str xzr,[sp, #0x6b8]
049bd488  str xzr,[sp, #0x6b0]
049bd48c  str xzr,[sp, #0x6a8]
049bd490  str xzr,[sp, #0x6a0]
049bd494  str xzr,[sp, #0x698]
049bd498  str xzr,[sp, #0x690]
049bd49c  str xzr,[sp, #0x688]
049bd4a0  bl 0x05afb2a0
049bd4a4  add x0,sp,#0x6, LSL #12
049bd4a8  mov w1,wzr
049bd4ac  mov w2,#0x338
049bd4b0  add x0,x0,#0x650
049bd4b4  bl 0x05afb2a0
049bd4b8  add x0,sp,#0x6, LSL #12
049bd4bc  mov w1,wzr
049bd4c0  mov w2,#0x338
049bd4c4  add x0,x0,#0x318
049bd4c8  bl 0x05afb2a0
049bd4cc  add x0,sp,#0x5, LSL #12
049bd4d0  mov w1,wzr
049bd4d4  mov w2,#0x428
049bd4d8  add x0,x0,#0xef0
049bd4dc  bl 0x05afb2a0
049bd4e0  add x0,sp,#0x5, LSL #12
049bd4e4  mov w1,wzr
049bd4e8  mov w2,#0x428
049bd4ec  add x0,x0,#0xac8
049bd4f0  bl 0x05afb2a0
049bd4f4  add x0,sp,#0x5, LSL #12
049bd4f8  mov w1,wzr
049bd4fc  mov w2,#0x338
049bd500  add x0,x0,#0x790
049bd504  bl 0x05afb2a0
049bd508  add x0,sp,#0x5, LSL #12
049bd50c  mov w1,wzr
049bd510  mov w2,#0x338
049bd514  add x0,x0,#0x458
049bd518  bl 0x05afb2a0
049bd51c  add x0,sp,#0x5, LSL #12
049bd520  mov w1,wzr
049bd524  mov w2,#0x114
049bd528  add x0,x0,#0x32c
049bd52c  str xzr,[sp, #0x5448]
049bd530  str xzr,[sp, #0x5440]
049bd534  stur xzr,[x27, #0xe]
049bd538  bl 0x05afb2a0
049bd53c  add x0,sp,#0x5, LSL #12
049bd540  mov w1,wzr
049bd544  mov w2,#0x110
049bd548  add x0,x0,#0x218
049bd54c  bl 0x05afb2a0
049bd550  add x0,sp,#0x4, LSL #12
049bd554  mov w1,wzr
049bd558  mov w2,#0x338
049bd55c  add x0,x0,#0xee0
049bd560  strh wzr,[sp, #0x684]
049bd564  strb wzr,[sp, #0x686]
049bd568  strh wzr,[sp, #0x680]
049bd56c  strb wzr,[sp, #0x682]
049bd570  bl 0x05afb2a0
049bd574  add x0,sp,#0x4, LSL #12
049bd578  mov w1,wzr
049bd57c  mov w2,#0x117
049bd580  add x0,x0,#0xdc8
049bd584  bl 0x05afb2a0
049bd588  add x0,sp,#0x4, LSL #12
049bd58c  mov w1,wzr
049bd590  mov w2,#0x117
049bd594  add x0,x0,#0xcb0
049bd598  bl 0x05afb2a0
049bd59c  add x0,sp,#0x4, LSL #12
049bd5a0  mov w1,wzr
049bd5a4  mov w2,#0x113
049bd5a8  add x0,x0,#0xb9c
049bd5ac  strh wzr,[sp, #0x67c]
049bd5b0  strb wzr,[sp, #0x67e]
049bd5b4  strh wzr,[sp, #0x678]
049bd5b8  strb wzr,[sp, #0x67a]
049bd5bc  bl 0x05afb2a0
049bd5c0  add x0,sp,#0x5a8
049bd5c4  mov w1,wzr
049bd5c8  mov w2,#0xd0
049bd5cc  bl 0x05afb2a0
049bd5d0  add x0,sp,#0x4, LSL #12
049bd5d4  mov w1,wzr
049bd5d8  mov w2,#0x114
049bd5dc  add x0,x0,#0xa88
049bd5e0  str xzr,[sp, #0x598]
049bd5e4  str xzr,[sp, #0x590]
049bd5e8  str xzr,[sp, #0x588]
049bd5ec  bl 0x05afb2a0
049bd5f0  add x0,sp,#0x4, LSL #12
049bd5f4  mov w1,wzr
049bd5f8  mov w2,#0x42f
049bd5fc  add x0,x0,#0x658
049bd600  bl 0x05afb2a0
049bd604  ldrb w8,[x26, #0xee]
049bd608  cbz w8,0x049be068
049bd60c  mov x0,x19
049bd610  mov x1,xzr
049bd614  bl 0x058dc2f0
049bd618  cbz x0,0x049be6e4
049bd61c  mov x1,xzr
049bd620  bl 0x05a9fa04
049bd624  tbnz w0,#0x0,0x049be068
049bd628  ldr s0,[x19, #0x3120]
049bd62c  fcmp s0,#0.0
049bd630  b.le 0x049bd858
049bd634  ldr s2,[x19, #0x170]
049bd638  ldr s1,[x19, #0x14c]
049bd63c  fadd s3,s2,s1
049bd640  ldr s2,[x19, #0x31f0]
049bd644  fcmp s2,s3
049bd648  b.pl 0x049bd658
049bd64c  fcmp s2,s1
049bd650  b.gt 0x049bd668
049bd654  b 0x049bd858
049bd658  fcmp s2,s1
049bd65c  b.le 0x049bd858
049bd660  ldrb w8,[x19, #0x16c]
049bd664  cbz w8,0x049bd858
049bd668  fmov s1,0x3f800000
049bd66c  fdiv s9,s1,s0
049bd670  ldr s0,[x19, #0x31fc]
049bd674  fadd s0,s0,s8
049bd678  str s0,[x19, #0x31fc]
049bd67c  fcmp s0,s9
049bd680  b.lt 0x049bd858
049bd684  adrp x20,0x5e85000
049bd688  adrp x22,0x5e85000
049bd68c  adrp x23,0x5e86000
049bd690  adrp x24,0x5e86000
049bd694  adrp x25,0x5e86000
049bd698  ldr x20,[x20, #0xfd8]
049bd69c  ldr x22,[x22, #0xf48]
049bd6a0  ldr x23,[x23, #0x20]
049bd6a4  ldr x24,[x24, #0x38]
049bd6a8  ldr x25,[x25, #0x70]
049bd6ac  fsub s0,s0,s9
049bd6b0  ldr w8,[x19, #0x3284]
049bd6b4  ldrb w9,[x26, #0xec]
049bd6b8  add w1,w8,#0x1
049bd6bc  str w1,[x19, #0x3284]
049bd6c0  str s0,[x19, #0x31fc]
049bd6c4  cbz w9,0x049bd788
049bd6c8  ldrb w8,[x26, #0xed]
049bd6cc  cbz w8,0x049bd788
049bd6d0  mov x0,x19
049bd6d4  bl 0x049bc258
049bd6d8  ldr x9,[x22]
049bd6dc  mov x8,x0
049bd6e0  ldr x21,[x8]
049bd6e4  ldr x0,[x9, #0x20]
049bd6e8  add x9,x0,#0x135
049bd6ec  ldrh w9,[x9]
049bd6f0  tbnz w9,#0x0,0x049bd6f8
049bd6f4  bl 0x02a2e9f8
049bd6f8  ldr w21,[x21, #0x8]
049bd6fc  mov x0,x19
049bd700  bl 0x049bc258
049bd704  cmp w21,#0x1
049bd708  mov x21,x0
049bd70c  b.lt 0x049bd804
049bd710  ldr x3,[x24]
049bd714  mov x0,x21
049bd718  mov w1,wzr
049bd71c  mov w2,#0x1
049bd720  bl 0x035b3afc
049bd724  mov x0,x19
049bd728  bl 0x049bc258
049bd72c  movi d0,#0x0
049bd730  movi d1,#0x0
049bd734  ldr w1,[x19, #0x3284]
049bd738  add x8,sp,#0x6, LSL #12
049bd73c  mov x21,x0
049bd740  mov x0,x19
049bd744  add x8,x8,#0xaa0
049bd748  mov w2,#0x1
049bd74c  mov x3,xzr
049bd750  bl 0x049c142c
049bd754  ldr x8,[x25]
049bd758  ldr x21,[x21]
049bd75c  ldr x0,[x8, #0x20]
049bd760  add x8,x0,#0x135
049bd764  ldrh w8,[x8]
049bd768  tbnz w8,#0x0,0x049bd770
049bd76c  bl 0x02a2e9f8
049bd770  ldr x0,[x21]
049bd774  add x1,sp,#0x6, LSL #12
049bd778  mov w2,#0xe8
049bd77c  add x1,x1,#0xaa0
049bd780  bl 0x05afb2b0
049bd784  b 0x049bd84c
049bd788  movi d1,#0x0
049bd78c  movi d2,#0x0
049bd790  ldr x21,[x19, #0x748]
049bd794  mov x0,x19
049bd798  mov w2,#0x1
049bd79c  mov x3,xzr
049bd7a0  bl 0x049c21ec
049bd7a4  cbz x21,0x049be6e4
049bd7a8  ldr w10,[x21, #0x1c]
049bd7ac  ldr x8,[x21, #0x10]
049bd7b0  ldr x9,[x20]
049bd7b4  add w10,w10,#0x1
049bd7b8  str w10,[x21, #0x1c]
049bd7bc  cbz x8,0x049be6e4
049bd7c0  ldrsw x10,[x21, #0x18]
049bd7c4  ldr w11,[x8, #0x18]
049bd7c8  mov x1,x0
049bd7cc  cmp w10,w11
049bd7d0  b.cs 0x049bd7ec
049bd7d4  add x0,x8,x10, LSL #0x3
049bd7d8  add w9,w10,#0x1
049bd7dc  str w9,[x21, #0x18]
049bd7e0  str x1,[x0, #0x20]!
049bd7e4  bl 0x029f59f4
049bd7e8  b 0x049bd84c
049bd7ec  ldr x8,[x9, #0x20]
049bd7f0  mov x0,x21
049bd7f4  ldr x8,[x8, #0xc0]
049bd7f8  ldr x2,[x8, #0x70]
049bd7fc  bl 0x0452cba8
049bd800  b 0x049bd84c
049bd804  movi d0,#0x0
049bd808  movi d1,#0x0
049bd80c  ldr w1,[x19, #0x3284]
049bd810  add x8,sp,#0x6, LSL #12
049bd814  mov x0,x19
049bd818  mov w2,#0x1
049bd81c  add x8,x8,#0xaa0
049bd820  mov x3,xzr
049bd824  bl 0x049c142c
049bd828  add x1,sp,#0x6, LSL #12
049bd82c  add x0,sp,#0x6c8
049bd830  mov w2,#0xe8
049bd834  add x1,x1,#0xaa0
049bd838  bl 0x05afb2b0
049bd83c  ldr x2,[x23]
049bd840  add x1,sp,#0x6c8
049bd844  mov x0,x21
049bd848  bl 0x035b3914
049bd84c  ldr s0,[x19, #0x31fc]
049bd850  fcmp s0,s9
049bd854  b.ge 0x049bd6ac
049bd858  ldr s0,[x19, #0x3124]
049bd85c  fcmp s0,#0.0
049bd860  b.le 0x049bda8c
049bd864  ldr s1,[x19, #0x170]
049bd868  fcmp s1,#0.0
049bd86c  b.le 0x049bda8c
049bd870  ldr s2,[x19, #0x14c]
049bd874  ldr s3,[x19, #0x31f0]
049bd878  fadd s4,s1,s2
049bd87c  fcmp s3,s4
049bd880  b.pl 0x049bd890
049bd884  fcmp s3,s2
049bd888  b.ge 0x049bd8a0
049bd88c  b 0x049bda8c
049bd890  fcmp s3,s2
049bd894  b.lt 0x049bda8c
049bd898  ldrb w8,[x19, #0x16c]
049bd89c  cbz w8,0x049bda8c
049bd8a0  fdiv s9,s1,s0
049bd8a4  ldr s0,[x19, #0x3200]
049bd8a8  fadd s0,s0,s8
049bd8ac  str s0,[x19, #0x3200]
049bd8b0  fcmp s0,s9
049bd8b4  b.lt 0x049bda8c
049bd8b8  adrp x20,0x5e85000
049bd8bc  adrp x22,0x5e85000
049bd8c0  adrp x23,0x5e86000
049bd8c4  adrp x24,0x5e86000
049bd8c8  adrp x25,0x5e86000
049bd8cc  ldr x20,[x20, #0xfd8]
049bd8d0  ldr x22,[x22, #0xf48]
049bd8d4  ldr x23,[x23, #0x20]
049bd8d8  ldr x24,[x24, #0x38]
049bd8dc  ldr x25,[x25, #0x70]
049bd8e0  fsub s0,s0,s9
049bd8e4  ldr w8,[x19, #0x3288]
049bd8e8  ldrb w9,[x26, #0xec]
049bd8ec  add w1,w8,#0x1
049bd8f0  str w1,[x19, #0x3288]
049bd8f4  str s0,[x19, #0x3200]
049bd8f8  cbz w9,0x049bd9bc
049bd8fc  ldrb w8,[x26, #0xed]
049bd900  cbz w8,0x049bd9bc
049bd904  mov x0,x19
049bd908  bl 0x049bc258
049bd90c  ldr x9,[x22]
049bd910  mov x8,x0
049bd914  ldr x21,[x8]
049bd918  ldr x0,[x9, #0x20]
049bd91c  add x9,x0,#0x135
049bd920  ldrh w9,[x9]
049bd924  tbnz w9,#0x0,0x049bd92c
049bd928  bl 0x02a2e9f8
049bd92c  ldr w21,[x21, #0x8]
049bd930  mov x0,x19
049bd934  bl 0x049bc258
049bd938  cmp w21,#0x1
049bd93c  mov x21,x0
049bd940  b.lt 0x049bda38
049bd944  ldr x3,[x24]
049bd948  mov x0,x21
049bd94c  mov w1,wzr
049bd950  mov w2,#0x1
049bd954  bl 0x035b3afc
049bd958  mov x0,x19
049bd95c  bl 0x049bc258
049bd960  movi d0,#0x0
049bd964  movi d1,#0x0
049bd968  ldr w1,[x19, #0x3288]
049bd96c  add x8,sp,#0x6, LSL #12
049bd970  mov x21,x0
049bd974  mov x0,x19
049bd978  add x8,x8,#0xaa0
049bd97c  mov w2,#0x2
049bd980  mov x3,xzr
049bd984  bl 0x049c142c
049bd988  ldr x8,[x25]
049bd98c  ldr x21,[x21]
049bd990  ldr x0,[x8, #0x20]
049bd994  add x8,x0,#0x135
049bd998  ldrh w8,[x8]
049bd99c  tbnz w8,#0x0,0x049bd9a4
049bd9a0  bl 0x02a2e9f8
049bd9a4  ldr x0,[x21]
049bd9a8  add x1,sp,#0x6, LSL #12
049bd9ac  mov w2,#0xe8
049bd9b0  add x1,x1,#0xaa0
049bd9b4  bl 0x05afb2b0
049bd9b8  b 0x049bda80
049bd9bc  movi d1,#0x0
049bd9c0  movi d2,#0x0
049bd9c4  ldr x21,[x19, #0x748]
049bd9c8  mov x0,x19
049bd9cc  mov w2,#0x2
049bd9d0  mov x3,xzr
049bd9d4  bl 0x049c21ec
049bd9d8  cbz x21,0x049be6e4
049bd9dc  ldr w10,[x21, #0x1c]
049bd9e0  ldr x8,[x21, #0x10]
049bd9e4  ldr x9,[x20]
049bd9e8  add w10,w10,#0x1
049bd9ec  str w10,[x21, #0x1c]
049bd9f0  cbz x8,0x049be6e4
049bd9f4  ldrsw x10,[x21, #0x18]
049bd9f8  ldr w11,[x8, #0x18]
049bd9fc  mov x1,x0
049bda00  cmp w10,w11
049bda04  b.cs 0x049bda20
049bda08  add x0,x8,x10, LSL #0x3
049bda0c  add w9,w10,#0x1
049bda10  str w9,[x21, #0x18]
049bda14  str x1,[x0, #0x20]!
049bda18  bl 0x029f59f4
049bda1c  b 0x049bda80
049bda20  ldr x8,[x9, #0x20]
049bda24  mov x0,x21
049bda28  ldr x8,[x8, #0xc0]
049bda2c  ldr x2,[x8, #0x70]
049bda30  bl 0x0452cba8
049bda34  b 0x049bda80
049bda38  movi d0,#0x0
049bda3c  movi d1,#0x0
049bda40  ldr w1,[x19, #0x3288]
049bda44  add x8,sp,#0x6, LSL #12
049bda48  mov x0,x19
049bda4c  mov w2,#0x2
049bda50  add x8,x8,#0xaa0
049bda54  mov x3,xzr
049bda58  bl 0x049c142c
049bda5c  add x1,sp,#0x6, LSL #12
049bda60  add x0,sp,#0x6c8
049bda64  mov w2,#0xe8
049bda68  add x1,x1,#0xaa0
049bda6c  bl 0x05afb2b0
049bda70  ldr x2,[x23]
049bda74  add x1,sp,#0x6c8
049bda78  mov x0,x21
049bda7c  bl 0x035b3914
049bda80  ldr s0,[x19, #0x3200]
049bda84  fcmp s0,s9
049bda88  b.ge 0x049bd8e0
049bda8c  ldr s0,[x19, #0x3128]
049bda90  fcmp s0,#0.0
049bda94  b.le 0x049bdcec
049bda98  adrp x20,0x625b000
049bda9c  ldrb w8,[x20, #0xae8]
049bdaa0  cbnz w8,0x049bdab8
049bdaa4  adrp x0,0x5e59000
049bdaa8  ldr x0,[x0]
049bdaac  bl 0x029f5a50
049bdab0  mov w8,#0x1
049bdab4  strb w8,[x20, #0xae8]
049bdab8  adrp x8,0x5e59000
049bdabc  ldr x8,[x8]
049bdac0  ldr s9,[x19, #0x326c]
049bdac4  ldr d10,[x19, #0x3270]
049bdac8  ldr x0,[x8]
049bdacc  ldr w8,[x0, #0xe4]
049bdad0  cbnz w8,0x049bdad8
049bdad4  bl 0x029f5bd0
049bdad8  fmul s0,s9,s9
049bdadc  fmul v1.2S,v10.2S,v10.2S
049bdae0  ldr s2,[x19, #0x3128]
049bdae4  fadd s0,s0,s1
049bdae8  dup s1,v1.S[0x1]
049bdaec  fadd s0,s0,s1
049bdaf0  fmov s1,0x3f800000
049bdaf4  fdiv s1,s1,s2
049bdaf8  fsqrt s0,s0
049bdafc  fcmp s0,s1
049bdb00  b.le 0x049bdcec
049bdb04  ldr w8,[x19, #0x328c]
049bdb08  ldrb w9,[x26, #0xec]
049bdb0c  add w1,w8,#0x1
049bdb10  str w1,[x19, #0x328c]
049bdb14  cbz w9,0x049bdbf0
049bdb18  ldrb w8,[x26, #0xed]
049bdb1c  cbz w8,0x049bdbf0
049bdb20  mov x0,x19
049bdb24  bl 0x049bc258
049bdb28  adrp x9,0x5e85000
049bdb2c  mov x8,x0
049bdb30  ldr x9,[x9, #0xf48]
049bdb34  ldr x20,[x8]
049bdb38  ldr x9,[x9]
049bdb3c  ldr x0,[x9, #0x20]
049bdb40  add x9,x0,#0x135
049bdb44  ldrh w9,[x9]
049bdb48  tbnz w9,#0x0,0x049bdb50
049bdb4c  bl 0x02a2e9f8
049bdb50  ldr w20,[x20, #0x8]
049bdb54  mov x0,x19
049bdb58  bl 0x049bc258
049bdb5c  cmp w20,#0x1
049bdb60  mov x21,x0
049bdb64  b.lt 0x049bdc78
049bdb68  adrp x8,0x5e86000
049bdb6c  mov x0,x21
049bdb70  mov w1,wzr
049bdb74  ldr x8,[x8, #0x38]
049bdb78  mov w2,#0x1
049bdb7c  ldr x3,[x8]
049bdb80  bl 0x035b3afc
049bdb84  mov x0,x19
049bdb88  bl 0x049bc258
049bdb8c  movi d0,#0x0
049bdb90  movi d1,#0x0
049bdb94  ldr w1,[x19, #0x328c]
049bdb98  add x8,sp,#0x6, LSL #12
049bdb9c  mov x21,x0
049bdba0  mov x0,x19
049bdba4  add x8,x8,#0xaa0
049bdba8  mov w2,#0x3
049bdbac  mov x3,xzr
049bdbb0  bl 0x049c142c
049bdbb4  adrp x8,0x5e86000
049bdbb8  ldr x8,[x8, #0x70]
049bdbbc  ldr x20,[x21]
049bdbc0  ldr x8,[x8]
049bdbc4  ldr x0,[x8, #0x20]
049bdbc8  add x8,x0,#0x135
049bdbcc  ldrh w8,[x8]
049bdbd0  tbnz w8,#0x0,0x049bdbd8
049bdbd4  bl 0x02a2e9f8
049bdbd8  ldr x0,[x20]
049bdbdc  add x1,sp,#0x6, LSL #12
049bdbe0  mov w2,#0xe8
049bdbe4  add x1,x1,#0xaa0
049bdbe8  bl 0x05afb2b0
049bdbec  b 0x049bdcc8
049bdbf0  movi d0,#0x0
049bdbf4  movi d1,#0x0
049bdbf8  ldr x21,[x19, #0x748]
049bdbfc  movi d2,#0x0
049bdc00  mov x0,x19
049bdc04  mov w2,#0x3
049bdc08  mov x3,xzr
049bdc0c  bl 0x049c21ec
049bdc10  cbz x21,0x049be6e4
049bdc14  adrp x9,0x5e85000
049bdc18  ldr x9,[x9, #0xfd8]
049bdc1c  ldr w10,[x21, #0x1c]
049bdc20  ldr x8,[x21, #0x10]
049bdc24  ldr x9,[x9]
049bdc28  add w10,w10,#0x1
049bdc2c  str w10,[x21, #0x1c]
049bdc30  cbz x8,0x049be6e4
049bdc34  ldrsw x10,[x21, #0x18]
049bdc38  ldr w11,[x8, #0x18]
049bdc3c  mov x1,x0
049bdc40  cmp w10,w11
049bdc44  b.cs 0x049bdc60
049bdc48  add x0,x8,x10, LSL #0x3
049bdc4c  add w9,w10,#0x1
049bdc50  str w9,[x21, #0x18]
049bdc54  str x1,[x0, #0x20]!
049bdc58  bl 0x029f59f4
049bdc5c  b 0x049bdcc8
049bdc60  ldr x8,[x9, #0x20]
049bdc64  mov x0,x21
049bdc68  ldr x8,[x8, #0xc0]
049bdc6c  ldr x2,[x8, #0x70]
049bdc70  bl 0x0452cba8
049bdc74  b 0x049bdcc8
049bdc78  movi d0,#0x0
049bdc7c  movi d1,#0x0
049bdc80  ldr w1,[x19, #0x328c]
049bdc84  add x8,sp,#0x6, LSL #12
049bdc88  mov x0,x19
049bdc8c  mov w2,#0x3
049bdc90  add x8,x8,#0xaa0
049bdc94  mov x3,xzr
049bdc98  bl 0x049c142c
049bdc9c  add x1,sp,#0x6, LSL #12
049bdca0  add x0,sp,#0x6c8
049bdca4  mov w2,#0xe8
049bdca8  add x1,x1,#0xaa0
049bdcac  bl 0x05afb2b0
049bdcb0  adrp x8,0x5e86000
049bdcb4  add x1,sp,#0x6c8
049bdcb8  mov x0,x21
049bdcbc  ldr x8,[x8, #0x20]
049bdcc0  ldr x2,[x8]
049bdcc4  bl 0x035b3914
049bdcc8  mov x0,x19
049bdccc  mov x1,xzr
049bdcd0  bl 0x057dc0f8
049bdcd4  cbz x0,0x049be6e4
049bdcd8  mov x1,xzr
049bdcdc  bl 0x057eed98
049bdce0  str s0,[x19, #0x3260]
049bdce4  str s1,[x19, #0x3264]
049bdce8  str s2,[x19, #0x3268]
049bdcec  ldr x0,[x19, #0x3130]
049bdcf0  cbz x0,0x049bdfc0
049bdcf4  adrp x24,0x5e85000
049bdcf8  adrp x25,0x5e85000
049bdcfc  adrp x27,0x5e85000
049bdd00  adrp x28,0x5e86000
049bdd04  adrp x29,0x5e86000
049bdd08  adrp x20,0x5e86000
049bdd0c  ldr x24,[x24, #0xfb8]
049bdd10  ldr x25,[x25, #0xfd8]
049bdd14  ldr x27,[x27, #0xf48]
049bdd18  ldr x28,[x28, #0x20]
049bdd1c  ldr x29,[x29, #0x38]
049bdd20  ldr x20,[x20, #0x70]
049bdd24  mov w21,wzr
049bdd28  ldr w8,[x0, #0x18]
049bdd2c  cmp w21,w8
049bdd30  b.ge 0x049bdfb8
049bdd34  ldr x2,[x24]
049bdd38  ldr s9,[x19, #0x3204]
049bdd3c  mov w1,w21
049bdd40  bl 0x0452c8d8
049bdd44  cbz x0,0x049be6e4
049bdd48  ldr s0,[x0, #0x10]
049bdd4c  ldr s1,[x19, #0x14c]
049bdd50  fadd s0,s0,s1
049bdd54  fcmp s9,s0
049bdd58  b.lt 0x049bdfa8
049bdd5c  ldr x0,[x19, #0x3130]
049bdd60  cbz x0,0x049be6e4
049bdd64  ldr x2,[x24]
049bdd68  mov w1,w21
049bdd6c  bl 0x0452c8d8
049bdd70  cbz x0,0x049be6e4
049bdd74  ldrb w8,[x0, #0x18]
049bdd78  cbnz w8,0x049bdfa8
049bdd7c  ldr x0,[x19, #0x3130]
049bdd80  cbz x0,0x049be6e4
049bdd84  mov w22,wzr
049bdd88  ldr x2,[x24]
049bdd8c  mov w1,w21
049bdd90  bl 0x0452c8d8
049bdd94  cbz x0,0x049be6e4
049bdd98  ldr w8,[x0, #0x14]
049bdd9c  cmp w22,w8
049bdda0  b.ge 0x049bdf88
049bdda4  ldrb w8,[x26, #0xec]
049bdda8  cbz w8,0x049bde84
049bddac  ldrb w8,[x26, #0xed]
049bddb0  cbz w8,0x049bde84
049bddb4  mov x0,x19
049bddb8  bl 0x049bc258
049bddbc  ldr x9,[x27]
049bddc0  mov x8,x0
049bddc4  ldr x23,[x8]
049bddc8  ldr x0,[x9, #0x20]
049bddcc  add x9,x0,#0x135
049bddd0  ldrh w9,[x9]
049bddd4  tbnz w9,#0x0,0x049bdddc
049bddd8  bl 0x02a2e9f8
049bdddc  ldr w23,[x23, #0x8]
049bdde0  mov x0,x19
049bdde4  bl 0x049bc258
049bdde8  cmp w23,#0x1
049bddec  mov x23,x0
049bddf0  b.lt 0x049bdf1c
049bddf4  ldr x3,[x29]
049bddf8  mov x0,x23
049bddfc  mov w1,wzr
049bde00  mov w2,#0x1
049bde04  bl 0x035b3afc
049bde08  mov x0,x19
049bde0c  bl 0x049bc258
049bde10  ldr x8,[x19, #0x3130]
049bde14  cbz x8,0x049be6e4
049bde18  ldr x2,[x24]
049bde1c  mov x23,x0
049bde20  mov x0,x8
049bde24  mov w1,w21
049bde28  bl 0x0452c8d8
049bde2c  movi d0,#0x0
049bde30  movi d1,#0x0
049bde34  add x8,sp,#0x6, LSL #12
049bde38  mov x3,x0
049bde3c  add x8,x8,#0xaa0
049bde40  mov x0,x19
049bde44  mov w1,w22
049bde48  mov w2,wzr
049bde4c  bl 0x049c142c
049bde50  ldr x8,[x20]
049bde54  ldr x23,[x23]
049bde58  ldr x0,[x8, #0x20]
049bde5c  add x8,x0,#0x135
049bde60  ldrh w8,[x8]
049bde64  tbnz w8,#0x0,0x049bde6c
049bde68  bl 0x02a2e9f8
049bde6c  ldr x0,[x23]
049bde70  add x1,sp,#0x6, LSL #12
049bde74  mov w2,#0xe8
049bde78  add x1,x1,#0xaa0
049bde7c  bl 0x05afb2b0
049bde80  b 0x049bdf78
049bde84  ldr x0,[x19, #0x3130]
049bde88  cbz x0,0x049be6e4
049bde8c  ldr x2,[x24]
049bde90  ldr x23,[x19, #0x748]
049bde94  mov w1,w21
049bde98  bl 0x0452c8d8
049bde9c  movi d0,#0x0
049bdea0  movi d1,#0x0
049bdea4  mov x3,x0
049bdea8  movi d2,#0x0
049bdeac  mov x0,x19
049bdeb0  mov w1,w22
049bdeb4  mov w2,wzr
049bdeb8  bl 0x049c21ec
049bdebc  cbz x23,0x049be6e4
049bdec0  ldr w10,[x23, #0x1c]
049bdec4  ldr x8,[x23, #0x10]
049bdec8  ldr x9,[x25]
049bdecc  add w10,w10,#0x1
049bded0  str w10,[x23, #0x1c]
049bded4  cbz x8,0x049be6e4
049bded8  ldrsw x10,[x23, #0x18]
049bdedc  ldr w11,[x8, #0x18]
049bdee0  mov x1,x0
049bdee4  cmp w10,w11
049bdee8  b.cs 0x049bdf04
049bdeec  add x0,x8,x10, LSL #0x3
049bdef0  add w9,w10,#0x1
049bdef4  str w9,[x23, #0x18]
049bdef8  str x1,[x0, #0x20]!
049bdefc  bl 0x029f59f4
049bdf00  b 0x049bdf78
049bdf04  ldr x8,[x9, #0x20]
049bdf08  mov x0,x23
049bdf0c  ldr x8,[x8, #0xc0]
049bdf10  ldr x2,[x8, #0x70]
049bdf14  bl 0x0452cba8
049bdf18  b 0x049bdf78
049bdf1c  ldr x0,[x19, #0x3130]
049bdf20  cbz x0,0x049be6e4
049bdf24  ldr x2,[x24]
049bdf28  mov w1,w21
049bdf2c  bl 0x0452c8d8
049bdf30  movi d0,#0x0
049bdf34  movi d1,#0x0
049bdf38  add x8,sp,#0x6, LSL #12
049bdf3c  mov x3,x0
049bdf40  add x8,x8,#0xaa0
049bdf44  mov x0,x19
049bdf48  mov w1,w22
049bdf4c  mov w2,wzr
049bdf50  bl 0x049c142c
049bdf54  add x1,sp,#0x6, LSL #12
049bdf58  add x0,sp,#0x6c8
049bdf5c  mov w2,#0xe8
049bdf60  add x1,x1,#0xaa0
049bdf64  bl 0x05afb2b0
049bdf68  ldr x2,[x28]
049bdf6c  add x1,sp,#0x6c8
049bdf70  mov x0,x23
049bdf74  bl 0x035b3914
049bdf78  ldr x0,[x19, #0x3130]
049bdf7c  add w22,w22,#0x1
049bdf80  cbnz x0,0x049bdd88
049bdf84  b 0x049be6e4
049bdf88  ldr x0,[x19, #0x3130]
049bdf8c  cbz x0,0x049be6e4
049bdf90  ldr x2,[x24]
049bdf94  mov w1,w21
049bdf98  bl 0x0452c8d8
049bdf9c  cbz x0,0x049be6e4
049bdfa0  mov w8,#0x1
049bdfa4  strb w8,[x0, #0x18]
049bdfa8  ldr x0,[x19, #0x3130]
049bdfac  add w21,w21,#0x1
049bdfb0  cbnz x0,0x049bdd28
049bdfb4  b 0x049be6e4
049bdfb8  add x27,sp,#0x5, LSL #12
049bdfbc  add x27,x27,#0x440
049bdfc0  ldrb w8,[x19, #0x16c]
049bdfc4  cbz w8,0x049bdfd8
049bdfc8  ldr s0,[x19, #0x3204]
049bdfcc  ldr s1,[x19, #0x170]
049bdfd0  fcmp s0,s1
049bdfd4  b.ge 0x049be020
049bdfd8  ldr s0,[x19, #0x170]
049bdfdc  ldr s1,[x19, #0x14c]
049bdfe0  ldrb w8,[x19, #0x16c]
049bdfe4  fadd s0,s0,s1
049bdfe8  ldr s1,[x19, #0x31f0]
049bdfec  fcmp s1,s0
049bdff0  b.ge 0x049bdffc
049bdff4  cbnz w8,0x049be000
049bdff8  b 0x049be068
049bdffc  cbz w8,0x049be064
049be000  ldr s1,[x19, #0x31f8]
049be004  fcmp s1,s0
049be008  b.lt 0x049be068
049be00c  movi v0.2D,#0x0
049be010  str wzr,[x19, #0x31f8]
049be014  str wzr,[x19, #0x3284]
049be018  str d0,[x19, #0x3288]
049be01c  b 0x049be068
049be020  str wzr,[x19, #0x3204]
049be024  cbz x0,0x049be6e4
049be028  adrp x20,0x5e85000
049be02c  mov w21,wzr
049be030  ldr x20,[x20, #0xfb8]
049be034  ldr w8,[x0, #0x18]
049be038  cmp w21,w8
049be03c  b.ge 0x049bdfd8
049be040  ldr x2,[x20]
049be044  mov w1,w21
049be048  bl 0x0452c8d8
049be04c  cbz x0,0x049be6e4
049be050  strb wzr,[x0, #0x18]
049be054  add w21,w21,#0x1
049be058  ldr x0,[x19, #0x3130]
049be05c  cbnz x0,0x049be034
049be060  b 0x049be6e4
049be064  strb wzr,[x26, #0xee]
049be068  ldrb w8,[x26, #0xef]
049be06c  cbz w8,0x049c0518
049be070  mov x0,x19
049be074  bl 0x049bc190
049be078  cmp w0,#0x0
049be07c  b.gt 0x049be0ac
049be080  ldrb w8,[x26, #0xee]
049be084  cbnz w8,0x049be0ac
049be088  mov x0,x19
049be08c  bl 0x049bb800
049be090  tbz w0,#0x0,0x049be0ac
049be094  mov x0,x19
049be098  bl 0x049c2ce8
049be09c  tbz w0,#0x0,0x049be0ac
049be0a0  mov x0,x19
049be0a4  mov w1,#0x1
049be0a8  bl 0x049bced4
049be0ac  ldrb w8,[x26, #0xef]
049be0b0  cbz w8,0x049c0518
049be0b4  mov x0,x19
049be0b8  mov x1,xzr
049be0bc  bl 0x057dc0f8
049be0c0  cbz x0,0x049be6e4
049be0c4  mov x1,xzr
049be0c8  bl 0x057eed98
049be0cc  ldr s3,[x19, #0x3260]
049be0d0  ldr s4,[x19, #0x3264]
049be0d4  adrp x25,0x5e59000
049be0d8  ldr s5,[x19, #0x3268]
049be0dc  ldr x25,[x25, #0x1c0]
049be0e0  ldr x21,[x19, #0x138]
049be0e4  fsub s0,s0,s3
049be0e8  fsub s1,s1,s4
049be0ec  fsub s2,s2,s5
049be0f0  ldr x0,[x25]
049be0f4  str s0,[x19, #0x326c]
049be0f8  str s1,[x19, #0x3270]
049be0fc  str s2,[x19, #0x3274]
049be100  ldr w8,[x0, #0xe4]
049be104  cbnz w8,0x049be10c
049be108  bl 0x029f5bd0
049be10c  mov x0,x21
049be110  mov x1,xzr
049be114  bl 0x057e50f4
049be118  tbz w0,#0x0,0x049be284
049be11c  ldrb w8,[x19, #0x130]
049be120  cbz w8,0x049be284
049be124  ldr x8,[x19, #0x138]
049be128  cbz x8,0x049be144
049be12c  adrp x9,0x5e5b000
049be130  ldr x9,[x9, #0xfa8]
049be134  ldr x8,[x8]
049be138  ldr x9,[x9]
049be13c  cmp x8,x9
049be140  b.eq 0x049be250
049be144  mov x0,x19
049be148  bl 0x049bc7e4
049be14c  ldr x8,[x19, #0x138]
049be150  cbz x8,0x049be6e4
049be154  mov x21,x0
049be158  mov x0,x8
049be15c  mov x1,xzr
049be160  bl 0x057eed98
049be164  cbz x21,0x049be6e4
049be168  mov x0,x21
049be16c  mov x1,xzr
049be170  bl 0x05797854
049be174  ldr x0,[x19, #0xe8]
049be178  cbz x0,0x049be6e4
049be17c  mov x1,xzr
049be180  fmov s10,s0
049be184  fmov s9,s1
049be188  bl 0x057ed9fc
049be18c  ldr x0,[x19, #0xe8]
049be190  cbz x0,0x049be6e4
049be194  mov x1,xzr
049be198  fmov s11,s2
049be19c  bl 0x057ed9fc
049be1a0  ldr x0,[x19, #0xe8]
049be1a4  cbz x0,0x049be6e4
049be1a8  mov x1,xzr
049be1ac  fmov s12,s3
049be1b0  bl 0x057dc0f8
049be1b4  cbz x0,0x049be6e4
049be1b8  fmov s0,0xbf000000
049be1bc  movi d2,#0x0
049be1c0  mov x1,xzr
049be1c4  fadd s1,s10,s0
049be1c8  fadd s0,s9,s0
049be1cc  fmul s1,s1,s11
049be1d0  fmul s3,s0,s12
049be1d4  fadd s0,s1,s2
049be1d8  fadd s1,s3,s2
049be1dc  bl 0x057f0704
049be1e0  mov x0,x19
049be1e4  mov x1,xzr
049be1e8  fmov s9,s0
049be1ec  fmov s10,s1
049be1f0  fmov s11,s2
049be1f4  bl 0x057dc0f8
049be1f8  cbz x0,0x049be6e4
049be1fc  mov x1,xzr
049be200  bl 0x057eecc8
049be204  cbz x0,0x049be6e4
049be208  fmov s0,s9
049be20c  fmov s1,s10
049be210  mov x1,xzr
049be214  fmov s2,s11
049be218  bl 0x057f0800
049be21c  mov x0,x19
049be220  mov x1,xzr
049be224  fmov s9,s0
049be228  fmov s10,s1
049be22c  fmov s11,s2
049be230  bl 0x057dc0f8
049be234  cbz x0,0x049be6e4
049be238  fmov s0,s9
049be23c  fmov s1,s10
049be240  mov x1,xzr
049be244  fmov s2,s11
049be248  bl 0x057ee3b4
049be24c  b 0x049be284
049be250  mov x0,x19
049be254  mov x1,xzr
049be258  bl 0x057dc0f8
049be25c  ldr x8,[x19, #0x138]
049be260  cbz x8,0x049be6e4
049be264  mov x21,x0
049be268  mov x0,x8
049be26c  mov x1,xzr
049be270  bl 0x057eed98
049be274  cbz x21,0x049be6e4
049be278  mov x0,x21
049be27c  mov x1,xzr
049be280  bl 0x057eee74
049be284  ldr w8,[sp, #0xb8]
049be288  tbnz w8,#0x0,0x049be298
049be28c  ldr s0,[x19, #0x31f4]
049be290  fadd s0,s0,s8
049be294  str s0,[x19, #0x31f4]
049be298  ldr s0,[x19, #0x31f0]
049be29c  ldr s1,[x19, #0x31f8]
049be2a0  mov x0,x19
049be2a4  ldr s2,[x19, #0x3204]
049be2a8  fadd s0,s0,s8
049be2ac  fadd s1,s1,s8
049be2b0  fadd s2,s2,s8
049be2b4  str s0,[x19, #0x31f0]
049be2b8  str s1,[x19, #0x31f8]
049be2bc  str s2,[x19, #0x3204]
049be2c0  bl 0x049c1278
049be2c4  ldrb w8,[x26, #0xec]
049be2c8  cbz w8,0x049be68c
049be2cc  ldrb w8,[x26, #0xed]
049be2d0  cbz w8,0x049be68c
049be2d4  mov w0,#0x1
049be2d8  mov x1,xzr
049be2dc  bl 0x057b7cf8
049be2e0  mov x8,x19
049be2e4  str x1,[x19, #0x100]
049be2e8  mov w1,wzr
049be2ec  str x0,[x8, #0xf8]!
049be2f0  mov x0,x8
049be2f4  mov x2,xzr
049be2f8  bl 0x057b96f4
049be2fc  str x0,[x19, #0x108]
049be300  mov x0,x19
049be304  bl 0x049bc258
049be308  adrp x22,0x5e85000
049be30c  mov x8,x0
049be310  ldr x22,[x22, #0xf48]
049be314  ldr x20,[x8]
049be318  ldr x9,[x22]
049be31c  ldr x0,[x9, #0x20]
049be320  add x9,x0,#0x135
049be324  ldrh w9,[x9]
049be328  tbnz w9,#0x0,0x049be330
049be32c  bl 0x02a2e9f8
049be330  adrp x8,0x5e86000
049be334  mov w1,#0x3
049be338  ldr x8,[x8, #0x78]
049be33c  ldr w21,[x20, #0x8]
049be340  ldr x0,[x8]
049be344  bl 0x029f5b40
049be348  mov x20,x0
049be34c  add x0,sp,#0x6, LSL #12
049be350  mov w1,wzr
049be354  add x0,x0,#0xaa0
049be358  mov w2,wzr
049be35c  mov w3,#0x3
049be360  mov w4,wzr
049be364  mov x5,xzr
049be368  str xzr,[sp, #0x6aa8]
049be36c  str xzr,[sp, #0x6aa0]
049be370  bl 0x057fc118
049be374  cbz x20,0x049be6e4
049be378  ldr w8,[x20, #0x18]
049be37c  cbz w8,0x049c0564
049be380  ldr q0,[sp, #0x6aa0]
049be384  add x0,sp,#0x7b0
049be388  mov w1,#0x3
049be38c  mov w2,wzr
049be390  mov w3,#0x4
049be394  mov w4,#0x1
049be398  mov x5,xzr
049be39c  str q0,[x20, #0x20]
049be3a0  str xzr,[sp, #0x7b8]
049be3a4  str xzr,[sp, #0x7b0]
049be3a8  bl 0x057fc118
049be3ac  ldr w8,[x20, #0x18]
049be3b0  tst w8,#0xfffffffe
049be3b4  b.eq 0x049c0564
049be3b8  ldr q0,[sp, #0x7b0]
049be3bc  add x0,sp,#0x3, LSL #12
049be3c0  mov w1,#0x4
049be3c4  add x0,x0,#0xaa0
049be3c8  mov w2,wzr
049be3cc  mov w3,#0x2
049be3d0  mov w4,#0x2
049be3d4  mov x5,xzr
049be3d8  str q0,[x20, #0x30]
049be3dc  str xzr,[sp, #0x3aa8]
049be3e0  str xzr,[sp, #0x3aa0]
049be3e4  bl 0x057fc118
049be3e8  ldr w8,[x20, #0x18]
049be3ec  cmp w8,#0x2
049be3f0  b.ls 0x049c0564
049be3f4  ldr q0,[sp, #0x3aa0]
049be3f8  lsl w1,w21,#0x2
049be3fc  add x0,x19,#0x108
049be400  mov x2,x20
049be404  mov x3,xzr
049be408  str q0,[x20, #0x40]
049be40c  bl 0x057b943c
049be410  mov x0,x19
049be414  bl 0x049bc258
049be418  ldr x9,[x22]
049be41c  mov x8,x0
049be420  ldr x20,[x8]
049be424  ldr x0,[x9, #0x20]
049be428  add x9,x0,#0x135
049be42c  ldrh w9,[x9]
049be430  tbnz w9,#0x0,0x049be438
049be434  bl 0x02a2e9f8
049be438  ldr w8,[x20, #0x8]
049be43c  add x0,x19,#0x108
049be440  mov w2,wzr
049be444  mov x3,xzr
049be448  add w8,w8,w8, LSL #0x1
049be44c  lsl w1,w8,#0x1
049be450  bl 0x057b9444
049be454  adrp x8,0x5e86000
049be458  adrp x9,0x5e86000
049be45c  ldr x8,[x8, #0x88]
049be460  ldr x9,[x9, #0x80]
049be464  ldrb w10,[x19, #0x5f0]
049be468  ldr x8,[x8]
049be46c  ldr x9,[x9]
049be470  ldr x8,[x8, #0xb8]
049be474  ldr x9,[x9, #0xb8]
049be478  ldp s9,s10,[x8]
049be47c  ldr s11,[x8, #0x8]
049be480  ldp s15,s14,[x9]
049be484  cbz w10,0x049bf020
049be488  ldr x0,[x25]
049be48c  ldr x20,[x19, #0x5f8]
049be490  ldr w8,[x0, #0xe4]
049be494  cbnz w8,0x049be49c
049be498  bl 0x029f5bd0
049be49c  mov x0,x20
049be4a0  mov x1,xzr
049be4a4  bl 0x057e50f4
049be4a8  tbz w0,#0x0,0x049bf020
049be4ac  ldr x0,[x19, #0x5f8]
049be4b0  cbz x0,0x049be6e4
049be4b4  adrp x21,0x5e5b000
049be4b8  ldr x21,[x21, #0xfa8]
049be4bc  ldr x9,[x0]
049be4c0  ldr x8,[x21]
049be4c4  cmp x9,x8
049be4c8  b.eq 0x049bee58
049be4cc  mov x1,xzr
049be4d0  bl 0x057eed98
049be4d4  mov x0,x19
049be4d8  bl 0x049bafe0
049be4dc  mov x0,xzr
049be4e0  bl 0x052c82e4
049be4e4  mov x0,x19
049be4e8  mov x1,xzr
049be4ec  fmov s9,s0
049be4f0  fmov s13,s1
049be4f4  str wzr,[x19, #0x620]
049be4f8  bl 0x058db358
049be4fc  cbz x0,0x049be6e4
049be500  mov x1,xzr
049be504  bl 0x05aa2028
049be508  mov w8,w0
049be50c  ldr x0,[x19, #0xe8]
049be510  str s14,[sp, #0xb8]
049be514  cmp w8,#0x1
049be518  str s15,[sp, #0xac]
049be51c  b.ne 0x049beecc
049be520  cbz x0,0x049be6e4
049be524  mov x1,xzr
049be528  bl 0x057ed9fc
049be52c  ldr x20,[x19, #0xe8]
049be530  mov x0,x19
049be534  mov x1,xzr
049be538  fmov s10,s2
049be53c  bl 0x057dc0f8
049be540  cbz x0,0x049be6e4
049be544  mov x1,xzr
049be548  bl 0x057eed98
049be54c  cbz x20,0x049be6e4
049be550  mov x0,x20
049be554  mov x1,xzr
049be558  bl 0x057f0800
049be55c  ldr x0,[x19, #0xe8]
049be560  cbz x0,0x049be6e4
049be564  mov x1,xzr
049be568  fmov s12,s0
049be56c  bl 0x057ee2ec
049be570  mov x0,x19
049be574  mov x1,xzr
049be578  fmov s11,s0
049be57c  bl 0x057dc0f8
049be580  cbz x0,0x049be6e4
049be584  mov x1,xzr
049be588  bl 0x057f1034
049be58c  ldr x0,[x19, #0xe8]
049be590  cbz x0,0x049be6e4
049be594  mov x1,xzr
049be598  fmov s14,s0
049be59c  str s11,[sp, #0xa8]
049be5a0  bl 0x057ef578
049be5a4  ldr x0,[x19, #0xe8]
049be5a8  cbz x0,0x049be6e4
049be5ac  mov x1,xzr
049be5b0  fmov s15,s0
049be5b4  bl 0x057ed9fc
049be5b8  ldr x20,[x19, #0xe8]
049be5bc  mov x0,x19
049be5c0  mov x1,xzr
049be5c4  fmov s11,s3
049be5c8  bl 0x057dc0f8
049be5cc  cbz x0,0x049be6e4
049be5d0  mov x1,xzr
049be5d4  bl 0x057eed98
049be5d8  cbz x20,0x049be6e4
049be5dc  mov x0,x20
049be5e0  mov x1,xzr
049be5e4  str s15,[sp, #0x98]
049be5e8  str s14,[sp, #0xa0]
049be5ec  bl 0x057f0800
049be5f0  ldr x0,[x19, #0xe8]
049be5f4  str s1,[sp, #0x90]
049be5f8  cbz x0,0x049be6e4
049be5fc  mov x1,xzr
049be600  fmov s14,s12
049be604  bl 0x057ee2ec
049be608  mov x0,x19
049be60c  mov x1,xzr
049be610  fmov s15,s1
049be614  bl 0x057dc0f8
049be618  cbz x0,0x049be6e4
049be61c  mov x1,xzr
049be620  bl 0x057f1034
049be624  ldr x0,[x19, #0xe8]
049be628  cbz x0,0x049be6e4
049be62c  fmov s12,s1
049be630  fmov s0,0xbf000000
049be634  mov x1,xzr
049be638  fmov s1,0xbf000000
049be63c  movi d2,#0x0
049be640  movi d3,#0x0
049be644  fadd s0,s9,s0
049be648  fadd s1,s13,s1
049be64c  fmul s0,s0,s10
049be650  fmul s1,s1,s11
049be654  fadd s11,s0,s2
049be658  fadd s13,s1,s3
049be65c  bl 0x057ef578
049be660  fsub s0,s11,s14
049be664  ldr s2,[sp, #0xa8]
049be668  ldr s3,[sp, #0x98]
049be66c  fadd s0,s0,s2
049be670  ldr s2,[sp, #0xa0]
049be674  fdiv s0,s0,s2
049be678  ldr s2,[sp, #0x90]
049be67c  fsub s2,s13,s2
049be680  fadd s2,s2,s15
049be684  fdiv s2,s2,s12
049be688  b 0x049beff8
049be68c  ldrb w8,[x26]
049be690  cbz w8,0x049be720
049be694  ldr x0,[x19, #0x748]
049be698  cbz x0,0x049be6e4
049be69c  adrp x20,0x5e85000
049be6a0  mov w21,wzr
049be6a4  mov w22,wzr
049be6a8  ldr x20,[x20, #0xfe8]
049be6ac  ldr w8,[x0, #0x18]
049be6b0  cmp w22,w8
049be6b4  b.ge 0x049be700
049be6b8  ldr x2,[x20]
049be6bc  mov w1,w22
049be6c0  bl 0x0452c8d8
049be6c4  cbz x0,0x049be6e4
049be6c8  ldr x8,[x0, #0x140]
049be6cc  cbz x8,0x049be6e4
049be6d0  ldr w8,[x8, #0x18]
049be6d4  ldr x0,[x19, #0x748]
049be6d8  add w22,w22,#0x1
049be6dc  add w21,w8,w21
049be6e0  cbnz x0,0x049be6ac
049be6e4  ldr x8,[sp, #0xb0]
049be6e8  add x9,sp,#0xa80
049be6ec  ldr x8,[x8, #0x28]
049be6f0  ldr x9,[x9, #0x7ff8]
049be6f4  cmp x8,x9
049be6f8  b.ne 0x049c0580
049be6fc  bl 0x029f5cfc
049be700  mov x0,x19
049be704  bl 0x049bb058
049be708  ldr x8,[x19, #0x748]
049be70c  cbz x8,0x049be6e4
049be710  cbz x0,0x049be6e4
049be714  ldr w2,[x8, #0x18]
049be718  mov w1,w21
049be71c  bl 0x049c2f9c
049be720  ldr x8,[x19, #0x748]
049be724  cbz x8,0x049be6e4
049be728  adrp x9,0x5e85000
049be72c  ldr w8,[x8, #0x18]
049be730  add x0,sp,#0x6b8
049be734  ldr x9,[x9, #0xee8]
049be738  mov w2,#0x2
049be73c  mov w3,#0x1
049be740  lsl w1,w8,#0x2
049be744  ldr x4,[x9]
049be748  bl 0x03577f68
049be74c  ldr x8,[x19, #0x748]
049be750  cbz x8,0x049be6e4
049be754  ldr w8,[x8, #0x18]
049be758  adrp x9,0x5e85000
049be75c  add x0,sp,#0x6a8
049be760  ldr x9,[x9, #0xee0]
049be764  mov w2,#0x2
049be768  mov w3,#0x1
049be76c  add w8,w8,w8, LSL #0x1
049be770  ldr x4,[x9]
049be774  lsl w1,w8,#0x1
049be778  bl 0x03510628
049be77c  ldr x8,[x19, #0x748]
049be780  cbz x8,0x049be6e4
049be784  adrp x9,0x5e86000
049be788  ldr w8,[x8, #0x18]
049be78c  add x0,sp,#0x698
049be790  ldr x9,[x9, #0x18]
049be794  mov w2,#0x2
049be798  mov w3,#0x1
049be79c  lsl w1,w8,#0x2
049be7a0  ldr x4,[x9]
049be7a4  bl 0x03575e8c
049be7a8  ldr x8,[x19, #0x748]
049be7ac  cbz x8,0x049be6e4
049be7b0  adrp x9,0x5e85000
049be7b4  ldr w8,[x8, #0x18]
049be7b8  add x0,sp,#0x688
049be7bc  ldr x9,[x9, #0xef0]
049be7c0  mov w2,#0x2
049be7c4  mov w3,#0x1
049be7c8  lsl w1,w8,#0x2
049be7cc  ldr x4,[x9]
049be7d0  bl 0x034f0f08
049be7d4  ldr x8,[x19, #0x748]
049be7d8  cbz x8,0x049be6e4
049be7dc  ldr w21,[x8, #0x18]
049be7e0  cmp w21,#0x1
049be7e4  b.mi 0x049bebdc
049be7e8  adrp x24,0x5e85000
049be7ec  mov w22,wzr
049be7f0  mov w23,wzr
049be7f4  ldr x24,[x24, #0xfe8]
049be7f8  mov w27,#0xc
049be7fc  ldr x0,[x19, #0x748]
049be800  cbz x0,0x049be6e4
049be804  ldr x2,[x24]
049be808  sub w21,w21,#0x1
049be80c  mov w1,w21
049be810  bl 0x0452c8d8
049be814  cbz x0,0x049be6e4
049be818  fmov s0,s8
049be81c  bl 0x049b8cf0
049be820  ldr x0,[x19, #0x748]
049be824  cbz x0,0x049be6e4
049be828  ldr x2,[x24]
049be82c  mov w1,w21
049be830  bl 0x0452c8d8
049be834  cbz x0,0x049be6e4
049be838  ldr x8,[x19, #0x748]
049be83c  cbz x8,0x049be6e4
049be840  ldr x2,[x24]
049be844  ldr s9,[x0, #0x60]
049be848  mov x0,x8
049be84c  mov w1,w21
049be850  bl 0x0452c8d8
049be854  cbz x0,0x049be6e4
049be858  ldr s0,[x0, #0x78]
049be85c  fcmp s9,s0
049be860  b.gt 0x049bebcc
049be864  ldr w8,[sp, #0xb8]
049be868  tbnz w8,#0x0,0x049bebcc
049be86c  ldr x0,[x19, #0x748]
049be870  cbz x0,0x049be6e4
049be874  ldr x2,[x24]
049be878  mov w1,w21
049be87c  bl 0x0452c8d8
049be880  cbz x0,0x049be6e4
049be884  ldr x8,[x0, #0x148]
049be888  cbz x8,0x049be6e4
049be88c  ldr w9,[x8, #0x18]
049be890  cbz w9,0x049c0564
049be894  ldr x9,[sp, #0x6b8]
049be898  ldr d0,[x8, #0x20]
049be89c  nop
049be8a0  smaddl x9,w22,w27,x9
049be8a4  str d0,[x9]
049be8a8  str wzr,[x9, #0x8]
049be8ac  ldr x0,[x19, #0x748]
049be8b0  cbz x0,0x049be6e4
049be8b4  ldr x2,[x24]
049be8b8  mov w1,w21
049be8bc  bl 0x0452c8d8
049be8c0  cbz x0,0x049be6e4
049be8c4  ldr x8,[x0, #0x148]
049be8c8  cbz x8,0x049be6e4
049be8cc  ldr w9,[x8, #0x18]
049be8d0  tst w9,#0xfffffffe
049be8d4  b.eq 0x049c0564
049be8d8  add w28,w22,#0x1
049be8dc  ldr x9,[sp, #0x6b8]
049be8e0  ldr d0,[x8, #0x28]
049be8e4  nop
049be8e8  smaddl x9,w28,w27,x9
049be8ec  str d0,[x9]
049be8f0  str wzr,[x9, #0x8]
049be8f4  ldr x0,[x19, #0x748]
049be8f8  cbz x0,0x049be6e4
049be8fc  ldr x2,[x24]
049be900  mov w1,w21
049be904  bl 0x0452c8d8
049be908  cbz x0,0x049be6e4
049be90c  ldr x8,[x0, #0x148]
049be910  cbz x8,0x049be6e4
049be914  ldr w9,[x8, #0x18]
049be918  cmp w9,#0x2
049be91c  b.ls 0x049c0564
049be920  add w25,w22,#0x2
049be924  ldr x9,[sp, #0x6b8]
049be928  ldr d0,[x8, #0x30]
049be92c  nop
049be930  smaddl x9,w25,w27,x9
049be934  str d0,[x9]
049be938  str wzr,[x9, #0x8]
049be93c  ldr x0,[x19, #0x748]
049be940  cbz x0,0x049be6e4
049be944  ldr x2,[x24]
049be948  mov w1,w21
049be94c  bl 0x0452c8d8
049be950  cbz x0,0x049be6e4
049be954  ldr x8,[x0, #0x148]
049be958  cbz x8,0x049be6e4
049be95c  ldr w9,[x8, #0x18]
049be960  tst w9,#0xfffffffc
049be964  b.eq 0x049c0564
049be968  add w20,w22,#0x3
049be96c  ldr x9,[sp, #0x6b8]
049be970  ldr d0,[x8, #0x38]
049be974  nop
049be978  smaddl x9,w20,w27,x9
049be97c  str d0,[x9]
049be980  str wzr,[x9, #0x8]
049be984  add w9,w23,#0x1
049be988  ldr x8,[sp, #0x6a8]
049be98c  str w25,[x8, w9, SXTW #0x2]
049be990  add w9,w23,#0x2
049be994  str w28,[x8, w9, SXTW #0x2]
049be998  add w9,w23,#0x3
049be99c  str w22,[x8, w9, SXTW #0x2]
049be9a0  add w9,w23,#0x4
049be9a4  str w20,[x8, w9, SXTW #0x2]
049be9a8  add w9,w23,#0x5
049be9ac  str w22,[x8, w23, SXTW #0x2]
049be9b0  str w25,[x8, w9, SXTW #0x2]
049be9b4  ldr x0,[x19, #0x748]
049be9b8  cbz x0,0x049be6e4
049be9bc  ldr x2,[x24]
049be9c0  mov w1,w21
049be9c4  bl 0x0452c8d8
049be9c8  cbz x0,0x049be6e4
049be9cc  ldr x8,[x0, #0x10]
049be9d0  cbz x8,0x049be6e4
049be9d4  ldrb w8,[x8, #0x6d8]
049be9d8  cbz w8,0x049be9e0
049be9dc  ldr w8,[x0, #0x138]
049be9e0  ldr x9,[x19, #0x6e8]
049be9e4  sbfiz x8,x8,#0x4,#0x20
049be9e8  ldr x10,[sp, #0x698]
049be9ec  ldr x8,[x9, x8, LSL #0x0]
049be9f0  str x8,[x10, w22, SXTW #0x3]
049be9f4  ldr x0,[x19, #0x748]
049be9f8  cbz x0,0x049be6e4
049be9fc  ldr x2,[x24]
049bea00  mov w1,w21
049bea04  bl 0x0452c8d8
049bea08  cbz x0,0x049be6e4
049bea0c  ldr x8,[x0, #0x10]
049bea10  cbz x8,0x049be6e4
049bea14  ldrb w8,[x8, #0x6d8]
049bea18  cbz w8,0x049bea20
049bea1c  ldr w8,[x0, #0x138]
049bea20  ldr x0,[x19, #0x748]
049bea24  cbz x0,0x049be6e4
049bea28  ldr x9,[x19, #0x6e8]
049bea2c  ldr x2,[x24]
049bea30  mov w1,w21
049bea34  add x8,x9,w8, SXTW  #0x4
049bea38  ldr w29,[x8, #0x8]
049bea3c  bl 0x0452c8d8
049bea40  cbz x0,0x049be6e4
049bea44  ldr x8,[x0, #0x10]
049bea48  cbz x8,0x049be6e4
049bea4c  ldrb w8,[x8, #0x6d8]
049bea50  cbz w8,0x049bea58
049bea54  ldr w8,[x0, #0x138]
049bea58  ldr x9,[x19, #0x6e8]
049bea5c  sxtw x28,w28
049bea60  ldr x10,[sp, #0x698]
049bea64  add x8,x9,w8, SXTW  #0x4
049bea68  add x9,x10,x28, LSL #0x3
049bea6c  ldr w8,[x8, #0x4]
049bea70  stp w29,w8,[x9]
049bea74  ldr x0,[x19, #0x748]
049bea78  cbz x0,0x049be6e4
049bea7c  ldr x2,[x24]
049bea80  mov w1,w21
049bea84  bl 0x0452c8d8
049bea88  cbz x0,0x049be6e4
049bea8c  ldr x8,[x0, #0x10]
049bea90  cbz x8,0x049be6e4
049bea94  ldrb w8,[x8, #0x6d8]
049bea98  cbz w8,0x049beaa0
049bea9c  ldr w8,[x0, #0x138]
049beaa0  ldr x9,[x19, #0x6e8]
049beaa4  add x8,x9,w8, SXTW  #0x4
049beaa8  ldr x9,[sp, #0x698]
049beaac  ldr x8,[x8, #0x8]
049beab0  str x8,[x9, w25, SXTW #0x3]
049beab4  ldr x0,[x19, #0x748]
049beab8  cbz x0,0x049be6e4
049beabc  ldr x2,[x24]
049beac0  mov w1,w21
049beac4  bl 0x0452c8d8
049beac8  cbz x0,0x049be6e4
049beacc  ldr x8,[x0, #0x10]
049bead0  cbz x8,0x049be6e4
049bead4  ldrb w8,[x8, #0x6d8]
049bead8  cbz w8,0x049beae0
049beadc  ldr w8,[x0, #0x138]
049beae0  ldr x0,[x19, #0x748]
049beae4  cbz x0,0x049be6e4
049beae8  ldr x9,[x19, #0x6e8]
049beaec  sbfiz x8,x8,#0x4,#0x20
049beaf0  ldr x2,[x24]
049beaf4  mov w1,w21
049beaf8  ldr w29,[x9, x8, LSL #0x0]
049beafc  bl 0x0452c8d8
049beb00  cbz x0,0x049be6e4
049beb04  ldr x8,[x0, #0x10]
049beb08  cbz x8,0x049be6e4
049beb0c  ldrb w8,[x8, #0x6d8]
049beb10  cbz w8,0x049beb18
049beb14  ldr w8,[x0, #0x138]
049beb18  ldr x9,[x19, #0x6e8]
049beb1c  sxtw x20,w20
049beb20  ldr x10,[sp, #0x698]
049beb24  add x8,x9,w8, SXTW  #0x4
049beb28  add x9,x10,x20, LSL #0x3
049beb2c  ldr w8,[x8, #0xc]
049beb30  stp w29,w8,[x9]
049beb34  ldr x0,[x19, #0x748]
049beb38  cbz x0,0x049be6e4
049beb3c  ldr x2,[x24]
049beb40  mov w1,w21
049beb44  bl 0x0452c8d8
049beb48  cbz x0,0x049be6e4
049beb4c  ldr x8,[sp, #0x688]
049beb50  ldur q0,[x0, #0x88]
049beb54  str q0,[x8,w22, sxtw #4]
049beb58  ldr x0,[x19, #0x748]
049beb5c  cbz x0,0x049be6e4
049beb60  ldr x2,[x24]
049beb64  mov w1,w21
049beb68  bl 0x0452c8d8
049beb6c  cbz x0,0x049be6e4
049beb70  ldr x8,[sp, #0x688]
049beb74  ldur q0,[x0, #0x88]
049beb78  str q0,[x8,x28, lsl #4]
049beb7c  ldr x0,[x19, #0x748]
049beb80  cbz x0,0x049be6e4
049beb84  ldr x2,[x24]
049beb88  mov w1,w21
049beb8c  bl 0x0452c8d8
049beb90  cbz x0,0x049be6e4
049beb94  ldr x8,[sp, #0x688]
049beb98  ldur q0,[x0, #0x88]
049beb9c  str q0,[x8,w25, sxtw #4]
049beba0  ldr x0,[x19, #0x748]
049beba4  cbz x0,0x049be6e4
049beba8  ldr x2,[x24]
049bebac  mov w1,w21
049bebb0  bl 0x0452c8d8
049bebb4  cbz x0,0x049be6e4
049bebb8  ldr x8,[sp, #0x688]
049bebbc  ldur q0,[x0, #0x88]
049bebc0  add w22,w22,#0x4
049bebc4  add w23,w23,#0x6
049bebc8  str q0,[x8,x20, lsl #4]
049bebcc  cmp w21,#0x0
049bebd0  b.gt 0x049be7fc
049bebd4  ldr x8,[x19, #0x748]
049bebd8  cbz x8,0x049be6e4
049bebdc  ldr w8,[x8, #0x18]
049bebe0  cmp w8,#0x1
049bebe4  b.lt 0x049becac
049bebe8  mov x0,x19
049bebec  bl 0x049bb87c
049bebf0  cbz x0,0x049be6e4
049bebf4  mov x1,xzr
049bebf8  bl 0x057b8e58
049bebfc  ldr w8,[sp, #0x6c0]
049bec00  cmp w8,#0x1
049bec04  b.lt 0x049becac
049bec08  mov x0,x19
049bec0c  bl 0x049bb87c
049bec10  cbz x0,0x049be6e4
049bec14  adrp x8,0x5e86000
049bec18  ldr x8,[x8, #0x8]
049bec1c  ldr x2,[sp, #0x6c0]
049bec20  ldr x1,[sp, #0x6b8]
049bec24  ldr x3,[x8]
049bec28  bl 0x031102e4
049bec2c  mov x0,x19
049bec30  bl 0x049bb87c
049bec34  cbz x0,0x049be6e4
049bec38  adrp x8,0x5e85000
049bec3c  mov w3,wzr
049bec40  mov w4,wzr
049bec44  ldr x8,[x8, #0xff8]
049bec48  ldr x2,[sp, #0x6b0]
049bec4c  ldr x1,[sp, #0x6a8]
049bec50  mov w5,#0x1
049bec54  mov w6,wzr
049bec58  ldr x7,[x8]
049bec5c  bl 0x0310ee44
049bec60  mov x0,x19
049bec64  bl 0x049bb87c
049bec68  cbz x0,0x049be6e4
049bec6c  adrp x8,0x5e86000
049bec70  mov w1,wzr
049bec74  ldr x8,[x8]
049bec78  ldr x3,[sp, #0x6a0]
049bec7c  ldr x2,[sp, #0x698]
049bec80  ldr x4,[x8]
049bec84  bl 0x0310f9e4
049bec88  mov x0,x19
049bec8c  bl 0x049bb87c
049bec90  cbz x0,0x049be6e4
049bec94  adrp x8,0x5e85000
049bec98  ldr x8,[x8, #0xff0]
049bec9c  ldr x2,[sp, #0x690]
049beca0  ldr x1,[sp, #0x688]
049beca4  ldr x3,[x8]
049beca8  bl 0x0310eac8
049becac  mov x0,x19
049becb0  bl 0x049bb87c
049becb4  cbz x0,0x049be6e4
049becb8  mov x1,xzr
049becbc  bl 0x057b8e60
049becc0  mov x0,x19
049becc4  mov x1,xzr
049becc8  bl 0x058dc2f0
049beccc  mov x20,x0
049becd0  mov x0,x19
049becd4  bl 0x049bb87c
049becd8  cbz x20,0x049be6e4
049becdc  mov x1,x0
049bece0  mov x0,x20
049bece4  mov x2,xzr
049bece8  bl 0x05aa0470
049becec  ldrb w8,[x26]
049becf0  cbz w8,0x049bed10
049becf4  mov x0,x19
049becf8  bl 0x049bb058
049becfc  cbz x0,0x049be6e4
049bed00  ldp x1,x2,[x0, #0xe8]
049bed04  ldr x3,[x0, #0xf8]
049bed08  ldr w4,[x0, #0x10c]
049bed0c  bl 0x049c2d74
049bed10  ldr x8,[x19, #0x748]
049bed14  cbz x8,0x049be6e4
049bed18  ldr w20,[x8, #0x18]
049bed1c  cmp w20,#0x1
049bed20  b.mi 0x049c0518
049bed24  adrp x22,0x5e85000
049bed28  adrp x23,0x5e85000
049bed2c  mov w24,#0x1
049bed30  ldr x22,[x22, #0xfe8]
049bed34  ldr x23,[x23, #0xfe0]
049bed38  ldr x0,[x19, #0x748]
049bed3c  cbz x0,0x049be6e4
049bed40  ldr x2,[x22]
049bed44  sub w20,w20,#0x1
049bed48  mov w1,w20
049bed4c  bl 0x0452c8d8
049bed50  cbz x0,0x049be6e4
049bed54  ldr x8,[x19, #0x748]
049bed58  cbz x8,0x049be6e4
049bed5c  ldr x2,[x22]
049bed60  ldr s8,[x0, #0x60]
049bed64  mov x0,x8
049bed68  mov w1,w20
049bed6c  bl 0x0452c8d8
049bed70  cbz x0,0x049be6e4
049bed74  ldr s0,[x0, #0x78]
049bed78  fcmp s8,s0
049bed7c  b.le 0x049bee4c
049bed80  ldr x0,[x19, #0x748]
049bed84  cbz x0,0x049be6e4
049bed88  ldr x2,[x22]
049bed8c  mov w1,w20
049bed90  bl 0x0452c8d8
049bed94  cbz x0,0x049be6e4
049bed98  ldr x8,[x0, #0x140]
049bed9c  cbz x8,0x049be6e4
049beda0  ldr w8,[x8, #0x18]
049beda4  cmp w8,#0x2
049beda8  b.lt 0x049bedb4
049bedac  ldrb w8,[x26, #0xa9]
049bedb0  cbz w8,0x049bee4c
049bedb4  ldr x0,[x19, #0x3248]
049bedb8  cbz x0,0x049be6e4
049bedbc  mov x1,xzr
049bedc0  bl 0x057f5098
049bedc4  mov x0,x19
049bedc8  bl 0x049bc0e0
049bedcc  ldr x8,[x19, #0x748]
049bedd0  cbz x8,0x049be6e4
049bedd4  ldr x2,[x22]
049bedd8  mov x21,x0
049beddc  mov x0,x8
049bede0  mov w1,w20
049bede4  bl 0x0452c8d8
049bede8  cbz x21,0x049be6e4
049bedec  mov x1,x0
049bedf0  mov x0,x21
049bedf4  mov x2,xzr
049bedf8  bl 0x049ce868
049bedfc  ldr x0,[x19, #0x748]
049bee00  cbz x0,0x049be6e4
049bee04  ldr x2,[x23]
049bee08  mov w1,w20
049bee0c  bl 0x0452e350
049bee10  ldrb w8,[x26, #0x140]
049bee14  cbnz w8,0x049bee2c
049bee18  ldr x0,[x19, #0x3240]
049bee1c  strb w24,[x26, #0x140]
049bee20  cbz x0,0x049be6e4
049bee24  mov x1,xzr
049bee28  bl 0x057f5098
049bee2c  mov x0,x19
049bee30  bl 0x049bc190
049bee34  cmp w0,#0x0
049bee38  b.gt 0x049bee4c
049bee3c  ldr x0,[x19, #0x3250]
049bee40  cbz x0,0x049be6e4
049bee44  mov x1,xzr
049bee48  bl 0x057f5098
049bee4c  cmp w20,#0x0
049bee50  b.gt 0x049bed38
049bee54  b 0x049c0518
049bee58  mov x0,x19
049bee5c  mov x1,xzr
049bee60  bl 0x057dc0f8
049bee64  ldr x8,[x19, #0x5f8]
049bee68  cbz x8,0x049be6e4
049bee6c  mov x20,x0
049bee70  mov x0,x8
049bee74  mov x1,xzr
049bee78  bl 0x057eed98
049bee7c  cbz x20,0x049be6e4
049bee80  mov x0,x20
049bee84  mov x1,xzr
049bee88  bl 0x057f0800
049bee8c  mov x0,xzr
049bee90  bl 0x052c82e4
049bee94  ldr x0,[x19, #0x5f8]
049bee98  cbz x0,0x049be6e4
049bee9c  ldr x8,[x21]
049beea0  ldr x9,[x0]
049beea4  cmp x9,x8
049beea8  b.ne 0x049be6e4
049beeac  mov x1,xzr
049beeb0  fmov s9,s0
049beeb4  fmov s10,s1
049beeb8  fmov s11,s2
049beebc  bl 0x057ed9fc
049beec0  fmov s15,s2
049beec4  fmov s14,s3
049beec8  b 0x049bf020
049beecc  cbz x0,0x049be6e4
049beed0  mov x1,xzr
049beed4  bl 0x057ed9fc
049beed8  ldr x20,[x19, #0xe8]
049beedc  mov x0,x19
049beee0  mov x1,xzr
049beee4  fmov s10,s2
049beee8  bl 0x057dc0f8
049beeec  cbz x0,0x049be6e4
049beef0  mov x1,xzr
049beef4  bl 0x057eed98
049beef8  cbz x20,0x049be6e4
049beefc  mov x0,x20
049bef00  mov x1,xzr
049bef04  str s13,[sp, #0xa8]
049bef08  bl 0x057f0800
049bef0c  mov x0,x19
049bef10  mov x1,xzr
049bef14  fmov s13,s0
049bef18  bl 0x057dc0f8
049bef1c  cbz x0,0x049be6e4
049bef20  mov x1,xzr
049bef24  bl 0x057f1034
049bef28  ldr x0,[x19, #0xe8]
049bef2c  cbz x0,0x049be6e4
049bef30  mov x1,xzr
049bef34  fmov s12,s0
049bef38  bl 0x057ef578
049bef3c  ldr x0,[x19, #0xe8]
049bef40  cbz x0,0x049be6e4
049bef44  mov x1,xzr
049bef48  str s0,[sp, #0xa0]
049bef4c  bl 0x057ed9fc
049bef50  ldr x20,[x19, #0xe8]
049bef54  mov x0,x19
049bef58  mov x1,xzr
049bef5c  fmov s15,s3
049bef60  bl 0x057dc0f8
049bef64  cbz x0,0x049be6e4
049bef68  mov x1,xzr
049bef6c  fmov s14,s12
049bef70  bl 0x057eed98
049bef74  cbz x20,0x049be6e4
049bef78  mov x0,x20
049bef7c  mov x1,xzr
049bef80  fmov s11,s10
049bef84  bl 0x057f0800
049bef88  mov x0,x19
049bef8c  mov x1,xzr
049bef90  fmov s12,s1
049bef94  bl 0x057dc0f8
049bef98  cbz x0,0x049be6e4
049bef9c  mov x1,xzr
049befa0  bl 0x057f1034
049befa4  ldr x0,[x19, #0xe8]
049befa8  cbz x0,0x049be6e4
049befac  fmov s10,s1
049befb0  fmov s0,0xbf000000
049befb4  ldr s2,[sp, #0xa8]
049befb8  fmov s1,0xbf000000
049befbc  movi d3,#0x0
049befc0  mov x1,xzr
049befc4  fadd s0,s9,s0
049befc8  fadd s1,s2,s1
049befcc  movi d2,#0x0
049befd0  fmul s0,s0,s11
049befd4  fmul s1,s1,s15
049befd8  fadd s11,s0,s2
049befdc  fadd s15,s1,s3
049befe0  bl 0x057ef578
049befe4  fsub s0,s11,s13
049befe8  fsub s2,s15,s12
049befec  ldr s3,[sp, #0xa0]
049beff0  fdiv s0,s0,s14
049beff4  fdiv s2,s2,s10
049beff8  fmul s0,s0,s3
049beffc  fmul s1,s2,s1
049bf000  movi d2,#0x0
049bf004  mov x0,xzr
049bf008  bl 0x052c82e4
049bf00c  fmov s9,s0
049bf010  fmov s10,s1
049bf014  ldr s14,[sp, #0xb8]
049bf018  fmov s11,s2
049bf01c  ldr s15,[sp, #0xac]
049bf020  adrp x20,0x625b000
049bf024  ldrb w8,[x20, #0x26f]
049bf028  cbnz w8,0x049bf040
049bf02c  adrp x0,0x5e58000
049bf030  ldr x0,[x0, #0xbf8]
049bf034  bl 0x029f5a50
049bf038  mov w8,#0x1
049bf03c  strb w8,[x20, #0x26f]
049bf040  ldr w8,[x19, #0x128]
049bf044  str s9,[sp, #0xb8]
049bf048  stp s11,s10,[sp, #0xa8]
049bf04c  cmp w8,#0x1
049bf050  b.ne 0x049bf18c
049bf054  mov x0,x19
049bf058  mov x1,xzr
049bf05c  bl 0x057dc0f8
049bf060  cbz x0,0x049be6e4
049bf064  ldr s2,[x19, #0x3100]
049bf068  ldr s1,[x19, #0x30fc]
049bf06c  mov x1,xzr
049bf070  ldr s0,[x19, #0x30f8]
049bf074  fmov s11,s15
049bf078  fmov s10,s14
049bf07c  bl 0x057f0800
049bf080  mov x0,x19
049bf084  mov x1,xzr
049bf088  str s0,[sp, #0xa0]
049bf08c  str s1,[sp, #0x98]
049bf090  fmov s12,s2
049bf094  bl 0x057dc0f8
049bf098  cbz x0,0x049be6e4
049bf09c  mov x1,xzr
049bf0a0  bl 0x057ef000
049bf0a4  mov x0,xzr
049bf0a8  bl 0x057cd50c
049bf0ac  mov x0,xzr
049bf0b0  bl 0x057cd714
049bf0b4  adrp x8,0x116c000
049bf0b8  mov x0,xzr
049bf0bc  ldr s15,[x8, #0x74]
049bf0c0  fmul s0,s0,s15
049bf0c4  fmul s1,s1,s15
049bf0c8  fmul s2,s2,s15
049bf0cc  bl 0x057cdc3c
049bf0d0  ldr s4,[x19, #0x310c]
049bf0d4  fmov s14,s2
049bf0d8  fmov s9,s0
049bf0dc  fmov s13,s1
049bf0e0  ldr s0,[x19, #0x3104]
049bf0e4  ldr s1,[x19, #0x3108]
049bf0e8  fmov s2,s4
049bf0ec  ldr s3,[x19, #0x3110]
049bf0f0  mov x0,xzr
049bf0f4  bl 0x057cd50c
049bf0f8  mov x0,xzr
049bf0fc  bl 0x057cd714
049bf100  fmul s0,s0,s15
049bf104  fmul s1,s1,s15
049bf108  mov x0,xzr
049bf10c  fmul s2,s2,s15
049bf110  bl 0x057cdc3c
049bf114  fsub s0,s9,s0
049bf118  fsub s1,s13,s1
049bf11c  mov x0,x19
049bf120  fsub s2,s14,s2
049bf124  mov x1,xzr
049bf128  str s0,[x19, #0x3114]
049bf12c  str s1,[x19, #0x3118]
049bf130  str s2,[x19, #0x311c]
049bf134  bl 0x057dc0f8
049bf138  cbz x0,0x049be6e4
049bf13c  mov x1,xzr
049bf140  bl 0x057eed98
049bf144  mov x0,x19
049bf148  mov x1,xzr
049bf14c  str s0,[x19, #0x30f8]
049bf150  str s1,[x19, #0x30fc]
049bf154  str s2,[x19, #0x3100]
049bf158  bl 0x057dc0f8
049bf15c  cbz x0,0x049be6e4
049bf160  mov x1,xzr
049bf164  fmov s14,s10
049bf168  fmov s15,s11
049bf16c  bl 0x057ef000
049bf170  ldr s9,[sp, #0xa0]
049bf174  ldr s10,[sp, #0x98]
049bf178  str s0,[x19, #0x3104]
049bf17c  str s1,[x19, #0x3108]
049bf180  str s2,[x19, #0x310c]
049bf184  str s3,[x19, #0x3110]
049bf188  b 0x049bf1a4
049bf18c  adrp x8,0x5e58000
049bf190  ldr x8,[x8, #0xbf8]
049bf194  ldr x8,[x8]
049bf198  ldr x8,[x8, #0xb8]
049bf19c  ldp s9,s10,[x8]
049bf1a0  ldr s12,[x8, #0x8]
049bf1a4  mov x0,x19
049bf1a8  mov x1,xzr
049bf1ac  bl 0x057dc0f8
049bf1b0  mov x22,x0
049bf1b4  add x0,sp,#0x6, LSL #12
049bf1b8  mov w1,wzr
049bf1bc  add x0,x0,#0x98c
049bf1c0  mov w2,#0x114
049bf1c4  add x20,sp,#0x6, LSL #12
049bf1c8  add x20,x20,#0x98c
049bf1cc  bl 0x05afb2a0
049bf1d0  add x0,sp,#0x6, LSL #12
049bf1d4  mov w1,wzr
049bf1d8  mov w2,#0x338
049bf1dc  add x0,x0,#0x650
049bf1e0  bl 0x05afb2a0
049bf1e4  add x0,sp,#0x6, LSL #12
049bf1e8  mov w1,wzr
049bf1ec  mov w2,#0x338
049bf1f0  add x0,x0,#0x318
049bf1f4  bl 0x05afb2a0
049bf1f8  add x0,sp,#0x5, LSL #12
049bf1fc  mov w1,wzr
049bf200  mov w2,#0x428
049bf204  add x0,x0,#0xef0
049bf208  bl 0x05afb2a0
049bf20c  add x0,sp,#0x5, LSL #12
049bf210  mov w1,wzr
049bf214  mov w2,#0x428
049bf218  add x0,x0,#0xac8
049bf21c  bl 0x05afb2a0
049bf220  add x0,sp,#0x5, LSL #12
049bf224  mov w1,wzr
049bf228  mov w2,#0x338
049bf22c  add x0,x0,#0x790
049bf230  bl 0x05afb2a0
049bf234  add x0,sp,#0x5, LSL #12
049bf238  mov w1,wzr
049bf23c  mov w2,#0x338
049bf240  add x0,x0,#0x458
049bf244  bl 0x05afb2a0
049bf248  add x0,sp,#0x5, LSL #12
049bf24c  mov w1,wzr
049bf250  mov w2,#0x114
049bf254  add x0,x0,#0x32c
049bf258  str xzr,[sp, #0x5448]
049bf25c  str xzr,[sp, #0x5440]
049bf260  stur xzr,[x27, #0xe]
049bf264  bl 0x05afb2a0
049bf268  add x0,sp,#0x5, LSL #12
049bf26c  mov w1,wzr
049bf270  mov w2,#0x110
049bf274  add x0,x0,#0x218
049bf278  bl 0x05afb2a0
049bf27c  add x0,sp,#0x4, LSL #12
049bf280  mov w1,wzr
049bf284  mov w2,#0x338
049bf288  add x0,x0,#0xee0
049bf28c  strh wzr,[sp, #0x684]
049bf290  strb wzr,[sp, #0x686]
049bf294  strh wzr,[sp, #0x680]
049bf298  strb wzr,[sp, #0x682]
049bf29c  bl 0x05afb2a0
049bf2a0  add x0,sp,#0x4, LSL #12
049bf2a4  mov w1,wzr
049bf2a8  mov w2,#0x117
049bf2ac  add x0,x0,#0xdc8
049bf2b0  add x24,sp,#0x4, LSL #12
049bf2b4  add x24,x24,#0xdc8
049bf2b8  bl 0x05afb2a0
049bf2bc  add x0,sp,#0x4, LSL #12
049bf2c0  mov w1,wzr
049bf2c4  mov w2,#0x117
049bf2c8  add x0,x0,#0xcb0
049bf2cc  add x23,sp,#0x4, LSL #12
049bf2d0  add x23,x23,#0xcb0
049bf2d4  bl 0x05afb2a0
049bf2d8  add x0,sp,#0x4, LSL #12
049bf2dc  mov w1,wzr
049bf2e0  mov w2,#0x113
049bf2e4  add x0,x0,#0xb9c
049bf2e8  strh wzr,[sp, #0x67c]
049bf2ec  strb wzr,[sp, #0x67e]
049bf2f0  strh wzr,[sp, #0x678]
049bf2f4  strb wzr,[sp, #0x67a]
049bf2f8  bl 0x05afb2a0
049bf2fc  mov x0,x19
049bf300  bl 0x049bc258
049bf304  adrp x8,0x5e86000
049bf308  ldr x8,[x8, #0x60]
049bf30c  ldr x0,[x0]
049bf310  ldr x1,[x8]
049bf314  bl 0x035b3e2c
049bf318  cbz x22,0x049be6e4
049bf31c  ldr w10,[x19, #0x128]
049bf320  mov w8,#0x205c
049bf324  mov w9,#0x1e18
049bf328  stp x1,x0,[sp, #0x90]
049bf32c  add x21,x19,x8
049bf330  add x8,x19,x9
049bf334  str w10,[sp, #0x84]
049bf338  ldr x10,[x19, #0x108]
049bf33c  mov x0,x22
049bf340  mov x1,xzr
049bf344  str x8,[sp, #0xa0]
049bf348  str x10,[sp, #0x88]
049bf34c  bl 0x057ee2ec
049bf350  mov x0,xzr
049bf354  bl 0x052c82e4
049bf358  mov x0,x22
049bf35c  mov x1,xzr
049bf360  stp s1,s0,[sp, #0x7c]
049bf364  str s2,[sp, #0x78]
049bf368  bl 0x057ef000
049bf36c  mov x0,xzr
049bf370  bl 0x05300284
049bf374  stp s1,s0,[sp, #0x70]
049bf378  ldr s0,[x19, #0x3114]
049bf37c  ldr s1,[x19, #0x3118]
049bf380  stp s3,s2,[sp, #0x68]
049bf384  mov x0,xzr
049bf388  ldr s2,[x19, #0x311c]
049bf38c  bl 0x052c82e4
049bf390  stp s1,s0,[sp, #0x60]
049bf394  fmov s0,s9
049bf398  fmov s1,s10
049bf39c  str s2,[sp, #0x5c]
049bf3a0  fmov s2,s12
049bf3a4  mov x0,xzr
049bf3a8  bl 0x052c82e4
049bf3ac  add x8,x19,#0x5a8
049bf3b0  stp s1,s0,[sp, #0x54]
049bf3b4  add x0,sp,#0x560
049bf3b8  ldp q0,q1,[x8]
049bf3bc  add x8,sp,#0x4, LSL #12
049bf3c0  add x8,x8,#0x548
049bf3c4  mov x1,xzr
049bf3c8  str s2,[sp, #0x50]
049bf3cc  str q0,[sp, #0x560]
049bf3d0  str q1,[sp, #0x570]
049bf3d4  bl 0x049cf4ac
049bf3d8  add x1,sp,#0x4, LSL #12
049bf3dc  add x0,x20,#0x4
049bf3e0  mov w2,#0x110
049bf3e4  add x1,x1,#0x548
049bf3e8  bl 0x05afb2b0
049bf3ec  add x0,sp,#0x4d8
049bf3f0  add x1,x19,#0x2f0
049bf3f4  mov w2,#0x88
049bf3f8  bl 0x05afb2b0
049bf3fc  add x8,sp,#0x4, LSL #12
049bf400  add x0,sp,#0x4d8
049bf404  mov x1,xzr
049bf408  add x8,x8,#0x210
049bf40c  bl 0x049cf708
049bf410  add x0,sp,#0x6, LSL #12
049bf414  add x1,sp,#0x4, LSL #12
049bf418  mov w2,#0x338
049bf41c  add x0,x0,#0x650
049bf420  add x1,x1,#0x210
049bf424  bl 0x05afb2b0
049bf428  add x0,sp,#0x450
049bf42c  add x1,x19,#0x378
049bf430  mov w2,#0x88
049bf434  bl 0x05afb2b0
049bf438  add x8,sp,#0x3, LSL #12
049bf43c  add x0,sp,#0x450
049bf440  mov x1,xzr
049bf444  add x8,x8,#0xed0
049bf448  bl 0x049cf708
049bf44c  add x0,sp,#0x6, LSL #12
049bf450  add x1,sp,#0x3, LSL #12
049bf454  mov w2,#0x338
049bf458  add x0,x0,#0x318
049bf45c  add x1,x1,#0xed0
049bf460  bl 0x05afb2b0
049bf464  add x8,x19,#0x278
049bf468  add x0,sp,#0x410
049bf46c  mov x1,xzr
049bf470  ldp q0,q1,[x8]
049bf474  ldr q2,[x8, #0x20]
049bf478  ldr x8,[x19, #0x2a8]
049bf47c  str q2,[sp, #0x430]
049bf480  str q0,[sp, #0x410]
049bf484  ldr d0,[x19, #0x400]
049bf488  str x8,[sp, #0x440]
049bf48c  add x8,sp,#0x3, LSL #12
049bf490  add x8,x8,#0xaa0
049bf494  str q1,[sp, #0x420]
049bf498  str d0,[sp, #0x48]
049bf49c  bl 0x049cf208
049bf4a0  add x0,sp,#0x5, LSL #12
049bf4a4  add x1,sp,#0x3, LSL #12
049bf4a8  mov w2,#0x428
049bf4ac  add x0,x0,#0xef0
049bf4b0  add x1,x1,#0xaa0
049bf4b4  bl 0x05afb2b0
049bf4b8  ldr x8,[x19, #0x2e0]
049bf4bc  ldp q0,q1,[x19, #0x2b0]
049bf4c0  ldr q2,[x19, #0x2d0]
049bf4c4  add x0,sp,#0x3d0
049bf4c8  mov x1,xzr
049bf4cc  str x8,[sp, #0x400]
049bf4d0  add x8,sp,#0x3, LSL #12
049bf4d4  add x8,x8,#0x678
049bf4d8  stp q0,q1,[sp, #0x3d0]
049bf4dc  str q2,[sp, #0x3f0]
049bf4e0  bl 0x049cf208
049bf4e4  add x0,sp,#0x5, LSL #12
049bf4e8  add x1,sp,#0x3, LSL #12
049bf4ec  mov w2,#0x428
049bf4f0  add x0,x0,#0xac8
049bf4f4  add x1,x1,#0x678
049bf4f8  bl 0x05afb2b0
049bf4fc  ldr d0,[x19, #0x2e8]
049bf500  add x0,sp,#0x348
049bf504  add x1,x19,#0x490
049bf508  mov w2,#0x88
049bf50c  str d0,[sp, #0x30]
049bf510  bl 0x05afb2b0
049bf514  add x8,sp,#0x3, LSL #12
049bf518  add x0,sp,#0x348
049bf51c  mov x1,xzr
049bf520  add x8,x8,#0x340
049bf524  bl 0x049cf708
049bf528  add x0,sp,#0x5, LSL #12
049bf52c  add x1,sp,#0x3, LSL #12
049bf530  mov w2,#0x338
049bf534  add x0,x0,#0x790
049bf538  add x1,x1,#0x340
049bf53c  bl 0x05afb2b0
049bf540  add x0,sp,#0x2c0
049bf544  add x1,x19,#0x518
049bf548  mov w2,#0x88
049bf54c  bl 0x05afb2b0
049bf550  add x8,sp,#0x3, LSL #12
049bf554  add x0,sp,#0x2c0
049bf558  mov x1,xzr
049bf55c  add x8,x8,#0x8
049bf560  bl 0x049cf708
049bf564  add x0,sp,#0x5, LSL #12
049bf568  add x1,sp,#0x3, LSL #12
049bf56c  mov w2,#0x338
049bf570  add x0,x0,#0x458
049bf574  add x1,x1,#0x8
049bf578  bl 0x05afb2b0
049bf57c  ldrb w8,[x19, #0x5c8]
049bf580  ldrb w9,[x19, #0x627]
049bf584  add x0,sp,#0x238
049bf588  ldr d11,[x19, #0x5a0]
049bf58c  add x1,x19,#0x630
049bf590  mov w2,#0x88
049bf594  str w8,[sp, #0x18]
049bf598  ldr w8,[x19, #0x628]
049bf59c  stp w9,w8,[sp, #0x40]
049bf5a0  bl 0x05afb2b0
049bf5a4  add x8,sp,#0x2, LSL #12
049bf5a8  add x0,sp,#0x238
049bf5ac  mov x1,xzr
049bf5b0  add x8,x8,#0xcd0
049bf5b4  bl 0x049cf708
049bf5b8  add x0,sp,#0x4, LSL #12
049bf5bc  add x1,sp,#0x2, LSL #12
049bf5c0  mov w2,#0x338
049bf5c4  add x0,x0,#0xee0
049bf5c8  add x1,x1,#0xcd0
049bf5cc  bl 0x05afb2b0
049bf5d0  ldrb w8,[x19, #0x625]
049bf5d4  ldr q0,[x19, #0x5d0]
049bf5d8  add x0,sp,#0x210
049bf5dc  ldr q1,[x19, #0x5e0]
049bf5e0  mov x1,xzr
049bf5e4  str w8,[sp, #0x3c]
049bf5e8  add x8,sp,#0x2, LSL #12
049bf5ec  add x8,x8,#0xbc0
049bf5f0  stp q0,q1,[sp, #0x210]
049bf5f4  bl 0x049cf4ac
049bf5f8  add x1,sp,#0x2, LSL #12
049bf5fc  add x0,x24,#0x7
049bf600  mov w2,#0x110
049bf604  add x1,x1,#0xbc0
049bf608  bl 0x05afb2b0
049bf60c  add x8,x19,#0x6b8
049bf610  add x0,sp,#0x1f0
049bf614  mov x1,xzr
049bf618  ldp q0,q1,[x8]
049bf61c  ldrb w8,[x19, #0x626]
049bf620  str w8,[sp, #0x2c]
049bf624  add x8,sp,#0x2, LSL #12
049bf628  add x8,x8,#0xab0
049bf62c  stp q0,q1,[sp, #0x1f0]
049bf630  bl 0x049cf4ac
049bf634  add x1,sp,#0x2, LSL #12
049bf638  add x0,x23,#0x7
049bf63c  mov w2,#0x110
049bf640  add x1,x1,#0xab0
049bf644  bl 0x05afb2b0
049bf648  ldrb w8,[x19, #0x624]
049bf64c  ldr s0,[x19, #0x3210]
049bf650  mov x0,xzr
049bf654  ldr s1,[x19, #0x3214]
049bf658  ldr d10,[x19, #0x3218]
049bf65c  str w8,[sp, #0x28]
049bf660  bl 0x052c34b8
049bf664  fmov s13,s0
049bf668  ldr x0,[x25]
049bf66c  fmov s9,s1
049bf670  ldrb w9,[x19, #0x5f0]
049bf674  ldr x22,[x19, #0x5f8]
049bf678  ldr w8,[x0, #0xe4]
049bf67c  str w9,[sp, #0x24]
049bf680  cbnz w8,0x049bf688
049bf684  bl 0x029f5bd0
049bf688  mov x0,x22
049bf68c  mov x1,xzr
049bf690  bl 0x057e50f4
049bf694  ldr w9,[x19, #0x620]
049bf698  and w8,w0,#0x1
049bf69c  ldr q0,[x19, #0x600]
049bf6a0  ldr q1,[x19, #0x610]
049bf6a4  add x0,sp,#0x1d0
049bf6a8  mov x1,xzr
049bf6ac  stp w8,w9,[sp, #0x1c]
049bf6b0  add x8,sp,#0x2, LSL #12
049bf6b4  add x8,x8,#0x9a0
049bf6b8  stp q0,q1,[sp, #0x1d0]
049bf6bc  bl 0x049cf4ac
049bf6c0  add x8,sp,#0x4, LSL #12
049bf6c4  add x1,sp,#0x2, LSL #12
049bf6c8  mov w2,#0x110
049bf6cc  add x8,x8,#0xb9c
049bf6d0  add x1,x1,#0x9a0
049bf6d4  orr x0,x8,#0x3
049bf6d8  bl 0x05afb2b0
049bf6dc  add x22,x19,#0x6e8
049bf6e0  add x8,x19,#0x6f8
049bf6e4  fmov w9,s15
049bf6e8  ldr q0,[x22]
049bf6ec  ldrb w29,[x19, #0x6d8]
049bf6f0  ldr w28,[x19, #0x6e4]
049bf6f4  add x23,sp,#0x5, LSL #12
049bf6f8  ldr d12,[x19, #0x738]
049bf6fc  add x0,sp,#0x1b0
049bf700  stur q0,[x27, #0x6]
049bf704  ldp q1,q0,[x8]
049bf708  fmov w8,s14
049bf70c  mov x1,xzr
049bf710  add x23,x23,#0x32c
049bf714  add x24,x19,#0x718
049bf718  stp q1,q0,[sp, #0x1b0]
049bf71c  orr x8,x9,x8, LSL #0x20
049bf720  str x8,[sp, #0x10]
049bf724  add x8,sp,#0x2, LSL #12
049bf728  add x8,x8,#0x890
049bf72c  bl 0x049cf4ac
049bf730  add x1,sp,#0x2, LSL #12
049bf734  add x0,x23,#0x4
049bf738  mov w2,#0x110
049bf73c  add x1,x1,#0x890
049bf740  bl 0x05afb2b0
049bf744  ldp q0,q1,[x24]
049bf748  add x8,sp,#0x2, LSL #12
049bf74c  add x8,x8,#0x780
049bf750  add x0,sp,#0x190
049bf754  mov x1,xzr
049bf758  stp q0,q1,[sp, #0x190]
049bf75c  bl 0x049cf4ac
049bf760  add x0,sp,#0x5, LSL #12
049bf764  add x1,sp,#0x2, LSL #12
049bf768  mov w2,#0x110
049bf76c  add x0,x0,#0x218
049bf770  add x1,x1,#0x780
049bf774  bl 0x05afb2b0
049bf778  ldr s0,[x19, #0x740]
049bf77c  ldr w25,[x19, #0x744]
049bf780  add x20,sp,#0x5, LSL #12
049bf784  ldrb w27,[x26]
049bf788  ldr s14,[x19, #0x316c]
049bf78c  mov x0,x19
049bf790  scvtf s15,s0
049bf794  add x20,x20,#0x440
049bf798  bl 0x049bc2f4
049bf79c  adrp x8,0x5e86000
049bf7a0  ldr x8,[x8, #0x68]
049bf7a4  ldr x1,[x8]
049bf7a8  bl 0x0359d994
049bf7ac  ldp s0,s1,[sp, #0x7c]
049bf7b0  mov x24,x1
049bf7b4  ldp x8,x9,[sp, #0x90]
049bf7b8  add x1,sp,#0x6, LSL #12
049bf7bc  mov x23,x0
049bf7c0  add x0,x19,#0x7bc
049bf7c4  add x1,x1,#0x98c
049bf7c8  str s0,[x19, #0x780]
049bf7cc  ldr s0,[sp, #0x78]
049bf7d0  mov w2,#0x114
049bf7d4  str s1,[x19, #0x77c]
049bf7d8  str s0,[x19, #0x784]
049bf7dc  ldp s0,s1,[sp, #0x54]
049bf7e0  str x8,[x19, #0x770]
049bf7e4  ldr w8,[sp, #0x84]
049bf7e8  str x9,[x19, #0x768]
049bf7ec  str s0,[x19, #0x78c]
049bf7f0  ldr s0,[sp, #0x50]
049bf7f4  str s1,[x19, #0x788]
049bf7f8  str s0,[x19, #0x790]
049bf7fc  ldp s0,s1,[sp, #0x70]
049bf800  str w8,[x19, #0x778]
049bf804  ldr x8,[sp, #0x88]
049bf808  str s8,[x19, #0x7b8]
049bf80c  str s1,[x19, #0x794]
049bf810  str s0,[x19, #0x798]
049bf814  ldp s0,s1,[sp, #0x68]
049bf818  str x8,[x19, #0x7b0]
049bf81c  str s1,[x19, #0x79c]
049bf820  str s0,[x19, #0x7a0]
049bf824  ldp s0,s1,[sp, #0x60]
049bf828  str s0,[x19, #0x7a8]
049bf82c  ldr s0,[sp, #0x5c]
049bf830  str s1,[x19, #0x7a4]
049bf834  str s0,[x19, #0x7ac]
049bf838  bl 0x05afb2b0
049bf83c  add x1,sp,#0x6, LSL #12
049bf840  add x0,x19,#0x8d0
049bf844  mov w2,#0x338
049bf848  add x1,x1,#0x650
049bf84c  bl 0x05afb2b0
049bf850  add x1,sp,#0x6, LSL #12
049bf854  add x0,x19,#0xc08
049bf858  mov w2,#0x338
049bf85c  add x1,x1,#0x318
049bf860  bl 0x05afb2b0
049bf864  ldr d0,[sp, #0x48]
049bf868  add x1,sp,#0x5, LSL #12
049bf86c  add x0,x19,#0xf48
049bf870  add x1,x1,#0xef0
049bf874  mov w2,#0x428
049bf878  str d0,[x19, #0xf40]
049bf87c  bl 0x05afb2b0
049bf880  mov w8,#0x1370
049bf884  add x1,sp,#0x5, LSL #12
049bf888  mov w2,#0x428
049bf88c  add x0,x19,x8
049bf890  add x1,x1,#0xac8
049bf894  bl 0x05afb2b0
049bf898  ldr d0,[sp, #0x30]
049bf89c  mov w8,#0x17a0
049bf8a0  add x1,sp,#0x5, LSL #12
049bf8a4  add x0,x19,x8
049bf8a8  add x1,x1,#0x790
049bf8ac  mov w2,#0x338
049bf8b0  str d0,[x19, #0x1798]
049bf8b4  bl 0x05afb2b0
049bf8b8  mov w8,#0x1ad8
049bf8bc  add x1,sp,#0x5, LSL #12
049bf8c0  mov w2,#0x338
049bf8c4  add x0,x19,x8
049bf8c8  add x1,x1,#0x458
049bf8cc  bl 0x05afb2b0
049bf8d0  ldr x8,[sp, #0xa0]
049bf8d4  ldr w9,[sp, #0x18]
049bf8d8  add x1,sp,#0x5, LSL #12
049bf8dc  ldr q0,[sp, #0x5440]
049bf8e0  add x1,x1,#0x32c
049bf8e4  mov w2,#0x114
049bf8e8  strb w9,[x8]
049bf8ec  ldur x9,[x20, #0xe]
049bf8f0  strb w29,[x8, #0x1]
049bf8f4  mov w8,#0x1e1a
049bf8f8  str q0,[x19,x8]
049bf8fc  mov w8,#0x1e34
049bf900  add x0,x19,x8
049bf904  str d11,[x19, #0x1e10]
049bf908  str x9,[x19, #0x1e28]
049bf90c  str w28,[x19, #0x1e30]
049bf910  bl 0x05afb2b0
049bf914  mov w8,#0x1f48
049bf918  add x1,sp,#0x5, LSL #12
049bf91c  mov w2,#0x110
049bf920  add x0,x19,x8
049bf924  add x1,x1,#0x218
049bf928  bl 0x05afb2b0
049bf92c  mov w8,#0x2069
049bf930  ldrh w9,[sp, #0x684]
049bf934  ldr w10,[sp, #0x40]
049bf938  add x8,x19,x8
049bf93c  add x1,sp,#0x4, LSL #12
049bf940  mov w2,#0x338
049bf944  strh w9,[x8]
049bf948  ldrb w9,[sp, #0x686]
049bf94c  add x1,x1,#0xee0
049bf950  strb w10,[x21, #0x24]
049bf954  ldrb w10,[sp, #0x682]
049bf958  strb w9,[x8, #0x2]
049bf95c  mov w8,#0x2081
049bf960  ldrh w9,[sp, #0x680]
049bf964  add x8,x19,x8
049bf968  str w25,[x19, #0x2064]
049bf96c  strh w9,[x8]
049bf970  ldr w9,[sp, #0x44]
049bf974  strb w10,[x8, #0x2]
049bf978  mov w8,#0x2088
049bf97c  add x0,x19,x8
049bf980  strb w27,[x21, #0xc]
049bf984  str s15,[x19, #0x2058]
049bf988  str d12,[x21]
049bf98c  str s14,[x19, #0x206c]
049bf990  str x23,[x19, #0x2070]
049bf994  str x24,[x19, #0x2078]
049bf998  str w9,[x19, #0x2084]
049bf99c  bl 0x05afb2b0
049bf9a0  ldr w8,[sp, #0x3c]
049bf9a4  add x1,sp,#0x4, LSL #12
049bf9a8  mov w2,#0x117
049bf9ac  add x1,x1,#0xdc8
049bf9b0  strb w8,[x21, #0x364]
049bf9b4  mov w8,#0x23c1
049bf9b8  add x0,x19,x8
049bf9bc  bl 0x05afb2b0
049bf9c0  ldr w8,[sp, #0x2c]
049bf9c4  add x1,sp,#0x4, LSL #12
049bf9c8  mov w2,#0x117
049bf9cc  add x1,x1,#0xcb0
049bf9d0  strb w8,[x21, #0x47c]
049bf9d4  mov w8,#0x24d9
049bf9d8  add x0,x19,x8
049bf9dc  bl 0x05afb2b0
049bf9e0  rev64 v0.2S,v10.2S
049bf9e4  mov w8,#0x25f1
049bf9e8  ldrh w9,[sp, #0x67c]
049bf9ec  ldp w10,w11,[sp, #0x24]
049bf9f0  add x8,x19,x8
049bf9f4  add x1,sp,#0x4, LSL #12
049bf9f8  mov w2,#0x113
049bf9fc  strh w9,[x8]
049bfa00  ldrb w9,[sp, #0x67e]
049bfa04  add x1,x1,#0xb9c
049bfa08  str d0,[x21, #0x598]
049bfa0c  ldr s0,[sp, #0xb8]
049bfa10  strb w9,[x8, #0x2]
049bfa14  mov w8,#0x2605
049bfa18  ldrh w9,[sp, #0x678]
049bfa1c  strb w10,[x21, #0x5a8]
049bfa20  ldrb w10,[sp, #0x67a]
049bfa24  add x8,x19,x8
049bfa28  str s0,[x19, #0x2608]
049bfa2c  ldp s0,s1,[sp, #0xa8]
049bfa30  strh w9,[x8]
049bfa34  ldr w9,[sp, #0x1c]
049bfa38  strb w10,[x8, #0x2]
049bfa3c  mov w8,#0x2615
049bfa40  add x0,x19,x8
049bfa44  strb w11,[x21, #0x594]
049bfa48  str s13,[x19, #0x25fc]
049bfa4c  str s9,[x19, #0x2600]
049bfa50  str s1,[x19, #0x260c]
049bfa54  str s0,[x19, #0x2610]
049bfa58  strb w9,[x21, #0x5b8]
049bfa5c  bl 0x05afb2b0
049bfa60  ldr w8,[sp, #0x20]
049bfa64  add x0,sp,#0x7b0
049bfa68  add x1,x19,#0x768
049bfa6c  mov w2,#0x1fd0
049bfa70  str wzr,[x19, #0x2734]
049bfa74  str w8,[x19, #0x2728]
049bfa78  ldr x8,[sp, #0x10]
049bfa7c  str x8,[x21, #0x6d0]
049bfa80  bl 0x05afb2b0
049bfa84  mov x0,x19
049bfa88  bl 0x049bc258
049bfa8c  adrp x29,0x5e85000
049bfa90  mov x8,x0
049bfa94  ldr x29,[x29, #0xf48]
049bfa98  ldr x20,[x8]
049bfa9c  ldr x9,[x29]
049bfaa0  ldr x0,[x9, #0x20]
049bfaa4  add x9,x0,#0x135
049bfaa8  ldrh w9,[x9]
049bfaac  tbnz w9,#0x0,0x049bfab4
049bfab0  bl 0x02a2e9f8
049bfab4  add x0,sp,#0x6, LSL #12
049bfab8  ldr w20,[x20, #0x8]
049bfabc  add x1,sp,#0x7b0
049bfac0  add x0,x0,#0xaa0
049bfac4  mov w2,#0x1fd0
049bfac8  bl 0x05afb2b0
049bfacc  adrp x8,0x5e85000
049bfad0  add x0,sp,#0x6, LSL #12
049bfad4  mov w1,w20
049bfad8  ldr x8,[x8, #0xfc8]
049bfadc  add x0,x0,#0xaa0
049bfae0  mov w2,#0x10
049bfae4  mov x3,xzr
049bfae8  mov x4,xzr
049bfaec  ldr x5,[x8]
049bfaf0  bl 0x030d097c
049bfaf4  mov w8,#0x2738
049bfaf8  str x0,[x19, #0x2738]
049bfafc  str x1,[x19, #0x2740]
049bfb00  add x0,x19,x8
049bfb04  mov x1,xzr
049bfb08  bl 0x05789704
049bfb0c  adrp x8,0x5e86000
049bfb10  mov x0,x22
049bfb14  ldr x8,[x8, #0x10]
049bfb18  ldr x1,[x8]
049bfb1c  bl 0x0356a8fc
049bfb20  adrp x23,0x5e59000
049bfb24  ldrb w8,[x26]
049bfb28  ldr x23,[x23, #0x1c0]
049bfb2c  cbz w8,0x049bfdac
049bfb30  ldr x0,[x23]
049bfb34  ldr x20,[x19, #0x3138]
049bfb38  ldr w8,[x0, #0xe4]
049bfb3c  cbnz w8,0x049bfb44
049bfb40  bl 0x029f5bd0
049bfb44  mov x0,x20
049bfb48  mov x1,xzr
049bfb4c  bl 0x057e50f4
049bfb50  tbz w0,#0x0,0x049bfdac
049bfb54  str x21,[sp, #0xb8]
049bfb58  adrp x28,0x5e86000
049bfb5c  adrp x29,0x5e86000
049bfb60  ldr x28,[x28, #0x50]
049bfb64  ldr x29,[x29, #0x70]
049bfb68  add x27,sp,#0x6, LSL #12
049bfb6c  mov x23,xzr
049bfb70  mov x24,xzr
049bfb74  mov x25,xzr
049bfb78  mov w20,wzr
049bfb7c  mov w21,wzr
049bfb80  add x27,x27,#0xaa0
049bfb84  mov x0,x19
049bfb88  bl 0x049bc258
049bfb8c  adrp x9,0x5e85000
049bfb90  mov x8,x0
049bfb94  ldr x9,[x9, #0xf48]
049bfb98  ldr x22,[x8]
049bfb9c  ldr x9,[x9]
049bfba0  ldr x0,[x9, #0x20]
049bfba4  add x9,x0,#0x135
049bfba8  ldrh w9,[x9]
049bfbac  tbnz w9,#0x0,0x049bfbb4
049bfbb0  bl 0x02a2e9f8
049bfbb4  ldrsw x8,[x22, #0x8]
049bfbb8  cmp x25,x8
049bfbbc  b.ge 0x049bfdb4
049bfbc0  mov x0,x19
049bfbc4  bl 0x049bc258
049bfbc8  ldr x9,[x28]
049bfbcc  mov x8,x0
049bfbd0  ldr x22,[x8]
049bfbd4  ldr x0,[x9, #0x20]
049bfbd8  add x9,x0,#0x135
049bfbdc  ldrh w9,[x9]
049bfbe0  tbnz w9,#0x0,0x049bfbe8
049bfbe4  bl 0x02a2e9f8
049bfbe8  ldr x22,[x22]
049bfbec  add x0,sp,#0x6, LSL #12
049bfbf0  mov w2,#0xe8
049bfbf4  add x0,x0,#0xaa0
049bfbf8  add x1,x23,x22
049bfbfc  bl 0x05afb2b0
049bfc00  add x0,sp,#0x5a8
049bfc04  add x1,x23,x22
049bfc08  mov w2,#0xd0
049bfc0c  bl 0x05afb2b0
049bfc10  ldur q0,[x27, #0xd8]
049bfc14  mov x0,x19
049bfc18  str q0,[sp, #0x590]
049bfc1c  bl 0x049bc258
049bfc20  ldr x9,[x29]
049bfc24  mov x8,x0
049bfc28  ldr x22,[x8]
049bfc2c  ldr x0,[x9, #0x20]
049bfc30  add x9,x0,#0x135
049bfc34  ldrh w9,[x9]
049bfc38  tbnz w9,#0x0,0x049bfc40
049bfc3c  bl 0x02a2e9f8
049bfc40  ldr x8,[x22]
049bfc44  add x1,sp,#0x5a8
049bfc48  mov w2,#0xd0
049bfc4c  add x22,x23,x8
049bfc50  mov x0,x22
049bfc54  bl 0x05afb2b0
049bfc58  ldr q0,[sp, #0x590]
049bfc5c  mov x0,x19
049bfc60  stp w21,w20,[x22, #0xd0]
049bfc64  stur q0,[x22, #0xd8]
049bfc68  bl 0x049bc2f4
049bfc6c  adrp x8,0x5e86000
049bfc70  mov x22,x0
049bfc74  ldr x8,[x8, #0x58]
049bfc78  str x0,[sp, #0x588]
049bfc7c  ldr x8,[x8]
049bfc80  ldr x8,[x8, #0x20]
049bfc84  ldrb w9,[x8, #0x135]
049bfc88  tbnz w9,#0x0,0x049bfc94
049bfc8c  mov x0,x8
049bfc90  bl 0x02a2e9f8
049bfc94  adrp x8,0x5e85000
049bfc98  ldr x8,[x8, #0xfc0]
049bfc9c  ldr x8,[x8]
049bfca0  ldr x0,[x8, #0x20]
049bfca4  ldr x8,[x22]
049bfca8  add x9,x0,#0x135
049bfcac  ldrh w22,[x24, x8, LSL #0x0]
049bfcb0  ldrh w9,[x9]
049bfcb4  tbnz w9,#0x0,0x049bfcbc
049bfcb8  bl 0x02a2e9f8
049bfcbc  cmp w22,#0x2
049bfcc0  b.cc 0x049bfd9c
049bfcc4  mov x0,x19
049bfcc8  mov x27,x29
049bfccc  mov x29,x28
049bfcd0  bl 0x049bc2f4
049bfcd4  adrp x8,0x5e86000
049bfcd8  mov x22,x0
049bfcdc  ldr x8,[x8, #0x58]
049bfce0  str x0,[sp, #0x588]
049bfce4  ldr x8,[x8]
049bfce8  ldr x8,[x8, #0x20]
049bfcec  ldrb w9,[x8, #0x135]
049bfcf0  tbnz w9,#0x0,0x049bfcfc
049bfcf4  mov x0,x8
049bfcf8  bl 0x02a2e9f8
049bfcfc  adrp x8,0x5e85000
049bfd00  ldr x8,[x8, #0xfc0]
049bfd04  ldr x8,[x8]
049bfd08  ldr x0,[x8, #0x20]
049bfd0c  ldr x8,[x22]
049bfd10  add x9,x0,#0x135
049bfd14  ldrh w28,[x24, x8, LSL #0x0]
049bfd18  ldrh w9,[x9]
049bfd1c  tbnz w9,#0x0,0x049bfd24
049bfd20  bl 0x02a2e9f8
049bfd24  mov x0,x19
049bfd28  bl 0x049bc2f4
049bfd2c  adrp x8,0x5e86000
049bfd30  mov x22,x0
049bfd34  ldr x8,[x8, #0x58]
049bfd38  str x0,[sp, #0x588]
049bfd3c  ldr x8,[x8]
049bfd40  ldr x8,[x8, #0x20]
049bfd44  ldrb w9,[x8, #0x135]
049bfd48  tbnz w9,#0x0,0x049bfd54
049bfd4c  mov x0,x8
049bfd50  bl 0x02a2e9f8
049bfd54  adrp x8,0x5e85000
049bfd58  ldr x8,[x8, #0xfc0]
049bfd5c  ldr x8,[x8]
049bfd60  ldr x0,[x8, #0x20]
049bfd64  ldr x8,[x22]
049bfd68  add x9,x0,#0x135
049bfd6c  ldrh w22,[x24, x8, LSL #0x0]
049bfd70  ldrh w9,[x9]
049bfd74  tbnz w9,#0x0,0x049bfd7c
049bfd78  bl 0x02a2e9f8
049bfd7c  mov w8,#0x6
049bfd80  add w21,w21,w28, LSL #0x1
049bfd84  mov x28,x29
049bfd88  madd w8,w22,w8,w20
049bfd8c  mov x29,x27
049bfd90  add x27,sp,#0x6, LSL #12
049bfd94  add x27,x27,#0xaa0
049bfd98  sub w20,w8,#0x6
049bfd9c  add x25,x25,#0x1
049bfda0  add x24,x24,#0x1, LSL #12
049bfda4  add x23,x23,#0xe8
049bfda8  b 0x049bfb84
049bfdac  mov w20,wzr
049bfdb0  b 0x049c00f4
049bfdb4  mov w0,#0x1
049bfdb8  mov x1,xzr
049bfdbc  bl 0x057b7cf8
049bfdc0  stp x0,x1,[x19, #0x110]
049bfdc4  add x0,x19,#0x110
049bfdc8  mov w1,wzr
049bfdcc  mov x2,xzr
049bfdd0  bl 0x057b96f4
049bfdd4  adrp x8,0x5e86000
049bfdd8  mov w1,#0x2
049bfddc  ldr x8,[x8, #0x78]
049bfde0  str x0,[x19, #0x120]
049bfde4  ldr x8,[x8]
049bfde8  mov x0,x8
049bfdec  bl 0x029f5b40
049bfdf0  mov x22,x0
049bfdf4  add x0,sp,#0x3, LSL #12
049bfdf8  mov w1,wzr
049bfdfc  add x0,x0,#0xed0
049bfe00  mov w2,wzr
049bfe04  mov w3,#0x3
049bfe08  mov w4,wzr
049bfe0c  mov x5,xzr
049bfe10  str xzr,[sp, #0x3ed8]
049bfe14  str xzr,[sp, #0x3ed0]
049bfe18  bl 0x057fc118
049bfe1c  cbz x22,0x049be6e4
049bfe20  ldr w8,[x22, #0x18]
049bfe24  cbz w8,0x049c0564
049bfe28  ldr q0,[sp, #0x3ed0]
049bfe2c  add x0,sp,#0x3, LSL #12
049bfe30  mov w1,#0x3
049bfe34  add x0,x0,#0x340
049bfe38  mov w2,wzr
049bfe3c  mov w3,#0x4
049bfe40  mov w4,#0x1
049bfe44  mov x5,xzr
049bfe48  str q0,[x22, #0x20]
049bfe4c  str xzr,[sp, #0x3348]
049bfe50  str xzr,[sp, #0x3340]
049bfe54  bl 0x057fc118
049bfe58  ldr w8,[x22, #0x18]
049bfe5c  tst w8,#0xfffffffe
049bfe60  b.eq 0x049c0564
049bfe64  ldr q0,[sp, #0x3340]
049bfe68  add x0,x19,#0x120
049bfe6c  mov w1,w21
049bfe70  mov x2,x22
049bfe74  mov x3,xzr
049bfe78  str q0,[x22, #0x30]
049bfe7c  bl 0x057b943c
049bfe80  add x0,x19,#0x120
049bfe84  mov w1,w20
049bfe88  mov w2,wzr
049bfe8c  mov x3,xzr
049bfe90  bl 0x057b9444
049bfe94  add x0,sp,#0x4, LSL #12
049bfe98  mov w1,wzr
049bfe9c  mov w2,#0x114
049bfea0  add x0,x0,#0xa88
049bfea4  add x29,sp,#0x4, LSL #12
049bfea8  add x29,x29,#0xa88
049bfeac  bl 0x05afb2a0
049bfeb0  add x0,sp,#0x4, LSL #12
049bfeb4  mov w1,wzr
049bfeb8  mov w2,#0x42f
049bfebc  add x0,x0,#0x658
049bfec0  add x27,sp,#0x4, LSL #12
049bfec4  add x27,x27,#0x658
049bfec8  bl 0x05afb2a0
049bfecc  mov x0,x19
049bfed0  bl 0x049bc258
049bfed4  adrp x8,0x5e86000
049bfed8  ldr x8,[x8, #0x60]
049bfedc  ldr x0,[x0]
049bfee0  ldr x1,[x8]
049bfee4  bl 0x035b3e2c
049bfee8  mov x21,x0
049bfeec  ldr x25,[x19, #0x120]
049bfef0  mov x0,x19
049bfef4  mov x22,x1
049bfef8  bl 0x049bc2f4
049bfefc  adrp x8,0x5e86000
049bff00  ldr x8,[x8, #0x68]
049bff04  ldr x1,[x8]
049bff08  bl 0x0359d994
049bff0c  mov w8,#0x3148
049bff10  mov x23,x0
049bff14  mov x24,x1
049bff18  add x8,x19,x8
049bff1c  ldrb w28,[x26]
049bff20  ldr s8,[x19, #0x3168]
049bff24  ldp q0,q1,[x8]
049bff28  add x8,sp,#0x4, LSL #12
049bff2c  add x8,x8,#0x210
049bff30  add x0,sp,#0x170
049bff34  mov x1,xzr
049bff38  stp q0,q1,[sp, #0x170]
049bff3c  bl 0x049cf4ac
049bff40  add x1,sp,#0x4, LSL #12
049bff44  add x0,x29,#0x4
049bff48  mov w2,#0x110
049bff4c  add x1,x1,#0x210
049bff50  bl 0x05afb2b0
049bff54  ldr x8,[x19, #0x31a0]
049bff58  ldr q0,[x19, #0x3170]
049bff5c  add x0,sp,#0x130
049bff60  ldr q1,[x19, #0x3180]
049bff64  ldr q2,[x19, #0x3190]
049bff68  mov x1,xzr
049bff6c  str x8,[sp, #0x160]
049bff70  add x8,sp,#0x3, LSL #12
049bff74  ldrb w29,[x26, #0xa8]
049bff78  add x8,x8,#0xaa0
049bff7c  stp q0,q1,[sp, #0x130]
049bff80  str q2,[sp, #0x150]
049bff84  bl 0x049cf208
049bff88  add x1,sp,#0x3, LSL #12
049bff8c  add x0,x27,#0x7
049bff90  mov w2,#0x428
049bff94  add x1,x1,#0xaa0
049bff98  bl 0x05afb2b0
049bff9c  mov w8,#0x31a8
049bffa0  add x0,sp,#0xf0
049bffa4  mov x1,xzr
049bffa8  add x8,x19,x8
049bffac  ldp q0,q1,[x8]
049bffb0  ldr q2,[x8, #0x20]
049bffb4  ldr x8,[x19, #0x31d8]
049bffb8  str q2,[sp, #0x110]
049bffbc  str x8,[sp, #0x120]
049bffc0  add x8,sp,#0x3, LSL #12
049bffc4  add x8,x8,#0x678
049bffc8  stp q0,q1,[sp, #0xf0]
049bffcc  bl 0x049cf208
049bffd0  mov w8,#0x2761
049bffd4  str x22,[x19, #0x2750]
049bffd8  ldr x22,[sp, #0xb8]
049bffdc  str wzr,[x19, x8, LSL #0x0]
049bffe0  mov w8,#0x277c
049bffe4  add x1,sp,#0x4, LSL #12
049bffe8  add x0,x19,x8
049bffec  add x1,x1,#0xa88
049bfff0  mov w2,#0x114
049bfff4  str x21,[x19, #0x2748]
049bfff8  mov w21,#0x2748
049bfffc  str x25,[x19, #0x2758]
049c0000  strb w28,[x22, #0x704]
049c0004  str wzr,[x19, #0x2764]
049c0008  str x23,[x19, #0x2768]
049c000c  str x24,[x19, #0x2770]
049c0010  str s8,[x19, #0x2778]
049c0014  bl 0x05afb2b0
049c0018  mov w8,#0x2891
049c001c  add x1,sp,#0x4, LSL #12
049c0020  mov w2,#0x42f
049c0024  add x0,x19,x8
049c0028  add x1,x1,#0x658
049c002c  strb w29,[x22, #0x834]
049c0030  bl 0x05afb2b0
049c0034  mov w8,#0x2cc0
049c0038  add x1,sp,#0x3, LSL #12
049c003c  mov w2,#0x428
049c0040  add x0,x19,x8
049c0044  add x1,x1,#0x678
049c0048  bl 0x05afb2b0
049c004c  add x0,sp,#0x7b0
049c0050  add x1,x19,x21
049c0054  mov w2,#0x9a0
049c0058  bl 0x05afb2b0
049c005c  mov x0,x19
049c0060  bl 0x049bc258
049c0064  adrp x29,0x5e85000
049c0068  mov x8,x0
049c006c  ldr x29,[x29, #0xf48]
049c0070  ldr x21,[x8]
049c0074  ldr x9,[x29]
049c0078  ldr x0,[x9, #0x20]
049c007c  add x9,x0,#0x135
049c0080  ldrh w9,[x9]
049c0084  tbnz w9,#0x0,0x049c008c
049c0088  bl 0x02a2e9f8
049c008c  add x0,sp,#0x6, LSL #12
049c0090  ldr w21,[x21, #0x8]
049c0094  ldr x22,[x19, #0x2738]
049c0098  ldr x23,[x19, #0x2740]
049c009c  add x0,x0,#0xaa0
049c00a0  add x1,sp,#0x7b0
049c00a4  mov w2,#0x9a0
049c00a8  bl 0x05afb2b0
049c00ac  adrp x8,0x5e85000
049c00b0  add x0,sp,#0x6, LSL #12
049c00b4  mov w1,w21
049c00b8  ldr x8,[x8, #0xfd0]
049c00bc  add x0,x0,#0xaa0
049c00c0  mov w2,#0x10
049c00c4  mov x3,x22
049c00c8  mov x4,x23
049c00cc  ldr x5,[x8]
049c00d0  bl 0x030d0bfc
049c00d4  mov w8,#0x30e8
049c00d8  str x0,[x19, #0x30e8]
049c00dc  str x1,[x19, #0x30f0]
049c00e0  add x0,x19,x8
049c00e4  mov x1,xzr
049c00e8  bl 0x05789704
049c00ec  adrp x23,0x5e59000
049c00f0  ldr x23,[x23, #0x1c0]
049c00f4  add x0,x19,#0x108
049c00f8  mov w1,#0x1
049c00fc  mov x2,xzr
049c0100  bl 0x057b9498
049c0104  mov x0,x19
049c0108  bl 0x049bc258
049c010c  ldr x9,[x29]
049c0110  mov x8,x0
049c0114  ldr x21,[x8]
049c0118  ldr x0,[x9, #0x20]
049c011c  add x9,x0,#0x135
049c0120  ldrh w9,[x9]
049c0124  tbnz w9,#0x0,0x049c012c
049c0128  bl 0x02a2e9f8
049c012c  ldr w8,[x21, #0x8]
049c0130  movi v0.2D,#0x0
049c0134  add x0,sp,#0x6, LSL #12
049c0138  add x0,x0,#0xaa0
049c013c  mov w1,wzr
049c0140  mov w3,wzr
049c0144  add w8,w8,w8, LSL #0x1
049c0148  mov x4,xzr
049c014c  lsl w2,w8,#0x1
049c0150  str q0,[sp, #0x6ac0]
049c0154  str q0,[sp, #0x6ab0]
049c0158  str q0,[sp, #0x6aa0]
049c015c  bl 0x057fbd54
049c0160  ldr q0,[sp, #0x6aa0]
049c0164  ldr q1,[sp, #0x6ab0]
049c0168  add x0,x19,#0x108
049c016c  ldr q2,[sp, #0x6ac0]
049c0170  add x2,sp,#0xc0
049c0174  mov w1,wzr
049c0178  mov w3,wzr
049c017c  mov x4,xzr
049c0180  stp q0,q1,[sp, #0xc0]
049c0184  str q2,[sp, #0xe0]
049c0188  bl 0x057b94dc
049c018c  ldp x21,x22,[x19, #0xf8]
049c0190  mov x0,x19
049c0194  bl 0x049bb87c
049c0198  mov x2,x0
049c019c  mov x0,x21
049c01a0  mov x1,x22
049c01a4  mov w3,#0xd
049c01a8  mov x4,xzr
049c01ac  bl 0x057b7e44
049c01b0  mov x0,x19
049c01b4  bl 0x049bb87c
049c01b8  cbz x0,0x049be6e4
049c01bc  mov x1,xzr
049c01c0  bl 0x057b8e60
049c01c4  mov x0,x19
049c01c8  mov x1,xzr
049c01cc  bl 0x058dc2f0
049c01d0  mov x21,x0
049c01d4  mov x0,x19
049c01d8  bl 0x049bb87c
049c01dc  cbz x21,0x049be6e4
049c01e0  mov x1,x0
049c01e4  mov x0,x21
049c01e8  mov x2,xzr
049c01ec  bl 0x05aa0470
049c01f0  ldr x8,[x19]
049c01f4  mov x0,x19
049c01f8  ldr x9,[x8, #0x308]
049c01fc  ldr x1,[x8, #0x310]
049c0200  blr x9
049c0204  ldrb w8,[x26]
049c0208  cbz w8,0x049c0248
049c020c  ldr x0,[x23]
049c0210  ldr x21,[x19, #0x3138]
049c0214  ldr w8,[x0, #0xe4]
049c0218  cbnz w8,0x049c0220
049c021c  bl 0x029f5bd0
049c0220  mov x0,x21
049c0224  mov x1,xzr
049c0228  bl 0x057e50f4
049c022c  tbz w0,#0x0,0x049c0248
049c0230  ldr x0,[x19, #0x3138]
049c0234  cbz x0,0x049be6e4
049c0238  ldp x2,x3,[x19, #0x118]
049c023c  mov w4,w20
049c0240  ldr x1,[x19, #0x110]
049c0244  bl 0x049c2d74
049c0248  mov x0,x19
049c024c  bl 0x049bc258
049c0250  ldr x9,[x29]
049c0254  mov x8,x0
049c0258  ldr x20,[x8]
049c025c  ldr x0,[x9, #0x20]
049c0260  add x9,x0,#0x135
049c0264  ldrh w9,[x9]
049c0268  tbnz w9,#0x0,0x049c0270
049c026c  bl 0x02a2e9f8
049c0270  ldr w8,[x20, #0x8]
049c0274  cmp w8,#0x1
049c0278  b.lt 0x049c0518
049c027c  mov x0,x19
049c0280  bl 0x049bc258
049c0284  mov x20,x0
049c0288  mov x0,x19
049c028c  bl 0x049bc258
049c0290  ldr x9,[x29]
049c0294  mov x8,x0
049c0298  ldr x22,[x8]
049c029c  ldr x0,[x9, #0x20]
049c02a0  add x9,x0,#0x135
049c02a4  ldrh w9,[x9]
049c02a8  tbnz w9,#0x0,0x049c02b0
049c02ac  bl 0x02a2e9f8
049c02b0  adrp x21,0x5e86000
049c02b4  mov x0,x20
049c02b8  ldr x21,[x21, #0x28]
049c02bc  ldr w8,[x22, #0x8]
049c02c0  ldr x2,[x21]
049c02c4  sub w1,w8,#0x1
049c02c8  bl 0x035b36a8
049c02cc  ldr s0,[x0]
049c02d0  ldr s1,[x0, #0x8]
049c02d4  fcmp s0,s1
049c02d8  b.lt 0x049c0518
049c02dc  adrp x22,0x5e86000
049c02e0  adrp x23,0x5e86000
049c02e4  adrp x24,0x5e86000
049c02e8  adrp x25,0x5e85000
049c02ec  ldr x22,[x22, #0x48]
049c02f0  ldr x23,[x23, #0x40]
049c02f4  ldr x24,[x24, #0x30]
049c02f8  ldr x25,[x25, #0xfc0]
049c02fc  mov w27,#0x1
049c0300  ldrb w8,[x26]
049c0304  cbz w8,0x049c0384
049c0308  mov x0,x19
049c030c  bl 0x049bc2f4
049c0310  str x0,[sp, #0x588]
049c0314  mov x0,x19
049c0318  bl 0x049bc258
049c031c  ldr x9,[x29]
049c0320  mov x8,x0
049c0324  ldr x20,[x8]
049c0328  ldr x0,[x9, #0x20]
049c032c  add x9,x0,#0x135
049c0330  ldrh w9,[x9]
049c0334  tbnz w9,#0x0,0x049c033c
049c0338  bl 0x02a2e9f8
049c033c  ldr w8,[x20, #0x8]
049c0340  ldr x2,[x24]
049c0344  add x0,sp,#0x588
049c0348  sub w1,w8,#0x1
049c034c  bl 0x0359d1fc
049c0350  ldr x8,[x25]
049c0354  mov x20,x0
049c0358  ldr x8,[x8, #0x20]
049c035c  add x9,x8,#0x135
049c0360  ldrh w9,[x9]
049c0364  tbnz w9,#0x0,0x049c0370
049c0368  mov x0,x8
049c036c  bl 0x02a2e9f8
049c0370  ldrh w8,[x20]
049c0374  cmp w8,#0x2
049c0378  b.cc 0x049c0384
049c037c  ldrb w8,[x26, #0xa9]
049c0380  cbz w8,0x049c0518
049c0384  ldr x0,[x19, #0x3248]
049c0388  cbz x0,0x049be6e4
049c038c  mov x1,xzr
049c0390  bl 0x057f5098
049c0394  ldrb w8,[x26, #0x140]
049c0398  cbnz w8,0x049c03b0
049c039c  ldr x0,[x19, #0x3240]
049c03a0  strb w27,[x26, #0x140]
049c03a4  cbz x0,0x049be6e4
049c03a8  mov x1,xzr
049c03ac  bl 0x057f5098
049c03b0  mov x0,x19
049c03b4  bl 0x049bc258
049c03b8  ldr x9,[x29]
049c03bc  mov x8,x0
049c03c0  ldr x20,[x8]
049c03c4  ldr x0,[x9, #0x20]
049c03c8  add x9,x0,#0x135
049c03cc  ldrh w9,[x9]
049c03d0  tbnz w9,#0x0,0x049c03d8
049c03d4  bl 0x02a2e9f8
049c03d8  ldr w8,[x20, #0x8]
049c03dc  cmp w8,#0x1
049c03e0  b.gt 0x049c03f4
049c03e4  ldr x0,[x19, #0x3250]
049c03e8  cbz x0,0x049be6e4
049c03ec  mov x1,xzr
049c03f0  bl 0x057f5098
049c03f4  ldrb w8,[x26]
049c03f8  cbz w8,0x049c0444
049c03fc  mov x0,x19
049c0400  bl 0x049bc2f4
049c0404  str x0,[sp, #0x588]
049c0408  mov x0,x19
049c040c  bl 0x049bc258
049c0410  ldr x9,[x29]
049c0414  mov x8,x0
049c0418  ldr x20,[x8]
049c041c  ldr x0,[x9, #0x20]
049c0420  add x9,x0,#0x135
049c0424  ldrh w9,[x9]
049c0428  tbnz w9,#0x0,0x049c0430
049c042c  bl 0x02a2e9f8
049c0430  ldr w8,[x20, #0x8]
049c0434  ldr x2,[x23]
049c0438  add x0,sp,#0x588
049c043c  sub w1,w8,#0x1
049c0440  bl 0x0359d790
049c0444  mov x0,x19
049c0448  bl 0x049bc258
049c044c  mov x20,x0
049c0450  mov x0,x19
049c0454  bl 0x049bc258
049c0458  ldr x9,[x29]
049c045c  mov x8,x0
049c0460  ldr x28,[x8]
049c0464  ldr x0,[x9, #0x20]
049c0468  add x9,x0,#0x135
049c046c  ldrh w9,[x9]
049c0470  tbnz w9,#0x0,0x049c0478
049c0474  bl 0x02a2e9f8
049c0478  ldr w8,[x28, #0x8]
049c047c  ldr x2,[x22]
049c0480  mov x0,x20
049c0484  sub w1,w8,#0x1
049c0488  bl 0x035b3c28
049c048c  mov x0,x19
049c0490  bl 0x049bc258
049c0494  ldr x9,[x29]
049c0498  mov x8,x0
049c049c  ldr x20,[x8]
049c04a0  ldr x0,[x9, #0x20]
049c04a4  add x9,x0,#0x135
049c04a8  ldrh w9,[x9]
049c04ac  tbnz w9,#0x0,0x049c04b4
049c04b0  bl 0x02a2e9f8
049c04b4  ldr w8,[x20, #0x8]
049c04b8  cmp w8,#0x1
049c04bc  b.lt 0x049c0518
049c04c0  mov x0,x19
049c04c4  bl 0x049bc258
049c04c8  mov x20,x0
049c04cc  mov x0,x19
049c04d0  bl 0x049bc258
049c04d4  ldr x9,[x29]
049c04d8  mov x8,x0
049c04dc  ldr x28,[x8]
049c04e0  ldr x0,[x9, #0x20]
049c04e4  add x9,x0,#0x135
049c04e8  ldrh w9,[x9]
049c04ec  tbnz w9,#0x0,0x049c04f4
049c04f0  bl 0x02a2e9f8
049c04f4  ldr w8,[x28, #0x8]
049c04f8  ldr x2,[x21]
049c04fc  mov x0,x20
049c0500  sub w1,w8,#0x1
049c0504  bl 0x035b36a8
049c0508  ldr s0,[x0]
049c050c  ldr s1,[x0, #0x8]
049c0510  fcmp s0,s1
049c0514  b.ge 0x049c0300
049c0518  ldr x8,[sp, #0xb0]
049c051c  add x9,sp,#0xa80
049c0520  ldr x8,[x8, #0x28]
049c0524  ldr x9,[x9, #0x7ff8]
049c0528  cmp x8,x9
049c052c  b.ne 0x049c0580
049c0530  add sp,sp,#0x8, LSL #12
049c0534  add sp,sp,#0xa80
049c0538  ldp x20,x19,[sp, #0x90]
049c053c  ldp x22,x21,[sp, #0x80]
049c0540  ldp x24,x23,[sp, #0x70]
049c0544  ldp x26,x25,[sp, #0x60]
049c0548  ldp x28,x27,[sp, #0x50]
049c054c  ldp x29,x30,[sp, #0x40]
049c0550  ldp d9,d8,[sp, #0x30]
049c0554  ldp d11,d10,[sp, #0x20]
049c0558  ldp d13,d12,[sp, #0x10]
049c055c  ldp d15,d14,[sp], #0xa0
049c0560  ret
049c0564  ldr x8,[sp, #0xb0]
049c0568  add x9,sp,#0xa80
049c056c  ldr x8,[x8, #0x28]
049c0570  ldr x9,[x9, #0x7ff8]
049c0574  cmp x8,x9
049c0578  b.ne 0x049c0580
049c057c  bl 0x029f5d04
049c0580  bl 0x05afb240
