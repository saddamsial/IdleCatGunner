02c2e304  stp x30,x19,[sp, #-0x10]!
02c2e308  ldr w8,[x0, #0x30]
02c2e30c  cmp w8,#0xf
02c2e310  b.eq 0x02c2e374
02c2e314  ldr w9,[x0, #0x34]
02c2e318  mov x19,x0
02c2e31c  add w9,w9,w1
02c2e320  str w9,[x0, #0x34]
02c2e324  ldr x9,[x19, #0x38]
02c2e328  cbz x9,0x02c2e37c
02c2e32c  ldr w10,[x9, #0x18]
02c2e330  cmp w8,w10
02c2e334  b.cs 0x02c2e380
02c2e338  add x9,x9,w8, SXTW  #0x2
02c2e33c  ldr w10,[x19, #0x34]
02c2e340  ldr w9,[x9, #0x20]
02c2e344  subs w9,w10,w9
02c2e348  b.lt 0x02c2e374
02c2e34c  ldr x0,[x19, #0x40]
02c2e350  add w8,w8,#0x1
02c2e354  stp w8,w9,[x19, #0x30]
02c2e358  cbz x0,0x02c2e37c
02c2e35c  mov x1,xzr
02c2e360  bl 0x02c35734
02c2e364  ldr w8,[x19, #0x30]
02c2e368  cmp w8,#0xf
02c2e36c  b.ne 0x02c2e324
02c2e370  str wzr,[x19, #0x34]
02c2e374  ldp x30,x19,[sp], #0x10
02c2e378  ret
02c2e37c  bl 0x029f5cfc
02c2e380  bl 0x029f5d04
