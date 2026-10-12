02c30968  str x30,[sp, #-0x20]!
02c3096c  stp x20,x19,[sp, #0x10]
02c30970  ldrb w8,[x0, #0x78]
02c30974  cbnz w8,0x02c309f8
02c30978  ldp w8,w9,[x0, #0x70]
02c3097c  mov x19,x0
02c30980  sub w9,w9,#0x1
02c30984  cmp w8,w9
02c30988  b.ge 0x02c309f8
02c3098c  add w1,w8,#0x1
02c30990  mov x0,x19
02c30994  mov w2,#0x1
02c30998  str w1,[x19, #0x70]
02c3099c  mov w20,#0x1
02c309a0  bl 0x02c30760
02c309a4  mov x0,x19
02c309a8  bl 0x02c30850
02c309ac  adrp x19,0x625b000
02c309b0  ldrb w8,[x19, #0xa57]
02c309b4  cbnz w8,0x02c309c8
02c309b8  adrp x0,0x5e5d000
02c309bc  ldr x0,[x0, #0xd70]
02c309c0  bl 0x029f5a50
02c309c4  strb w20,[x19, #0xa57]
02c309c8  adrp x8,0x5e5d000
02c309cc  ldr x8,[x8, #0xd70]
02c309d0  ldr x8,[x8]
02c309d4  ldr x8,[x8, #0xb8]
02c309d8  ldr x0,[x8]
02c309dc  cbz x0,0x02c30a04
02c309e0  ldp x20,x19,[sp, #0x10]
02c309e4  fmov s0,0x3f800000
02c309e8  mov w1,#0xe
02c309ec  mov x2,xzr
02c309f0  ldr x30,[sp], #0x20
02c309f4  b 0x02c1f10c
02c309f8  ldp x20,x19,[sp, #0x10]
02c309fc  ldr x30,[sp], #0x20
02c30a00  ret
02c30a04  bl 0x029f5cfc
