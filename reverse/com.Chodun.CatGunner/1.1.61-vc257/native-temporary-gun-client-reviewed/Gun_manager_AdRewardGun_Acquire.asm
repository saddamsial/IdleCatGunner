02c6a994  ldr w8,[x0, #0xc0]
02c6a998  cmn w8,#0x1
02c6a99c  b.eq 0x02c6a9e0
02c6a9a0  str x30,[sp, #-0x20]!
02c6a9a4  stp x20,x19,[sp, #0x10]
02c6a9a8  movi v0.2D,#-0x1
02c6a9ac  ldr w20,[x0, #0xc4]
02c6a9b0  mov x19,x0
02c6a9b4  str xzr,[x0, #0xc8]
02c6a9b8  mov w1,w20
02c6a9bc  str d0,[x0, #0xc0]
02c6a9c0  bl 0x02c69e40
02c6a9c4  mov x0,x19
02c6a9c8  mov w1,w20
02c6a9cc  bl 0x02c68ac8
02c6a9d0  mov x0,x19
02c6a9d4  ldp x20,x19,[sp, #0x10]
02c6a9d8  ldr x30,[sp], #0x20
02c6a9dc  b 0x02c6841c
02c6a9e0  ret
