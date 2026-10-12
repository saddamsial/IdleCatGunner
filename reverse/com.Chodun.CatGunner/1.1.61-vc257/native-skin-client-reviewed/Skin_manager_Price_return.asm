02ca7a94  str x30,[sp, #-0x10]!
02ca7a98  ldr x8,[x0, #0x38]
02ca7a9c  cbz x8,0x02ca7abc
02ca7aa0  ldr w9,[x8, #0x18]
02ca7aa4  cmp w9,w1
02ca7aa8  b.ls 0x02ca7ac0
02ca7aac  add x8,x8,w1, SXTW  #0x2
02ca7ab0  ldr w0,[x8, #0x20]
02ca7ab4  ldr x30,[sp], #0x10
02ca7ab8  ret
02ca7abc  bl 0x029f5cfc
02ca7ac0  bl 0x029f5d04
