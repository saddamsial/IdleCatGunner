02c7559c  stp d9,d8,[sp, #-0x40]!
02c755a0  str x30,[sp, #0x10]
02c755a4  stp x22,x21,[sp, #0x20]
02c755a8  stp x20,x19,[sp, #0x30]
02c755ac  adrp x20,0x625c000
02c755b0  mov x19,x0
02c755b4  ldrb w8,[x20, #0x2e6]
02c755b8  tbnz w8,#0x0,0x02c755dc
02c755bc  adrp x0,0x5e63000
02c755c0  ldr x0,[x0, #0x170]
02c755c4  bl 0x029f5a50
02c755c8  adrp x0,0x5e5d000
02c755cc  ldr x0,[x0, #0x5e8]
02c755d0  bl 0x029f5a50
02c755d4  mov w8,#0x1
02c755d8  strb w8,[x20, #0x2e6]
02c755dc  ldr w8,[x19, #0x10]
02c755e0  ldr x20,[x19, #0x20]
02c755e4  cmp w8,#0x1
02c755e8  b.eq 0x02c75804
02c755ec  cbnz w8,0x02c75928
02c755f0  adrp x8,0x5e63000
02c755f4  mov w9,#0xffffffff
02c755f8  mov w1,#0x5
02c755fc  ldr x8,[x8, #0x170]
02c75600  str w9,[x19, #0x10]
02c75604  ldr x0,[x8]
02c75608  bl 0x029f5b40
02c7560c  adrp x22,0x5e5d000
02c75610  mov x21,x0
02c75614  mov w1,#0x2
02c75618  ldr x22,[x22, #0x5e8]
02c7561c  ldr x8,[x22]
02c75620  mov x0,x8
02c75624  bl 0x029f5b40
02c75628  cbz x21,0x02c75a14
02c7562c  ldr w8,[x21, #0x18]
02c75630  cbz w8,0x02c75a18
02c75634  mov x1,x0
02c75638  mov x0,x21
02c7563c  str x1,[x0, #0x20]!
02c75640  bl 0x029f59f4
02c75644  ldr x0,[x22]
02c75648  mov w1,#0x2
02c7564c  bl 0x029f5b40
02c75650  cbz x0,0x02c75a14
02c75654  ldr w8,[x0, #0x18]
02c75658  mov x1,x0
02c7565c  cbz w8,0x02c75a18
02c75660  mov w9,#0xcccd
02c75664  cmp w8,#0x1
02c75668  movk w9,#0x3f8c, LSL #16
02c7566c  str w9,[x1, #0x20]
02c75670  b.eq 0x02c75a18
02c75674  mov w8,#0x999a
02c75678  movk w8,#0x3e19, LSL #16
02c7567c  str w8,[x1, #0x24]
02c75680  ldr w8,[x21, #0x18]
02c75684  tst w8,#0xfffffffe
02c75688  b.eq 0x02c75a18
02c7568c  mov x0,x21
02c75690  str x1,[x0, #0x28]!
02c75694  bl 0x029f59f4
02c75698  ldr x0,[x22]
02c7569c  mov w1,#0x2
02c756a0  bl 0x029f5b40
02c756a4  cbz x0,0x02c75a14
02c756a8  ldr w8,[x0, #0x18]
02c756ac  mov x1,x0
02c756b0  cbz w8,0x02c75a18
02c756b4  mov w9,#0x3333
02c756b8  cmp w8,#0x1
02c756bc  movk w9,#0x3f73, LSL #16
02c756c0  str w9,[x1, #0x20]
02c756c4  b.eq 0x02c75a18
02c756c8  ldr w8,[x21, #0x18]
02c756cc  mov w9,#0xd70a
02c756d0  movk w9,#0x3da3, LSL #16
02c756d4  cmp w8,#0x2
02c756d8  str w9,[x1, #0x24]
02c756dc  b.ls 0x02c75a18
02c756e0  mov x0,x21
02c756e4  str x1,[x0, #0x30]!
02c756e8  bl 0x029f59f4
02c756ec  ldr x0,[x22]
02c756f0  mov w1,#0x2
02c756f4  bl 0x029f5b40
02c756f8  cbz x0,0x02c75a14
02c756fc  ldr w8,[x0, #0x18]
02c75700  mov x1,x0
02c75704  cbz w8,0x02c75a18
02c75708  mov w9,#0x8f5c
02c7570c  cmp w8,#0x1
02c75710  movk w9,#0x3f82, LSL #16
02c75714  str w9,[x1, #0x20]
02c75718  b.eq 0x02c75a18
02c7571c  mov w8,#0xc28f
02c75720  movk w8,#0x3d75, LSL #16
02c75724  str w8,[x1, #0x24]
02c75728  ldr w8,[x21, #0x18]
02c7572c  tst w8,#0xfffffffc
02c75730  b.eq 0x02c75a18
02c75734  mov x0,x21
02c75738  str x1,[x0, #0x38]!
02c7573c  bl 0x029f59f4
02c75740  ldr x0,[x22]
02c75744  mov w1,#0x2
02c75748  bl 0x029f5b40
02c7574c  cbz x0,0x02c75a14
02c75750  ldr w8,[x0, #0x18]
02c75754  mov x1,x0
02c75758  cbz w8,0x02c75a18
02c7575c  mov w9,#0x3f800000
02c75760  cmp w8,#0x1
02c75764  str w9,[x1, #0x20]
02c75768  b.eq 0x02c75a18
02c7576c  ldr w8,[x21, #0x18]
02c75770  mov w9,#0xcccd
02c75774  movk w9,#0x3d4c, LSL #16
02c75778  cmp w8,#0x4
02c7577c  str w9,[x1, #0x24]
02c75780  b.ls 0x02c75a18
02c75784  mov x0,x21
02c75788  str x1,[x0, #0x40]!
02c7578c  bl 0x029f59f4
02c75790  mov x0,x19
02c75794  mov x1,x21
02c75798  str x21,[x0, #0x28]!
02c7579c  bl 0x029f59f4
02c757a0  cbz x20,0x02c75a14
02c757a4  mov x0,x20
02c757a8  mov x1,xzr
02c757ac  bl 0x057dc0f8
02c757b0  adrp x22,0x625b000
02c757b4  mov x21,x0
02c757b8  ldrb w8,[x22, #0x26f]
02c757bc  cbnz w8,0x02c757d4
02c757c0  adrp x0,0x5e58000
02c757c4  ldr x0,[x0, #0xbf8]
02c757c8  bl 0x029f5a50
02c757cc  mov w8,#0x1
02c757d0  strb w8,[x22, #0x26f]
02c757d4  cbz x21,0x02c75a14
02c757d8  adrp x8,0x5e58000
02c757dc  mov x0,x21
02c757e0  mov x1,xzr
02c757e4  ldr x8,[x8, #0xbf8]
02c757e8  ldr x8,[x8]
02c757ec  ldr x8,[x8, #0xb8]
02c757f0  ldp s1,s2,[x8, #0x4]
02c757f4  ldr s0,[x8]
02c757f8  bl 0x057ef654
02c757fc  mov w21,#0x1
02c75800  b 0x02c758e0
02c75804  ldp s0,s8,[x19, #0x4c]
02c75808  mov w8,#0xffffffff
02c7580c  str w8,[x19, #0x10]
02c75810  b 0x02c758a0
02c75814  cbz x0,0x02c75a14
02c75818  mov x1,xzr
02c7581c  bl 0x057ef578
02c75820  ldr x8,[x19, #0x28]
02c75824  stp s0,s1,[x19, #0x34]
02c75828  str s2,[x19, #0x3c]
02c7582c  cbz x8,0x02c75a14
02c75830  ldrsw x9,[x19, #0x30]
02c75834  ldr w10,[x8, #0x18]
02c75838  cmp w9,w10
02c7583c  b.cs 0x02c75a18
02c75840  add x10,x8,x9, LSL #0x3
02c75844  ldr x11,[x10, #0x20]!
02c75848  cbz x11,0x02c75a14
02c7584c  ldr w12,[x11, #0x18]
02c75850  cbz w12,0x02c75a18
02c75854  ldr d0,[x20, #0xf8]
02c75858  ldr s1,[x11, #0x20]
02c7585c  ldr s2,[x20, #0x100]
02c75860  fmul v0.2S,v0.2S,v1.S[0x0]
02c75864  fmul s1,s2,s1
02c75868  str d0,[x19, #0x40]
02c7586c  str s1,[x19, #0x48]
02c75870  ldr w8,[x8, #0x18]
02c75874  cmp w9,w8
02c75878  b.cs 0x02c75a18
02c7587c  ldr x8,[x10]
02c75880  cbz x8,0x02c75a14
02c75884  ldr w9,[x8, #0x18]
02c75888  tst w9,#0xfffffffe
02c7588c  b.eq 0x02c75a18
02c75890  ldr s0,[x8, #0x24]
02c75894  movi d8,#0x0
02c75898  str wzr,[x19, #0x50]
02c7589c  str s0,[x19, #0x4c]
02c758a0  fcmp s8,s0
02c758a4  b.mi 0x02c75930
02c758a8  cbz x20,0x02c75a14
02c758ac  mov x0,x20
02c758b0  mov x1,xzr
02c758b4  bl 0x057dc0f8
02c758b8  cbz x0,0x02c75a14
02c758bc  ldp s1,s2,[x19, #0x44]
02c758c0  mov x1,xzr
02c758c4  ldr s0,[x19, #0x40]
02c758c8  bl 0x057ef654
02c758cc  ldr w8,[x19, #0x30]
02c758d0  stur xzr,[x19, #0x3c]
02c758d4  stur xzr,[x19, #0x34]
02c758d8  add w21,w8,#0x1
02c758dc  stur xzr,[x19, #0x44]
02c758e0  ldr x8,[x19, #0x28]
02c758e4  str w21,[x19, #0x30]
02c758e8  cbz x8,0x02c75a14
02c758ec  ldr w22,[x8, #0x18]
02c758f0  mov x0,x20
02c758f4  mov x1,xzr
02c758f8  bl 0x057dc0f8
02c758fc  cmp w21,w22
02c75900  b.lt 0x02c75814
02c75904  cbz x0,0x02c75a14
02c75908  ldp s1,s2,[x20, #0xfc]
02c7590c  mov x1,xzr
02c75910  ldr s0,[x20, #0xf8]
02c75914  bl 0x057ef654
02c75918  add x0,x20,#0x110
02c7591c  mov x1,xzr
02c75920  str xzr,[x20, #0x110]
02c75924  bl 0x029f59f4
02c75928  mov w0,wzr
02c7592c  b 0x02c75a00
02c75930  mov x0,xzr
02c75934  bl 0x057ebabc
02c75938  fadd s8,s8,s0
02c7593c  str s8,[x19, #0x50]
02c75940  cbz x20,0x02c75a14
02c75944  ldr s9,[x19, #0x4c]
02c75948  mov x0,x20
02c7594c  mov x1,xzr
02c75950  bl 0x057dc0f8
02c75954  cbz x0,0x02c75a14
02c75958  fdiv s0,s8,s9
02c7595c  fmov s1,0x3f800000
02c75960  movi d3,#0x0
02c75964  fmov s4,0x40400000
02c75968  mov x1,xzr
02c7596c  fcmp s0,s1
02c75970  fcsel s2,s1,s0,gt
02c75974  fcmp s0,#0.0
02c75978  fcsel s0,s3,s2,mi
02c7597c  fcmp s0,#0.0
02c75980  fcsel s0,s3,s0,mi
02c75984  fadd s2,s0,s0
02c75988  fmul s4,s0,s4
02c7598c  fmul s2,s0,s2
02c75990  fmul s4,s0,s4
02c75994  fmul s0,s0,s2
02c75998  fsub s0,s4,s0
02c7599c  ldr s4,[x19, #0x48]
02c759a0  fsub s2,s1,s0
02c759a4  fmul s2,s2,s3
02c759a8  fadd s0,s0,s2
02c759ac  ldr d2,[x19, #0x40]
02c759b0  fcmp s0,s1
02c759b4  fcsel s1,s1,s0,gt
02c759b8  fcmp s0,#0.0
02c759bc  ldur d0,[x19, #0x34]
02c759c0  fsub v2.2S,v2.2S,v0.2S
02c759c4  fcsel s1,s3,s1,mi
02c759c8  ldr s3,[x19, #0x3c]
02c759cc  fsub s4,s4,s3
02c759d0  fmul v2.2S,v2.2S,v1.S[0x0]
02c759d4  fmul s1,s1,s4
02c759d8  fadd v0.2S,v0.2S,v2.2S
02c759dc  fadd s2,s3,s1
02c759e0  dup s1,v0.S[0x1]
02c759e4  bl 0x057ef654
02c759e8  str xzr,[x19, #0x18]!
02c759ec  mov x0,x19
02c759f0  mov x1,xzr
02c759f4  bl 0x029f59f4
02c759f8  mov w0,#0x1
02c759fc  stur w0,[x19, #-0x8]
02c75a00  ldp x20,x19,[sp, #0x30]
02c75a04  ldr x30,[sp, #0x10]
02c75a08  ldp x22,x21,[sp, #0x20]
02c75a0c  ldp d9,d8,[sp], #0x40
02c75a10  ret
02c75a14  bl 0x029f5cfc
02c75a18  bl 0x029f5d04
