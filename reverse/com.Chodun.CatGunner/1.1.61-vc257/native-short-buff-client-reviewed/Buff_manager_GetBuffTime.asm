02c37464  str x30,[sp, #-0x10]!
02c37468  ldr x8,[x0, #0x38]
02c3746c  cbz x8,0x02c3748c
02c37470  ldr w9,[x8, #0x18]
02c37474  cmp w9,w1
02c37478  b.ls 0x02c37490
02c3747c  add x8,x8,w1, SXTW  #0x2
02c37480  ldr s0,[x8, #0x20]
02c37484  ldr x30,[sp], #0x10
02c37488  ret
02c3748c  bl 0x029f5cfc
02c37490  bl 0x029f5d04
