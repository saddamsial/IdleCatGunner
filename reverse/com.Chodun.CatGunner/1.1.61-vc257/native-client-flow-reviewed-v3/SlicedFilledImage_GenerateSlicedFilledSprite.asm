02c28af0  sub sp,sp,#0x100
02c28af4  stp d15,d14,[sp, #0x60]
02c28af8  stp d13,d12,[sp, #0x70]
02c28afc  stp d11,d10,[sp, #0x80]
02c28b00  stp d9,d8,[sp, #0x90]
02c28b04  str x29,[sp, #0xa0]
02c28b08  stp x30,x27,[sp, #0xb0]
02c28b0c  stp x26,x25,[sp, #0xc0]
02c28b10  stp x24,x23,[sp, #0xd0]
02c28b14  stp x22,x21,[sp, #0xe0]
02c28b18  stp x20,x19,[sp, #0xf0]
02c28b1c  adrp x21,0x625b000
02c28b20  mov x19,x1
02c28b24  mov x20,x0
02c28b28  ldrb w8,[x21, #0xfd1]
02c28b2c  tbnz w8,#0x0,0x02c28b44
02c28b30  adrp x0,0x5e62000
02c28b34  ldr x0,[x0, #0xd98]
02c28b38  bl 0x029f5a50
02c28b3c  mov w8,#0x1
02c28b40  strb w8,[x21, #0xfd1]
02c28b44  cbz x19,0x02c29350
02c28b48  mov x0,x19
02c28b4c  mov x1,xzr
02c28b50  bl 0x05ab81b0
02c28b54  adrp x8,0x116c000
02c28b58  ldr s0,[x20, #0xe4]
02c28b5c  ldr s1,[x8, #0x268]
02c28b60  fcmp s0,s1
02c28b64  b.mi 0x02c2931c
02c28b68  mov x0,x20
02c28b6c  mov x1,xzr
02c28b70  bl 0x058dd9e8
02c28b74  mov x0,x20
02c28b78  str q0,[sp, #0x50]
02c28b7c  fmov s13,s2
02c28b80  str q1,[sp, #0x30]
02c28b84  str s3,[sp, #0x4c]
02c28b88  bl 0x02c284d0
02c28b8c  mov x1,xzr
02c28b90  bl 0x05823888
02c28b94  mov x0,x20
02c28b98  stp s0,s1,[sp, #0x20]
02c28b9c  fmov s15,s3
02c28ba0  str s2,[sp, #0x1c]
02c28ba4  bl 0x02c284d0
02c28ba8  mov x1,xzr
02c28bac  bl 0x0582389c
02c28bb0  mov x0,x20
02c28bb4  fmov s12,s0
02c28bb8  fmov s14,s1
02c28bbc  fmov s9,s2
02c28bc0  fmov s11,s3
02c28bc4  bl 0x02c2874c
02c28bc8  mov w21,w0
02c28bcc  mov x0,x20
02c28bd0  bl 0x02c284d0
02c28bd4  stp s15,s11,[sp, #0x28]
02c28bd8  tbz w21,#0x0,0x02c28e54
02c28bdc  mov x1,xzr
02c28be0  str s14,[sp, #0x18]
02c28be4  bl 0x05823874
02c28be8  mov x0,x20
02c28bec  stp s1,s0,[sp, #0x10]
02c28bf0  stp s3,s2,[sp, #0x8]
02c28bf4  bl 0x02c284d0
02c28bf8  cbz x0,0x02c29350
02c28bfc  mov x1,xzr
02c28c00  bl 0x0578faac
02c28c04  mov x0,x20
02c28c08  fmov s8,s0
02c28c0c  fmov s10,s1
02c28c10  fmov s11,s2
02c28c14  fmov s14,s3
02c28c18  bl 0x02c283cc
02c28c1c  fdiv s4,s8,s0
02c28c20  fmov s6,s13
02c28c24  ldr s7,[sp, #0x4c]
02c28c28  mov x0,x20
02c28c2c  ldr q5,[sp, #0x30]
02c28c30  fdiv s1,s10,s0
02c28c34  fdiv s2,s11,s0
02c28c38  fdiv s3,s14,s0
02c28c3c  fmov s0,s4
02c28c40  ldr q4,[sp, #0x50]
02c28c44  bl 0x02c29820
02c28c48  mov x0,x20
02c28c4c  fmov s14,s0
02c28c50  fmov s15,s1
02c28c54  fmov s11,s2
02c28c58  fmov s10,s3
02c28c5c  bl 0x02c283cc
02c28c60  adrp x21,0x5e62000
02c28c64  fmov s8,s0
02c28c68  ldr x21,[x21, #0xd98]
02c28c6c  ldr x0,[x21]
02c28c70  ldr w8,[x0, #0xe4]
02c28c74  cbnz w8,0x02c28c80
02c28c78  bl 0x029f5bd0
02c28c7c  ldr x0,[x21]
02c28c80  ldr x8,[x0, #0xb8]
02c28c84  ldr x8,[x8, #0x10]
02c28c88  cbz x8,0x02c29350
02c28c8c  ldr w9,[x8, #0x18]
02c28c90  cbz w9,0x02c2934c
02c28c94  ldr s1,[sp, #0x18]
02c28c98  fdiv s0,s12,s8
02c28c9c  fdiv s1,s1,s8
02c28ca0  stp s0,s1,[x8, #0x20]
02c28ca4  ldr x8,[x21]
02c28ca8  ldr x8,[x8, #0xb8]
02c28cac  ldr x8,[x8, #0x10]
02c28cb0  cbz x8,0x02c29350
02c28cb4  ldr w9,[x8, #0x18]
02c28cb8  tst w9,#0xfffffffc
02c28cbc  b.eq 0x02c2934c
02c28cc0  ldr s1,[sp, #0x2c]
02c28cc4  fdiv s0,s9,s8
02c28cc8  ldr s2,[sp, #0x4c]
02c28ccc  fdiv s1,s1,s8
02c28cd0  fsub s0,s13,s0
02c28cd4  fsub s1,s2,s1
02c28cd8  stp s0,s1,[x8, #0x38]
02c28cdc  ldr x0,[x21]
02c28ce0  ldr x8,[x0, #0xb8]
02c28ce4  ldr x8,[x8, #0x10]
02c28ce8  cbz x8,0x02c29350
02c28cec  ldr w9,[x8, #0x18]
02c28cf0  cmp w9,#0x1
02c28cf4  b.ls 0x02c2934c
02c28cf8  cmp w9,#0x2
02c28cfc  stp s14,s15,[x8, #0x28]
02c28d00  b.eq 0x02c2934c
02c28d04  ldr s1,[sp, #0x4c]
02c28d08  ldr q2,[sp, #0x50]
02c28d0c  fsub s0,s13,s11
02c28d10  ldr q3,[sp, #0x30]
02c28d14  ldr s8,[sp, #0x28]
02c28d18  mov x22,xzr
02c28d1c  fsub s1,s1,s10
02c28d20  mov v2.S[0x1],v3.S[0x0]
02c28d24  stp s0,s1,[x8, #0x30]
02c28d28  str q2,[sp, #0x50]
02c28d2c  ldr w8,[x0, #0xe4]
02c28d30  cbnz w8,0x02c28d40
02c28d34  bl 0x029f5bd0
02c28d38  ldr q2,[sp, #0x50]
02c28d3c  ldr x0,[x21]
02c28d40  ldr x8,[x0, #0xb8]
02c28d44  ldr x9,[x8, #0x10]
02c28d48  cbz x9,0x02c29350
02c28d4c  ldr w10,[x9, #0x18]
02c28d50  cmp x22,x10
02c28d54  b.cs 0x02c2934c
02c28d58  add x9,x9,x22, LSL #0x3
02c28d5c  add x22,x22,#0x1
02c28d60  cmp x22,#0x4
02c28d64  ldr d0,[x9, #0x20]
02c28d68  fadd v0.2S,v2.2S,v0.2S
02c28d6c  str d0,[x9, #0x20]
02c28d70  b.ne 0x02c28d2c
02c28d74  ldr w9,[x0, #0xe4]
02c28d78  cbnz w9,0x02c28d88
02c28d7c  bl 0x029f5bd0
02c28d80  ldr x8,[x21]
02c28d84  ldr x8,[x8, #0xb8]
02c28d88  ldr x8,[x8, #0x18]
02c28d8c  cbz x8,0x02c29350
02c28d90  ldr w9,[x8, #0x18]
02c28d94  cbz w9,0x02c2934c
02c28d98  ldp s1,s0,[sp, #0x20]
02c28d9c  stp s1,s0,[x8, #0x20]
02c28da0  ldr x8,[x21]
02c28da4  ldr x8,[x8, #0xb8]
02c28da8  ldr x8,[x8, #0x18]
02c28dac  cbz x8,0x02c29350
02c28db0  ldr w9,[x8, #0x18]
02c28db4  tst w9,#0xfffffffe
02c28db8  b.eq 0x02c2934c
02c28dbc  ldp s0,s1,[sp, #0x10]
02c28dc0  stp s1,s0,[x8, #0x28]
02c28dc4  ldr x8,[x21]
02c28dc8  ldr x8,[x8, #0xb8]
02c28dcc  ldr x8,[x8, #0x18]
02c28dd0  cbz x8,0x02c29350
02c28dd4  ldr w9,[x8, #0x18]
02c28dd8  cmp w9,#0x2
02c28ddc  b.ls 0x02c2934c
02c28de0  ldp s0,s1,[sp, #0x8]
02c28de4  stp s1,s0,[x8, #0x30]
02c28de8  ldr x8,[x21]
02c28dec  ldr x8,[x8, #0xb8]
02c28df0  ldr x8,[x8, #0x18]
02c28df4  cbz x8,0x02c29350
02c28df8  ldr w9,[x8, #0x18]
02c28dfc  tst w9,#0xfffffffc
02c28e00  b.eq 0x02c2934c
02c28e04  ldr s0,[sp, #0x1c]
02c28e08  stp s0,s8,[x8, #0x38]
02c28e0c  ldr x0,[x21]
02c28e10  ldr w9,[x20, #0xe0]
02c28e14  ldr w8,[x0, #0xe4]
02c28e18  cmp w9,#0x1
02c28e1c  b.hi 0x02c28ef8
02c28e20  cbnz w8,0x02c28e2c
02c28e24  bl 0x029f5bd0
02c28e28  ldr x0,[x21]
02c28e2c  ldr x8,[x0, #0xb8]
02c28e30  ldr x8,[x8, #0x10]
02c28e34  cbz x8,0x02c29350
02c28e38  ldr w9,[x8, #0x18]
02c28e3c  cbz w9,0x02c2934c
02c28e40  cmp w9,#0x3
02c28e44  b.ls 0x02c2934c
02c28e48  ldr s8,[x8, #0x20]
02c28e4c  ldr s0,[x8, #0x38]
02c28e50  b 0x02c28f28
02c28e54  cbz x0,0x02c29350
02c28e58  mov x1,xzr
02c28e5c  bl 0x0578f9d4
02c28e60  fmov s8,s2
02c28e64  fmov s10,s3
02c28e68  adrp x21,0x625b000
02c28e6c  ldrb w8,[x21, #0x95a]
02c28e70  cbnz w8,0x02c28e88
02c28e74  adrp x0,0x5e59000
02c28e78  ldr x0,[x0]
02c28e7c  bl 0x029f5a50
02c28e80  mov w8,#0x1
02c28e84  strb w8,[x21, #0x95a]
02c28e88  adrp x22,0x5e59000
02c28e8c  ldr x22,[x22]
02c28e90  ldr x0,[x22]
02c28e94  ldr w8,[x0, #0xe4]
02c28e98  cbnz w8,0x02c28ea0
02c28e9c  bl 0x029f5bd0
02c28ea0  fcvt d11,s8
02c28ea4  add x0,sp,#0xa8
02c28ea8  fmov d0,d11
02c28eac  bl 0x05afb230
02c28eb0  fcmp s8,#0.0
02c28eb4  b.ge 0x02c28ed0
02c28eb8  fmov d1,-0x4020000000000000
02c28ebc  fcmp d0,d1
02c28ec0  b.ne 0x02c291d4
02c28ec4  ldr d0,[sp, #0xa8]
02c28ec8  fmov d1,-0x4010000000000000
02c28ecc  b 0x02c28ee4
02c28ed0  fmov d1,0x3fe0000000000000
02c28ed4  fcmp d0,d1
02c28ed8  b.ne 0x02c291e0
02c28edc  fmov d1,0x3ff0000000000000
02c28ee0  ldr d0,[sp, #0xa8]
02c28ee4  fcvtzs x8,d0
02c28ee8  fadd d1,d0,d1
02c28eec  tst x8,#0x1
02c28ef0  fcsel d11,d0,d1,eq
02c28ef4  b 0x02c291e8
02c28ef8  cbnz w8,0x02c28f04
02c28efc  bl 0x029f5bd0
02c28f00  ldr x0,[x21]
02c28f04  ldr x8,[x0, #0xb8]
02c28f08  ldr x8,[x8, #0x10]
02c28f0c  cbz x8,0x02c29350
02c28f10  ldr w9,[x8, #0x18]
02c28f14  cbz w9,0x02c2934c
02c28f18  cmp w9,#0x3
02c28f1c  b.ls 0x02c2934c
02c28f20  ldr s8,[x8, #0x24]
02c28f24  ldr s0,[x8, #0x3c]
02c28f28  fsub s0,s0,s8
02c28f2c  fmov s9,0x3f800000
02c28f30  fcmp s0,#0.0
02c28f34  b.le 0x02c28f40
02c28f38  fmov s1,0x3f800000
02c28f3c  fdiv s9,s1,s0
02c28f40  fmov s10,0x3f800000
02c28f44  mov x22,xzr
02c28f48  add x23,x22,#0x1
02c28f4c  lsl x24,x22,#0x3
02c28f50  mov x27,xzr
02c28f54  lsl x25,x23,#0x3
02c28f58  cmp x27,#0x1
02c28f5c  b.ne 0x02c28f78
02c28f60  cmp x22,#0x1
02c28f64  b.ne 0x02c28f78
02c28f68  ldrb w8,[x20, #0xe8]
02c28f6c  cbnz w8,0x02c28f78
02c28f70  mov w26,#0x2
02c28f74  b 0x02c291b8
02c28f78  movi d11,#0x0
02c28f7c  ldr w8,[x20, #0xe0]
02c28f80  add x26,x27,#0x1
02c28f84  cmp w8,#0x1
02c28f88  b.gt 0x02c28fd8
02c28f8c  cbz w8,0x02c29048
02c28f90  movi d12,#0x0
02c28f94  cmp w8,#0x1
02c28f98  b.ne 0x02c290e4
02c28f9c  ldr x0,[x21]
02c28fa0  ldr w8,[x0, #0xe4]
02c28fa4  cbnz w8,0x02c28fb0
02c28fa8  bl 0x029f5bd0
02c28fac  ldr x0,[x21]
02c28fb0  ldr x8,[x0, #0xb8]
02c28fb4  ldr x8,[x8, #0x10]
02c28fb8  cbz x8,0x02c29350
02c28fbc  ldr w9,[x8, #0x18]
02c28fc0  cmp x23,x9
02c28fc4  b.cs 0x02c2934c
02c28fc8  add x8,x8,#0x20
02c28fcc  ldr s0,[x8,x25]
02c28fd0  ldr s1,[x8,x24]
02c28fd4  b 0x02c2902c
02c28fd8  cmp w8,#0x2
02c28fdc  b.eq 0x02c2908c
02c28fe0  movi d12,#0x0
02c28fe4  cmp w8,#0x3
02c28fe8  b.ne 0x02c290e4
02c28fec  ldr x0,[x21]
02c28ff0  ldr w8,[x0, #0xe4]
02c28ff4  cbnz w8,0x02c29000
02c28ff8  bl 0x029f5bd0
02c28ffc  ldr x0,[x21]
02c29000  ldr x8,[x0, #0xb8]
02c29004  ldr x8,[x8, #0x10]
02c29008  cbz x8,0x02c29350
02c2900c  ldr w9,[x8, #0x18]
02c29010  cmp x26,x9
02c29014  b.cs 0x02c2934c
02c29018  add x8,x8,#0x20
02c2901c  add x9,x8,x26, LSL #0x3
02c29020  add x8,x8,x27, LSL #0x3
02c29024  ldr s0,[x9, #0x4]
02c29028  ldr s1,[x8, #0x4]
02c2902c  fsub s0,s0,s8
02c29030  fsub s1,s1,s8
02c29034  fmul s0,s9,s0
02c29038  fmul s1,s9,s1
02c2903c  fsub s12,s10,s0
02c29040  fsub s11,s10,s1
02c29044  b 0x02c290e4
02c29048  ldr x0,[x21]
02c2904c  ldr w8,[x0, #0xe4]
02c29050  cbnz w8,0x02c2905c
02c29054  bl 0x029f5bd0
02c29058  ldr x0,[x21]
02c2905c  ldr x8,[x0, #0xb8]
02c29060  ldr x8,[x8, #0x10]
02c29064  cbz x8,0x02c29350
02c29068  ldr w9,[x8, #0x18]
02c2906c  cmp x22,x9
02c29070  b.cs 0x02c2934c
02c29074  cmp x23,x9
02c29078  b.cs 0x02c2934c
02c2907c  add x8,x8,#0x20
02c29080  ldr s0,[x8,x24]
02c29084  ldr s1,[x8,x25]
02c29088  b 0x02c290d4
02c2908c  ldr x0,[x21]
02c29090  ldr w8,[x0, #0xe4]
02c29094  cbnz w8,0x02c290a0
02c29098  bl 0x029f5bd0
02c2909c  ldr x0,[x21]
02c290a0  ldr x8,[x0, #0xb8]
02c290a4  ldr x8,[x8, #0x10]
02c290a8  cbz x8,0x02c29350
02c290ac  ldr w9,[x8, #0x18]
02c290b0  cmp x27,x9
02c290b4  b.cs 0x02c2934c
02c290b8  cmp x26,x9
02c290bc  b.cs 0x02c2934c
02c290c0  add x8,x8,#0x20
02c290c4  add x9,x8,x27, LSL #0x3
02c290c8  add x8,x8,x26, LSL #0x3
02c290cc  ldr s0,[x9, #0x4]
02c290d0  ldr s1,[x8, #0x4]
02c290d4  fsub s0,s0,s8
02c290d8  fsub s1,s1,s8
02c290dc  fmul s12,s9,s0
02c290e0  fmul s11,s9,s1
02c290e4  ldr s0,[x20, #0xe4]
02c290e8  fcmp s12,s0
02c290ec  b.ge 0x02c291b8
02c290f0  ldr x0,[x21]
02c290f4  ldr w8,[x0, #0xe4]
02c290f8  cbnz w8,0x02c29104
02c290fc  bl 0x029f5bd0
02c29100  ldr x0,[x21]
02c29104  ldr x9,[x0, #0xb8]
02c29108  ldr x8,[x9, #0x10]
02c2910c  cbz x8,0x02c29350
02c29110  ldr w10,[x8, #0x18]
02c29114  cmp x22,x10
02c29118  b.cs 0x02c2934c
02c2911c  cmp x27,x10
02c29120  b.cs 0x02c2934c
02c29124  cmp x23,x10
02c29128  b.cs 0x02c2934c
02c2912c  cmp x26,x10
02c29130  b.cs 0x02c2934c
02c29134  ldr x9,[x9, #0x18]
02c29138  cbz x9,0x02c29350
02c2913c  ldr w10,[x9, #0x18]
02c29140  cmp x22,x10
02c29144  b.cs 0x02c2934c
02c29148  cmp x27,x10
02c2914c  b.cs 0x02c2934c
02c29150  cmp x23,x10
02c29154  b.cs 0x02c2934c
02c29158  cmp x26,x10
02c2915c  b.cs 0x02c2934c
02c29160  ldr s0,[x20, #0xe4]
02c29164  fsub s1,s11,s12
02c29168  add x8,x8,#0x20
02c2916c  add x10,x8,x27, LSL #0x3
02c29170  add x9,x9,#0x20
02c29174  add x11,x8,x26, LSL #0x3
02c29178  fsub s0,s0,s12
02c2917c  add x12,x9,x26, LSL #0x3
02c29180  ldr s2,[x8,x25]
02c29184  ldr s3,[x11, #0x4]
02c29188  ldr s4,[x9,x24]
02c2918c  ldr s6,[x9,x25]
02c29190  ldr s7,[x12, #0x4]
02c29194  mov x0,x20
02c29198  mov x1,x19
02c2919c  fdiv s16,s0,s1
02c291a0  ldr s1,[x10, #0x4]
02c291a4  add x10,x9,x27, LSL #0x3
02c291a8  ldr s0,[x8,x24]
02c291ac  ldr s5,[x10, #0x4]
02c291b0  str s16,[sp]
02c291b4  bl 0x02c29454
02c291b8  cmp x26,#0x3
02c291bc  mov x27,x26
02c291c0  b.ne 0x02c28f58
02c291c4  cmp x23,#0x3
02c291c8  mov x22,x23
02c291cc  b.ne 0x02c28f48
02c291d0  b 0x02c2931c
02c291d4  fadd d0,d11,d1
02c291d8  frintp d11,d0
02c291dc  b 0x02c291e8
02c291e0  fadd d0,d11,d1
02c291e4  frintm d11,d0
02c291e8  fmov s15,s12
02c291ec  ldrb w8,[x21, #0x95a]
02c291f0  cbnz w8,0x02c29208
02c291f4  adrp x0,0x5e59000
02c291f8  ldr x0,[x0]
02c291fc  bl 0x029f5a50
02c29200  mov w8,#0x1
02c29204  strb w8,[x21, #0x95a]
02c29208  fmov s12,s14
02c2920c  ldr x0,[x22]
02c29210  fcvtzs w21,d11
02c29214  ldr w8,[x0, #0xe4]
02c29218  cbnz w8,0x02c29220
02c2921c  bl 0x029f5bd0
02c29220  fcvt d8,s10
02c29224  add x0,sp,#0xa8
02c29228  scvtf s14,w21
02c2922c  fmov d0,d8
02c29230  bl 0x05afb230
02c29234  fcmp s10,#0.0
02c29238  b.ge 0x02c29258
02c2923c  fmov d1,-0x4020000000000000
02c29240  ldr q6,[sp, #0x50]
02c29244  fcmp d0,d1
02c29248  b.ne 0x02c29284
02c2924c  ldr d0,[sp, #0xa8]
02c29250  fmov d1,-0x4010000000000000
02c29254  b 0x02c29270
02c29258  fmov d1,0x3fe0000000000000
02c2925c  ldr q6,[sp, #0x50]
02c29260  fcmp d0,d1
02c29264  b.ne 0x02c29290
02c29268  fmov d1,0x3ff0000000000000
02c2926c  ldr d0,[sp, #0xa8]
02c29270  fcvtzs x8,d0
02c29274  fadd d1,d0,d1
02c29278  tst x8,#0x1
02c2927c  fcsel d0,d0,d1,eq
02c29280  b 0x02c29298
02c29284  fadd d0,d8,d1
02c29288  frintp d0,d0
02c2928c  b 0x02c29298
02c29290  fadd d0,d8,d1
02c29294  frintm d0,d0
02c29298  mov x8,#0x7ff0000000000000
02c2929c  movi v1.2S,#0xcf, LSL #24
02c292a0  ldr s16,[x20, #0xe4]
02c292a4  fmov d2,x8
02c292a8  fcvtzs w8,d0
02c292ac  mov x0,x20
02c292b0  mov x1,x19
02c292b4  str s16,[sp]
02c292b8  fcmp d11,d2
02c292bc  scvtf s5,w8
02c292c0  fcsel s3,s1,s14,eq
02c292c4  fcmp d0,d2
02c292c8  fcsel s0,s1,s5,eq
02c292cc  fsub s2,s3,s9
02c292d0  fdiv s4,s15,s3
02c292d4  fdiv s2,s2,s3
02c292d8  ldp s7,s3,[sp, #0x28]
02c292dc  fsub s3,s0,s3
02c292e0  fdiv s1,s12,s0
02c292e4  fmul s2,s13,s2
02c292e8  fadd s2,s6,s2
02c292ec  fdiv s0,s3,s0
02c292f0  fmul s3,s13,s4
02c292f4  ldr s4,[sp, #0x4c]
02c292f8  fmul s1,s4,s1
02c292fc  fmul s4,s4,s0
02c29300  fadd s0,s6,s3
02c29304  ldr q3,[sp, #0x30]
02c29308  ldr s6,[sp, #0x1c]
02c2930c  fadd s1,s3,s1
02c29310  fadd s3,s3,s4
02c29314  ldp s4,s5,[sp, #0x20]
02c29318  bl 0x02c29454
02c2931c  ldp x20,x19,[sp, #0xf0]
02c29320  ldr x29,[sp, #0xa0]
02c29324  ldp x22,x21,[sp, #0xe0]
02c29328  ldp x24,x23,[sp, #0xd0]
02c2932c  ldp x26,x25,[sp, #0xc0]
02c29330  ldp x30,x27,[sp, #0xb0]
02c29334  ldp d9,d8,[sp, #0x90]
02c29338  ldp d11,d10,[sp, #0x80]
02c2933c  ldp d13,d12,[sp, #0x70]
02c29340  ldp d15,d14,[sp, #0x60]
02c29344  add sp,sp,#0x100
02c29348  ret
02c2934c  bl 0x029f5d04
02c29350  bl 0x029f5cfc
