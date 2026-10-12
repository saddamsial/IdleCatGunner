02cd37f8  sub sp,sp,#0xe0
02cd37fc  stp d15,d14,[sp, #0x70]
02cd3800  stp d13,d12,[sp, #0x80]
02cd3804  stp d11,d10,[sp, #0x90]
02cd3808  stp d9,d8,[sp, #0xa0]
02cd380c  stp x30,x23,[sp, #0xb0]
02cd3810  stp x22,x21,[sp, #0xc0]
02cd3814  stp x20,x19,[sp, #0xd0]
02cd3818  fmov s9,s7
02cd381c  fmov s11,s6
02cd3820  adrp x23,0x625c000
02cd3824  fmov s8,s3
02cd3828  fmov s10,s0
02cd382c  ldrb w8,[x23, #0x6a0]
02cd3830  mov x19,x5
02cd3834  mov x21,x2
02cd3838  mov x20,x1
02cd383c  mov x22,x0
02cd3840  stp q1,q2,[sp, #0x10]
02cd3844  tbnz w8,#0x0,0x02cd386c
02cd3848  adrp x0,0x5e65000
02cd384c  ldr x0,[x0, #0x880]
02cd3850  str q4,[sp, #0x30]
02cd3854  str q5,[sp]
02cd3858  bl 0x029f5a50
02cd385c  ldr q5,[sp]
02cd3860  ldr q4,[sp, #0x30]
02cd3864  mov w8,#0x1
02cd3868  strb w8,[x23, #0x6a0]
02cd386c  ldrb w8,[x20, #0x14]
02cd3870  tbnz w8,#0x0,0x02cd3880
02cd3874  cbz x21,0x02cd3cc0
02cd3878  mov v4.S[0x1],v5.S[0x0]
02cd387c  b 0x02cd38fc
02cd3880  cbz x21,0x02cd3ccc
02cd3884  adrp x8,0x5e65000
02cd3888  ldr x8,[x8, #0x880]
02cd388c  ldr x1,[x8]
02cd3890  ldr x8,[x21]
02cd3894  ldrb w10,[x8, #0x130]
02cd3898  ldrb w9,[x1, #0x130]
02cd389c  cmp w10,w9
02cd38a0  b.cc 0x02cd3cc4
02cd38a4  ldr x8,[x8, #0xc8]
02cd38a8  add x8,x8,x9, LSL #0x3
02cd38ac  ldur x8,[x8, #-0x8]
02cd38b0  cmp x8,x1
02cd38b4  b.ne 0x02cd3cc4
02cd38b8  ldp q1,q0,[x20]
02cd38bc  mov x0,x21
02cd38c0  ldr w8,[x20, #0x20]
02cd38c4  stp q1,q0,[sp, #0x40]
02cd38c8  ldr x9,[sp, #0x58]
02cd38cc  str w8,[sp, #0x60]
02cd38d0  str w8,[x21, #0x138]
02cd38d4  str x9,[x21, #0x130]
02cd38d8  bl 0x02cd3ce0
02cd38dc  ldr x8,[x22]
02cd38e0  mov x0,x22
02cd38e4  mov x1,x21
02cd38e8  ldp x9,x2,[x8, #0x1c8]
02cd38ec  blr x9
02cd38f0  add x8,x21,#0x13c
02cd38f4  ldr s11,[x21, #0x144]
02cd38f8  ldr d4,[x8]
02cd38fc  ldp q3,q0,[sp, #0x10]
02cd3900  ldr w8,[x21, #0xa8]
02cd3904  cmp w8,#0x2
02cd3908  mov v3.S[0x1],v0.S[0x0]
02cd390c  b.ne 0x02cd3934
02cd3910  ldrsb w9,[x21, #0x111]
02cd3914  ldr w10,[x21, #0x10c]
02cd3918  sub w9,w10,w9
02cd391c  scvtf s0,w9
02cd3920  fmul v1.2S,v4.2S,v0.S[0x0]
02cd3924  fmul s0,s11,s0
02cd3928  fadd v3.2S,v3.2S,v1.2S
02cd392c  fadd s12,s8,s0
02cd3930  b 0x02cd3938
02cd3934  fmov s12,s8
02cd3938  ldrb w9,[x21, #0xe9]
02cd393c  str q4,[sp, #0x30]
02cd3940  cbz w9,0x02cd3994
02cd3944  ldr x9,[x21, #0xf0]
02cd3948  cbz x9,0x02cd3cc0
02cd394c  ldr w10,[x9, #0xa8]
02cd3950  cmp w10,#0x2
02cd3954  b.ne 0x02cd3994
02cd3958  fmov s0,0x3f800000
02cd395c  cmp w8,#0x2
02cd3960  b.ne 0x02cd396c
02cd3964  ldr s0,[x21, #0xa4]
02cd3968  scvtf s0,s0
02cd396c  ldrsb w8,[x9, #0x111]
02cd3970  ldr w9,[x9, #0x10c]
02cd3974  fmul v1.2S,v4.2S,v0.S[0x0]
02cd3978  fmul s0,s11,s0
02cd397c  sub w8,w9,w8
02cd3980  scvtf s2,w8
02cd3984  fmul v1.2S,v1.2S,v2.S[0x0]
02cd3988  fmul s0,s0,s2
02cd398c  fadd v3.2S,v3.2S,v1.2S
02cd3990  fadd s12,s12,s0
02cd3994  str q3,[sp]
02cd3998  fmov s0,s10
02cd399c  fmov s1,s9
02cd39a0  ldr w0,[x21, #0xb4]
02cd39a4  ldp s2,s3,[x21, #0xc0]
02cd39a8  ldr x1,[x21, #0xb8]
02cd39ac  mov x2,xzr
02cd39b0  bl 0x02ce53f0
02cd39b4  ldr w8,[x20]
02cd39b8  fmov s1,s0
02cd39bc  and w8,w8,#0xfffffffe
02cd39c0  cmp w8,#0x2
02cd39c4  b.ne 0x02cd3bc0
02cd39c8  adrp x8,0x116c000
02cd39cc  ldr q0,[sp, #0x10]
02cd39d0  str q1,[sp, #0x10]
02cd39d4  ldr s15,[x8, #0x26c]
02cd39d8  ldr q1,[sp, #0x20]
02cd39dc  mov x0,xzr
02cd39e0  fmul s0,s0,s15
02cd39e4  fmul s1,s1,s15
02cd39e8  fmul s2,s8,s15
02cd39ec  bl 0x057cd67c
02cd39f0  fmov s10,s0
02cd39f4  fmov s9,s1
02cd39f8  ldr q0,[sp, #0x30]
02cd39fc  ldr q1,[sp, #0x10]
02cd3a00  fmov s8,s2
02cd3a04  ldr w8,[x20]
02cd3a08  fmul s14,s1,s0
02cd3a0c  fmul s13,s1,v0.S[0x1]
02cd3a10  fmul s12,s11,s1
02cd3a14  fmov s11,s3
02cd3a18  cmp w8,#0x2
02cd3a1c  b.ne 0x02cd3c08
02cd3a20  fmov s0,s10
02cd3a24  fmov s1,s9
02cd3a28  mov x0,xzr
02cd3a2c  fmov s2,s8
02cd3a30  fmov s3,s11
02cd3a34  bl 0x057cd50c
02cd3a38  str s0,[sp, #0x30]
02cd3a3c  fmul s0,s14,s15
02cd3a40  mov x0,xzr
02cd3a44  str s1,[sp, #0x10]
02cd3a48  fmul s1,s13,s15
02cd3a4c  str s2,[sp, #0x20]
02cd3a50  fmul s2,s12,s15
02cd3a54  fmov s15,s3
02cd3a58  bl 0x057cd67c
02cd3a5c  cbz x19,0x02cd3cc0
02cd3a60  ldr s20,[sp, #0x30]
02cd3a64  fmul s4,s11,s15
02cd3a68  ldr s22,[sp, #0x10]
02cd3a6c  ldr s21,[sp, #0x20]
02cd3a70  fmul s7,s10,s15
02cd3a74  fmul s18,s8,s15
02cd3a78  fmul s5,s10,s20
02cd3a7c  fmul s6,s11,s20
02cd3a80  fmul s16,s9,s22
02cd3a84  fmul s17,s11,s21
02cd3a88  fmul s19,s9,s15
02cd3a8c  fsub s4,s4,s5
02cd3a90  fmul s5,s11,s22
02cd3a94  fadd s6,s6,s7
02cd3a98  fmul s7,s9,s21
02cd3a9c  fadd s17,s17,s18
02cd3aa0  fmul s18,s10,s22
02cd3aa4  fadd s5,s5,s19
02cd3aa8  fsub s4,s4,s16
02cd3aac  fmul s16,s8,s20
02cd3ab0  fadd s6,s7,s6
02cd3ab4  fmul s7,s8,s21
02cd3ab8  fmul s19,s8,s22
02cd3abc  fmul s20,s9,s20
02cd3ac0  fadd s17,s18,s17
02cd3ac4  fmul s18,s10,s21
02cd3ac8  fadd s5,s16,s5
02cd3acc  fsub s4,s4,s7
02cd3ad0  fsub s6,s6,s19
02cd3ad4  fsub s7,s17,s20
02cd3ad8  fsub s5,s5,s18
02cd3adc  fmul s16,s3,s4
02cd3ae0  fmul s17,s0,s6
02cd3ae4  fmul s18,s0,s4
02cd3ae8  fmul s19,s3,s6
02cd3aec  fmul s20,s2,s4
02cd3af0  fmul s21,s3,s7
02cd3af4  fmul s4,s1,s4
02cd3af8  fmul s3,s3,s5
02cd3afc  fsub s16,s16,s17
02cd3b00  fmul s17,s1,s5
02cd3b04  fadd s18,s18,s19
02cd3b08  fmul s19,s2,s5
02cd3b0c  fadd s20,s20,s21
02cd3b10  fmul s21,s1,s6
02cd3b14  fmul s1,s1,s7
02cd3b18  fadd s3,s4,s3
02cd3b1c  fmul s4,s0,s7
02cd3b20  fmul s7,s2,s7
02cd3b24  fsub s16,s16,s17
02cd3b28  fmul s0,s0,s5
02cd3b2c  fmul s2,s2,s6
02cd3b30  fadd s17,s19,s18
02cd3b34  fadd s5,s21,s20
02cd3b38  fadd s3,s4,s3
02cd3b3c  fsub s4,s16,s7
02cd3b40  fsub s1,s17,s1
02cd3b44  fsub s0,s5,s0
02cd3b48  fsub s2,s3,s2
02cd3b4c  fmul s3,s11,s4
02cd3b50  fmul s6,s8,s4
02cd3b54  fmul s5,s10,s1
02cd3b58  fmul s16,s9,s4
02cd3b5c  fmul s7,s11,s0
02cd3b60  fmul s4,s10,s4
02cd3b64  fmul s17,s11,s2
02cd3b68  fmul s18,s11,s1
02cd3b6c  fmul s19,s9,s2
02cd3b70  fmul s20,s9,s1
02cd3b74  fmul s21,s10,s0
02cd3b78  fmul s22,s8,s2
02cd3b7c  fsub s3,s3,s5
02cd3b80  fadd s5,s6,s7
02cd3b84  fmul s7,s8,s0
02cd3b88  fmul s2,s10,s2
02cd3b8c  fadd s6,s16,s17
02cd3b90  fadd s4,s4,s18
02cd3b94  fmul s1,s8,s1
02cd3b98  fmul s0,s9,s0
02cd3b9c  fsub s3,s3,s19
02cd3ba0  fadd s5,s20,s5
02cd3ba4  fadd s6,s21,s6
02cd3ba8  fadd s4,s22,s4
02cd3bac  fsub s3,s3,s7
02cd3bb0  fsub s2,s5,s2
02cd3bb4  fsub s1,s6,s1
02cd3bb8  fsub s0,s4,s0
02cd3bbc  b 0x02cd3c90
02cd3bc0  ldr q0,[sp, #0x30]
02cd3bc4  mov w8,#0xfa35
02cd3bc8  ldr q2,[sp]
02cd3bcc  movk w8,#0x3c8e, LSL #16
02cd3bd0  mov x0,xzr
02cd3bd4  fmul v0.2S,v0.2S,v1.S[0x0]
02cd3bd8  fmul s1,s11,s1
02cd3bdc  fadd v0.2S,v2.2S,v0.2S
02cd3be0  dup v2.2S,w8
02cd3be4  fadd s1,s12,s1
02cd3be8  adrp x8,0x116c000
02cd3bec  fmul v0.2S,v0.2S,v2.2S
02cd3bf0  ldr s2,[x8, #0x26c]
02cd3bf4  fmul s2,s1,s2
02cd3bf8  dup s1,v0.S[0x1]
02cd3bfc  bl 0x057cd67c
02cd3c00  cbnz x19,0x02cd3c90
02cd3c04  b 0x02cd3cc0
02cd3c08  fmul s0,s14,s15
02cd3c0c  fmul s1,s13,s15
02cd3c10  mov x0,xzr
02cd3c14  fmul s2,s12,s15
02cd3c18  bl 0x057cd67c
02cd3c1c  cbz x19,0x02cd3cc0
02cd3c20  fmul s4,s11,s3
02cd3c24  fmul s5,s10,s0
02cd3c28  fmul s6,s11,s2
02cd3c2c  fmul s7,s8,s3
02cd3c30  fmul s16,s11,s1
02cd3c34  fmul s17,s9,s3
02cd3c38  fmul s18,s11,s0
02cd3c3c  fmul s3,s10,s3
02cd3c40  fsub s4,s4,s5
02cd3c44  fmul s5,s9,s1
02cd3c48  fmul s19,s10,s2
02cd3c4c  fadd s6,s6,s7
02cd3c50  fmul s7,s10,s1
02cd3c54  fmul s20,s8,s1
02cd3c58  fadd s16,s16,s17
02cd3c5c  fmul s17,s8,s0
02cd3c60  fmul s0,s9,s0
02cd3c64  fadd s3,s18,s3
02cd3c68  fmul s18,s9,s2
02cd3c6c  fmul s2,s8,s2
02cd3c70  fsub s1,s4,s5
02cd3c74  fadd s4,s7,s6
02cd3c78  fadd s5,s17,s16
02cd3c7c  fadd s6,s18,s3
02cd3c80  fsub s3,s1,s2
02cd3c84  fsub s2,s4,s0
02cd3c88  fsub s1,s5,s19
02cd3c8c  fsub s0,s6,s20
02cd3c90  ldr x0,[x19, #0x40]
02cd3c94  ldr x2,[x19, #0x18]
02cd3c98  ldr x1,[x19, #0x28]
02cd3c9c  ldp x20,x19,[sp, #0xd0]
02cd3ca0  ldp x22,x21,[sp, #0xc0]
02cd3ca4  ldp x30,x23,[sp, #0xb0]
02cd3ca8  ldp d9,d8,[sp, #0xa0]
02cd3cac  ldp d11,d10,[sp, #0x90]
02cd3cb0  ldp d13,d12,[sp, #0x80]
02cd3cb4  ldp d15,d14,[sp, #0x70]
02cd3cb8  add sp,sp,#0xe0
02cd3cbc  br x2
02cd3cc0  bl 0x029f5cfc
02cd3cc4  mov x0,x21
02cd3cc8  bl 0x029f607c
02cd3ccc  ldp q0,q1,[x20]
02cd3cd0  ldr w8,[x20, #0x20]
02cd3cd4  str w8,[sp, #0x60]
02cd3cd8  stp q0,q1,[sp, #0x40]
02cd3cdc  bl 0x029f5cfc
