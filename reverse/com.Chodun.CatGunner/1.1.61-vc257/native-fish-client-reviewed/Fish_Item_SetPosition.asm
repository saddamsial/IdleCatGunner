02c6298c  stp d9,d8,[sp, #-0x30]!
02c62990  str x30,[sp, #0x10]
02c62994  stp x20,x19,[sp, #0x20]
02c62998  fmov s8,s1
02c6299c  fmov s9,s0
02c629a0  mov x19,x0
02c629a4  bl 0x02c60a20
02c629a8  fmov s0,s9
02c629ac  fmov s1,s8
02c629b0  ldr x20,[x19, #0x50]
02c629b4  mov x0,x19
02c629b8  bl 0x02c61a8c
02c629bc  cbz x20,0x02c629e0
02c629c0  mov x0,x20
02c629c4  mov x1,xzr
02c629c8  bl 0x057edec8
02c629cc  mov x0,x19
02c629d0  ldp x20,x19,[sp, #0x20]
02c629d4  ldr x30,[sp, #0x10]
02c629d8  ldp d9,d8,[sp], #0x30
02c629dc  b 0x02c613e4
02c629e0  bl 0x029f5cfc
