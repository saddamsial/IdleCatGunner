02c2d050  str x30,[sp, #-0x10]!
02c2d054  ldr x8,[x0, #0x68]
02c2d058  cbz x8,0x02c2d078
02c2d05c  ldr w9,[x8, #0x18]
02c2d060  cmp w9,w1
02c2d064  b.ls 0x02c2d07c
02c2d068  add x8,x8,w1, SXTW  #0x2
02c2d06c  ldr w0,[x8, #0x20]
02c2d070  ldr x30,[sp], #0x10
02c2d074  ret
02c2d078  bl 0x029f5cfc
02c2d07c  bl 0x029f5d04
