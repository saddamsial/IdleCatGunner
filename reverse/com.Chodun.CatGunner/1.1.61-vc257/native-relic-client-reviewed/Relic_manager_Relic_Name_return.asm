02c318d0  str x30,[sp, #-0x20]!
02c318d4  stp x20,x19,[sp, #0x10]
02c318d8  adrp x20,0x625c000
02c318dc  mov x19,x0
02c318e0  ldrb w8,[x20, #0x47]
02c318e4  tbnz w8,#0x0,0x02c318fc
02c318e8  adrp x0,0x5e59000
02c318ec  ldr x0,[x0, #0x50]
02c318f0  bl 0x029f5a50
02c318f4  mov w8,#0x1
02c318f8  strb w8,[x20, #0x47]
02c318fc  cbz x19,0x02c319d4
02c31900  ldr w8,[x19, #0x10]
02c31904  cmp w8,#0x5
02c31908  b.le 0x02c3193c
02c3190c  cmp w8,#0x9
02c31910  b.lt 0x02c3195c
02c31914  cmp w8,#0xa
02c31918  b.gt 0x02c3197c
02c3191c  cmp w8,#0x9
02c31920  b.eq 0x02c3199c
02c31924  cmp w8,#0xa
02c31928  b.ne 0x02c319bc
02c3192c  ldp x20,x19,[sp, #0x10]
02c31930  mov x0,xzr
02c31934  ldr x30,[sp], #0x20
02c31938  b 0x02be1798
02c3193c  subs w8,w8,#0x3
02c31940  b.cc 0x02c3196c
02c31944  cmp w8,#0x3
02c31948  b.cs 0x02c319bc
02c3194c  ldp x20,x19,[sp, #0x10]
02c31950  mov x0,xzr
02c31954  ldr x30,[sp], #0x20
02c31958  b 0x02be1678
02c3195c  ldp x20,x19,[sp, #0x10]
02c31960  mov x0,xzr
02c31964  ldr x30,[sp], #0x20
02c31968  b 0x02be1558
02c3196c  ldp x20,x19,[sp, #0x10]
02c31970  mov x0,xzr
02c31974  ldr x30,[sp], #0x20
02c31978  b 0x02be15e8
02c3197c  cmp w8,#0xb
02c31980  b.eq 0x02c319ac
02c31984  cmp w8,#0xc
02c31988  b.ne 0x02c319bc
02c3198c  ldp x20,x19,[sp, #0x10]
02c31990  mov x0,xzr
02c31994  ldr x30,[sp], #0x20
02c31998  b 0x02be18b8
02c3199c  ldp x20,x19,[sp, #0x10]
02c319a0  mov x0,xzr
02c319a4  ldr x30,[sp], #0x20
02c319a8  b 0x02be1708
02c319ac  ldp x20,x19,[sp, #0x10]
02c319b0  mov x0,xzr
02c319b4  ldr x30,[sp], #0x20
02c319b8  b 0x02be1828
02c319bc  adrp x8,0x5e59000
02c319c0  ldr x8,[x8, #0x50]
02c319c4  ldp x20,x19,[sp, #0x10]
02c319c8  ldr x0,[x8]
02c319cc  ldr x30,[sp], #0x20
02c319d0  ret
02c319d4  bl 0x029f5cfc
