02cab320  sub sp,sp,#0x110
02cab324  stp x29,x30,[sp, #0xc0]
02cab328  stp x26,x25,[sp, #0xd0]
02cab32c  stp x24,x23,[sp, #0xe0]
02cab330  stp x22,x21,[sp, #0xf0]
02cab334  stp x20,x19,[sp, #0x100]
02cab338  adrp x20,0x625c000
02cab33c  mov x19,x0
02cab340  ldrb w8,[x20, #0x50a]
02cab344  tbnz w8,#0x0,0x02cab368
02cab348  adrp x0,0x5e63000
02cab34c  ldr x0,[x0, #0x90]
02cab350  bl 0x029f5a50
02cab354  adrp x0,0x5e5d000
02cab358  ldr x0,[x0, #0xc20]
02cab35c  bl 0x029f5a50
02cab360  mov w8,#0x1
02cab364  strb w8,[x20, #0x50a]
02cab368  movi v0.2D,#0x0
02cab36c  ldr w8,[x19, #0x10]
02cab370  adrp x24,0x5e5d000
02cab374  cmp w8,#0x1
02cab378  str q0,[sp, #0xb0]
02cab37c  ldr x24,[x24, #0xc20]
02cab380  ldr x20,[x19, #0x20]
02cab384  stp q0,q0,[sp, #0x90]
02cab388  str q0,[sp, #0x80]
02cab38c  b.eq 0x02cab51c
02cab390  cbnz w8,0x02cab720
02cab394  mov w8,#0xffffffff
02cab398  str w8,[x19, #0x10]
02cab39c  cbz x20,0x02cab760
02cab3a0  ldr x0,[x20, #0xd0]
02cab3a4  cbz x0,0x02cab760
02cab3a8  mov w1,#0x1
02cab3ac  mov x2,xzr
02cab3b0  bl 0x057dff3c
02cab3b4  ldr w1,[x20, #0x5c]
02cab3b8  mov x0,x20
02cab3bc  str w1,[x19, #0x28]
02cab3c0  bl 0x02caa234
02cab3c4  ldr x0,[x24]
02cab3c8  ldr w8,[x0, #0xe4]
02cab3cc  cbnz w8,0x02cab3d8
02cab3d0  bl 0x029f5bd0
02cab3d4  ldr x0,[x24]
02cab3d8  ldr x8,[x0, #0xb8]
02cab3dc  ldr x21,[x8, #0x10]
02cab3e0  cbz x21,0x02cab760
02cab3e4  ldr x8,[x21, #0xf0]
02cab3e8  cbz x8,0x02cab760
02cab3ec  ldrsw x9,[x20, #0x30]
02cab3f0  mov w10,#0x6667
02cab3f4  movk w10,#0x6666, LSL #16
02cab3f8  smull x10,w9,w10
02cab3fc  lsr x11,x10,#0x3f
02cab400  asr x10,x10,#0x22
02cab404  add w10,w10,w11
02cab408  mov w11,#0xa
02cab40c  msub w9,w10,w11,w9
02cab410  ldr w10,[x8, #0x18]
02cab414  cmp w9,w10
02cab418  b.cs 0x02cab764
02cab41c  ldr x0,[x20, #0xd8]
02cab420  cbz x0,0x02cab760
02cab424  add x8,x8,w9, SXTW  #0x3
02cab428  mov x2,xzr
02cab42c  ldr x1,[x8, #0x20]
02cab430  bl 0x0578eb10
02cab434  ldr w1,[x20, #0x30]
02cab438  add x8,sp,#0x60
02cab43c  mov x0,x21
02cab440  bl 0x02ca96cc
02cab444  ldp q0,q1,[sp, #0x60]
02cab448  add x8,sp,#0x40
02cab44c  ldr w1,[x20, #0x30]
02cab450  mov x0,x21
02cab454  stp q0,q1,[sp, #0xa0]
02cab458  bl 0x02cab768
02cab45c  adrp x22,0x5e63000
02cab460  mov w1,#0x4
02cab464  ldr x22,[x22, #0x90]
02cab468  ldp q0,q1,[sp, #0x40]
02cab46c  ldr x0,[x22]
02cab470  stp q0,q1,[sp, #0x80]
02cab474  bl 0x029f5b40
02cab478  mov x21,x19
02cab47c  mov x1,x0
02cab480  str x0,[x21, #0x30]!
02cab484  mov x0,x21
02cab488  bl 0x029f59f4
02cab48c  ldr x25,[x21]
02cab490  cbz x25,0x02cab760
02cab494  mov x23,xzr
02cab498  mov w26,#0x20
02cab49c  ldrsw x8,[x25, #0x18]
02cab4a0  cmp x23,x8
02cab4a4  b.ge 0x02cab528
02cab4a8  ldr x0,[x24]
02cab4ac  ldr w8,[x0, #0xe4]
02cab4b0  cbnz w8,0x02cab4bc
02cab4b4  bl 0x029f5bd0
02cab4b8  ldr x0,[x24]
02cab4bc  ldr x8,[x0, #0xb8]
02cab4c0  ldr x9,[x8]
02cab4c4  cbz x9,0x02cab760
02cab4c8  ldr w8,[x9, #0x18]
02cab4cc  cmp x23,x8
02cab4d0  b.cs 0x02cab764
02cab4d4  add x8,sp,#0x60
02cab4d8  add x0,x9,x26
02cab4dc  add x1,sp,#0xa0
02cab4e0  mov x2,xzr
02cab4e4  bl 0x04658538
02cab4e8  ldr w8,[x25, #0x18]
02cab4ec  cmp x23,x8
02cab4f0  b.cs 0x02cab764
02cab4f4  ldp q1,q0,[sp, #0x60]
02cab4f8  add x0,x25,x26
02cab4fc  mov x1,xzr
02cab500  add x26,x26,#0x20
02cab504  add x23,x23,#0x1
02cab508  stp q1,q0,[x0]
02cab50c  bl 0x029f59f4
02cab510  ldr x25,[x21]
02cab514  cbnz x25,0x02cab49c
02cab518  b 0x02cab760
02cab51c  mov w8,#0xffffffff
02cab520  str w8,[x19, #0x10]
02cab524  b 0x02cab708
02cab528  ldr x0,[x22]
02cab52c  mov w1,#0x4
02cab530  bl 0x029f5b40
02cab534  mov x21,x19
02cab538  mov x1,x0
02cab53c  str x0,[x21, #0x38]!
02cab540  mov x0,x21
02cab544  bl 0x029f59f4
02cab548  ldr x23,[x21]
02cab54c  cbz x23,0x02cab760
02cab550  mov x22,xzr
02cab554  mov w25,#0x20
02cab558  ldrsw x8,[x23, #0x18]
02cab55c  cmp x22,x8
02cab560  b.ge 0x02cab5d8
02cab564  ldr x0,[x24]
02cab568  ldr w8,[x0, #0xe4]
02cab56c  cbnz w8,0x02cab578
02cab570  bl 0x029f5bd0
02cab574  ldr x0,[x24]
02cab578  ldr x8,[x0, #0xb8]
02cab57c  ldr x9,[x8, #0x8]
02cab580  cbz x9,0x02cab760
02cab584  ldr w8,[x9, #0x18]
02cab588  cmp x22,x8
02cab58c  b.cs 0x02cab764
02cab590  add x8,sp,#0x60
02cab594  add x0,x9,x25
02cab598  add x1,sp,#0x80
02cab59c  mov x2,xzr
02cab5a0  bl 0x04658538
02cab5a4  ldr w8,[x23, #0x18]
02cab5a8  cmp x22,x8
02cab5ac  b.cs 0x02cab764
02cab5b0  ldp q1,q0,[sp, #0x60]
02cab5b4  add x0,x23,x25
02cab5b8  mov x1,xzr
02cab5bc  add x25,x25,#0x20
02cab5c0  add x22,x22,#0x1
02cab5c4  stp q1,q0,[x0]
02cab5c8  bl 0x029f59f4
02cab5cc  ldr x23,[x21]
02cab5d0  cbnz x23,0x02cab558
02cab5d4  b 0x02cab760
02cab5d8  mov w8,wzr
02cab5dc  str xzr,[x19, #0x40]
02cab5e0  b 0x02cab714
02cab5e4  mov w0,wzr
02cab5e8  mov w1,#0x3
02cab5ec  mov x2,xzr
02cab5f0  bl 0x057d5614
02cab5f4  cbz x20,0x02cab760
02cab5f8  ldr x8,[x20, #0x20]
02cab5fc  cbz x8,0x02cab760
02cab600  ldrsw x9,[x19, #0x44]
02cab604  ldr w10,[x8, #0x18]
02cab608  cmp w9,w10
02cab60c  b.cs 0x02cab764
02cab610  ldr x11,[x19, #0x30]
02cab614  cbz x11,0x02cab760
02cab618  ldr w10,[x11, #0x18]
02cab61c  mov w21,w0
02cab620  cmp w0,w10
02cab624  b.cs 0x02cab764
02cab628  sxtw x10,w21
02cab62c  add x8,x8,x9, LSL #0x3
02cab630  add x11,x11,x10, LSL #0x5
02cab634  ldr x22,[x8, #0x20]
02cab638  ldr x8,[x19, #0x38]
02cab63c  ldr q0,[x11, #0x20]
02cab640  str q0,[sp, #0x60]
02cab644  ldr q0,[x11, #0x30]
02cab648  str q0,[sp, #0x70]
02cab64c  cbz x8,0x02cab760
02cab650  ldr w9,[x8, #0x18]
02cab654  cmp w21,w9
02cab658  b.cs 0x02cab764
02cab65c  add x8,x8,x10, LSL #0x5
02cab660  ldr x0,[x24]
02cab664  ldr w23,[x20, #0x30]
02cab668  ldp q0,q1,[x8, #0x20]
02cab66c  ldr w8,[x0, #0xe4]
02cab670  stp q0,q1,[sp, #0x40]
02cab674  cbnz w8,0x02cab67c
02cab678  bl 0x029f5bd0
02cab67c  mov w0,w23
02cab680  mov w1,w21
02cab684  bl 0x02cab8f8
02cab688  cbz x22,0x02cab760
02cab68c  ldp q0,q1,[sp, #0x60]
02cab690  mov x3,x0
02cab694  add x1,sp,#0x20
02cab698  mov x2,sp
02cab69c  mov x0,x22
02cab6a0  stp q0,q1,[sp, #0x20]
02cab6a4  ldp q0,q2,[sp, #0x40]
02cab6a8  stp q0,q2,[sp]
02cab6ac  bl 0x02cab994
02cab6b0  ldr x8,[x20, #0x20]
02cab6b4  cbz x8,0x02cab760
02cab6b8  ldrsw x9,[x19, #0x44]
02cab6bc  ldr w10,[x8, #0x18]
02cab6c0  cmp w9,w10
02cab6c4  b.cs 0x02cab764
02cab6c8  add x8,x8,x9, LSL #0x3
02cab6cc  ldr x0,[x8, #0x20]
02cab6d0  cbz x0,0x02cab760
02cab6d4  mov x1,xzr
02cab6d8  bl 0x057dc1c8
02cab6dc  cbz x0,0x02cab760
02cab6e0  mov w1,#0x1
02cab6e4  mov x2,xzr
02cab6e8  mov w21,#0x1
02cab6ec  bl 0x057dff3c
02cab6f0  ldr w8,[x19, #0x40]
02cab6f4  add w8,w8,#0x1
02cab6f8  str w8,[x19, #0x40]
02cab6fc  ldr w9,[x20, #0x88]
02cab700  cmp w8,w9
02cab704  b.ge 0x02cab728
02cab708  ldr w8,[x19, #0x44]
02cab70c  add w8,w8,#0x1
02cab710  str w8,[x19, #0x44]
02cab714  ldr w9,[x19, #0x28]
02cab718  cmp w8,w9
02cab71c  b.lt 0x02cab5e4
02cab720  mov w21,wzr
02cab724  b 0x02cab740
02cab728  str xzr,[x19, #0x18]!
02cab72c  mov x0,x19
02cab730  mov x1,xzr
02cab734  str wzr,[x19, #0x28]
02cab738  bl 0x029f59f4
02cab73c  stur w21,[x19, #-0x8]
02cab740  mov w0,w21
02cab744  ldp x20,x19,[sp, #0x100]
02cab748  ldp x22,x21,[sp, #0xf0]
02cab74c  ldp x24,x23,[sp, #0xe0]
02cab750  ldp x26,x25,[sp, #0xd0]
02cab754  ldp x29,x30,[sp, #0xc0]
02cab758  add sp,sp,#0x110
02cab75c  ret
02cab760  bl 0x029f5cfc
02cab764  bl 0x029f5d04
