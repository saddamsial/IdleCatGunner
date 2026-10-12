02c43b7c  sub sp,sp,#0xc0
02c43b80  str d14,[sp, #0x20]
02c43b84  stp d13,d12,[sp, #0x30]
02c43b88  stp d11,d10,[sp, #0x40]
02c43b8c  stp d9,d8,[sp, #0x50]
02c43b90  stp x29,x30,[sp, #0x60]
02c43b94  stp x28,x27,[sp, #0x70]
02c43b98  stp x26,x25,[sp, #0x80]
02c43b9c  stp x24,x23,[sp, #0x90]
02c43ba0  stp x22,x21,[sp, #0xa0]
02c43ba4  stp x20,x19,[sp, #0xb0]
02c43ba8  adrp x20,0x625c000
02c43bac  mov x19,x0
02c43bb0  ldrb w8,[x20, #0xc3]
02c43bb4  tbnz w8,#0x0,0x02c43bcc
02c43bb8  adrp x0,0x5e59000
02c43bbc  ldr x0,[x0, #0x1c0]
02c43bc0  bl 0x029f5a50
02c43bc4  mov w8,#0x1
02c43bc8  strb w8,[x20, #0xc3]
02c43bcc  ldr x8,[x19, #0x20]
02c43bd0  cbz x8,0x02c43bdc
02c43bd4  ldr w20,[x8, #0x18]
02c43bd8  b 0x02c43be0
02c43bdc  mov w20,wzr
02c43be0  mov x0,x19
02c43be4  bl 0x02c43f0c
02c43be8  and w8,w0,#0x1
02c43bec  add w26,w20,w8
02c43bf0  cmp w26,#0x2
02c43bf4  b.lt 0x02c43ed8
02c43bf8  adrp x27,0x5e59000
02c43bfc  mov w21,wzr
02c43c00  mov w20,#0x1
02c43c04  ldr x27,[x27, #0x1c0]
02c43c08  mov x0,x19
02c43c0c  mov w1,w21
02c43c10  bl 0x02c43fcc
02c43c14  ldr x8,[x27]
02c43c18  mov x22,x0
02c43c1c  ldr w9,[x8, #0xe4]
02c43c20  cbnz w9,0x02c43c2c
02c43c24  mov x0,x8
02c43c28  bl 0x029f5bd0
02c43c2c  mov x0,x22
02c43c30  mov x1,xzr
02c43c34  mov x2,xzr
02c43c38  bl 0x057dfa70
02c43c3c  tbz w0,#0x0,0x02c43c8c
02c43c40  cbz x22,0x02c43f08
02c43c44  ldrb w8,[x22, #0x1b0]
02c43c48  cbz w8,0x02c43c8c
02c43c4c  adrp x8,0x625b000
02c43c50  ldrb w8,[x8, #0x26f]
02c43c54  cbnz w8,0x02c43c6c
02c43c58  adrp x0,0x5e58000
02c43c5c  ldr x0,[x0, #0xbf8]
02c43c60  bl 0x029f5a50
02c43c64  adrp x8,0x625b000
02c43c68  strb w20,[x8, #0x26f]
02c43c6c  adrp x8,0x5e58000
02c43c70  ldr x8,[x8, #0xbf8]
02c43c74  ldr x8,[x8]
02c43c78  ldr x8,[x8, #0xb8]
02c43c7c  ldr d0,[x8]
02c43c80  ldr s1,[x8, #0x8]
02c43c84  str d0,[x22, #0x1d0]
02c43c88  str s1,[x22, #0x1d8]
02c43c8c  add w21,w21,#0x1
02c43c90  cmp w26,w21
02c43c94  b.ne 0x02c43c08
02c43c98  adrp x22,0x5e59000
02c43c9c  adrp x8,0x116c000
02c43ca0  fmov s12,0x3f800000
02c43ca4  adrp x9,0x116c000
02c43ca8  ldr x22,[x22]
02c43cac  ldr s13,[x8, #0x268]
02c43cb0  ldr s14,[x9, #0x240]
02c43cb4  mov w21,wzr
02c43cb8  adrp x29,0x625b000
02c43cbc  mov w28,#0x1
02c43cc0  adrp x20,0x625b000
02c43cc4  mov x0,x19
02c43cc8  mov w1,w21
02c43ccc  bl 0x02c43fcc
02c43cd0  ldr x8,[x27]
02c43cd4  mov x23,x0
02c43cd8  ldr w9,[x8, #0xe4]
02c43cdc  cbnz w9,0x02c43ce8
02c43ce0  mov x0,x8
02c43ce4  bl 0x029f5bd0
02c43ce8  mov x0,x23
02c43cec  mov x1,xzr
02c43cf0  mov x2,xzr
02c43cf4  bl 0x057e14b4
02c43cf8  add w21,w21,#0x1
02c43cfc  tbnz w0,#0x0,0x02c43ed0
02c43d00  cmp w21,w26
02c43d04  b.ge 0x02c43ed0
02c43d08  mov w24,w21
02c43d0c  mov x0,x19
02c43d10  mov w1,w24
02c43d14  bl 0x02c43fcc
02c43d18  ldr x8,[x27]
02c43d1c  mov x25,x0
02c43d20  ldr w9,[x8, #0xe4]
02c43d24  cbnz w9,0x02c43d30
02c43d28  mov x0,x8
02c43d2c  bl 0x029f5bd0
02c43d30  mov x0,x25
02c43d34  mov x1,xzr
02c43d38  mov x2,xzr
02c43d3c  bl 0x057e14b4
02c43d40  tbnz w0,#0x0,0x02c43ec4
02c43d44  cbz x23,0x02c43f08
02c43d48  mov x0,x23
02c43d4c  mov x1,xzr
02c43d50  bl 0x057dc0f8
02c43d54  cbz x0,0x02c43f08
02c43d58  mov x1,xzr
02c43d5c  bl 0x057eed98
02c43d60  cbz x25,0x02c43f08
02c43d64  mov x0,x25
02c43d68  mov x1,xzr
02c43d6c  fmov s8,s0
02c43d70  fmov s9,s2
02c43d74  bl 0x057dc0f8
02c43d78  cbz x0,0x02c43f08
02c43d7c  mov x1,xzr
02c43d80  bl 0x057eed98
02c43d84  fmov s10,s0
02c43d88  fmov s11,s2
02c43d8c  ldrb w8,[x29, #0xae8]
02c43d90  cbnz w8,0x02c43da0
02c43d94  mov x0,x22
02c43d98  bl 0x029f5a50
02c43d9c  strb w28,[x29, #0xae8]
02c43da0  ldr x0,[x22]
02c43da4  ldr w8,[x0, #0xe4]
02c43da8  cbnz w8,0x02c43db0
02c43dac  bl 0x029f5bd0
02c43db0  fsub s3,s8,s10
02c43db4  fsub s10,s9,s11
02c43db8  ldr s8,[x19, #0x40]
02c43dbc  fmul s0,s3,s3
02c43dc0  fmul s1,s10,s10
02c43dc4  fadd s0,s0,s1
02c43dc8  fsqrt s2,s0
02c43dcc  fcmp s2,s13
02c43dd0  fccmp s2,s8,#0x0,pl
02c43dd4  b.gt 0x02c43ec4
02c43dd8  ldrb w8,[x20, #0x52e]
02c43ddc  ldr s9,[x19, #0x44]
02c43de0  str q2,[sp, #0x10]
02c43de4  cbnz w8,0x02c43dfc
02c43de8  mov x0,x22
02c43dec  str q3,[sp]
02c43df0  bl 0x029f5a50
02c43df4  ldp q3,q2,[sp]
02c43df8  strb w28,[x20, #0x52e]
02c43dfc  ldr x0,[x22]
02c43e00  ldr w8,[x0, #0xe4]
02c43e04  cbnz w8,0x02c43e14
02c43e08  str q3,[sp]
02c43e0c  bl 0x029f5bd0
02c43e10  ldp q3,q2,[sp]
02c43e14  fcmp s2,s14
02c43e18  b.le 0x02c43e34
02c43e1c  movi d0,#0x0
02c43e20  dup v1.2S,v2.S[0x0]
02c43e24  mov v0.S[0x0],v3.S[0x0]
02c43e28  fdiv v0.2S,v0.2S,v1.2S
02c43e2c  fdiv s1,s10,s2
02c43e30  b 0x02c43e70
02c43e34  adrp x8,0x625b000
02c43e38  ldrb w8,[x8, #0x26f]
02c43e3c  cbnz w8,0x02c43e58
02c43e40  adrp x0,0x5e58000
02c43e44  ldr x0,[x0, #0xbf8]
02c43e48  bl 0x029f5a50
02c43e4c  ldr q2,[sp, #0x10]
02c43e50  adrp x8,0x625b000
02c43e54  strb w28,[x8, #0x26f]
02c43e58  adrp x8,0x5e58000
02c43e5c  ldr x8,[x8, #0xbf8]
02c43e60  ldr x8,[x8]
02c43e64  ldr x8,[x8, #0xb8]
02c43e68  ldr d0,[x8]
02c43e6c  ldr s1,[x8, #0x8]
02c43e70  fdiv s2,s2,s8
02c43e74  ldrb w8,[x23, #0x1b0]
02c43e78  fsub s2,s12,s2
02c43e7c  fmul s2,s2,s9
02c43e80  fmul v0.2S,v0.2S,v2.S[0x0]
02c43e84  fmul s1,s2,s1
02c43e88  cbz w8,0x02c43ea4
02c43e8c  ldr d2,[x23, #0x1d0]
02c43e90  ldr s3,[x23, #0x1d8]
02c43e94  fadd v2.2S,v0.2S,v2.2S
02c43e98  fadd s3,s1,s3
02c43e9c  str d2,[x23, #0x1d0]
02c43ea0  str s3,[x23, #0x1d8]
02c43ea4  ldrb w8,[x25, #0x1b0]
02c43ea8  cbz w8,0x02c43ec4
02c43eac  ldr d2,[x25, #0x1d0]
02c43eb0  ldr s3,[x25, #0x1d8]
02c43eb4  fsub v0.2S,v2.2S,v0.2S
02c43eb8  fsub s1,s3,s1
02c43ebc  str d0,[x25, #0x1d0]
02c43ec0  str s1,[x25, #0x1d8]
02c43ec4  add w24,w24,#0x1
02c43ec8  cmp w24,w26
02c43ecc  b.lt 0x02c43d0c
02c43ed0  cmp w21,w26
02c43ed4  b.ne 0x02c43cc4
02c43ed8  ldp x20,x19,[sp, #0xb0]
02c43edc  ldr d14,[sp, #0x20]
02c43ee0  ldp x22,x21,[sp, #0xa0]
02c43ee4  ldp x24,x23,[sp, #0x90]
02c43ee8  ldp x26,x25,[sp, #0x80]
02c43eec  ldp x28,x27,[sp, #0x70]
02c43ef0  ldp x29,x30,[sp, #0x60]
02c43ef4  ldp d9,d8,[sp, #0x50]
02c43ef8  ldp d11,d10,[sp, #0x40]
02c43efc  ldp d13,d12,[sp, #0x30]
02c43f00  add sp,sp,#0xc0
02c43f04  ret
02c43f08  bl 0x029f5cfc
