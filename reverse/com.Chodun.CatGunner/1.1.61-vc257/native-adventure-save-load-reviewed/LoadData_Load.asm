02c12318  sub sp,sp,#0x70
02c1231c  str d8,[sp, #0x20]
02c12320  stp x30,x25,[sp, #0x30]
02c12324  stp x24,x23,[sp, #0x40]
02c12328  stp x22,x21,[sp, #0x50]
02c1232c  stp x20,x19,[sp, #0x60]
02c12330  adrp x20,0x625b000
02c12334  adrp x21,0x5e62000
02c12338  mov x19,x0
02c1233c  ldrb w8,[x20, #0xee5]
02c12340  ldr x21,[x21, #0x608]
02c12344  tbnz w8,#0x0,0x02c12470
02c12348  adrp x0,0x5e62000
02c1234c  ldr x0,[x0, #0x610]
02c12350  bl 0x029f5a50
02c12354  adrp x0,0x5e5d000
02c12358  ldr x0,[x0, #0xd38]
02c1235c  bl 0x029f5a50
02c12360  adrp x0,0x5e5d000
02c12364  ldr x0,[x0, #0x338]
02c12368  bl 0x029f5a50
02c1236c  adrp x0,0x5e5d000
02c12370  ldr x0,[x0, #0xd40]
02c12374  bl 0x029f5a50
02c12378  adrp x0,0x5e62000
02c1237c  ldr x0,[x0, #0x618]
02c12380  bl 0x029f5a50
02c12384  adrp x0,0x5e62000
02c12388  ldr x0,[x0, #0x620]
02c1238c  bl 0x029f5a50
02c12390  adrp x0,0x5e62000
02c12394  ldr x0,[x0, #0x628]
02c12398  bl 0x029f5a50
02c1239c  adrp x0,0x5e62000
02c123a0  ldr x0,[x0, #0x630]
02c123a4  bl 0x029f5a50
02c123a8  adrp x0,0x5e62000
02c123ac  ldr x0,[x0, #0x638]
02c123b0  bl 0x029f5a50
02c123b4  adrp x0,0x5e59000
02c123b8  ldr x0,[x0, #0x1c0]
02c123bc  bl 0x029f5a50
02c123c0  adrp x0,0x5e61000
02c123c4  ldr x0,[x0, #0xf78]
02c123c8  bl 0x029f5a50
02c123cc  adrp x0,0x5e5d000
02c123d0  ldr x0,[x0, #0x4d0]
02c123d4  bl 0x029f5a50
02c123d8  adrp x0,0x5e5d000
02c123dc  ldr x0,[x0, #0xd60]
02c123e0  bl 0x029f5a50
02c123e4  adrp x0,0x5e62000
02c123e8  ldr x0,[x0, #0x640]
02c123ec  bl 0x029f5a50
02c123f0  adrp x0,0x5e5d000
02c123f4  ldr x0,[x0, #0x4d8]
02c123f8  bl 0x029f5a50
02c123fc  adrp x0,0x5e62000
02c12400  ldr x0,[x0, #0x648]
02c12404  bl 0x029f5a50
02c12408  adrp x0,0x5e5d000
02c1240c  ldr x0,[x0, #0x6a8]
02c12410  bl 0x029f5a50
02c12414  adrp x0,0x5e5d000
02c12418  ldr x0,[x0, #0x4e0]
02c1241c  bl 0x029f5a50
02c12420  adrp x0,0x5e5e000
02c12424  ldr x0,[x0, #0x58]
02c12428  bl 0x029f5a50
02c1242c  adrp x0,0x5e5d000
02c12430  ldr x0,[x0, #0x3c0]
02c12434  bl 0x029f5a50
02c12438  adrp x0,0x5e5d000
02c1243c  ldr x0,[x0, #0xc20]
02c12440  bl 0x029f5a50
02c12444  adrp x0,0x5e62000
02c12448  ldr x0,[x0, #0x608]
02c1244c  bl 0x029f5a50
02c12450  adrp x0,0x5e5d000
02c12454  ldr x0,[x0, #0x4e8]
02c12458  bl 0x029f5a50
02c1245c  adrp x0,0x5e59000
02c12460  ldr x0,[x0, #0x50]
02c12464  bl 0x029f5a50
02c12468  mov w8,#0x1
02c1246c  strb w8,[x20, #0xee5]
02c12470  ldr x8,[x21]
02c12474  ldr x8,[x8, #0xb8]
02c12478  ldr x0,[x8]
02c1247c  cbz x0,0x02c12ff0
02c12480  mov x1,xzr
02c12484  bl 0x02c2a900
02c12488  cbz x19,0x02c12ca8
02c1248c  adrp x23,0x5e5d000
02c12490  adrp x22,0x5e59000
02c12494  ldr x23,[x23, #0x338]
02c12498  ldur q0,[x19, #0x18]
02c1249c  ldur q1,[x19, #0x28]
02c124a0  ldr x0,[x23]
02c124a4  ldr w8,[x0, #0xe4]
02c124a8  ldr x22,[x22, #0x50]
02c124ac  stp q0,q1,[sp]
02c124b0  cbnz w8,0x02c124bc
02c124b4  bl 0x029f5bd0
02c124b8  ldr x0,[x23]
02c124bc  ldp q0,q1,[sp]
02c124c0  adrp x24,0x5e5d000
02c124c4  ldr x8,[x0, #0xb8]
02c124c8  mov x1,xzr
02c124cc  stp q0,q1,[x8, #0x30]
02c124d0  ldr x24,[x24, #0x3c0]
02c124d4  ldr x8,[x0, #0xb8]
02c124d8  add x0,x8,#0x30
02c124dc  bl 0x029f59f4
02c124e0  ldr x8,[x23]
02c124e4  ldur q0,[x19, #0x38]
02c124e8  mov x1,xzr
02c124ec  ldur q1,[x19, #0x48]
02c124f0  ldr x9,[x8, #0xb8]
02c124f4  stp q0,q1,[x9, #0x50]
02c124f8  ldr x8,[x8, #0xb8]
02c124fc  add x0,x8,#0x50
02c12500  bl 0x029f59f4
02c12504  ldr x8,[x23]
02c12508  ldur q0,[x19, #0x58]
02c1250c  mov x1,xzr
02c12510  ldur q1,[x19, #0x68]
02c12514  ldr x9,[x8, #0xb8]
02c12518  stp q0,q1,[x9, #0x70]
02c1251c  ldr x8,[x8, #0xb8]
02c12520  add x0,x8,#0x70
02c12524  bl 0x029f59f4
02c12528  ldr w0,[x19, #0x78]
02c1252c  mov x1,xzr
02c12530  bl 0x02b1e5c8
02c12534  ldr x8,[x23]
02c12538  ldr x8,[x8, #0xb8]
02c1253c  stp x0,x1,[x8, #0x90]
02c12540  mov x1,xzr
02c12544  ldr w0,[x19, #0x7c]
02c12548  bl 0x02b1e5c8
02c1254c  ldr x8,[x23]
02c12550  ldr x8,[x8, #0xb8]
02c12554  stp x0,x1,[x8, #0xa0]
02c12558  mov x1,xzr
02c1255c  ldr w0,[x19, #0x80]
02c12560  bl 0x02b1e5c8
02c12564  ldr x8,[x23]
02c12568  ldr x9,[x8, #0xb8]
02c1256c  stp x0,x1,[x9, #0xb0]
02c12570  mov x1,xzr
02c12574  ldr w9,[x19, #0x84]
02c12578  ldr x8,[x8, #0xb8]
02c1257c  ldr s0,[x19, #0x8c]
02c12580  ldrb w10,[x19, #0x90]
02c12584  ldr w0,[x19, #0x94]
02c12588  str w9,[x8, #0xc0]
02c1258c  str s0,[x8, #0x15c]
02c12590  strb w10,[x8, #0xd0]
02c12594  bl 0x02b1e5c8
02c12598  mov x8,x0
02c1259c  ldr x0,[x23]
02c125a0  ldr x9,[x0, #0xb8]
02c125a4  stp x8,x1,[x9, #0xf0]
02c125a8  ldr x9,[x22]
02c125ac  ldr x8,[x19, #0x98]
02c125b0  ldr w10,[x0, #0xe4]
02c125b4  cmp x8,#0x0
02c125b8  csel x20,x9,x8,eq
02c125bc  cbnz w10,0x02c125c8
02c125c0  bl 0x029f5bd0
02c125c4  ldr x0,[x23]
02c125c8  ldr x8,[x0, #0xb8]
02c125cc  mov x1,x20
02c125d0  add x0,x8,#0x100
02c125d4  str x20,[x8, #0x100]
02c125d8  bl 0x029f59f4
02c125dc  ldr x0,[x24]
02c125e0  ldr d8,[x19, #0xb8]
02c125e4  ldr w8,[x0, #0xe4]
02c125e8  cbnz w8,0x02c125f8
02c125ec  bl 0x029f5bd0
02c125f0  ldr x0,[x24]
02c125f4  ldr w8,[x0, #0xe4]
02c125f8  ldr x10,[x19, #0xc8]
02c125fc  ldr x12,[x22]
02c12600  ldr x9,[x0, #0xb8]
02c12604  ldrb w11,[x19, #0xc0]
02c12608  cmp x10,#0x0
02c1260c  str d8,[x9, #0x10]
02c12610  csel x20,x12,x10,eq
02c12614  strb w11,[x9, #0x18]
02c12618  cbnz w8,0x02c12620
02c1261c  bl 0x029f5bd0
02c12620  mov x0,x20
02c12624  mov x1,xzr
02c12628  bl 0x02c22a50
02c1262c  ldr x20,[x19, #0xd0]
02c12630  cbnz x20,0x02c12658
02c12634  adrp x8,0x5e62000
02c12638  ldr x8,[x8, #0x630]
02c1263c  ldr x0,[x8]
02c12640  bl 0x029f5cec
02c12644  adrp x8,0x5e62000
02c12648  mov x20,x0
02c1264c  ldr x8,[x8, #0x618]
02c12650  ldr x1,[x8]
02c12654  bl 0x0452c340
02c12658  ldr x0,[x24]
02c1265c  ldr w8,[x0, #0xe4]
02c12660  cbnz w8,0x02c1266c
02c12664  bl 0x029f5bd0
02c12668  ldr x0,[x24]
02c1266c  ldr x0,[x0, #0xb8]
02c12670  mov x1,x20
02c12674  str x20,[x0, #0x20]!
02c12678  bl 0x029f59f4
02c1267c  ldr w0,[x19, #0xd8]
02c12680  mov x1,xzr
02c12684  bl 0x02b1e5c8
02c12688  mov x20,x0
02c1268c  ldr x0,[x23]
02c12690  mov x21,x1
02c12694  ldr w8,[x0, #0xe4]
02c12698  cbnz w8,0x02c126a4
02c1269c  bl 0x029f5bd0
02c126a0  ldr x0,[x23]
02c126a4  ldr x8,[x0, #0xb8]
02c126a8  ldr x9,[x22]
02c126ac  stp x20,x21,[x8, #0x128]
02c126b0  ldr x8,[x19, #0xe0]
02c126b4  ldr w10,[x0, #0xe4]
02c126b8  cmp x8,#0x0
02c126bc  csel x20,x9,x8,eq
02c126c0  cbnz w10,0x02c126cc
02c126c4  bl 0x029f5bd0
02c126c8  ldr x0,[x23]
02c126cc  ldr x8,[x0, #0xb8]
02c126d0  adrp x21,0x5e62000
02c126d4  mov x1,x20
02c126d8  ldr x21,[x21, #0x640]
02c126dc  add x0,x8,#0x138
02c126e0  str x20,[x8, #0x138]
02c126e4  bl 0x029f59f4
02c126e8  ldr x0,[x23]
02c126ec  ldr x8,[x19, #0xe8]
02c126f0  ldr x9,[x22]
02c126f4  ldr w10,[x0, #0xe4]
02c126f8  cmp x8,#0x0
02c126fc  csel x20,x9,x8,eq
02c12700  cbnz w10,0x02c1270c
02c12704  bl 0x029f5bd0
02c12708  ldr x0,[x23]
02c1270c  ldr x8,[x0, #0xb8]
02c12710  mov x1,x20
02c12714  add x0,x8,#0x140
02c12718  str x20,[x8, #0x140]
02c1271c  bl 0x029f59f4
02c12720  ldr x0,[x21]
02c12724  ldr x8,[x19, #0xf0]
02c12728  ldr x9,[x22]
02c1272c  ldr w10,[x0, #0xe4]
02c12730  cmp x8,#0x0
02c12734  csel x20,x9,x8,eq
02c12738  cbnz w10,0x02c12744
02c1273c  bl 0x029f5bd0
02c12740  ldr x0,[x21]
02c12744  ldr x0,[x0, #0xb8]
02c12748  adrp x21,0x5e5d000
02c1274c  mov x1,x20
02c12750  ldr x21,[x21, #0x6a8]
02c12754  str x20,[x0, #0x8]!
02c12758  bl 0x029f59f4
02c1275c  ldr x0,[x24]
02c12760  ldr w8,[x0, #0xe4]
02c12764  cbnz w8,0x02c1276c
02c12768  bl 0x029f5bd0
02c1276c  mov x0,xzr
02c12770  bl 0x02c23b80
02c12774  ldr x0,[x21]
02c12778  ldr w8,[x0, #0xe4]
02c1277c  cbnz w8,0x02c12784
02c12780  bl 0x029f5bd0
02c12784  mov x0,x19
02c12788  mov x1,xzr
02c1278c  bl 0x02c194a8
02c12790  ldr x0,[x23]
02c12794  ldr x8,[x19, #0xa0]
02c12798  ldr x9,[x22]
02c1279c  ldr w10,[x0, #0xe4]
02c127a0  cmp x8,#0x0
02c127a4  csel x20,x9,x8,eq
02c127a8  cbnz w10,0x02c127b4
02c127ac  bl 0x029f5bd0
02c127b0  ldr x0,[x23]
02c127b4  ldr x0,[x0, #0xb8]
02c127b8  mov x1,x20
02c127bc  str x20,[x0, #0xd8]!
02c127c0  bl 0x029f59f4
02c127c4  ldr x0,[x23]
02c127c8  ldr x8,[x19, #0xa8]
02c127cc  ldr x9,[x22]
02c127d0  ldr w10,[x0, #0xe4]
02c127d4  cmp x8,#0x0
02c127d8  csel x20,x9,x8,eq
02c127dc  cbnz w10,0x02c127e8
02c127e0  bl 0x029f5bd0
02c127e4  ldr x0,[x23]
02c127e8  ldr x0,[x0, #0xb8]
02c127ec  mov x1,x20
02c127f0  str x20,[x0, #0xe0]!
02c127f4  bl 0x029f59f4
02c127f8  ldr x0,[x23]
02c127fc  ldr x8,[x19, #0xb0]
02c12800  ldr x9,[x22]
02c12804  ldr w10,[x0, #0xe4]
02c12808  cmp x8,#0x0
02c1280c  csel x20,x9,x8,eq
02c12810  cbnz w10,0x02c1281c
02c12814  bl 0x029f5bd0
02c12818  ldr x0,[x23]
02c1281c  ldr x0,[x0, #0xb8]
02c12820  mov x1,x20
02c12824  str x20,[x0, #0xe8]!
02c12828  bl 0x029f59f4
02c1282c  ldrb w8,[x19, #0x90]
02c12830  cbz w8,0x02c12868
02c12834  ldr x0,[x23]
02c12838  ldr w8,[x0, #0xe4]
02c1283c  cbnz w8,0x02c12848
02c12840  bl 0x029f5bd0
02c12844  ldr x0,[x23]
02c12848  ldr x8,[x0, #0xb8]
02c1284c  ldr x8,[x8, #0xc8]
02c12850  cbz x8,0x02c12ff0
02c12854  ldr x0,[x8, #0x20]
02c12858  cbz x0,0x02c12ff0
02c1285c  mov w1,wzr
02c12860  mov x2,xzr
02c12864  bl 0x057dff3c
02c12868  adrp x20,0x5e5d000
02c1286c  ldr x20,[x20, #0x4e8]
02c12870  ldr x0,[x20]
02c12874  ldr w8,[x0, #0xe4]
02c12878  cbnz w8,0x02c12884
02c1287c  bl 0x029f5bd0
02c12880  ldr x0,[x20]
02c12884  ldr x8,[x0, #0xb8]
02c12888  ldr x0,[x8]
02c1288c  cbz x0,0x02c12ff0
02c12890  adrp x20,0x5e5d000
02c12894  mov x1,x19
02c12898  mov x2,xzr
02c1289c  ldr x20,[x20, #0xd60]
02c128a0  bl 0x02cb2c14
02c128a4  ldr x8,[x20]
02c128a8  ldr x8,[x8, #0xb8]
02c128ac  ldr x0,[x8]
02c128b0  cbz x0,0x02c12ff0
02c128b4  mov x1,x19
02c128b8  mov x2,xzr
02c128bc  bl 0x02c87b68
02c128c0  ldr x8,[x20]
02c128c4  ldr x8,[x8, #0xb8]
02c128c8  ldr x8,[x8]
02c128cc  cbz x8,0x02c12ff0
02c128d0  adrp x9,0x5e5d000
02c128d4  ldr x9,[x9, #0xd40]
02c128d8  ldr w10,[x19, #0x128]
02c128dc  ldr x9,[x9]
02c128e0  str w10,[x8, #0x30]
02c128e4  ldr x9,[x9, #0xb8]
02c128e8  ldr x20,[x9]
02c128ec  cbz x20,0x02c12ff0
02c128f0  ldr x1,[x19, #0x140]
02c128f4  mov x0,x20
02c128f8  str x1,[x0, #0x28]!
02c128fc  bl 0x029f59f4
02c12900  ldr x13,[x19, #0x148]
02c12904  cbz x13,0x02c12ff0
02c12908  ldr x11,[x13, #0x18]
02c1290c  cmp w11,#0x1
02c12910  b.lt 0x02c12958
02c12914  ldr x9,[x20, #0x30]
02c12918  bic w10,w11,w11, ASR #0x1f
02c1291c  mov x8,xzr
02c12920  and x11,x11,#0xffffffff
02c12924  add x13,x13,#0x20
02c12928  add x12,x9,#0x20
02c1292c  cmp x11,x8
02c12930  b.eq 0x02c12fec
02c12934  cbz x9,0x02c12ff0
02c12938  ldr w14,[x9, #0x18]
02c1293c  cmp x8,x14
02c12940  b.cs 0x02c12fec
02c12944  ldrb w14,[x13, x8, LSL ]
02c12948  strb w14,[x12, x8, LSL ]
02c1294c  add x8,x8,#0x1
02c12950  cmp x10,x8
02c12954  b.ne 0x02c1292c
02c12958  ldr x13,[x19, #0x150]
02c1295c  cbz x13,0x02c12ff0
02c12960  ldr x11,[x13, #0x18]
02c12964  cmp w11,#0x1
02c12968  b.lt 0x02c129b0
02c1296c  ldr x9,[x20, #0x40]
02c12970  bic w10,w11,w11, ASR #0x1f
02c12974  mov x8,xzr
02c12978  and x11,x11,#0xffffffff
02c1297c  add x13,x13,#0x20
02c12980  add x12,x9,#0x20
02c12984  cmp x11,x8
02c12988  b.eq 0x02c12fec
02c1298c  cbz x9,0x02c12ff0
02c12990  ldr w14,[x9, #0x18]
02c12994  cmp x8,x14
02c12998  b.cs 0x02c12fec
02c1299c  ldr w14,[x13, x8, LSL #0x2]
02c129a0  str w14,[x12, x8, LSL #0x2]
02c129a4  add x8,x8,#0x1
02c129a8  cmp x10,x8
02c129ac  b.ne 0x02c12984
02c129b0  mov x0,x20
02c129b4  mov x1,xzr
02c129b8  bl 0x02c678d0
02c129bc  ldr x12,[x19, #0x180]
02c129c0  cbz x12,0x02c12a18
02c129c4  ldr x11,[x20, #0x60]
02c129c8  cbz x11,0x02c12ff0
02c129cc  ldr x8,[x12, #0x18]
02c129d0  ldr x10,[x11, #0x18]
02c129d4  cmp w8,w10
02c129d8  csel w9,w8,w10,lt
02c129dc  cmp w9,#0x1
02c129e0  b.lt 0x02c12a18
02c129e4  bic w9,w9,w9, ASR #0x1f
02c129e8  and x8,x8,#0xffffffff
02c129ec  and x10,x10,#0xffffffff
02c129f0  add x11,x11,#0x20
02c129f4  add x12,x12,#0x20
02c129f8  cbz x8,0x02c12fec
02c129fc  cbz x10,0x02c12fec
02c12a00  ldrb w13,[x12], #0x1
02c12a04  sub x9,x9,#0x1
02c12a08  sub x8,x8,#0x1
02c12a0c  sub x10,x10,#0x1
02c12a10  strb w13,[x11], #0x1
02c12a14  cbnz x9,0x02c129f8
02c12a18  ldr x12,[x19, #0x188]
02c12a1c  cbz x12,0x02c12a74
02c12a20  ldr x11,[x20, #0x68]
02c12a24  cbz x11,0x02c12ff0
02c12a28  ldr x8,[x12, #0x18]
02c12a2c  ldr x10,[x11, #0x18]
02c12a30  cmp w8,w10
02c12a34  csel w9,w8,w10,lt
02c12a38  cmp w9,#0x1
02c12a3c  b.lt 0x02c12a74
02c12a40  bic w9,w9,w9, ASR #0x1f
02c12a44  and x8,x8,#0xffffffff
02c12a48  and x10,x10,#0xffffffff
02c12a4c  add x11,x11,#0x20
02c12a50  add x12,x12,#0x20
02c12a54  cbz x8,0x02c12fec
02c12a58  cbz x10,0x02c12fec
02c12a5c  ldrb w13,[x12], #0x1
02c12a60  sub x9,x9,#0x1
02c12a64  sub x8,x8,#0x1
02c12a68  sub x10,x10,#0x1
02c12a6c  strb w13,[x11], #0x1
02c12a70  cbnz x9,0x02c12a54
02c12a74  adrp x25,0x5e62000
02c12a78  adrp x24,0x5e59000
02c12a7c  ldr x25,[x25, #0x648]
02c12a80  ldr x24,[x24, #0x1c0]
02c12a84  ldr x8,[x25]
02c12a88  ldr x0,[x24]
02c12a8c  ldr x8,[x8, #0xb8]
02c12a90  ldr w9,[x0, #0xe4]
02c12a94  ldr x21,[x8]
02c12a98  cbnz w9,0x02c12aa0
02c12a9c  bl 0x029f5bd0
02c12aa0  mov x0,x21
02c12aa4  mov x1,xzr
02c12aa8  mov x2,xzr
02c12aac  bl 0x057dfa70
02c12ab0  tbz w0,#0x0,0x02c12ad0
02c12ab4  ldr x8,[x25]
02c12ab8  ldr x8,[x8, #0xb8]
02c12abc  ldr x0,[x8]
02c12ac0  cbz x0,0x02c12ff0
02c12ac4  mov x1,x19
02c12ac8  mov x2,xzr
02c12acc  bl 0x02c6c694
02c12ad0  ldr x12,[x19, #0x158]
02c12ad4  cbz x12,0x02c12b2c
02c12ad8  ldr x11,[x20, #0x38]
02c12adc  cbz x11,0x02c12ff0
02c12ae0  ldr x8,[x12, #0x18]
02c12ae4  ldr x10,[x11, #0x18]
02c12ae8  cmp w8,w10
02c12aec  csel w9,w8,w10,lt
02c12af0  cmp w9,#0x1
02c12af4  b.lt 0x02c12b2c
02c12af8  bic w9,w9,w9, ASR #0x1f
02c12afc  and x8,x8,#0xffffffff
02c12b00  and x10,x10,#0xffffffff
02c12b04  add x11,x11,#0x20
02c12b08  add x12,x12,#0x20
02c12b0c  cbz x8,0x02c12fec
02c12b10  cbz x10,0x02c12fec
02c12b14  ldr w13,[x12], #0x4
02c12b18  sub x9,x9,#0x1
02c12b1c  sub x8,x8,#0x1
02c12b20  sub x10,x10,#0x1
02c12b24  str w13,[x11], #0x4
02c12b28  cbnz x9,0x02c12b0c
02c12b2c  ldr d0,[x19, #0x160]
02c12b30  ldr x8,[x19, #0x168]
02c12b34  adrp x25,0x5e5d000
02c12b38  ldrb w10,[x19, #0x174]
02c12b3c  mov x0,x20
02c12b40  mov x1,xzr
02c12b44  str d0,[x20, #0xc0]
02c12b48  ldr w9,[x19, #0x170]
02c12b4c  str x8,[x20, #0xc8]
02c12b50  ldr x25,[x25, #0x4d0]
02c12b54  strb w10,[x20, #0xd8]
02c12b58  str w9,[x20, #0xd4]
02c12b5c  bl 0x02c6aa10
02c12b60  ldr x8,[x19, #0x178]
02c12b64  ldr x9,[x22]
02c12b68  add x10,x19,#0x175
02c12b6c  mov x21,x20
02c12b70  ldrh w10,[x10]
02c12b74  cmp x8,#0x0
02c12b78  csel x1,x9,x8,eq
02c12b7c  str x1,[x21, #0xb8]!
02c12b80  mov x0,x21
02c12b84  strh w10,[x21, #0x30]
02c12b88  bl 0x029f59f4
02c12b8c  ldrb w8,[x21, #0x30]
02c12b90  cbnz w8,0x02c12bb0
02c12b94  mov x0,x20
02c12b98  mov w1,#0x1
02c12b9c  mov x2,xzr
02c12ba0  mov w21,#0x1
02c12ba4  bl 0x02c6a65c
02c12ba8  tbz w0,#0x0,0x02c12bb0
02c12bac  strb w21,[x20, #0xe8]
02c12bb0  ldr x0,[x25]
02c12bb4  ldr w8,[x0, #0xe4]
02c12bb8  cbnz w8,0x02c12bc4
02c12bbc  bl 0x029f5bd0
02c12bc0  ldr x0,[x25]
02c12bc4  ldr x8,[x0, #0xb8]
02c12bc8  ldr x12,[x19, #0x1a8]
02c12bcc  ldr x20,[x8, #0x28]
02c12bd0  cbz x12,0x02c12c2c
02c12bd4  cbz x20,0x02c12ff0
02c12bd8  ldr x11,[x20, #0x28]
02c12bdc  cbz x11,0x02c12ff0
02c12be0  ldr x8,[x12, #0x18]
02c12be4  ldr x10,[x11, #0x18]
02c12be8  cmp w8,w10
02c12bec  csel w9,w8,w10,lt
02c12bf0  cmp w9,#0x1
02c12bf4  b.lt 0x02c12c2c
02c12bf8  bic w9,w9,w9, ASR #0x1f
02c12bfc  and x8,x8,#0xffffffff
02c12c00  and x10,x10,#0xffffffff
02c12c04  add x11,x11,#0x20
02c12c08  add x12,x12,#0x20
02c12c0c  cbz x8,0x02c12fec
02c12c10  cbz x10,0x02c12fec
02c12c14  ldrb w13,[x12], #0x1
02c12c18  sub x9,x9,#0x1
02c12c1c  sub x8,x8,#0x1
02c12c20  sub x10,x10,#0x1
02c12c24  strb w13,[x11], #0x1
02c12c28  cbnz x9,0x02c12c0c
02c12c2c  ldr x12,[x19, #0x1b0]
02c12c30  cbz x12,0x02c12c8c
02c12c34  cbz x20,0x02c12ff0
02c12c38  ldr x11,[x20, #0x38]
02c12c3c  cbz x11,0x02c12ff0
02c12c40  ldr x8,[x12, #0x18]
02c12c44  ldr x10,[x11, #0x18]
02c12c48  cmp w8,w10
02c12c4c  csel w9,w8,w10,lt
02c12c50  cmp w9,#0x1
02c12c54  b.lt 0x02c12c8c
02c12c58  bic w9,w9,w9, ASR #0x1f
02c12c5c  and x8,x8,#0xffffffff
02c12c60  and x10,x10,#0xffffffff
02c12c64  add x11,x11,#0x20
02c12c68  add x12,x12,#0x20
02c12c6c  cbz x8,0x02c12fec
02c12c70  cbz x10,0x02c12fec
02c12c74  ldr w13,[x12], #0x4
02c12c78  sub x9,x9,#0x1
02c12c7c  sub x8,x8,#0x1
02c12c80  sub x10,x10,#0x1
02c12c84  str w13,[x11], #0x4
02c12c88  cbnz x9,0x02c12c6c
02c12c8c  ldr x1,[x19, #0x1a0]
02c12c90  cbz x1,0x02c12cc4
02c12c94  cbz x20,0x02c12ff0
02c12c98  mov x0,x20
02c12c9c  str x1,[x0, #0x30]!
02c12ca0  bl 0x029f59f4
02c12ca4  b 0x02c12cc8
02c12ca8  ldp x20,x19,[sp, #0x60]
02c12cac  ldr d8,[sp, #0x20]
02c12cb0  ldp x22,x21,[sp, #0x50]
02c12cb4  ldp x24,x23,[sp, #0x40]
02c12cb8  ldp x30,x25,[sp, #0x30]
02c12cbc  add sp,sp,#0x70
02c12cc0  b 0x02c12ff4
02c12cc4  cbz x20,0x02c12ff0
02c12cc8  adrp x21,0x5e5d000
02c12ccc  mov x0,x20
02c12cd0  mov x3,xzr
02c12cd4  ldr x21,[x21, #0xc20]
02c12cd8  ldp x1,x2,[x19, #0x1b8]
02c12cdc  bl 0x02c7ca5c
02c12ce0  ldr x8,[x19, #0x1c8]
02c12ce4  ldr x9,[x22]
02c12ce8  mov x0,x20
02c12cec  cmp x8,#0x0
02c12cf0  csel x1,x9,x8,eq
02c12cf4  str x1,[x0, #0xb8]!
02c12cf8  bl 0x029f59f4
02c12cfc  mov x0,x20
02c12d00  mov x1,xzr
02c12d04  bl 0x02c7c524
02c12d08  ldr x0,[x21]
02c12d0c  ldr w8,[x0, #0xe4]
02c12d10  cbnz w8,0x02c12d1c
02c12d14  bl 0x029f5bd0
02c12d18  ldr x0,[x21]
02c12d1c  ldr x8,[x0, #0xb8]
02c12d20  ldr x0,[x8, #0x10]
02c12d24  cbz x0,0x02c12ff0
02c12d28  ldr d0,[x19, #0x1d0]
02c12d2c  adrp x20,0x5e5d000
02c12d30  mov x2,xzr
02c12d34  str d0,[x0, #0x28]
02c12d38  ldr w8,[x19, #0x1d8]
02c12d3c  ldr x20,[x20, #0x4e0]
02c12d40  ldr x1,[x19, #0x1e0]
02c12d44  str w8,[x0, #0x30]
02c12d48  bl 0x02cacb4c
02c12d4c  ldr x8,[x20]
02c12d50  ldr x8,[x8, #0xb8]
02c12d54  ldr x20,[x8, #0x10]
02c12d58  cbz x20,0x02c12ff0
02c12d5c  ldr x1,[x19, #0x1f0]
02c12d60  mov x0,x20
02c12d64  str x1,[x0, #0x28]!
02c12d68  bl 0x029f59f4
02c12d6c  ldr w8,[x19, #0x1f8]
02c12d70  mov x0,x20
02c12d74  mov x1,xzr
02c12d78  str w8,[x20, #0x30]
02c12d7c  bl 0x02ca7618
02c12d80  ldr x21,[x19, #0x280]
02c12d84  cbz x21,0x02c12df0
02c12d88  adrp x25,0x5e5d000
02c12d8c  adrp x9,0x5e62000
02c12d90  ldr x25,[x25, #0xd38]
02c12d94  ldr x8,[x25]
02c12d98  ldr x8,[x8, #0xb8]
02c12d9c  ldr x9,[x9, #0x628]
02c12da0  ldr x0,[x9]
02c12da4  ldr x20,[x8]
02c12da8  bl 0x029f5cec
02c12dac  adrp x8,0x5e62000
02c12db0  mov x1,x21
02c12db4  mov x22,x0
02c12db8  ldr x8,[x8, #0x620]
02c12dbc  ldr x2,[x8]
02c12dc0  bl 0x044f72bc
02c12dc4  cbz x20,0x02c12ff0
02c12dc8  str x22,[x20, #0x90]!
02c12dcc  mov x0,x20
02c12dd0  mov x1,x22
02c12dd4  bl 0x029f59f4
02c12dd8  ldr x8,[x25]
02c12ddc  ldr x8,[x8, #0xb8]
02c12de0  ldr x0,[x8]
02c12de4  cbz x0,0x02c12ff0
02c12de8  mov x1,xzr
02c12dec  bl 0x02c5d820
02c12df0  ldr x0,[x23]
02c12df4  adrp x20,0x5e5e000
02c12df8  ldr w8,[x0, #0xe4]
02c12dfc  ldr x20,[x20, #0x58]
02c12e00  ldr w21,[x19, #0x88]
02c12e04  cbnz w8,0x02c12e10
02c12e08  bl 0x029f5bd0
02c12e0c  ldr x0,[x23]
02c12e10  ldr x8,[x20]
02c12e14  ldr x9,[x0, #0xb8]
02c12e18  ldr w10,[x8, #0xe4]
02c12e1c  str w21,[x9, #0xc4]
02c12e20  cbnz w10,0x02c12e30
02c12e24  mov x0,x8
02c12e28  bl 0x029f5bd0
02c12e2c  ldr x8,[x20]
02c12e30  ldr x8,[x8, #0xb8]
02c12e34  adrp x20,0x5e5d000
02c12e38  ldr x0,[x8]
02c12e3c  ldr x20,[x20, #0x4d8]
02c12e40  cbz x0,0x02c12e50
02c12e44  mov x1,x19
02c12e48  mov x2,xzr
02c12e4c  bl 0x02c6e77c
02c12e50  ldr x0,[x20]
02c12e54  ldr w8,[x0, #0xe4]
02c12e58  cbnz w8,0x02c12e64
02c12e5c  bl 0x029f5bd0
02c12e60  ldr x0,[x20]
02c12e64  ldr x8,[x24]
02c12e68  ldr x9,[x0, #0xb8]
02c12e6c  ldr w10,[x8, #0xe4]
02c12e70  ldr x20,[x9, #0x70]
02c12e74  cbnz w10,0x02c12e80
02c12e78  mov x0,x8
02c12e7c  bl 0x029f5bd0
02c12e80  mov x0,x20
02c12e84  mov x1,xzr
02c12e88  mov x2,xzr
02c12e8c  bl 0x057dfa70
02c12e90  tbz w0,#0x0,0x02c12f2c
02c12e94  ldr x12,[x19, #0x370]
02c12e98  cbz x12,0x02c12f08
02c12e9c  cbz x20,0x02c12ff0
02c12ea0  ldr x11,[x20, #0x20]
02c12ea4  cbz x11,0x02c12f0c
02c12ea8  ldr w8,[x12, #0x18]
02c12eac  ldr w9,[x11, #0x18]
02c12eb0  cmp w8,w9
02c12eb4  csel w10,w8,w9,lt
02c12eb8  cmp w10,#0x1
02c12ebc  b.lt 0x02c12f0c
02c12ec0  add x11,x11,#0x20
02c12ec4  add x12,x12,#0x20
02c12ec8  cbz w9,0x02c12fec
02c12ecc  cbz w8,0x02c12fec
02c12ed0  ldr x14,[x12]
02c12ed4  cbz x14,0x02c12ff0
02c12ed8  ldr x13,[x11]
02c12edc  cbz x13,0x02c12ff0
02c12ee0  ldr d0,[x14, #0x10]
02c12ee4  ldrb w14,[x14, #0x18]
02c12ee8  add x11,x11,#0x8
02c12eec  subs w10,w10,#0x1
02c12ef0  add x12,x12,#0x8
02c12ef4  sub w8,w8,#0x1
02c12ef8  sub w9,w9,#0x1
02c12efc  str d0,[x13, #0x18]
02c12f00  strb w14,[x13, #0x20]
02c12f04  b.ne 0x02c12ec8
02c12f08  cbz x20,0x02c12ff0
02c12f0c  ldr x8,[x20, #0x48]
02c12f10  cbnz x8,0x02c12f20
02c12f14  mov x0,x20
02c12f18  mov x1,xzr
02c12f1c  bl 0x02c324bc
02c12f20  mov x0,x20
02c12f24  mov x1,xzr
02c12f28  bl 0x02c31f8c
02c12f2c  adrp x8,0x5e61000
02c12f30  ldr x8,[x8, #0xf78]
02c12f34  ldr x0,[x24]
02c12f38  ldr x8,[x8]
02c12f3c  ldr w9,[x0, #0xe4]
02c12f40  ldr x8,[x8, #0xb8]
02c12f44  ldr x20,[x8]
02c12f48  cbnz w9,0x02c12f50
02c12f4c  bl 0x029f5bd0
02c12f50  mov x0,x20
02c12f54  mov x1,xzr
02c12f58  mov x2,xzr
02c12f5c  bl 0x057dfa70
02c12f60  tbz w0,#0x0,0x02c12fcc
02c12f64  adrp x8,0x5e62000
02c12f68  ldr x8,[x8, #0x610]
02c12f6c  ldr x0,[x8]
02c12f70  bl 0x029f5cec
02c12f74  adrp x8,0x5e62000
02c12f78  mov x1,xzr
02c12f7c  mov x3,xzr
02c12f80  ldr x8,[x8, #0x638]
02c12f84  mov x21,x0
02c12f88  ldr x2,[x8]
02c12f8c  bl 0x03d323cc
02c12f90  cbz x20,0x02c12ff0
02c12f94  mov x0,x20
02c12f98  mov x1,x19
02c12f9c  mov x2,x21
02c12fa0  bl 0x02c063fc
02c12fa4  mov x1,x0
02c12fa8  mov x0,x20
02c12fac  ldr d8,[sp, #0x20]
02c12fb0  ldp x20,x19,[sp, #0x60]
02c12fb4  mov x2,xzr
02c12fb8  ldp x22,x21,[sp, #0x50]
02c12fbc  ldp x24,x23,[sp, #0x40]
02c12fc0  ldp x30,x25,[sp, #0x30]
02c12fc4  add sp,sp,#0x70
02c12fc8  b 0x057e2120
02c12fcc  mov x0,x19
02c12fd0  ldp x20,x19,[sp, #0x60]
02c12fd4  ldp x22,x21,[sp, #0x50]
02c12fd8  ldr d8,[sp, #0x20]
02c12fdc  ldp x24,x23,[sp, #0x40]
02c12fe0  ldp x30,x25,[sp, #0x30]
02c12fe4  add sp,sp,#0x70
02c12fe8  b 0x02c134d8
02c12fec  bl 0x029f5d04
02c12ff0  bl 0x029f5cfc
