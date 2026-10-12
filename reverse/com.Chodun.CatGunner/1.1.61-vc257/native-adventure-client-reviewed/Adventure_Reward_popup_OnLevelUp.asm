02c3671c  stp x30,x19,[sp, #-0x10]!
02c36720  adrp x19,0x625b000
02c36724  ldrb w8,[x19, #0xa57]
02c36728  cbnz w8,0x02c36740
02c3672c  adrp x0,0x5e5d000
02c36730  ldr x0,[x0, #0xd70]
02c36734  bl 0x029f5a50
02c36738  mov w8,#0x1
02c3673c  strb w8,[x19, #0xa57]
02c36740  adrp x8,0x5e5d000
02c36744  ldr x8,[x8, #0xd70]
02c36748  ldr x8,[x8]
02c3674c  ldr x8,[x8, #0xb8]
02c36750  ldr x0,[x8]
02c36754  cbz x0,0x02c36770
02c36758  fmov s0,0x3f800000
02c3675c  mov w1,#0xb
02c36760  mov x2,xzr
02c36764  mov x3,xzr
02c36768  ldp x30,x19,[sp], #0x10
02c3676c  b 0x02c1f10c
02c36770  bl 0x029f5cfc
