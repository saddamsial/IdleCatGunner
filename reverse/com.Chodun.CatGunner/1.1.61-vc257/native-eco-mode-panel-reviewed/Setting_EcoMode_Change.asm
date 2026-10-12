02c21548  stp x30,x21,[sp, #-0x20]!
02c2154c  stp x20,x19,[sp, #0x10]
02c21550  adrp x21,0x625b000
02c21554  adrp x20,0x5e62000
02c21558  mov x19,x0
02c2155c  ldrb w8,[x21, #0xf62]
02c21560  ldr x20,[x20, #0x670]
02c21564  tbnz w8,#0x0,0x02c21588
02c21568  adrp x0,0x5e62000
02c2156c  ldr x0,[x0, #0x670]
02c21570  bl 0x029f5a50
02c21574  adrp x0,0x5e5d000
02c21578  ldr x0,[x0, #0x4e0]
02c2157c  bl 0x029f5a50
02c21580  mov w8,#0x1
02c21584  strb w8,[x21, #0xf62]
02c21588  ldr x8,[x20]
02c2158c  ldr x0,[x19, #0xa8]
02c21590  ldr x8,[x8, #0xb8]
02c21594  ldrb w9,[x8, #0x10]
02c21598  eor w10,w9,#0x1
02c2159c  strb w10,[x8, #0x10]
02c215a0  cbnz w9,0x02c215bc
02c215a4  add x8,x19,#0xc8
02c215a8  add x9,x19,#0xcc
02c215ac  add x10,x19,#0xd0
02c215b0  add x11,x19,#0xd4
02c215b4  cbnz x0,0x02c215d0
02c215b8  b 0x02c21680
02c215bc  add x8,x19,#0xb8
02c215c0  add x9,x19,#0xbc
02c215c4  add x10,x19,#0xc0
02c215c8  add x11,x19,#0xc4
02c215cc  cbz x0,0x02c21680
02c215d0  ldr x12,[x0]
02c215d4  ldr s3,[x11]
02c215d8  ldr s2,[x10]
02c215dc  ldr s1,[x9]
02c215e0  ldr s0,[x8]
02c215e4  ldr x8,[x12, #0x2a8]
02c215e8  ldr x1,[x12, #0x2b0]
02c215ec  blr x8
02c215f0  ldr x0,[x19, #0xd8]
02c215f4  cbz x0,0x02c21680
02c215f8  ldr x8,[x20]
02c215fc  mov x2,xzr
02c21600  ldr x8,[x8, #0xb8]
02c21604  ldrb w8,[x8, #0x10]
02c21608  cmp w8,#0x0
02c2160c  cset w1,eq
02c21610  bl 0x057dff3c
02c21614  ldr x0,[x19, #0xe0]
02c21618  cbz x0,0x02c21680
02c2161c  ldr x8,[x20]
02c21620  adrp x20,0x5e5d000
02c21624  mov x2,xzr
02c21628  ldr x8,[x8, #0xb8]
02c2162c  ldr x20,[x20, #0x4e0]
02c21630  ldrb w1,[x8, #0x10]
02c21634  bl 0x057dff3c
02c21638  ldr x8,[x20]
02c2163c  ldr x8,[x8, #0xb8]
02c21640  ldr x9,[x8, #0x10]
02c21644  cbz x9,0x02c21680
02c21648  ldr x8,[x9, #0x50]
02c2164c  cbz x8,0x02c21680
02c21650  ldrsw x9,[x9, #0x30]
02c21654  ldr w10,[x8, #0x18]
02c21658  cmp w9,w10
02c2165c  b.cs 0x02c21684
02c21660  ldr x0,[x19, #0xb0]
02c21664  cbz x0,0x02c21680
02c21668  add x8,x8,x9, LSL #0x3
02c2166c  ldp x20,x19,[sp, #0x10]
02c21670  mov x2,xzr
02c21674  ldr x1,[x8, #0x20]
02c21678  ldp x30,x21,[sp], #0x20
02c2167c  b 0x058d34cc
02c21680  bl 0x029f5cfc
02c21684  bl 0x029f5d04
