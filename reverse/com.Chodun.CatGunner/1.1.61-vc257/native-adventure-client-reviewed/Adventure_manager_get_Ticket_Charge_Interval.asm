02c2d114  str x30,[sp, #-0x20]!
02c2d118  stp x20,x19,[sp, #0x10]
02c2d11c  adrp x19,0x625c000
02c2d120  adrp x20,0x5e5a000
02c2d124  ldrb w8,[x19, #0x3]
02c2d128  ldr x20,[x20, #0x180]
02c2d12c  tbnz w8,#0x0,0x02c2d144
02c2d130  adrp x0,0x5e5a000
02c2d134  ldr x0,[x0, #0x180]
02c2d138  bl 0x029f5a50
02c2d13c  mov w8,#0x1
02c2d140  strb w8,[x19, #0x3]
02c2d144  ldr x0,[x20]
02c2d148  ldr w8,[x0, #0xe4]
02c2d14c  cbnz w8,0x02c2d154
02c2d150  bl 0x029f5bd0
02c2d154  ldp x20,x19,[sp, #0x10]
02c2d158  fmov d0,0x4010000000000000
02c2d15c  mov x0,xzr
02c2d160  ldr x30,[sp], #0x20
02c2d164  b 0x048685b4
