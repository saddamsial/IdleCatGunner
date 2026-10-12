02c32e74  stp x30,x19,[sp, #-0x10]!
02c32e78  ldr x19,[x0, #0x20]
02c32e7c  cbz x19,0x02c32eac
02c32e80  ldr w1,[x19, #0x18]
02c32e84  mov w0,wzr
02c32e88  mov x2,xzr
02c32e8c  bl 0x057d5614
02c32e90  ldr w8,[x19, #0x18]
02c32e94  cmp w0,w8
02c32e98  b.cs 0x02c32eb0
02c32e9c  add x8,x19,w0, SXTW  #0x3
02c32ea0  ldr x0,[x8, #0x20]
02c32ea4  ldp x30,x19,[sp], #0x10
02c32ea8  ret
02c32eac  bl 0x029f5cfc
02c32eb0  bl 0x029f5d04
