02c450b8  str d10,[sp, #-0x40]!
02c450bc  stp d9,d8,[sp, #0x10]
02c450c0  stp x30,x21,[sp, #0x20]
02c450c4  stp x20,x19,[sp, #0x30]
02c450c8  fmov s8,s2
02c450cc  fmov s9,s1
02c450d0  adrp x20,0x625c000
02c450d4  fmov s10,s0
02c450d8  adrp x21,0x5e63000
02c450dc  ldrb w8,[x20, #0xd3]
02c450e0  ldr x21,[x21, #0x2f0]
02c450e4  mov x19,x0
02c450e8  tbnz w8,#0x0,0x02c45100
02c450ec  adrp x0,0x5e63000
02c450f0  ldr x0,[x0, #0x2f0]
02c450f4  bl 0x029f5a50
02c450f8  mov w8,#0x1
02c450fc  strb w8,[x20, #0xd3]
02c45100  ldr x0,[x21]
02c45104  bl 0x029f5cec
02c45108  mov x1,xzr
02c4510c  mov x20,x0
02c45110  bl 0x04893238
02c45114  mov x0,x20
02c45118  mov x1,x19
02c4511c  str wzr,[x20, #0x10]
02c45120  str x19,[x0, #0x30]!
02c45124  bl 0x029f59f4
02c45128  stp s10,s9,[x20, #0x20]
02c4512c  mov x0,x20
02c45130  str s8,[x20, #0x28]
02c45134  ldp x20,x19,[sp, #0x30]
02c45138  ldp x30,x21,[sp, #0x20]
02c4513c  ldp d9,d8,[sp, #0x10]
02c45140  ldr d10,[sp], #0x40
02c45144  ret
