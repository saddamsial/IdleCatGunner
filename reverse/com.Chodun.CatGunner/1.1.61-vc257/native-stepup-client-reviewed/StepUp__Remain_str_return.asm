02ca37d8  sub sp,sp,#0x40
02ca37dc  str x30,[sp, #0x10]
02ca37e0  stp x22,x21,[sp, #0x20]
02ca37e4  stp x20,x19,[sp, #0x30]
02ca37e8  adrp x19,0x625c000
02ca37ec  adrp x22,0x5e5a000
02ca37f0  ldrb w8,[x19, #0x4a0]
02ca37f4  ldr x22,[x22, #0x180]
02ca37f8  str x0,[sp, #0x18]
02ca37fc  tbnz w8,#0x0,0x02ca3838
02ca3800  adrp x0,0x5e59000
02ca3804  ldr x0,[x0, #0x768]
02ca3808  bl 0x029f5a50
02ca380c  adrp x0,0x5e5a000
02ca3810  ldr x0,[x0, #0x180]
02ca3814  bl 0x029f5a50
02ca3818  adrp x0,0x5e63000
02ca381c  ldr x0,[x0, #0xf08]
02ca3820  bl 0x029f5a50
02ca3824  adrp x0,0x5e63000
02ca3828  ldr x0,[x0, #0xf10]
02ca382c  bl 0x029f5a50
02ca3830  mov w8,#0x1
02ca3834  strb w8,[x19, #0x4a0]
02ca3838  ldr x0,[x22]
02ca383c  ldr w8,[x0, #0xe4]
02ca3840  cbnz w8,0x02ca3848
02ca3844  bl 0x029f5bd0
02ca3848  add x0,sp,#0x18
02ca384c  mov x1,xzr
02ca3850  bl 0x048681e0
02ca3854  mov x8,#0x7ff0000000000000
02ca3858  fcvtzs w9,d0
02ca385c  fmov d1,x8
02ca3860  mov w8,#0x80000000
02ca3864  fcmp d0,d1
02ca3868  csel w20,w8,w9,eq
02ca386c  cmp w20,#0x1
02ca3870  b.lt 0x02ca3a10
02ca3874  adrp x8,0x5e59000
02ca3878  mov w1,#0x4
02ca387c  ldr x8,[x8, #0x768]
02ca3880  ldr x0,[x8]
02ca3884  bl 0x029f5b40
02ca3888  adrp x21,0x5e58000
02ca388c  mov x19,x0
02ca3890  add x1,sp,#0xc
02ca3894  ldr x21,[x21, #0xa10]
02ca3898  str w20,[sp, #0xc]
02ca389c  ldr x0,[x21, #0x48]
02ca38a0  bl 0x029f5bd8
02ca38a4  cbz x19,0x02ca3ad8
02ca38a8  mov x20,x0
02ca38ac  cbz x0,0x02ca38c4
02ca38b0  ldr x8,[x19]
02ca38b4  mov x0,x20
02ca38b8  ldr x1,[x8, #0x40]
02ca38bc  bl 0x029f5bd4
02ca38c0  cbz x0,0x02ca3acc
02ca38c4  ldr w8,[x19, #0x18]
02ca38c8  cbz w8,0x02ca3ac8
02ca38cc  mov x0,x19
02ca38d0  mov x1,x20
02ca38d4  str x20,[x0, #0x20]!
02ca38d8  bl 0x029f59f4
02ca38dc  ldr x0,[x22]
02ca38e0  ldr w8,[x0, #0xe4]
02ca38e4  cbnz w8,0x02ca38ec
02ca38e8  bl 0x029f5bd0
02ca38ec  add x0,sp,#0x18
02ca38f0  mov x1,xzr
02ca38f4  bl 0x04868108
02ca38f8  ldr x8,[x21, #0x48]
02ca38fc  str w0,[sp, #0x8]
02ca3900  add x1,sp,#0x8
02ca3904  mov x0,x8
02ca3908  bl 0x029f5bd8
02ca390c  mov x20,x0
02ca3910  cbz x0,0x02ca3928
02ca3914  ldr x8,[x19]
02ca3918  mov x0,x20
02ca391c  ldr x1,[x8, #0x40]
02ca3920  bl 0x029f5bd4
02ca3924  cbz x0,0x02ca3acc
02ca3928  ldr w8,[x19, #0x18]
02ca392c  tst w8,#0xfffffffe
02ca3930  b.eq 0x02ca3ac8
02ca3934  mov x0,x19
02ca3938  mov x1,x20
02ca393c  str x20,[x0, #0x28]!
02ca3940  bl 0x029f59f4
02ca3944  add x0,sp,#0x18
02ca3948  mov x1,xzr
02ca394c  bl 0x0486814c
02ca3950  ldr x8,[x21, #0x48]
02ca3954  str w0,[sp, #0x4]
02ca3958  add x1,sp,#0x4
02ca395c  mov x0,x8
02ca3960  bl 0x029f5bd8
02ca3964  mov x20,x0
02ca3968  cbz x0,0x02ca3980
02ca396c  ldr x8,[x19]
02ca3970  mov x0,x20
02ca3974  ldr x1,[x8, #0x40]
02ca3978  bl 0x029f5bd4
02ca397c  cbz x0,0x02ca3acc
02ca3980  ldr w8,[x19, #0x18]
02ca3984  cmp w8,#0x2
02ca3988  b.ls 0x02ca3ac8
02ca398c  mov x0,x19
02ca3990  mov x1,x20
02ca3994  str x20,[x0, #0x30]!
02ca3998  bl 0x029f59f4
02ca399c  add x0,sp,#0x18
02ca39a0  mov x1,xzr
02ca39a4  bl 0x04868194
02ca39a8  ldr x8,[x21, #0x48]
02ca39ac  str w0,[sp]
02ca39b0  mov x1,sp
02ca39b4  mov x0,x8
02ca39b8  bl 0x029f5bd8
02ca39bc  mov x20,x0
02ca39c0  cbz x0,0x02ca39d8
02ca39c4  ldr x8,[x19]
02ca39c8  mov x0,x20
02ca39cc  ldr x1,[x8, #0x40]
02ca39d0  bl 0x029f5bd4
02ca39d4  cbz x0,0x02ca3acc
02ca39d8  ldr w8,[x19, #0x18]
02ca39dc  tst w8,#0xfffffffc
02ca39e0  b.eq 0x02ca3ac8
02ca39e4  adrp x21,0x5e63000
02ca39e8  mov x0,x19
02ca39ec  mov x1,x20
02ca39f0  ldr x21,[x21, #0xf08]
02ca39f4  str x20,[x0, #0x38]!
02ca39f8  bl 0x029f59f4
02ca39fc  ldr x0,[x21]
02ca3a00  mov x1,x19
02ca3a04  mov x2,xzr
02ca3a08  bl 0x046c1d9c
02ca3a0c  b 0x02ca3ab4
02ca3a10  ldr x0,[x22]
02ca3a14  ldr w8,[x0, #0xe4]
02ca3a18  cbnz w8,0x02ca3a20
02ca3a1c  bl 0x029f5bd0
02ca3a20  add x0,sp,#0x18
02ca3a24  mov x1,xzr
02ca3a28  bl 0x04868108
02ca3a2c  adrp x21,0x5e58000
02ca3a30  add x1,sp,#0xc
02ca3a34  ldr x21,[x21, #0xa10]
02ca3a38  str w0,[sp, #0xc]
02ca3a3c  ldr x8,[x21, #0x48]
02ca3a40  mov x0,x8
02ca3a44  bl 0x029f5bd8
02ca3a48  mov x19,x0
02ca3a4c  add x0,sp,#0x18
02ca3a50  mov x1,xzr
02ca3a54  bl 0x0486814c
02ca3a58  ldr x8,[x21, #0x48]
02ca3a5c  str w0,[sp, #0x8]
02ca3a60  add x1,sp,#0x8
02ca3a64  mov x0,x8
02ca3a68  bl 0x029f5bd8
02ca3a6c  mov x20,x0
02ca3a70  add x0,sp,#0x18
02ca3a74  mov x1,xzr
02ca3a78  bl 0x04868194
02ca3a7c  ldr x8,[x21, #0x48]
02ca3a80  str w0,[sp, #0x4]
02ca3a84  add x1,sp,#0x4
02ca3a88  mov x0,x8
02ca3a8c  bl 0x029f5bd8
02ca3a90  adrp x8,0x5e63000
02ca3a94  mov x3,x0
02ca3a98  mov x1,x19
02ca3a9c  ldr x8,[x8, #0xf10]
02ca3aa0  mov x2,x20
02ca3aa4  mov x4,xzr
02ca3aa8  ldr x8,[x8]
02ca3aac  mov x0,x8
02ca3ab0  bl 0x046c1d58
02ca3ab4  ldp x20,x19,[sp, #0x30]
02ca3ab8  ldr x30,[sp, #0x10]
02ca3abc  ldp x22,x21,[sp, #0x20]
02ca3ac0  add sp,sp,#0x40
02ca3ac4  ret
02ca3ac8  bl 0x029f5d04
02ca3acc  bl 0x029f5d20
02ca3ad0  mov x1,xzr
02ca3ad4  bl 0x029f5bc0
02ca3ad8  bl 0x029f5cfc
