02c814e0  stp d9,d8,[sp, #-0x40]!
02c814e4  str x30,[sp, #0x10]
02c814e8  stp x22,x21,[sp, #0x20]
02c814ec  stp x20,x19,[sp, #0x30]
02c814f0  adrp x20,0x625c000
02c814f4  mov x19,x0
02c814f8  ldrb w8,[x20, #0x35b]
02c814fc  tbnz w8,#0x0,0x02c81520
02c81500  adrp x0,0x5e63000
02c81504  ldr x0,[x0, #0x170]
02c81508  bl 0x029f5a50
02c8150c  adrp x0,0x5e5d000
02c81510  ldr x0,[x0, #0x5e8]
02c81514  bl 0x029f5a50
02c81518  mov w8,#0x1
02c8151c  strb w8,[x20, #0x35b]
02c81520  ldr w8,[x19, #0x10]
02c81524  ldr x20,[x19, #0x20]
02c81528  cmp w8,#0x1
02c8152c  b.eq 0x02c81678
02c81530  cbnz w8,0x02c817b0
02c81534  adrp x8,0x5e63000
02c81538  mov w9,#0xffffffff
02c8153c  mov w1,#0x3
02c81540  ldr x8,[x8, #0x170]
02c81544  str w9,[x19, #0x10]
02c81548  ldr x0,[x8]
02c8154c  bl 0x029f5b40
02c81550  adrp x22,0x5e5d000
02c81554  mov x21,x0
02c81558  mov w1,#0x2
02c8155c  ldr x22,[x22, #0x5e8]
02c81560  ldr x8,[x22]
02c81564  mov x0,x8
02c81568  bl 0x029f5b40
02c8156c  cbz x0,0x02c8189c
02c81570  ldr w8,[x0, #0x18]
02c81574  mov x1,x0
02c81578  cbz w8,0x02c818a0
02c8157c  mov w9,#0x6666
02c81580  cmp w8,#0x1
02c81584  movk w9,#0x3f86, LSL #16
02c81588  str w9,[x1, #0x20]
02c8158c  b.eq 0x02c818a0
02c81590  mov w8,#0xd70a
02c81594  movk w8,#0x3da3, LSL #16
02c81598  str w8,[x1, #0x24]
02c8159c  cbz x21,0x02c8189c
02c815a0  ldr w8,[x21, #0x18]
02c815a4  cbz w8,0x02c818a0
02c815a8  mov x0,x21
02c815ac  str x1,[x0, #0x20]!
02c815b0  bl 0x029f59f4
02c815b4  ldr x0,[x22]
02c815b8  mov w1,#0x2
02c815bc  bl 0x029f5b40
02c815c0  cbz x0,0x02c8189c
02c815c4  ldr w8,[x0, #0x18]
02c815c8  mov x1,x0
02c815cc  cbz w8,0x02c818a0
02c815d0  mov w9,#0xe148
02c815d4  cmp w8,#0x1
02c815d8  movk w9,#0x3f7a, LSL #16
02c815dc  str w9,[x1, #0x20]
02c815e0  b.eq 0x02c818a0
02c815e4  mov w8,#0xc28f
02c815e8  movk w8,#0x3d75, LSL #16
02c815ec  str w8,[x1, #0x24]
02c815f0  ldr w8,[x21, #0x18]
02c815f4  tst w8,#0xfffffffe
02c815f8  b.eq 0x02c818a0
02c815fc  mov x0,x21
02c81600  str x1,[x0, #0x28]!
02c81604  bl 0x029f59f4
02c81608  ldr x0,[x22]
02c8160c  mov w1,#0x2
02c81610  bl 0x029f5b40
02c81614  cbz x0,0x02c8189c
02c81618  ldr w8,[x0, #0x18]
02c8161c  mov x1,x0
02c81620  cbz w8,0x02c818a0
02c81624  mov w9,#0x3f800000
02c81628  cmp w8,#0x1
02c8162c  str w9,[x1, #0x20]
02c81630  b.eq 0x02c818a0
02c81634  ldr w8,[x21, #0x18]
02c81638  mov w9,#0xcccd
02c8163c  movk w9,#0x3d4c, LSL #16
02c81640  cmp w8,#0x2
02c81644  str w9,[x1, #0x24]
02c81648  b.ls 0x02c818a0
02c8164c  mov x0,x21
02c81650  str x1,[x0, #0x30]!
02c81654  bl 0x029f59f4
02c81658  mov x22,x19
02c8165c  mov x1,x21
02c81660  str x21,[x22, #0x28]!
02c81664  mov x0,x22
02c81668  bl 0x029f59f4
02c8166c  mov w8,wzr
02c81670  str wzr,[x22, #0x8]
02c81674  b 0x02c81768
02c81678  ldp s0,s8,[x19, #0x4c]
02c8167c  mov w8,#0xffffffff
02c81680  str w8,[x19, #0x10]
02c81684  b 0x02c81724
02c81688  cbz x20,0x02c8189c
02c8168c  mov x0,x20
02c81690  mov x1,xzr
02c81694  bl 0x057dc0f8
02c81698  cbz x0,0x02c8189c
02c8169c  mov x1,xzr
02c816a0  bl 0x057ef578
02c816a4  ldr x8,[x19, #0x28]
02c816a8  stp s0,s1,[x19, #0x34]
02c816ac  str s2,[x19, #0x3c]
02c816b0  cbz x8,0x02c8189c
02c816b4  ldrsw x9,[x19, #0x30]
02c816b8  ldr w10,[x8, #0x18]
02c816bc  cmp w9,w10
02c816c0  b.cs 0x02c818a0
02c816c4  add x10,x8,x9, LSL #0x3
02c816c8  ldr x11,[x10, #0x20]!
02c816cc  cbz x11,0x02c8189c
02c816d0  ldr w12,[x11, #0x18]
02c816d4  cbz w12,0x02c818a0
02c816d8  ldr d0,[x20, #0xc0]
02c816dc  ldr s1,[x11, #0x20]
02c816e0  ldr s2,[x20, #0xc8]
02c816e4  fmul v0.2S,v0.2S,v1.S[0x0]
02c816e8  fmul s1,s2,s1
02c816ec  str d0,[x19, #0x40]
02c816f0  str s1,[x19, #0x48]
02c816f4  ldr w8,[x8, #0x18]
02c816f8  cmp w9,w8
02c816fc  b.cs 0x02c818a0
02c81700  ldr x8,[x10]
02c81704  cbz x8,0x02c8189c
02c81708  ldr w9,[x8, #0x18]
02c8170c  tst w9,#0xfffffffe
02c81710  b.eq 0x02c818a0
02c81714  ldr s0,[x8, #0x24]
02c81718  movi d8,#0x0
02c8171c  str wzr,[x19, #0x50]
02c81720  str s0,[x19, #0x4c]
02c81724  fcmp s8,s0
02c81728  b.mi 0x02c817b8
02c8172c  cbz x20,0x02c8189c
02c81730  mov x0,x20
02c81734  mov x1,xzr
02c81738  bl 0x057dc0f8
02c8173c  cbz x0,0x02c8189c
02c81740  ldp s1,s2,[x19, #0x44]
02c81744  mov x1,xzr
02c81748  ldr s0,[x19, #0x40]
02c8174c  bl 0x057ef654
02c81750  ldr w8,[x19, #0x30]
02c81754  stur xzr,[x19, #0x3c]
02c81758  stur xzr,[x19, #0x34]
02c8175c  add w8,w8,#0x1
02c81760  stur xzr,[x19, #0x44]
02c81764  str w8,[x19, #0x30]
02c81768  ldr x9,[x19, #0x28]
02c8176c  cbz x9,0x02c8189c
02c81770  ldr w9,[x9, #0x18]
02c81774  cmp w8,w9
02c81778  b.lt 0x02c81688
02c8177c  cbz x20,0x02c8189c
02c81780  mov x0,x20
02c81784  mov x1,xzr
02c81788  bl 0x057dc0f8
02c8178c  cbz x0,0x02c8189c
02c81790  ldp s1,s2,[x20, #0xc4]
02c81794  mov x1,xzr
02c81798  ldr s0,[x20, #0xc0]
02c8179c  bl 0x057ef654
02c817a0  str xzr,[x20, #0xd0]!
02c817a4  mov x0,x20
02c817a8  mov x1,xzr
02c817ac  bl 0x029f59f4
02c817b0  mov w0,wzr
02c817b4  b 0x02c81888
02c817b8  mov x0,xzr
02c817bc  bl 0x057ebb34
02c817c0  fadd s8,s8,s0
02c817c4  str s8,[x19, #0x50]
02c817c8  cbz x20,0x02c8189c
02c817cc  ldr s9,[x19, #0x4c]
02c817d0  mov x0,x20
02c817d4  mov x1,xzr
02c817d8  bl 0x057dc0f8
02c817dc  cbz x0,0x02c8189c
02c817e0  fdiv s0,s8,s9
02c817e4  fmov s1,0x3f800000
02c817e8  movi d3,#0x0
02c817ec  fmov s4,0x40400000
02c817f0  mov x1,xzr
02c817f4  fcmp s0,s1
02c817f8  fcsel s2,s1,s0,gt
02c817fc  fcmp s0,#0.0
02c81800  fcsel s0,s3,s2,mi
02c81804  fcmp s0,#0.0
02c81808  fcsel s0,s3,s0,mi
02c8180c  fadd s2,s0,s0
02c81810  fmul s4,s0,s4
02c81814  fmul s2,s0,s2
02c81818  fmul s4,s0,s4
02c8181c  fmul s0,s0,s2
02c81820  fsub s0,s4,s0
02c81824  ldr s4,[x19, #0x48]
02c81828  fsub s2,s1,s0
02c8182c  fmul s2,s2,s3
02c81830  fadd s0,s0,s2
02c81834  ldr d2,[x19, #0x40]
02c81838  fcmp s0,s1
02c8183c  fcsel s1,s1,s0,gt
02c81840  fcmp s0,#0.0
02c81844  ldur d0,[x19, #0x34]
02c81848  fsub v2.2S,v2.2S,v0.2S
02c8184c  fcsel s1,s3,s1,mi
02c81850  ldr s3,[x19, #0x3c]
02c81854  fsub s4,s4,s3
02c81858  fmul v2.2S,v2.2S,v1.S[0x0]
02c8185c  fmul s1,s1,s4
02c81860  fadd v0.2S,v0.2S,v2.2S
02c81864  fadd s2,s3,s1
02c81868  dup s1,v0.S[0x1]
02c8186c  bl 0x057ef654
02c81870  str xzr,[x19, #0x18]!
02c81874  mov x0,x19
02c81878  mov x1,xzr
02c8187c  bl 0x029f59f4
02c81880  mov w0,#0x1
02c81884  stur w0,[x19, #-0x8]
02c81888  ldp x20,x19,[sp, #0x30]
02c8188c  ldr x30,[sp, #0x10]
02c81890  ldp x22,x21,[sp, #0x20]
02c81894  ldp d9,d8,[sp], #0x40
02c81898  ret
02c8189c  bl 0x029f5cfc
02c818a0  bl 0x029f5d04
