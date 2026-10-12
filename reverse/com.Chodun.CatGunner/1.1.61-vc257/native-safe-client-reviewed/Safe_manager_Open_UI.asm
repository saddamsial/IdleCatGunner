02c6b8a4  str x30,[sp, #-0x20]!
02c6b8a8  stp x20,x19,[sp, #0x10]
02c6b8ac  adrp x20,0x625c000
02c6b8b0  mov x19,x0
02c6b8b4  ldrb w8,[x20, #0x296]
02c6b8b8  tbnz w8,#0x0,0x02c6b8d0
02c6b8bc  adrp x0,0x5e59000
02c6b8c0  ldr x0,[x0, #0x1c0]
02c6b8c4  bl 0x029f5a50
02c6b8c8  mov w8,#0x1
02c6b8cc  strb w8,[x20, #0x296]
02c6b8d0  bl 0x02c6b498
02c6b8d4  tbz w0,#0x0,0x02c6b968
02c6b8d8  adrp x20,0x625b000
02c6b8dc  ldrb w8,[x20, #0xa57]
02c6b8e0  cbnz w8,0x02c6b8f8
02c6b8e4  adrp x0,0x5e5d000
02c6b8e8  ldr x0,[x0, #0xd70]
02c6b8ec  bl 0x029f5a50
02c6b8f0  mov w8,#0x1
02c6b8f4  strb w8,[x20, #0xa57]
02c6b8f8  adrp x8,0x5e5d000
02c6b8fc  ldr x8,[x8, #0xd70]
02c6b900  ldr x8,[x8]
02c6b904  ldr x8,[x8, #0xb8]
02c6b908  ldr x0,[x8]
02c6b90c  cbz x0,0x02c6b980
02c6b910  fmov s0,0x3f800000
02c6b914  mov w1,#0x1
02c6b918  mov x2,xzr
02c6b91c  mov x3,xzr
02c6b920  bl 0x02c1f10c
02c6b924  adrp x8,0x5e59000
02c6b928  ldr x8,[x8, #0x1c0]
02c6b92c  ldr x20,[x19, #0x30]
02c6b930  ldr x0,[x8]
02c6b934  ldr w8,[x0, #0xe4]
02c6b938  cbnz w8,0x02c6b940
02c6b93c  bl 0x029f5bd0
02c6b940  mov x0,x20
02c6b944  mov x1,xzr
02c6b948  mov x2,xzr
02c6b94c  bl 0x057dfa70
02c6b950  tbz w0,#0x0,0x02c6b974
02c6b954  ldr x0,[x19, #0x30]
02c6b958  cbz x0,0x02c6b980
02c6b95c  ldp x20,x19,[sp, #0x10]
02c6b960  ldr x30,[sp], #0x20
02c6b964  b 0x02c6c594
02c6b968  ldp x20,x19,[sp, #0x10]
02c6b96c  ldr x30,[sp], #0x20
02c6b970  b 0x02c6c080
02c6b974  ldp x20,x19,[sp, #0x10]
02c6b978  ldr x30,[sp], #0x20
02c6b97c  ret
02c6b980  bl 0x029f5cfc
