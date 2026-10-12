02c27260  stp x30,x21,[sp, #-0x20]!
02c27264  stp x20,x19,[sp, #0x10]
02c27268  ldr x8,[x0, #0x28]
02c2726c  str w1,[x0, #0x20]
02c27270  cbz x8,0x02c27304
02c27274  mov x19,x0
02c27278  mov x21,xzr
02c2727c  mov w20,w1
02c27280  ldr w9,[x8, #0x18]
02c27284  cmp w21,w9
02c27288  b.ge 0x02c272c0
02c2728c  cmp w21,w9
02c27290  b.cs 0x02c27314
02c27294  add x8,x8,x21, LSL #0x3
02c27298  ldr x0,[x8, #0x20]
02c2729c  cbz x0,0x02c27304
02c272a0  cmp w20,w21
02c272a4  mov x2,xzr
02c272a8  cset w1,eq
02c272ac  bl 0x057dff3c
02c272b0  ldr x8,[x19, #0x28]
02c272b4  add x21,x21,#0x1
02c272b8  cbnz x8,0x02c27280
02c272bc  b 0x02c27304
02c272c0  ldr x8,[x19, #0x30]
02c272c4  cbz x8,0x02c27304
02c272c8  mov x21,xzr
02c272cc  ldr w9,[x8, #0x18]
02c272d0  cmp w21,w9
02c272d4  b.ge 0x02c27308
02c272d8  cmp w21,w9
02c272dc  b.cs 0x02c27314
02c272e0  add x8,x8,x21, LSL #0x3
02c272e4  ldr x0,[x8, #0x20]
02c272e8  cbz x0,0x02c27304
02c272ec  cmp w20,w21
02c272f0  cset w1,eq
02c272f4  bl 0x02c27318
02c272f8  ldr x8,[x19, #0x30]
02c272fc  add x21,x21,#0x1
02c27300  cbnz x8,0x02c272cc
02c27304  bl 0x029f5cfc
02c27308  ldp x20,x19,[sp, #0x10]
02c2730c  ldp x30,x21,[sp], #0x20
02c27310  ret
02c27314  bl 0x029f5d04
