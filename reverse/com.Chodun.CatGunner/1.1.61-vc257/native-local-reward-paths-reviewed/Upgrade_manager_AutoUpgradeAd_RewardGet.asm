02cb366c  stp x30,x21,[sp, #-0x20]!
02cb3670  stp x20,x19,[sp, #0x10]
02cb3674  adrp x21,0x625c000
02cb3678  adrp x20,0x5e5d000
02cb367c  mov x19,x0
02cb3680  ldrb w8,[x21, #0x56c]
02cb3684  ldr x20,[x20, #0x4e8]
02cb3688  tbnz w8,#0x0,0x02cb36ac
02cb368c  adrp x0,0x5e62000
02cb3690  ldr x0,[x0, #0x670]
02cb3694  bl 0x029f5a50
02cb3698  adrp x0,0x5e5d000
02cb369c  ldr x0,[x0, #0x4e8]
02cb36a0  bl 0x029f5a50
02cb36a4  mov w8,#0x1
02cb36a8  strb w8,[x21, #0x56c]
02cb36ac  ldr x0,[x20]
02cb36b0  adrp x21,0x5e62000
02cb36b4  ldr w8,[x0, #0xe4]
02cb36b8  ldr x21,[x21, #0x670]
02cb36bc  cbnz w8,0x02cb36c4
02cb36c0  bl 0x029f5bd0
02cb36c4  bl 0x02cb337c
02cb36c8  ldr x8,[x20]
02cb36cc  mov x1,x0
02cb36d0  ldr x8,[x8, #0xb8]
02cb36d4  str x0,[x8, #0x8]!
02cb36d8  mov x0,x8
02cb36dc  bl 0x029f59f4
02cb36e0  ldr x8,[x20]
02cb36e4  mov w9,#0x44160000
02cb36e8  mov x0,xzr
02cb36ec  ldr x8,[x8, #0xb8]
02cb36f0  str w9,[x8, #0x10]
02cb36f4  bl 0x02c0faf8
02cb36f8  ldr x8,[x21]
02cb36fc  ldr x8,[x8, #0xb8]
02cb3700  ldrb w8,[x8]
02cb3704  cbnz w8,0x02cb3710
02cb3708  mov x0,x19
02cb370c  bl 0x02cb1dfc
02cb3710  ldr x0,[x20]
02cb3714  ldr w8,[x0, #0xe4]
02cb3718  cbnz w8,0x02cb3724
02cb371c  bl 0x029f5bd0
02cb3720  ldr x0,[x20]
02cb3724  ldr x8,[x0, #0xb8]
02cb3728  ldr x8,[x8, #0x18]
02cb372c  cbz x8,0x02cb3748
02cb3730  ldp x20,x19,[sp, #0x10]
02cb3734  ldr x0,[x8, #0x40]
02cb3738  ldr x1,[x8, #0x28]
02cb373c  ldr x2,[x8, #0x18]
02cb3740  ldp x30,x21,[sp], #0x20
02cb3744  br x2
02cb3748  ldp x20,x19,[sp, #0x10]
02cb374c  ldp x30,x21,[sp], #0x20
02cb3750  ret
