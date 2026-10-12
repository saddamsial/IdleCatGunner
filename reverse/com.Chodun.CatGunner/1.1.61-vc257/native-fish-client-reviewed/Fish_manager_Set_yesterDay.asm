02c5e094  str x30,[sp, #-0x20]!
02c5e098  stp x20,x19,[sp, #0x10]
02c5e09c  adrp x20,0x625c000
02c5e0a0  mov x19,x0
02c5e0a4  ldrb w8,[x20, #0x1fd]
02c5e0a8  tbnz w8,#0x0,0x02c5e0cc
02c5e0ac  adrp x0,0x5e59000
02c5e0b0  ldr x0,[x0, #0x7d0]
02c5e0b4  bl 0x029f5a50
02c5e0b8  adrp x0,0x5e5d000
02c5e0bc  ldr x0,[x0, #0x3c0]
02c5e0c0  bl 0x029f5a50
02c5e0c4  mov w8,#0x1
02c5e0c8  strb w8,[x20, #0x1fd]
02c5e0cc  mov x0,xzr
02c5e0d0  str xzr,[sp, #0x8]
02c5e0d4  bl 0x02b92498
02c5e0d8  tbz w0,#0x0,0x02c5e130
02c5e0dc  adrp x8,0x5e5d000
02c5e0e0  adrp x20,0x5e59000
02c5e0e4  ldr x8,[x8, #0x3c0]
02c5e0e8  ldr x0,[x8]
02c5e0ec  ldr w8,[x0, #0xe4]
02c5e0f0  ldr x20,[x20, #0x7d0]
02c5e0f4  cbnz w8,0x02c5e0fc
02c5e0f8  bl 0x029f5bd0
02c5e0fc  mov x0,xzr
02c5e100  bl 0x02c25b48
02c5e104  ldr x8,[x20]
02c5e108  str x0,[sp, #0x8]
02c5e10c  ldr w9,[x8, #0xe4]
02c5e110  cbnz w9,0x02c5e11c
02c5e114  mov x0,x8
02c5e118  bl 0x029f5bd0
02c5e11c  fmov d0,-0x4010000000000000
02c5e120  add x0,sp,#0x8
02c5e124  mov x1,xzr
02c5e128  bl 0x0482f924
02c5e12c  str x0,[x19, #0x70]
02c5e130  ldp x20,x19,[sp, #0x10]
02c5e134  ldr x30,[sp], #0x20
02c5e138  ret
