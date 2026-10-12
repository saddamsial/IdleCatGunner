02c500f0  sub sp,sp,#0x30
02c500f4  stp x30,x21,[sp, #0x10]
02c500f8  stp x20,x19,[sp, #0x20]
02c500fc  adrp x20,0x625c000
02c50100  mov x19,x0
02c50104  ldrb w8,[x20, #0x151]
02c50108  tbnz w8,#0x0,0x02c50138
02c5010c  adrp x0,0x5e5d000
02c50110  ldr x0,[x0, #0x910]
02c50114  bl 0x029f5a50
02c50118  adrp x0,0x5e5d000
02c5011c  ldr x0,[x0, #0x368]
02c50120  bl 0x029f5a50
02c50124  adrp x0,0x5e5a000
02c50128  ldr x0,[x0, #0x710]
02c5012c  bl 0x029f5a50
02c50130  mov w8,#0x1
02c50134  strb w8,[x20, #0x151]
02c50138  ldr w8,[x19, #0x10]
02c5013c  ldr x20,[x19, #0x20]
02c50140  cmp w8,#0x2
02c50144  b.eq 0x02c50288
02c50148  cmp w8,#0x1
02c5014c  b.eq 0x02c501d8
02c50150  cbnz w8,0x02c502a8
02c50154  adrp x8,0x5e5d000
02c50158  ldr x8,[x8, #0x368]
02c5015c  ldr x8,[x8]
02c50160  ldr x8,[x8, #0xb8]
02c50164  ldr x0,[x8]
02c50168  mov w8,#0xffffffff
02c5016c  str w8,[x19, #0x10]
02c50170  cbz x0,0x02c502bc
02c50174  mov x1,xzr
02c50178  bl 0x02c2a604
02c5017c  adrp x8,0x5e5d000
02c50180  ldr x8,[x8, #0x910]
02c50184  ldr x8,[x8]
02c50188  ldr x8,[x8, #0xb8]
02c5018c  ldr x0,[x8]
02c50190  cbz x0,0x02c502bc
02c50194  mov x1,xzr
02c50198  bl 0x02b8c5a0
02c5019c  adrp x8,0x5e5a000
02c501a0  ldr x8,[x8, #0x710]
02c501a4  ldr x0,[x8]
02c501a8  bl 0x029f5cec
02c501ac  fmov s0,0x40000000
02c501b0  mov x1,xzr
02c501b4  mov x20,x0
02c501b8  bl 0x057e84e0
02c501bc  str x20,[x19, #0x18]!
02c501c0  mov x0,x19
02c501c4  mov x1,x20
02c501c8  bl 0x029f59f4
02c501cc  mov w0,#0x1
02c501d0  stur w0,[x19, #-0x8]
02c501d4  b 0x02c502ac
02c501d8  adrp x8,0x5e5d000
02c501dc  ldr x8,[x8, #0x368]
02c501e0  ldr x8,[x8]
02c501e4  ldr x8,[x8, #0xb8]
02c501e8  ldr x0,[x8]
02c501ec  mov w8,#0xffffffff
02c501f0  str w8,[x19, #0x10]
02c501f4  cbz x0,0x02c502bc
02c501f8  mov x1,xzr
02c501fc  bl 0x02c2a620
02c50200  adrp x21,0x625b000
02c50204  ldrb w8,[x21, #0xa57]
02c50208  cbnz w8,0x02c50220
02c5020c  adrp x0,0x5e5d000
02c50210  ldr x0,[x0, #0xd70]
02c50214  bl 0x029f5a50
02c50218  mov w8,#0x1
02c5021c  strb w8,[x21, #0xa57]
02c50220  adrp x8,0x5e5d000
02c50224  ldr x8,[x8, #0xd70]
02c50228  ldr x8,[x8]
02c5022c  ldr x8,[x8, #0xb8]
02c50230  ldr x0,[x8]
02c50234  cbz x0,0x02c502bc
02c50238  mov x1,xzr
02c5023c  bl 0x02c226a0
02c50240  cbz x20,0x02c502bc
02c50244  mov x0,x20
02c50248  bl 0x02c4da8c
02c5024c  adrp x8,0x5e58000
02c50250  mov w9,#0x3f800000
02c50254  add x1,sp,#0xc
02c50258  ldr x8,[x8, #0xa10]
02c5025c  str w9,[sp, #0xc]
02c50260  ldr x0,[x8, #0x78]
02c50264  bl 0x029f5bd8
02c50268  mov x1,x0
02c5026c  str x0,[x19, #0x18]!
02c50270  mov x0,x19
02c50274  bl 0x029f59f4
02c50278  mov w8,#0x2
02c5027c  mov w0,#0x1
02c50280  stur w8,[x19, #-0x8]
02c50284  b 0x02c502ac
02c50288  mov w8,#0xffffffff
02c5028c  str w8,[x19, #0x10]
02c50290  cbz x20,0x02c502bc
02c50294  ldr x0,[x20, #0x30]
02c50298  cbz x0,0x02c502bc
02c5029c  mov w1,#0x1
02c502a0  mov x2,xzr
02c502a4  bl 0x057dff3c
02c502a8  mov w0,wzr
02c502ac  ldp x20,x19,[sp, #0x20]
02c502b0  ldp x30,x21,[sp, #0x10]
02c502b4  add sp,sp,#0x30
02c502b8  ret
02c502bc  bl 0x029f5cfc
