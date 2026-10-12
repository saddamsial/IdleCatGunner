02c664a0  stp d13,d12,[sp, #-0x50]!
02c664a4  stp d11,d10,[sp, #0x10]
02c664a8  stp d9,d8,[sp, #0x20]
02c664ac  stp x30,x21,[sp, #0x30]
02c664b0  stp x20,x19,[sp, #0x40]
02c664b4  adrp x21,0x625c000
02c664b8  mov x19,x1
02c664bc  mov x20,x0
02c664c0  ldrb w8,[x21, #0x24d]
02c664c4  tbnz w8,#0x0,0x02c664e8
02c664c8  adrp x0,0x5e63000
02c664cc  ldr x0,[x0, #0x9e8]
02c664d0  bl 0x029f5a50
02c664d4  adrp x0,0x5e5d000
02c664d8  ldr x0,[x0, #0x568]
02c664dc  bl 0x029f5a50
02c664e0  mov w8,#0x1
02c664e4  strb w8,[x21, #0x24d]
02c664e8  ldrb w8,[x20, #0x68]
02c664ec  cbnz w8,0x02c66528
02c664f0  cbz x19,0x02c66710
02c664f4  mov x0,x19
02c664f8  mov x1,xzr
02c664fc  bl 0x057e4ed0
02c66500  ldr x8,[x20, #0xd0]
02c66504  cbz x8,0x02c66710
02c66508  adrp x9,0x5e63000
02c6650c  mov w21,w0
02c66510  mov x0,x8
02c66514  ldr x9,[x9, #0x9e8]
02c66518  mov w1,w21
02c6651c  ldr x2,[x9]
02c66520  bl 0x04281fa8
02c66524  tbz w0,#0x0,0x02c66540
02c66528  ldp x20,x19,[sp, #0x40]
02c6652c  ldp x30,x21,[sp, #0x30]
02c66530  ldp d9,d8,[sp, #0x20]
02c66534  ldp d11,d10,[sp, #0x10]
02c66538  ldp d13,d12,[sp], #0x50
02c6653c  ret
02c66540  ldrb w8,[x20, #0xa4]
02c66544  cbz w8,0x02c66554
02c66548  ldp s0,s1,[x20, #0x6c]
02c6654c  ldr s2,[x20, #0x74]
02c66550  b 0x02c665b4
02c66554  mov x0,x20
02c66558  mov x1,xzr
02c6655c  bl 0x057dc0f8
02c66560  cbz x0,0x02c66710
02c66564  mov x1,xzr
02c66568  bl 0x057eed98
02c6656c  ldr x0,[x20, #0x58]
02c66570  cbz x0,0x02c66710
02c66574  mov x1,xzr
02c66578  fmov s8,s0
02c6657c  fmov s9,s1
02c66580  fmov s10,s2
02c66584  bl 0x0586b268
02c66588  mov x0,xzr
02c6658c  fmov s11,s0
02c66590  fmov s12,s1
02c66594  fmov s13,s2
02c66598  bl 0x057ebb5c
02c6659c  fmul s1,s11,s0
02c665a0  fmul s2,s12,s0
02c665a4  fmul s3,s13,s0
02c665a8  fsub s0,s8,s1
02c665ac  fsub s1,s9,s2
02c665b0  fsub s2,s10,s3
02c665b4  mov x0,x19
02c665b8  mov x1,xzr
02c665bc  bl 0x05866b18
02c665c0  adrp x8,0x5e5d000
02c665c4  mov x0,x19
02c665c8  mov x2,xzr
02c665cc  ldr x8,[x8, #0x568]
02c665d0  fmov s10,s0
02c665d4  fmov s8,s1
02c665d8  fmov s9,s2
02c665dc  ldr x1,[x8]
02c665e0  bl 0x057dd030
02c665e4  ldr w8,[x20, #0x98]
02c665e8  cmp w8,#0x2
02c665ec  b.gt 0x02c66638
02c665f0  cbz w8,0x02c66654
02c665f4  cmp w8,#0x1
02c665f8  b.eq 0x02c666a8
02c665fc  cmp w8,#0x2
02c66600  b.ne 0x02c66528
02c66604  and w2,w0,#0x1
02c66608  mov x0,x20
02c6660c  mov x1,x19
02c66610  fmov s0,s10
02c66614  fmov s1,s8
02c66618  fmov s2,s9
02c6661c  mov w3,w21
02c66620  ldp x20,x19,[sp, #0x40]
02c66624  ldp x30,x21,[sp, #0x30]
02c66628  ldp d9,d8,[sp, #0x20]
02c6662c  ldp d11,d10,[sp, #0x10]
02c66630  ldp d13,d12,[sp], #0x50
02c66634  b 0x02c66980
02c66638  sub w9,w8,#0x4
02c6663c  cmp w9,#0x2
02c66640  b.cc 0x02c66680
02c66644  cmp w8,#0x6
02c66648  b.eq 0x02c666dc
02c6664c  cmp w8,#0x3
02c66650  b.ne 0x02c66528
02c66654  mov x0,x20
02c66658  mov x1,x19
02c6665c  fmov s0,s10
02c66660  fmov s1,s8
02c66664  fmov s2,s9
02c66668  ldp x20,x19,[sp, #0x40]
02c6666c  ldp x30,x21,[sp, #0x30]
02c66670  ldp d9,d8,[sp, #0x20]
02c66674  ldp d11,d10,[sp, #0x10]
02c66678  ldp d13,d12,[sp], #0x50
02c6667c  b 0x02c66714
02c66680  mov x0,x20
02c66684  fmov s0,s10
02c66688  fmov s1,s8
02c6668c  fmov s2,s9
02c66690  ldp x20,x19,[sp, #0x40]
02c66694  ldp x30,x21,[sp, #0x30]
02c66698  ldp d9,d8,[sp, #0x20]
02c6669c  ldp d11,d10,[sp, #0x10]
02c666a0  ldp d13,d12,[sp], #0x50
02c666a4  b 0x02c66c1c
02c666a8  and w2,w0,#0x1
02c666ac  mov x0,x20
02c666b0  mov x1,x19
02c666b4  fmov s0,s10
02c666b8  fmov s1,s8
02c666bc  fmov s2,s9
02c666c0  mov w3,w21
02c666c4  ldp x20,x19,[sp, #0x40]
02c666c8  ldp x30,x21,[sp, #0x30]
02c666cc  ldp d9,d8,[sp, #0x20]
02c666d0  ldp d11,d10,[sp, #0x10]
02c666d4  ldp d13,d12,[sp], #0x50
02c666d8  b 0x02c667f4
02c666dc  and w2,w0,#0x1
02c666e0  mov x0,x20
02c666e4  mov x1,x19
02c666e8  fmov s0,s10
02c666ec  fmov s1,s8
02c666f0  fmov s2,s9
02c666f4  mov w3,w21
02c666f8  ldp x20,x19,[sp, #0x40]
02c666fc  ldp x30,x21,[sp, #0x30]
02c66700  ldp d9,d8,[sp, #0x20]
02c66704  ldp d11,d10,[sp, #0x10]
02c66708  ldp d13,d12,[sp], #0x50
02c6670c  b 0x02c66c64
02c66710  bl 0x029f5cfc
