02c8896c  stp x30,x21,[sp, #-0x20]!
02c88970  stp x20,x19,[sp, #0x10]
02c88974  adrp x21,0x625c000
02c88978  adrp x20,0x5e5d000
02c8897c  mov x19,x0
02c88980  ldrb w8,[x21, #0x390]
02c88984  ldr x20,[x20, #0x338]
02c88988  tbnz w8,#0x0,0x02c889a0
02c8898c  adrp x0,0x5e5d000
02c88990  ldr x0,[x0, #0x338]
02c88994  bl 0x029f5a50
02c88998  mov w8,#0x1
02c8899c  strb w8,[x21, #0x390]
02c889a0  ldr x0,[x20]
02c889a4  ldr w8,[x0, #0xe4]
02c889a8  cbnz w8,0x02c889b4
02c889ac  bl 0x029f5bd0
02c889b0  ldr x0,[x20]
02c889b4  ldr x8,[x0, #0xb8]
02c889b8  mov x0,x19
02c889bc  mov x1,xzr
02c889c0  strb wzr,[x8]
02c889c4  bl 0x057dc1c8
02c889c8  cbz x0,0x02c88a2c
02c889cc  mov w1,#0x1
02c889d0  mov x2,xzr
02c889d4  mov w19,#0x1
02c889d8  bl 0x057dff3c
02c889dc  adrp x20,0x625b000
02c889e0  ldrb w8,[x20, #0xa57]
02c889e4  cbnz w8,0x02c889f8
02c889e8  adrp x0,0x5e5d000
02c889ec  ldr x0,[x0, #0xd70]
02c889f0  bl 0x029f5a50
02c889f4  strb w19,[x20, #0xa57]
02c889f8  adrp x8,0x5e5d000
02c889fc  ldr x8,[x8, #0xd70]
02c88a00  ldr x8,[x8]
02c88a04  ldr x8,[x8, #0xb8]
02c88a08  ldr x0,[x8]
02c88a0c  cbz x0,0x02c88a2c
02c88a10  ldp x20,x19,[sp, #0x10]
02c88a14  fmov s0,0x3f800000
02c88a18  mov w1,#0x6
02c88a1c  mov x2,xzr
02c88a20  mov x3,xzr
02c88a24  ldp x30,x21,[sp], #0x20
02c88a28  b 0x02c1f10c
02c88a2c  bl 0x029f5cfc
