02ba6620  sub sp,sp,#0x30
02ba6624  str x30,[sp, #0x10]
02ba6628  stp x20,x19,[sp, #0x20]
02ba662c  adrp x20,0x625b000
02ba6630  mov x19,x1
02ba6634  ldrb w8,[x20, #0xa4e]
02ba6638  tbnz w8,#0x0,0x02ba6680
02ba663c  adrp x0,0x5e5d000
02ba6640  ldr x0,[x0, #0xd28]
02ba6644  bl 0x029f5a50
02ba6648  adrp x0,0x5e5d000
02ba664c  ldr x0,[x0, #0x338]
02ba6650  bl 0x029f5a50
02ba6654  adrp x0,0x5e5d000
02ba6658  ldr x0,[x0, #0xd40]
02ba665c  bl 0x029f5a50
02ba6660  adrp x0,0x5e5e000
02ba6664  ldr x0,[x0, #0x528]
02ba6668  bl 0x029f5a50
02ba666c  adrp x0,0x5e5e000
02ba6670  ldr x0,[x0, #0x7a0]
02ba6674  bl 0x029f5a50
02ba6678  mov w8,#0x1
02ba667c  strb w8,[x20, #0xa4e]
02ba6680  cbz x19,0x02ba682c
02ba6684  ldr w8,[x19, #0x14]
02ba6688  cmp w8,#0x2
02ba668c  b.eq 0x02ba66c0
02ba6690  cbnz w8,0x02ba66f0
02ba6694  adrp x8,0x5e5d000
02ba6698  ldr x8,[x8, #0x338]
02ba669c  ldr w19,[x19, #0x18]
02ba66a0  ldr x0,[x8]
02ba66a4  ldr w8,[x0, #0xe4]
02ba66a8  cbnz w8,0x02ba66b0
02ba66ac  bl 0x029f5bd0
02ba66b0  mov w0,w19
02ba66b4  mov x1,xzr
02ba66b8  bl 0x02b7ed10
02ba66bc  b 0x02ba6774
02ba66c0  adrp x8,0x5e5d000
02ba66c4  ldr x8,[x8, #0xd28]
02ba66c8  ldr w19,[x19, #0x18]
02ba66cc  ldr x0,[x8]
02ba66d0  ldr w8,[x0, #0xe4]
02ba66d4  cbnz w8,0x02ba66dc
02ba66d8  bl 0x029f5bd0
02ba66dc  mov w0,#0x3
02ba66e0  mov w1,w19
02ba66e4  mov x2,xzr
02ba66e8  bl 0x02c2cd94
02ba66ec  b 0x02ba6774
02ba66f0  adrp x20,0x5e5d000
02ba66f4  ldr x20,[x20, #0xd40]
02ba66f8  ldr x8,[x20]
02ba66fc  ldr x8,[x8, #0xb8]
02ba6700  ldr x0,[x8]
02ba6704  cbz x0,0x02ba682c
02ba6708  mov x1,xzr
02ba670c  bl 0x02c67de0
02ba6710  cmn w0,#0x1
02ba6714  b.eq 0x02ba6788
02ba6718  ldr x8,[x20]
02ba671c  ldr x8,[x8, #0xb8]
02ba6720  ldr x8,[x8]
02ba6724  cbz x8,0x02ba682c
02ba6728  ldr x9,[x8, #0x40]
02ba672c  cbz x9,0x02ba682c
02ba6730  ldr w10,[x9, #0x18]
02ba6734  cmp w0,w10
02ba6738  b.cs 0x02ba6830
02ba673c  ldr w10,[x19, #0x18]
02ba6740  add x9,x9,w0, SXTW  #0x2
02ba6744  mov x0,x8
02ba6748  mov x2,xzr
02ba674c  str w10,[x9, #0x20]
02ba6750  ldr w1,[x19, #0x18]
02ba6754  bl 0x02c68ac8
02ba6758  ldr x8,[x20]
02ba675c  ldr x8,[x8, #0xb8]
02ba6760  ldr x0,[x8]
02ba6764  cbz x0,0x02ba682c
02ba6768  ldr w1,[x19, #0x18]
02ba676c  mov x2,xzr
02ba6770  bl 0x02c68918
02ba6774  mov w0,#0x1
02ba6778  ldp x20,x19,[sp, #0x20]
02ba677c  ldr x30,[sp, #0x10]
02ba6780  add sp,sp,#0x30
02ba6784  ret
02ba6788  adrp x8,0x5e5e000
02ba678c  ldr x8,[x8, #0x528]
02ba6790  ldr x0,[x8]
02ba6794  ldr w8,[x0, #0xe4]
02ba6798  cbnz w8,0x02ba67a0
02ba679c  bl 0x029f5bd0
02ba67a0  adrp x8,0x5e5e000
02ba67a4  mov w2,wzr
02ba67a8  mov w4,wzr
02ba67ac  ldr x8,[x8, #0x7a0]
02ba67b0  mov x5,xzr
02ba67b4  mov x6,xzr
02ba67b8  mov w1,#0x1
02ba67bc  mov w3,#0x1
02ba67c0  mov w7,#0x1
02ba67c4  ldr x0,[x8]
02ba67c8  str xzr,[sp]
02ba67cc  mov w19,#0x1
02ba67d0  bl 0x02bccb00
02ba67d4  mov x1,xzr
02ba67d8  bl 0x02c1dd54
02ba67dc  adrp x20,0x625b000
02ba67e0  ldrb w8,[x20, #0xa57]
02ba67e4  cbnz w8,0x02ba67f8
02ba67e8  adrp x0,0x5e5d000
02ba67ec  ldr x0,[x0, #0xd70]
02ba67f0  bl 0x029f5a50
02ba67f4  strb w19,[x20, #0xa57]
02ba67f8  adrp x8,0x5e5d000
02ba67fc  ldr x8,[x8, #0xd70]
02ba6800  ldr x8,[x8]
02ba6804  ldr x8,[x8, #0xb8]
02ba6808  ldr x0,[x8]
02ba680c  cbz x0,0x02ba682c
02ba6810  fmov s0,0x3f800000
02ba6814  mov w1,#0x5
02ba6818  mov x2,xzr
02ba681c  mov x3,xzr
02ba6820  bl 0x02c1f10c
02ba6824  mov w0,wzr
02ba6828  b 0x02ba6778
02ba682c  bl 0x029f5cfc
02ba6830  bl 0x029f5d04
