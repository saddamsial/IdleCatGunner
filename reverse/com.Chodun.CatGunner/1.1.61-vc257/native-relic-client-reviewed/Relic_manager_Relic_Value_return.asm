02c3156c  sub sp,sp,#0xc0
02c31570  stp x30,x21,[sp, #0xa0]
02c31574  stp x20,x19,[sp, #0xb0]
02c31578  adrp x21,0x625c000
02c3157c  mov x20,x0
02c31580  mov x19,x8
02c31584  ldrb w9,[x21, #0x45]
02c31588  tbnz w9,#0x0,0x02c315a0
02c3158c  adrp x0,0x5e5d000
02c31590  ldr x0,[x0, #0x4d8]
02c31594  bl 0x029f5a50
02c31598  mov w8,#0x1
02c3159c  strb w8,[x21, #0x45]
02c315a0  movi v0.2D,#0x0
02c315a4  stp q0,q0,[sp, #0x60]
02c315a8  stp q0,q0,[sp, #0x80]
02c315ac  cbz x20,0x02c318c8
02c315b0  ldr w8,[x20, #0x10]
02c315b4  cmp w8,#0xc
02c315b8  b.hi 0x02c318a0
02c315bc  adrp x9,0x11b0000
02c315c0  add x9,x9,#0x51c
02c315c4  adr x10,0x2c315d4
02c315c8  ldrb w11,[x9, x8, LSL ]
02c315cc  add x10,x10,x11, LSL #0x2
02c315d0  br x10
02c318a0  add x8,sp,#0x40
02c318a4  mov w0,wzr
02c318a8  mov x1,xzr
02c318ac  bl 0x046544b8
02c318b0  ldp q0,q1,[sp, #0x40]
02c318b4  stp q0,q1,[x19]
02c318b8  ldp x20,x19,[sp, #0xb0]
02c318bc  ldp x30,x21,[sp, #0xa0]
02c318c0  add sp,sp,#0xc0
02c318c4  ret
02c318c8  bl 0x029f5cfc
