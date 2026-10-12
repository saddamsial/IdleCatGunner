02cb1234  str x30,[sp, #-0x30]!
02cb1238  stp x22,x21,[sp, #0x10]
02cb123c  stp x20,x19,[sp, #0x20]
02cb1240  adrp x21,0x625c000
02cb1244  adrp x20,0x5e5d000
02cb1248  mov x19,x0
02cb124c  ldrb w8,[x21, #0x54a]
02cb1250  ldr x20,[x20, #0x4c0]
02cb1254  tbnz w8,#0x0,0x02cb1284
02cb1258  adrp x0,0x5e5d000
02cb125c  ldr x0,[x0, #0x4c0]
02cb1260  bl 0x029f5a50
02cb1264  adrp x0,0x5e59000
02cb1268  ldr x0,[x0, #0x1c0]
02cb126c  bl 0x029f5a50
02cb1270  adrp x0,0x5e63000
02cb1274  ldr x0,[x0, #0x800]
02cb1278  bl 0x029f5a50
02cb127c  mov w8,#0x1
02cb1280  strb w8,[x21, #0x54a]
02cb1284  ldr x0,[x20]
02cb1288  adrp x21,0x5e59000
02cb128c  ldr w8,[x0, #0xe4]
02cb1290  ldr x21,[x21, #0x1c0]
02cb1294  cbnz w8,0x02cb12a0
02cb1298  bl 0x029f5bd0
02cb129c  ldr x0,[x20]
02cb12a0  ldr x8,[x21]
02cb12a4  ldr x9,[x0, #0xb8]
02cb12a8  ldr w10,[x8, #0xe4]
02cb12ac  ldr x20,[x9]
02cb12b0  cbnz w10,0x02cb12bc
02cb12b4  mov x0,x8
02cb12b8  bl 0x029f5bd0
02cb12bc  mov x0,x20
02cb12c0  mov x1,xzr
02cb12c4  mov x2,xzr
02cb12c8  bl 0x057dfa70
02cb12cc  tbz w0,#0x0,0x02cb12f4
02cb12d0  ldr w0,[x19, #0x20]
02cb12d4  bl 0x02cb0de8
02cb12d8  cbz x20,0x02cb13f8
02cb12dc  mov w1,w0
02cb12e0  mov x0,x20
02cb12e4  mov x2,xzr
02cb12e8  bl 0x02c376a8
02cb12ec  mov w20,w0
02cb12f0  b 0x02cb12f8
02cb12f4  mov w20,#0x1
02cb12f8  ldr w8,[x19, #0xc4]
02cb12fc  cmp w20,w8
02cb1300  b.eq 0x02cb13e8
02cb1304  ldr x0,[x19, #0x78]
02cb1308  str w20,[x19, #0xc4]
02cb130c  cbz x0,0x02cb13f8
02cb1310  cmp w20,#0x1
02cb1314  mov x2,xzr
02cb1318  cset w1,gt
02cb131c  bl 0x057dff3c
02cb1320  ldr x0,[x19, #0x80]
02cb1324  cbz x0,0x02cb13f8
02cb1328  cmp w20,#0x1
02cb132c  mov x2,xzr
02cb1330  cset w21,gt
02cb1334  mov w1,w21
02cb1338  bl 0x057dff3c
02cb133c  ldr x8,[x19, #0x68]
02cb1340  cbz x8,0x02cb13f8
02cb1344  cmp w20,#0x1
02cb1348  ldr w9,[x8, #0x18]
02cb134c  cset w22,gt
02cb1350  cmp w22,w9
02cb1354  b.cs 0x02cb13fc
02cb1358  ldr x0,[x19, #0x28]
02cb135c  cbz x0,0x02cb13f8
02cb1360  add x8,x8,x21, LSL #0x4
02cb1364  ldr x9,[x0]
02cb1368  ldp s2,s3,[x8, #0x28]
02cb136c  ldr x1,[x9, #0x2b0]
02cb1370  ldp s0,s1,[x8, #0x20]
02cb1374  ldr x8,[x9, #0x2a8]
02cb1378  blr x8
02cb137c  ldr x8,[x19, #0x70]
02cb1380  cbz x8,0x02cb13f8
02cb1384  ldr w9,[x8, #0x18]
02cb1388  cmp w22,w9
02cb138c  b.cs 0x02cb13fc
02cb1390  ldr x0,[x19, #0x60]
02cb1394  cbz x0,0x02cb13f8
02cb1398  add x8,x8,x21, LSL #0x4
02cb139c  ldr x9,[x0]
02cb13a0  ldp s2,s3,[x8, #0x28]
02cb13a4  ldr x1,[x9, #0x2b0]
02cb13a8  ldp s0,s1,[x8, #0x20]
02cb13ac  ldr x8,[x9, #0x2a8]
02cb13b0  blr x8
02cb13b4  cmp w20,#0x2
02cb13b8  b.lt 0x02cb13e8
02cb13bc  ldr x0,[x19, #0x88]
02cb13c0  cbz x0,0x02cb13f8
02cb13c4  adrp x8,0x5e63000
02cb13c8  scvtf s0,w20
02cb13cc  mov x2,xzr
02cb13d0  ldr x8,[x8, #0x800]
02cb13d4  ldp x20,x19,[sp, #0x20]
02cb13d8  ldp x22,x21,[sp, #0x10]
02cb13dc  ldr x1,[x8]
02cb13e0  ldr x30,[sp], #0x30
02cb13e4  b 0x055e2440
02cb13e8  ldp x20,x19,[sp, #0x20]
02cb13ec  ldp x22,x21,[sp, #0x10]
02cb13f0  ldr x30,[sp], #0x30
02cb13f4  ret
02cb13f8  bl 0x029f5cfc
02cb13fc  bl 0x029f5d04
