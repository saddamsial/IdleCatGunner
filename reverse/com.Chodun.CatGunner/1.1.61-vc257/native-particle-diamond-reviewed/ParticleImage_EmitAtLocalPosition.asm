049c3840  stp d9,d8,[sp, #-0x70]!
049c3844  stp x29,x30,[sp, #0x10]
049c3848  stp x28,x27,[sp, #0x20]
049c384c  stp x26,x25,[sp, #0x30]
049c3850  stp x24,x23,[sp, #0x40]
049c3854  stp x22,x21,[sp, #0x50]
049c3858  stp x20,x19,[sp, #0x60]
049c385c  sub sp,sp,#0x1e0
049c3860  fmov s8,s1
049c3864  fmov s9,s0
049c3868  adrp x21,0x6262000
049c386c  ldrb w8,[x21, #0x844]
049c3870  mov w19,w1
049c3874  mov x20,x0
049c3878  add x24,x0,#0x3, LSL #12
049c387c  tbnz w8,#0x0,0x049c38c4
049c3880  adrp x0,0x5e85000
049c3884  ldr x0,[x0, #0xfd8]
049c3888  bl 0x029f5a50
049c388c  adrp x0,0x5e86000
049c3890  ldr x0,[x0, #0x20]
049c3894  bl 0x029f5a50
049c3898  adrp x0,0x5e86000
049c389c  ldr x0,[x0, #0x38]
049c38a0  bl 0x029f5a50
049c38a4  adrp x0,0x5e85000
049c38a8  ldr x0,[x0, #0xf48]
049c38ac  bl 0x029f5a50
049c38b0  adrp x0,0x5e86000
049c38b4  ldr x0,[x0, #0x70]
049c38b8  bl 0x029f5a50
049c38bc  mov w8,#0x1
049c38c0  strb w8,[x21, #0x844]
049c38c4  add x0,sp,#0x10
049c38c8  mov w1,wzr
049c38cc  mov w2,#0xe8
049c38d0  bl 0x05afb2a0
049c38d4  ldrb w8,[x24, #0x22f]
049c38d8  cbnz w8,0x049c38e4
049c38dc  mov x0,x20
049c38e0  bl 0x049bcbf0
049c38e4  ldr x8,[x20, #0x3298]
049c38e8  cbz x8,0x049c3acc
049c38ec  cmp w19,#0x1
049c38f0  str w19,[x8, #0x14]
049c38f4  b.lt 0x049c3aa8
049c38f8  adrp x25,0x5e85000
049c38fc  adrp x26,0x5e85000
049c3900  adrp x27,0x5e86000
049c3904  adrp x28,0x5e86000
049c3908  adrp x29,0x5e86000
049c390c  ldr x25,[x25, #0xfd8]
049c3910  ldr x26,[x26, #0xf48]
049c3914  ldr x27,[x27, #0x20]
049c3918  ldr x28,[x28, #0x38]
049c391c  ldr x29,[x29, #0x70]
049c3920  mov w21,wzr
049c3924  ldrb w8,[x24, #0x22c]
049c3928  cbz w8,0x049c3a08
049c392c  ldrb w8,[x24, #0x22d]
049c3930  ldr x23,[x20, #0x3298]
049c3934  cbz w8,0x049c3a0c
049c3938  fmov s0,s9
049c393c  fmov s1,s8
049c3940  mov x0,xzr
049c3944  bl 0x052c34b8
049c3948  add x8,sp,#0xf8
049c394c  mov x0,x20
049c3950  mov w1,w21
049c3954  mov w2,wzr
049c3958  mov x3,x23
049c395c  bl 0x049c142c
049c3960  add x0,sp,#0x10
049c3964  add x1,sp,#0xf8
049c3968  mov w2,#0xe8
049c396c  bl 0x05afb2b0
049c3970  mov x0,x20
049c3974  bl 0x049bc258
049c3978  ldr x9,[x26]
049c397c  mov x8,x0
049c3980  ldr x22,[x8]
049c3984  ldr x0,[x9, #0x20]
049c3988  add x9,x0,#0x135
049c398c  ldrh w9,[x9]
049c3990  tbnz w9,#0x0,0x049c3998
049c3994  bl 0x02a2e9f8
049c3998  ldr w22,[x22, #0x8]
049c399c  mov x0,x20
049c39a0  bl 0x049bc258
049c39a4  cmp w22,#0x1
049c39a8  b.lt 0x049c3a90
049c39ac  ldr x3,[x28]
049c39b0  mov w1,wzr
049c39b4  mov w2,#0x1
049c39b8  bl 0x035b3afc
049c39bc  mov x0,x20
049c39c0  bl 0x049bc258
049c39c4  mov x22,x0
049c39c8  add x0,sp,#0xf8
049c39cc  add x1,sp,#0x10
049c39d0  mov w2,#0xe8
049c39d4  bl 0x05afb2b0
049c39d8  ldr x8,[x29]
049c39dc  ldr x22,[x22]
049c39e0  ldr x0,[x8, #0x20]
049c39e4  add x8,x0,#0x135
049c39e8  ldrh w8,[x8]
049c39ec  tbnz w8,#0x0,0x049c39f4
049c39f0  bl 0x02a2e9f8
049c39f4  ldr x0,[x22]
049c39f8  add x1,sp,#0xf8
049c39fc  mov w2,#0xe8
049c3a00  bl 0x05afb2b0
049c3a04  b 0x049c3a9c
049c3a08  ldr x23,[x20, #0x3298]
049c3a0c  movi d0,#0x0
049c3a10  fmov s1,s9
049c3a14  ldr x22,[x20, #0x748]
049c3a18  fmov s2,s8
049c3a1c  mov x0,x20
049c3a20  mov w1,w21
049c3a24  mov w2,wzr
049c3a28  mov x3,x23
049c3a2c  bl 0x049c21ec
049c3a30  cbz x22,0x049c3acc
049c3a34  ldr w10,[x22, #0x1c]
049c3a38  ldr x8,[x22, #0x10]
049c3a3c  ldr x9,[x25]
049c3a40  add w10,w10,#0x1
049c3a44  str w10,[x22, #0x1c]
049c3a48  cbz x8,0x049c3acc
049c3a4c  ldrsw x10,[x22, #0x18]
049c3a50  ldr w11,[x8, #0x18]
049c3a54  mov x1,x0
049c3a58  cmp w10,w11
049c3a5c  b.cs 0x049c3a78
049c3a60  add x0,x8,x10, LSL #0x3
049c3a64  add w9,w10,#0x1
049c3a68  str w9,[x22, #0x18]
049c3a6c  str x1,[x0, #0x20]!
049c3a70  bl 0x029f59f4
049c3a74  b 0x049c3a9c
049c3a78  ldr x8,[x9, #0x20]
049c3a7c  mov x0,x22
049c3a80  ldr x8,[x8, #0xc0]
049c3a84  ldr x2,[x8, #0x70]
049c3a88  bl 0x0452cba8
049c3a8c  b 0x049c3a9c
049c3a90  ldr x2,[x27]
049c3a94  add x1,sp,#0x10
049c3a98  bl 0x035b3914
049c3a9c  add w21,w21,#0x1
049c3aa0  cmp w19,w21
049c3aa4  b.ne 0x049c3924
049c3aa8  add sp,sp,#0x1e0
049c3aac  ldp x20,x19,[sp, #0x60]
049c3ab0  ldp x22,x21,[sp, #0x50]
049c3ab4  ldp x24,x23,[sp, #0x40]
049c3ab8  ldp x26,x25,[sp, #0x30]
049c3abc  ldp x28,x27,[sp, #0x20]
049c3ac0  ldp x29,x30,[sp, #0x10]
049c3ac4  ldp d9,d8,[sp], #0x70
049c3ac8  ret
049c3acc  bl 0x029f5cfc
