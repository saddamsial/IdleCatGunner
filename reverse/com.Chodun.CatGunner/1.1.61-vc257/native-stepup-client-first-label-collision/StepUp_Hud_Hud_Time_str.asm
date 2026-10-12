02ca41a8  sub sp,sp,#0x30
02ca41ac  stp x30,x21,[sp, #0x10]
02ca41b0  stp x20,x19,[sp, #0x20]
02ca41b4  adrp x20,0x625c000
02ca41b8  adrp x19,0x5e5a000
02ca41bc  ldrb w8,[x20, #0x4ab]
02ca41c0  ldr x19,[x19, #0x180]
02ca41c4  str x0,[sp, #0x8]
02ca41c8  tbnz w8,#0x0,0x02ca4204
02ca41cc  adrp x0,0x5e5a000
02ca41d0  ldr x0,[x0, #0x180]
02ca41d4  bl 0x029f5a50
02ca41d8  adrp x0,0x5e64000
02ca41dc  ldr x0,[x0, #0x938]
02ca41e0  bl 0x029f5a50
02ca41e4  adrp x0,0x5e64000
02ca41e8  ldr x0,[x0, #0x940]
02ca41ec  bl 0x029f5a50
02ca41f0  adrp x0,0x5e64000
02ca41f4  ldr x0,[x0, #0x948]
02ca41f8  bl 0x029f5a50
02ca41fc  mov w8,#0x1
02ca4200  strb w8,[x20, #0x4ab]
02ca4204  ldr x0,[x19]
02ca4208  ldr w8,[x0, #0xe4]
02ca420c  cbnz w8,0x02ca4214
02ca4210  bl 0x029f5bd0
02ca4214  add x0,sp,#0x8
02ca4218  mov x1,xzr
02ca421c  bl 0x048681e0
02ca4220  mov x8,#0x7ff0000000000000
02ca4224  fcvtzs w9,d0
02ca4228  fmov d1,x8
02ca422c  mov w8,#0x80000000
02ca4230  fcmp d0,d1
02ca4234  csel w8,w8,w9,eq
02ca4238  cmp w8,#0x1
02ca423c  b.lt 0x02ca42a0
02ca4240  adrp x21,0x5e58000
02ca4244  adrp x20,0x5e64000
02ca4248  add x1,sp,#0x4
02ca424c  ldr x21,[x21, #0xa10]
02ca4250  ldr x20,[x20, #0x938]
02ca4254  str w8,[sp, #0x4]
02ca4258  ldr x0,[x21, #0x48]
02ca425c  bl 0x029f5bd8
02ca4260  ldr x8,[x19]
02ca4264  mov x19,x0
02ca4268  ldr w9,[x8, #0xe4]
02ca426c  cbnz w9,0x02ca4278
02ca4270  mov x0,x8
02ca4274  bl 0x029f5bd0
02ca4278  add x0,sp,#0x8
02ca427c  mov x1,xzr
02ca4280  bl 0x04868108
02ca4284  ldr x8,[x21, #0x48]
02ca4288  str w0,[sp]
02ca428c  mov x1,sp
02ca4290  mov x0,x8
02ca4294  bl 0x029f5bd8
02ca4298  ldr x8,[x20]
02ca429c  b 0x02ca4390
02ca42a0  ldr x0,[x19]
02ca42a4  ldr w8,[x0, #0xe4]
02ca42a8  cbnz w8,0x02ca42b0
02ca42ac  bl 0x029f5bd0
02ca42b0  add x0,sp,#0x8
02ca42b4  mov x1,xzr
02ca42b8  bl 0x048681f8
02ca42bc  fmov d1,0x3ff0000000000000
02ca42c0  ldr x0,[x19]
02ca42c4  ldr w8,[x0, #0xe4]
02ca42c8  fcmp d0,d1
02ca42cc  b.ge 0x02ca4330
02ca42d0  cbnz w8,0x02ca42d8
02ca42d4  bl 0x029f5bd0
02ca42d8  add x0,sp,#0x8
02ca42dc  mov x1,xzr
02ca42e0  bl 0x0486814c
02ca42e4  adrp x20,0x5e58000
02ca42e8  add x1,sp,#0x4
02ca42ec  ldr x20,[x20, #0xa10]
02ca42f0  str w0,[sp, #0x4]
02ca42f4  ldr x8,[x20, #0x48]
02ca42f8  mov x0,x8
02ca42fc  bl 0x029f5bd8
02ca4300  mov x19,x0
02ca4304  add x0,sp,#0x8
02ca4308  mov x1,xzr
02ca430c  bl 0x04868194
02ca4310  ldr x8,[x20, #0x48]
02ca4314  str w0,[sp]
02ca4318  mov x1,sp
02ca431c  mov x0,x8
02ca4320  bl 0x029f5bd8
02ca4324  adrp x8,0x5e64000
02ca4328  ldr x8,[x8, #0x940]
02ca432c  b 0x02ca438c
02ca4330  cbnz w8,0x02ca4338
02ca4334  bl 0x029f5bd0
02ca4338  add x0,sp,#0x8
02ca433c  mov x1,xzr
02ca4340  bl 0x04868108
02ca4344  adrp x20,0x5e58000
02ca4348  add x1,sp,#0x4
02ca434c  ldr x20,[x20, #0xa10]
02ca4350  str w0,[sp, #0x4]
02ca4354  ldr x8,[x20, #0x48]
02ca4358  mov x0,x8
02ca435c  bl 0x029f5bd8
02ca4360  mov x19,x0
02ca4364  add x0,sp,#0x8
02ca4368  mov x1,xzr
02ca436c  bl 0x0486814c
02ca4370  ldr x8,[x20, #0x48]
02ca4374  str w0,[sp]
02ca4378  mov x1,sp
02ca437c  mov x0,x8
02ca4380  bl 0x029f5bd8
02ca4384  adrp x8,0x5e64000
02ca4388  ldr x8,[x8, #0x948]
02ca438c  ldr x8,[x8]
02ca4390  mov x2,x0
02ca4394  mov x0,x8
02ca4398  mov x1,x19
02ca439c  mov x3,xzr
02ca43a0  bl 0x046c1d14
02ca43a4  ldp x20,x19,[sp, #0x20]
02ca43a8  ldp x30,x21,[sp, #0x10]
02ca43ac  add sp,sp,#0x30
02ca43b0  ret
