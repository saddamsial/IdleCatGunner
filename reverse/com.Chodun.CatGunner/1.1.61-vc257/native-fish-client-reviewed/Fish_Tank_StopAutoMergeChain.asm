02c5e310  str x30,[sp, #-0x20]!
02c5e314  stp x20,x19,[sp, #0x10]
02c5e318  mov x20,x0
02c5e31c  mov x19,x0
02c5e320  ldr x1,[x20, #0x58]!
02c5e324  cbz x1,0x02c5e344
02c5e328  mov x0,x19
02c5e32c  mov x2,xzr
02c5e330  bl 0x057e237c
02c5e334  mov x0,x20
02c5e338  mov x1,xzr
02c5e33c  str xzr,[x19, #0x58]
02c5e340  bl 0x029f59f4
02c5e344  ldr x8,[x19, #0x20]
02c5e348  cbz x8,0x02c5e384
02c5e34c  mov w20,wzr
02c5e350  ldr w9,[x8, #0x18]
02c5e354  cmp w20,w9
02c5e358  b.ge 0x02c5e388
02c5e35c  b.cs 0x02c5e394
02c5e360  add x9,x8,w20, SXTW  #0x3
02c5e364  ldr x0,[x9, #0x20]
02c5e368  cbz x0,0x02c5e384
02c5e36c  ldrb w9,[x0, #0x86]
02c5e370  cbz w9,0x02c5e37c
02c5e374  bl 0x02c61024
02c5e378  ldr x8,[x19, #0x20]
02c5e37c  add w20,w20,#0x1
02c5e380  cbnz x8,0x02c5e350
02c5e384  bl 0x029f5cfc
02c5e388  ldp x20,x19,[sp, #0x10]
02c5e38c  ldr x30,[sp], #0x20
02c5e390  ret
02c5e394  bl 0x029f5d04
