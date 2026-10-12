02c612b4  stp x30,x21,[sp, #-0x20]!
02c612b8  stp x20,x19,[sp, #0x10]
02c612bc  adrp x20,0x625c000
02c612c0  adrp x21,0x5e59000
02c612c4  mov x19,x0
02c612c8  ldrb w8,[x20, #0x21f]
02c612cc  ldr x21,[x21, #0x1c0]
02c612d0  tbnz w8,#0x0,0x02c612e8
02c612d4  adrp x0,0x5e59000
02c612d8  ldr x0,[x0, #0x1c0]
02c612dc  bl 0x029f5a50
02c612e0  mov w8,#0x1
02c612e4  strb w8,[x20, #0x21f]
02c612e8  ldr x0,[x21]
02c612ec  ldr x20,[x19, #0x58]
02c612f0  ldr w8,[x0, #0xe4]
02c612f4  cbnz w8,0x02c612fc
02c612f8  bl 0x029f5bd0
02c612fc  mov x0,x20
02c61300  mov x1,xzr
02c61304  mov x2,xzr
02c61308  bl 0x057e14b4
02c6130c  tbnz w0,#0x0,0x02c61338
02c61310  ldr x0,[x21]
02c61314  ldr x20,[x19, #0x50]
02c61318  ldr w8,[x0, #0xe4]
02c6131c  cbnz w8,0x02c61324
02c61320  bl 0x029f5bd0
02c61324  mov x0,x20
02c61328  mov x1,xzr
02c6132c  mov x2,xzr
02c61330  bl 0x057e14b4
02c61334  tbz w0,#0x0,0x02c61344
02c61338  ldp x20,x19,[sp, #0x10]
02c6133c  ldp x30,x21,[sp], #0x20
02c61340  ret
02c61344  ldr x0,[x19, #0x58]
02c61348  cbz x0,0x02c61370
02c6134c  ldr x19,[x19, #0x50]
02c61350  mov x1,xzr
02c61354  bl 0x057edf90
02c61358  cbz x19,0x02c61370
02c6135c  mov x0,x19
02c61360  ldp x20,x19,[sp, #0x10]
02c61364  mov x1,xzr
02c61368  ldp x30,x21,[sp], #0x20
02c6136c  b 0x057ee05c
02c61370  bl 0x029f5cfc
