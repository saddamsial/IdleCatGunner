049b8cf0  stp d15,d14,[sp, #-0xa0]!
049b8cf4  stp d13,d12,[sp, #0x10]
049b8cf8  stp d11,d10,[sp, #0x20]
049b8cfc  stp d9,d8,[sp, #0x30]
049b8d00  stp x29,x30,[sp, #0x40]
049b8d04  stp x28,x27,[sp, #0x50]
049b8d08  stp x26,x25,[sp, #0x60]
049b8d0c  stp x24,x23,[sp, #0x70]
049b8d10  stp x22,x21,[sp, #0x80]
049b8d14  stp x20,x19,[sp, #0x90]
049b8d18  sub sp,sp,#0x1a0
049b8d1c  adrp x20,0x6262000
049b8d20  mov x19,x0
049b8d24  add x24,sp,#0x180
049b8d28  ldrb w8,[x20, #0x82a]
049b8d2c  str q0,[sp, #0x20]
049b8d30  tbnz w8,#0x0,0x049b8db4
049b8d34  adrp x0,0x5e85000
049b8d38  ldr x0,[x0, #0xeb0]
049b8d3c  bl 0x029f5a50
049b8d40  adrp x0,0x5e85000
049b8d44  ldr x0,[x0, #0xec0]
049b8d48  bl 0x029f5a50
049b8d4c  adrp x0,0x5e85000
049b8d50  ldr x0,[x0, #0xec8]
049b8d54  bl 0x029f5a50
049b8d58  adrp x0,0x5e85000
049b8d5c  ldr x0,[x0, #0xed0]
049b8d60  bl 0x029f5a50
049b8d64  adrp x0,0x5e85000
049b8d68  ldr x0,[x0, #0xed8]
049b8d6c  bl 0x029f5a50
049b8d70  adrp x0,0x5e85000
049b8d74  ldr x0,[x0, #0xee0]
049b8d78  bl 0x029f5a50
049b8d7c  adrp x0,0x5e85000
049b8d80  ldr x0,[x0, #0xee8]
049b8d84  bl 0x029f5a50
049b8d88  adrp x0,0x5e85000
049b8d8c  ldr x0,[x0, #0xef0]
049b8d90  bl 0x029f5a50
049b8d94  adrp x0,0x5e59000
049b8d98  ldr x0,[x0, #0x1c0]
049b8d9c  bl 0x029f5a50
049b8da0  adrp x0,0x5e5b000
049b8da4  ldr x0,[x0, #0xfa8]
049b8da8  bl 0x029f5a50
049b8dac  mov w8,#0x1
049b8db0  strb w8,[x20, #0x82a]
049b8db4  movi v0.2D,#0x0
049b8db8  add x0,sp,#0xf8
049b8dbc  mov w1,wzr
049b8dc0  mov w2,#0x88
049b8dc4  stp q0,q0,[x24]
049b8dc8  bl 0x05afb2a0
049b8dcc  ldr s0,[x19, #0x60]
049b8dd0  ldr q1,[sp, #0x20]
049b8dd4  adrp x8,0x116c000
049b8dd8  ldr s15,[x8, #0x1e4]
049b8ddc  movi d4,#0x0
049b8de0  mov w9,#0x7f800000
049b8de4  fadd s1,s0,s1
049b8de8  ldr s0,[x19, #0x78]
049b8dec  str xzr,[sp, #0xf0]
049b8df0  stp xzr,xzr,[sp, #0xb0]
049b8df4  fabs s2,s0
049b8df8  stp xzr,xzr,[sp, #0xa0]
049b8dfc  stp xzr,xzr,[sp, #0x90]
049b8e00  fdiv s3,s1,s0
049b8e04  fmul s5,s2,s15
049b8e08  fmov w8,s2
049b8e0c  cmp w8,w9
049b8e10  mov w8,#0x35800000
049b8e14  fcsel s5,s4,s5,hi
049b8e18  fmov s6,w8
049b8e1c  ldr x8,[x19, #0x10]
049b8e20  fmaxnm s5,s5,s6
049b8e24  movi v6.2D,#0x0
049b8e28  fadd s3,s3,s4
049b8e2c  fcmp s2,s5
049b8e30  stp q6,q6,[sp, #0xd0]
049b8e34  str q6,[sp, #0xc0]
049b8e38  fcsel s0,s0,s3,mi
049b8e3c  stp s1,s0,[x19, #0x60]
049b8e40  cbz x8,0x049ba7f8
049b8e44  add x8,x8,#0x5a8
049b8e48  ldr s1,[x19, #0xc4]
049b8e4c  ldr d8,[x19, #0x30]
049b8e50  ldp q2,q3,[x8]
049b8e54  add x0,sp,#0x180
049b8e58  mov x1,xzr
049b8e5c  stp q2,q3,[x24]
049b8e60  bl 0x058623c8
049b8e64  ldr x8,[x19, #0x10]
049b8e68  fmul v0.2S,v8.2S,v0.S[0x0]
049b8e6c  str d0,[x19, #0x40]
049b8e70  cbz x8,0x049ba7f8
049b8e74  ldr w9,[x8, #0x128]
049b8e78  cmp w9,#0x1
049b8e7c  b.ne 0x049b8f98
049b8e80  ldr x0,[x19, #0x18]
049b8e84  cbz x0,0x049ba7f8
049b8e88  ldp s1,s2,[x19, #0xdc]
049b8e8c  mov x1,xzr
049b8e90  ldr s0,[x19, #0xd8]
049b8e94  bl 0x057f0800
049b8e98  ldr x0,[x19, #0x18]
049b8e9c  mov v0.S[0x1],v1.S[0x0]
049b8ea0  ldr d1,[x19, #0x20]
049b8ea4  fadd v0.2S,v1.2S,v0.2S
049b8ea8  str d0,[x19, #0x20]
049b8eac  cbz x0,0x049ba7f8
049b8eb0  mov x1,xzr
049b8eb4  bl 0x057ef000
049b8eb8  mov x0,xzr
049b8ebc  bl 0x057cd50c
049b8ec0  mov x0,xzr
049b8ec4  bl 0x057cd714
049b8ec8  adrp x8,0x116c000
049b8ecc  mov x0,xzr
049b8ed0  ldr s11,[x8, #0x74]
049b8ed4  fmul s0,s0,s11
049b8ed8  fmul s1,s1,s11
049b8edc  fmul s2,s2,s11
049b8ee0  bl 0x057cdc3c
049b8ee4  ldp s4,s3,[x19, #0xec]
049b8ee8  fmov s10,s2
049b8eec  fmov s8,s0
049b8ef0  fmov s9,s1
049b8ef4  mov x0,xzr
049b8ef8  ldp s0,s1,[x19, #0xe4]
049b8efc  fmov s2,s4
049b8f00  bl 0x057cd50c
049b8f04  mov x0,xzr
049b8f08  bl 0x057cd714
049b8f0c  fmul s0,s0,s11
049b8f10  fmul s1,s1,s11
049b8f14  mov x0,xzr
049b8f18  fmul s2,s2,s11
049b8f1c  bl 0x057cdc3c
049b8f20  fsub s5,s8,s0
049b8f24  fsub s3,s9,s1
049b8f28  fsub s4,s10,s2
049b8f2c  ldp s0,s1,[x19, #0x20]
049b8f30  fmov s2,s5
049b8f34  stp s5,s3,[x19, #0xf4]
049b8f38  str s4,[x19, #0xfc]
049b8f3c  bl 0x049badc4
049b8f40  ldp s6,s5,[x19, #0x30]
049b8f44  stp s0,s1,[x19, #0x20]
049b8f48  ldp s2,s3,[x19, #0xf4]
049b8f4c  ldr s4,[x19, #0xfc]
049b8f50  fmov s0,s6
049b8f54  fmov s1,s5
049b8f58  bl 0x049badc4
049b8f5c  ldr x0,[x19, #0x18]
049b8f60  stp s0,s1,[x19, #0x30]
049b8f64  cbz x0,0x049ba7f8
049b8f68  mov x1,xzr
049b8f6c  bl 0x057eed98
049b8f70  ldr x0,[x19, #0x18]
049b8f74  stp s0,s1,[x19, #0xd8]
049b8f78  str s2,[x19, #0xe0]
049b8f7c  cbz x0,0x049ba7f8
049b8f80  mov x1,xzr
049b8f84  bl 0x057ef000
049b8f88  ldr x8,[x19, #0x10]
049b8f8c  stp s0,s1,[x19, #0xe4]
049b8f90  stp s2,s3,[x19, #0xec]
049b8f94  cbz x8,0x049ba7f8
049b8f98  ldrb w9,[x8, #0x627]
049b8f9c  cbz w9,0x049b904c
049b8fa0  ldr w20,[x8, #0x628]
049b8fa4  ldr d10,[x19, #0x40]
049b8fa8  add x0,sp,#0xf8
049b8fac  add x1,x8,#0x630
049b8fb0  mov w2,#0x88
049b8fb4  bl 0x05afb2b0
049b8fb8  ldr s0,[x19, #0x64]
049b8fbc  ldr s1,[x19, #0xc0]
049b8fc0  add x0,sp,#0xf8
049b8fc4  cmp w20,#0x1
049b8fc8  b.ne 0x049b903c
049b8fcc  bl 0x049bae18
049b8fd0  ldr x0,[x19, #0x18]
049b8fd4  cbz x0,0x049ba7f8
049b8fd8  mov x1,xzr
049b8fdc  fmov s8,s0
049b8fe0  fmov s9,s1
049b8fe4  bl 0x057ef000
049b8fe8  mov x0,xzr
049b8fec  bl 0x057cd50c
049b8ff0  mov x0,xzr
049b8ff4  bl 0x057cd714
049b8ff8  adrp x8,0x116c000
049b8ffc  mov x0,xzr
049b9000  ldr s3,[x8, #0x74]
049b9004  fmul s0,s0,s3
049b9008  fmul s1,s1,s3
049b900c  fmul s2,s2,s3
049b9010  bl 0x057cdc3c
049b9014  fmov s3,s0
049b9018  fmov s4,s1
049b901c  fmov s5,s2
049b9020  fmov s0,s8
049b9024  fmov s1,s9
049b9028  fmov s2,s3
049b902c  fmov s3,s4
049b9030  fmov s4,s5
049b9034  bl 0x049badc4
049b9038  b 0x049b9040
049b903c  bl 0x049baed4
049b9040  mov v0.S[0x1],v1.S[0x0]
049b9044  fadd v0.2S,v10.2S,v0.2S
049b9048  str d0,[x19, #0x40]
049b904c  ldr x20,[x19, #0x10]
049b9050  cbz x20,0x049ba7f8
049b9054  ldrb w8,[x20, #0x625]
049b9058  cbz w8,0x049b9100
049b905c  ldr q2,[x20, #0x5d0]
049b9060  ldr q3,[x20, #0x5e0]
049b9064  add x0,sp,#0x180
049b9068  ldr s0,[x19, #0x64]
049b906c  ldr s1,[x19, #0xb4]
049b9070  mov x1,xzr
049b9074  ldr d9,[x19, #0x38]
049b9078  stp q2,q3,[x24]
049b907c  bl 0x058623c8
049b9080  ldr x0,[x19, #0x18]
049b9084  cbz x0,0x049ba7f8
049b9088  mov x1,xzr
049b908c  fmov s8,s0
049b9090  bl 0x057ef000
049b9094  mov x0,xzr
049b9098  bl 0x057cd50c
049b909c  mov x0,xzr
049b90a0  bl 0x057cd714
049b90a4  adrp x8,0x116c000
049b90a8  mov x0,xzr
049b90ac  ldr s3,[x8, #0x74]
049b90b0  fmul s0,s0,s3
049b90b4  fmul s1,s1,s3
049b90b8  fmul s2,s2,s3
049b90bc  bl 0x057cdc3c
049b90c0  fmov s3,s0
049b90c4  fmov s4,s1
049b90c8  fmov s5,s2
049b90cc  movi d0,#0x0
049b90d0  fmov s1,s8
049b90d4  fmov s2,s3
049b90d8  fmov s3,s4
049b90dc  fmov s4,s5
049b90e0  bl 0x049badc4
049b90e4  ldr x20,[x19, #0x10]
049b90e8  mov v0.S[0x1],v1.S[0x0]
049b90ec  ldr q1,[sp, #0x20]
049b90f0  fmul v0.2S,v0.2S,v1.S[0x0]
049b90f4  fadd v0.2S,v9.2S,v0.2S
049b90f8  str d0,[x19, #0x38]
049b90fc  cbz x20,0x049ba7f8
049b9100  ldrb w8,[x20, #0x624]
049b9104  cbz w8,0x049b9150
049b9108  ldr w8,[x20, #0x128]
049b910c  cbz w8,0x049b9158
049b9110  ldr x0,[x19, #0x18]
049b9114  cbz x0,0x049ba7f8
049b9118  mov x1,xzr
049b911c  bl 0x057ee2ec
049b9120  ldr x8,[x19, #0x10]
049b9124  cbz x8,0x049ba7f8
049b9128  ldr x0,[x8, #0x3208]
049b912c  cbz x0,0x049ba7f8
049b9130  ldp s2,s3,[x19, #0x28]
049b9134  fadd s0,s2,s0
049b9138  fadd s1,s1,s3
049b913c  ldr s2,[x8, #0x3214]
049b9140  ldr s3,[x8, #0x3210]
049b9144  fadd s0,s0,s3
049b9148  fadd s1,s1,s2
049b914c  b 0x049b9174
049b9150  ldr d0,[x19, #0x40]
049b9154  b 0x049b91b8
049b9158  ldr x0,[x20, #0x3208]
049b915c  cbz x0,0x049ba7f8
049b9160  ldp s3,s2,[x19, #0x28]
049b9164  ldr s1,[x20, #0x3214]
049b9168  ldr s0,[x20, #0x3210]
049b916c  fadd s0,s0,s3
049b9170  fadd s1,s2,s1
049b9174  bl 0x049baf6c
049b9178  ldr x20,[x19, #0x10]
049b917c  cbz x20,0x049ba7f8
049b9180  adrp x8,0x116c000
049b9184  add x0,sp,#0x8c
049b9188  add x1,sp,#0x88
049b918c  ldr s1,[x8, #0x1ac]
049b9190  add x21,sp,#0x8c
049b9194  fmul s0,s0,s1
049b9198  bl 0x05afb270
049b919c  ldr s0,[sp, #0x88]
049b91a0  ldr s1,[x20, #0x321c]
049b91a4  ld1 {v0.S}[1],[x21]
049b91a8  fmul v0.2S,v0.2S,v1.S[0x0]
049b91ac  ldr d1,[x19, #0x40]
049b91b0  fadd v0.2S,v1.2S,v0.2S
049b91b4  str d0,[x19, #0x40]
049b91b8  mov w8,#0x42c80000
049b91bc  ldr q3,[sp, #0x20]
049b91c0  ldr d1,[x19, #0x38]
049b91c4  fmov s2,w8
049b91c8  fadd v0.2S,v0.2S,v1.2S
049b91cc  fmul s2,s3,s2
049b91d0  str d0,[x19, #0x40]
049b91d4  fmul v1.2S,v0.2S,v2.S[0x0]
049b91d8  ldr d2,[x19, #0x20]
049b91dc  fadd v1.2S,v1.2S,v2.2S
049b91e0  str d1,[x19, #0x20]
049b91e4  ldrb w8,[x20, #0x626]
049b91e8  cbz w8,0x049b9244
049b91ec  add x8,x20,#0x6b8
049b91f0  ldr s0,[x19, #0x64]
049b91f4  str q1,[sp, #0x70]
049b91f8  ldp q2,q3,[x8]
049b91fc  add x0,sp,#0x180
049b9200  ldr s1,[x19, #0xb8]
049b9204  mov x1,xzr
049b9208  stp q2,q3,[x24]
049b920c  bl 0x058623c8
049b9210  ldr q1,[sp, #0x20]
049b9214  mov w8,#0x42c80000
049b9218  movi d2,#0x0
049b921c  movi d3,#0x0
049b9220  fmul s0,s0,s1
049b9224  fmov s1,w8
049b9228  fmul s4,s0,s1
049b922c  ldr q0,[sp, #0x70]
049b9230  dup s1,v0.S[0x1]
049b9234  bl 0x049badc4
049b9238  ldr x20,[x19, #0x10]
049b923c  stp s0,s1,[x19, #0x20]
049b9240  cbz x20,0x049ba7f8
049b9244  ldrb w8,[x20, #0x5f0]
049b9248  str s15,[sp, #0x1c]
049b924c  cbz w8,0x049b9480
049b9250  adrp x8,0x5e59000
049b9254  ldr x8,[x8, #0x1c0]
049b9258  ldr x20,[x20, #0x5f8]
049b925c  ldr x0,[x8]
049b9260  ldr w8,[x0, #0xe4]
049b9264  cbnz w8,0x049b926c
049b9268  bl 0x029f5bd0
049b926c  mov x0,x20
049b9270  mov x1,xzr
049b9274  bl 0x057e50f4
049b9278  tbz w0,#0x0,0x049b9480
049b927c  ldr x20,[x19, #0x10]
049b9280  cbz x20,0x049ba7f8
049b9284  ldr x0,[x20, #0x5f8]
049b9288  cbz x0,0x049ba7f8
049b928c  adrp x21,0x5e5b000
049b9290  ldr x21,[x21, #0xfa8]
049b9294  ldr x9,[x0]
049b9298  ldr x8,[x21]
049b929c  cmp x9,x8
049b92a0  b.eq 0x049b9498
049b92a4  mov x1,xzr
049b92a8  bl 0x057eed98
049b92ac  mov x0,x20
049b92b0  bl 0x049bafe0
049b92b4  ldr x0,[x19, #0x10]
049b92b8  cbz x0,0x049ba7f8
049b92bc  mov x1,xzr
049b92c0  fmov s9,s0
049b92c4  fmov s10,s1
049b92c8  str wzr,[x0, #0x620]
049b92cc  bl 0x058db358
049b92d0  cbz x0,0x049ba7f8
049b92d4  mov x1,xzr
049b92d8  bl 0x05aa2028
049b92dc  ldr x8,[x19, #0x10]
049b92e0  cmp w0,#0x1
049b92e4  b.ne 0x049b94c0
049b92e8  cbz x8,0x049ba7f8
049b92ec  ldr x0,[x8, #0xe8]
049b92f0  cbz x0,0x049ba7f8
049b92f4  mov x1,xzr
049b92f8  bl 0x057ed9fc
049b92fc  ldr x8,[x19, #0x10]
049b9300  cbz x8,0x049ba7f8
049b9304  ldr x0,[x19, #0x18]
049b9308  cbz x0,0x049ba7f8
049b930c  ldr x20,[x8, #0xe8]
049b9310  mov x1,xzr
049b9314  fmov s12,s2
049b9318  bl 0x057eed98
049b931c  cbz x20,0x049ba7f8
049b9320  mov x0,x20
049b9324  mov x1,xzr
049b9328  bl 0x057f0800
049b932c  ldr x8,[x19, #0x10]
049b9330  cbz x8,0x049ba7f8
049b9334  ldr x0,[x8, #0xe8]
049b9338  cbz x0,0x049ba7f8
049b933c  mov x1,xzr
049b9340  fmov s8,s0
049b9344  bl 0x057ee2ec
049b9348  ldr x0,[x19, #0x18]
049b934c  cbz x0,0x049ba7f8
049b9350  mov x1,xzr
049b9354  fmov s13,s0
049b9358  bl 0x057f1034
049b935c  ldr x8,[x19, #0x10]
049b9360  cbz x8,0x049ba7f8
049b9364  ldr x0,[x8, #0xe8]
049b9368  cbz x0,0x049ba7f8
049b936c  mov x1,xzr
049b9370  fmov s14,s0
049b9374  bl 0x057ef578
049b9378  ldr x8,[x19, #0x10]
049b937c  cbz x8,0x049ba7f8
049b9380  ldr x0,[x8, #0xe8]
049b9384  cbz x0,0x049ba7f8
049b9388  mov x1,xzr
049b938c  fmov s15,s0
049b9390  bl 0x057ed9fc
049b9394  ldr x8,[x19, #0x10]
049b9398  cbz x8,0x049ba7f8
049b939c  ldr x0,[x19, #0x18]
049b93a0  cbz x0,0x049ba7f8
049b93a4  ldr x20,[x8, #0xe8]
049b93a8  mov x1,xzr
049b93ac  fmov s11,s3
049b93b0  bl 0x057eed98
049b93b4  cbz x20,0x049ba7f8
049b93b8  mov x0,x20
049b93bc  mov x1,xzr
049b93c0  str s15,[sp, #0x50]
049b93c4  str s14,[sp, #0x60]
049b93c8  fmov s14,s8
049b93cc  str s13,[sp, #0x70]
049b93d0  bl 0x057f0800
049b93d4  ldr x8,[x19, #0x10]
049b93d8  cbz x8,0x049ba7f8
049b93dc  ldr x0,[x8, #0xe8]
049b93e0  cbz x0,0x049ba7f8
049b93e4  mov x1,xzr
049b93e8  fmov s8,s1
049b93ec  fmov s13,s12
049b93f0  fmov s15,s9
049b93f4  fmov s12,s10
049b93f8  bl 0x057ee2ec
049b93fc  ldr x0,[x19, #0x18]
049b9400  cbz x0,0x049ba7f8
049b9404  mov x1,xzr
049b9408  fmov s9,s1
049b940c  bl 0x057f1034
049b9410  ldr x8,[x19, #0x10]
049b9414  cbz x8,0x049ba7f8
049b9418  ldr x0,[x8, #0xe8]
049b941c  cbz x0,0x049ba7f8
049b9420  fmov s10,s1
049b9424  fmov s0,0xbf000000
049b9428  mov x1,xzr
049b942c  fmov s1,0xbf000000
049b9430  movi d2,#0x0
049b9434  movi d3,#0x0
049b9438  fadd s0,s15,s0
049b943c  fadd s1,s12,s1
049b9440  fmul s0,s0,s13
049b9444  fmul s1,s1,s11
049b9448  fadd s11,s0,s2
049b944c  fadd s15,s1,s3
049b9450  bl 0x057ef578
049b9454  fsub s0,s11,s14
049b9458  ldr s2,[sp, #0x70]
049b945c  ldr s3,[sp, #0x50]
049b9460  fadd s0,s0,s2
049b9464  ldr s2,[sp, #0x60]
049b9468  fdiv s0,s0,s2
049b946c  fsub s2,s15,s8
049b9470  ldr s15,[sp, #0x1c]
049b9474  fadd s2,s2,s9
049b9478  fdiv s2,s2,s10
049b947c  b 0x049b9600
049b9480  ldr x8,[x19, #0x20]
049b9484  lsr x9,x8,#0x20
049b9488  fmov s0,w8
049b948c  str x8,[x19, #0x28]
049b9490  fmov s1,w9
049b9494  b 0x049b9740
049b9498  ldr x20,[x19, #0x18]
049b949c  mov x1,xzr
049b94a0  bl 0x057eed98
049b94a4  cbz x20,0x049ba7f8
049b94a8  mov x0,x20
049b94ac  mov x1,xzr
049b94b0  bl 0x057f0800
049b94b4  fmov s11,s0
049b94b8  fmov s9,s1
049b94bc  b 0x049b9608
049b94c0  cbz x8,0x049ba7f8
049b94c4  ldr x0,[x8, #0xe8]
049b94c8  cbz x0,0x049ba7f8
049b94cc  mov x1,xzr
049b94d0  bl 0x057ed9fc
049b94d4  ldr x8,[x19, #0x10]
049b94d8  cbz x8,0x049ba7f8
049b94dc  ldr x0,[x19, #0x18]
049b94e0  cbz x0,0x049ba7f8
049b94e4  ldr x20,[x8, #0xe8]
049b94e8  mov x1,xzr
049b94ec  fmov s8,s2
049b94f0  bl 0x057eed98
049b94f4  cbz x20,0x049ba7f8
049b94f8  mov x0,x20
049b94fc  mov x1,xzr
049b9500  bl 0x057f0800
049b9504  ldr x0,[x19, #0x18]
049b9508  cbz x0,0x049ba7f8
049b950c  mov x1,xzr
049b9510  fmov s13,s0
049b9514  bl 0x057f1034
049b9518  ldr x8,[x19, #0x10]
049b951c  cbz x8,0x049ba7f8
049b9520  ldr x0,[x8, #0xe8]
049b9524  cbz x0,0x049ba7f8
049b9528  mov x1,xzr
049b952c  fmov s12,s0
049b9530  bl 0x057ef578
049b9534  ldr x8,[x19, #0x10]
049b9538  cbz x8,0x049ba7f8
049b953c  ldr x0,[x8, #0xe8]
049b9540  cbz x0,0x049ba7f8
049b9544  mov x1,xzr
049b9548  str s0,[sp, #0x70]
049b954c  bl 0x057ed9fc
049b9550  ldr x8,[x19, #0x10]
049b9554  cbz x8,0x049ba7f8
049b9558  ldr x0,[x19, #0x18]
049b955c  str s12,[sp, #0x60]
049b9560  cbz x0,0x049ba7f8
049b9564  ldr x20,[x8, #0xe8]
049b9568  mov x1,xzr
049b956c  fmov s14,s3
049b9570  fmov s12,s8
049b9574  fmov s11,s10
049b9578  bl 0x057eed98
049b957c  cbz x20,0x049ba7f8
049b9580  mov x0,x20
049b9584  mov x1,xzr
049b9588  fmov s10,s9
049b958c  bl 0x057f0800
049b9590  ldr x0,[x19, #0x18]
049b9594  cbz x0,0x049ba7f8
049b9598  mov x1,xzr
049b959c  fmov s8,s1
049b95a0  bl 0x057f1034
049b95a4  ldr x8,[x19, #0x10]
049b95a8  cbz x8,0x049ba7f8
049b95ac  ldr x0,[x8, #0xe8]
049b95b0  cbz x0,0x049ba7f8
049b95b4  fmov s9,s1
049b95b8  fmov s0,0xbf000000
049b95bc  mov x1,xzr
049b95c0  fmov s1,0xbf000000
049b95c4  movi d2,#0x0
049b95c8  movi d3,#0x0
049b95cc  fadd s0,s10,s0
049b95d0  fadd s1,s11,s1
049b95d4  fmul s0,s0,s12
049b95d8  fmul s1,s1,s14
049b95dc  fadd s10,s0,s2
049b95e0  fadd s14,s1,s3
049b95e4  bl 0x057ef578
049b95e8  fsub s0,s10,s13
049b95ec  ldr s2,[sp, #0x60]
049b95f0  ldr s3,[sp, #0x70]
049b95f4  fdiv s0,s0,s2
049b95f8  fsub s2,s14,s8
049b95fc  fdiv s2,s2,s9
049b9600  fmul s11,s0,s3
049b9604  fmul s9,s2,s1
049b9608  ldr x8,[x19, #0x10]
049b960c  cbz x8,0x049ba7f8
049b9610  ldr w9,[x8, #0x620]
049b9614  cbz w9,0x049b9700
049b9618  ldr x20,[x8, #0x5f8]
049b961c  str s11,[sp, #0x70]
049b9620  cbz x20,0x049ba7f8
049b9624  ldr x8,[x21]
049b9628  ldr x9,[x20]
049b962c  cmp x9,x8
049b9630  b.ne 0x049ba7f8
049b9634  ldp s13,s14,[x19, #0x20]
049b9638  mov x0,x20
049b963c  ldr s15,[x19, #0xd0]
049b9640  mov x1,xzr
049b9644  bl 0x057edf90
049b9648  mov x0,x20
049b964c  mov x1,xzr
049b9650  fmov s10,s0
049b9654  bl 0x057edf90
049b9658  ldr s8,[x19, #0xd4]
049b965c  mov x0,x20
049b9660  mov x1,xzr
049b9664  fmov s11,s0
049b9668  bl 0x057edf90
049b966c  mov x0,x20
049b9670  mov x1,xzr
049b9674  fmov s12,s1
049b9678  bl 0x057edf90
049b967c  ldr x8,[x19, #0x10]
049b9680  cbz x8,0x049ba7f8
049b9684  fmov s0,0x3f000000
049b9688  fmov s2,0xbf000000
049b968c  add x0,sp,#0x180
049b9690  mov x1,xzr
049b9694  fmul s1,s1,s0
049b9698  fmul s3,s12,s2
049b969c  fmul s0,s11,s0
049b96a0  fmul s2,s10,s2
049b96a4  fsub s1,s1,s3
049b96a8  fsub s0,s0,s2
049b96ac  fmul s1,s8,s1
049b96b0  fmul s0,s15,s0
049b96b4  fadd s1,s3,s1
049b96b8  ldr q3,[x8, #0x610]
049b96bc  fadd s0,s2,s0
049b96c0  ldr q2,[x8, #0x600]
049b96c4  stp q2,q3,[x24]
049b96c8  fadd s8,s9,s1
049b96cc  ldr s1,[sp, #0x70]
049b96d0  fadd s9,s1,s0
049b96d4  ldr s0,[x19, #0x64]
049b96d8  ldr s1,[x19, #0xb0]
049b96dc  bl 0x058623c8
049b96e0  fsub s1,s9,s13
049b96e4  fsub s2,s8,s14
049b96e8  ldr s15,[sp, #0x1c]
049b96ec  fmul s1,s1,s0
049b96f0  fmul s2,s2,s0
049b96f4  fadd s0,s13,s1
049b96f8  fadd s1,s14,s2
049b96fc  b 0x049b973c
049b9700  ldr q2,[x8, #0x600]
049b9704  ldp s8,s10,[x19, #0x20]
049b9708  ldr q3,[x8, #0x610]
049b970c  add x0,sp,#0x180
049b9710  mov x1,xzr
049b9714  ldr s0,[x19, #0x64]
049b9718  ldr s1,[x19, #0xb0]
049b971c  stp q2,q3,[x24]
049b9720  bl 0x058623c8
049b9724  fsub s1,s11,s8
049b9728  fsub s2,s9,s10
049b972c  fmul s1,s1,s0
049b9730  fmul s2,s2,s0
049b9734  fadd s0,s8,s1
049b9738  fadd s1,s10,s2
049b973c  stp s0,s1,[x19, #0x28]
049b9740  ldr s2,[x19, #0x100]
049b9744  ldr s3,[x19, #0x104]
049b9748  adrp x25,0x625b000
049b974c  ldr x8,[x19, #0x28]
049b9750  ldrb w9,[x25, #0x52c]
049b9754  fsub s8,s0,s2
049b9758  fsub s9,s1,s3
049b975c  str x8,[x19, #0x100]
049b9760  str s8,[x19, #0x108]
049b9764  str s9,[x19, #0x10c]
049b9768  cbnz w9,0x049b9788
049b976c  adrp x0,0x5e59000
049b9770  ldr x0,[x0]
049b9774  bl 0x029f5a50
049b9778  ldr s8,[x19, #0x108]
049b977c  ldr s9,[x19, #0x10c]
049b9780  mov w8,#0x1
049b9784  strb w8,[x25, #0x52c]
049b9788  adrp x8,0x5e59000
049b978c  ldr x8,[x8]
049b9790  ldr x0,[x8]
049b9794  ldr w8,[x0, #0xe4]
049b9798  cbnz w8,0x049b97a0
049b979c  bl 0x029f5bd0
049b97a0  fmul s0,s8,s8
049b97a4  fmul s1,s9,s9
049b97a8  ldr q2,[sp, #0x20]
049b97ac  mov w8,#0x42c80000
049b97b0  mov w9,#0x7f800000
049b97b4  fadd s0,s0,s1
049b97b8  fmov s1,0x3f800000
049b97bc  fdiv s1,s1,s2
049b97c0  fsqrt s0,s0
049b97c4  fmul s0,s1,s0
049b97c8  fmov s1,w8
049b97cc  fdiv s0,s0,s1
049b97d0  movi d1,#0x0
049b97d4  fmov w8,s0
049b97d8  and w8,w8,#0x7fffffff
049b97dc  cmp w8,w9
049b97e0  ldr x8,[x19, #0x10]
049b97e4  fcsel s11,s1,s0,hi
049b97e8  cbz x8,0x049ba7f8
049b97ec  add x9,x8,#0x278
049b97f0  ldr x8,[x8, #0x2a8]
049b97f4  add x0,sp,#0xc0
049b97f8  ldp q0,q1,[x9]
049b97fc  ldr q2,[x9, #0x20]
049b9800  mov x1,xzr
049b9804  str x8,[sp, #0xf0]
049b9808  str q2,[sp, #0xe0]
049b980c  stp q0,q1,[sp, #0xc0]
049b9810  ldr s0,[x19, #0x64]
049b9814  ldr s1,[x19, #0xa8]
049b9818  bl 0x058626a4
049b981c  ldr x8,[x19, #0x10]
049b9820  cbz x8,0x049ba7f8
049b9824  ldr s4,[x8, #0x2ec]
049b9828  ldr s5,[x8, #0x2e8]
049b982c  mov w10,#0x7f800000
049b9830  mov v0.S[0x1],v1.S[0x0]
049b9834  add x0,sp,#0xc0
049b9838  mov x1,xzr
049b983c  fabs s6,s4
049b9840  fabs s7,s5
049b9844  fsub s16,s11,s5
049b9848  fsub s17,s4,s5
049b984c  fabd s5,s4,s5
049b9850  mov v0.S[0x2],v2.S[0x0]
049b9854  movi d2,#0x0
049b9858  fmov w9,s6
049b985c  fdiv s16,s16,s17
049b9860  cmp w9,w10
049b9864  mov w9,#0x35800000
049b9868  mov v0.S[0x3],v3.S[0x0]
049b986c  fccmp s7,s6,#0x0,ls
049b9870  ldur q3,[x19, #0x68]
049b9874  fcsel s6,s7,s6,gt
049b9878  fmul v0.4S,v0.4S,v3.4S
049b987c  fmul s1,s6,s15
049b9880  fmov s6,w9
049b9884  str q0,[sp, #0x70]
049b9888  fadd s2,s16,s2
049b988c  fmaxnm s1,s1,s6
049b9890  fcmp s5,s1
049b9894  ldp q1,q3,[x8, #0x2b0]
049b9898  ldr q5,[x8, #0x2d0]
049b989c  ldr x8,[x8, #0x2e0]
049b98a0  fcsel s0,s4,s2,mi
049b98a4  stp q1,q3,[sp, #0xc0]
049b98a8  str q5,[sp, #0xe0]
049b98ac  str x8,[sp, #0xf0]
049b98b0  bl 0x0586269c
049b98b4  ldr x8,[x19, #0x10]
049b98b8  mov v0.S[0x1],v1.S[0x0]
049b98bc  ldr q1,[sp, #0x70]
049b98c0  mov v0.S[0x2],v2.S[0x0]
049b98c4  mov v0.S[0x3],v3.S[0x0]
049b98c8  fmul v0.4S,v1.4S,v0.4S
049b98cc  stur q0,[x19, #0x88]
049b98d0  cbz x8,0x049ba7f8
049b98d4  add x0,sp,#0xf8
049b98d8  add x1,x8,#0x2f0
049b98dc  mov w2,#0x88
049b98e0  bl 0x05afb2b0
049b98e4  ldr s0,[x19, #0x64]
049b98e8  ldr s1,[x19, #0xa4]
049b98ec  add x0,sp,#0xf8
049b98f0  bl 0x049bae18
049b98f4  ldr x20,[x19, #0x10]
049b98f8  stp q1,q0,[sp, #0x60]
049b98fc  cbz x20,0x049ba7f8
049b9900  add x0,sp,#0xf8
049b9904  add x1,x20,#0x378
049b9908  mov w2,#0x88
049b990c  fmov s8,s2
049b9910  bl 0x05afb2b0
049b9914  ldr s0,[x20, #0x404]
049b9918  ldr s1,[x20, #0x400]
049b991c  mov w9,#0x7f800000
049b9920  movi d9,#0x0
049b9924  add x0,sp,#0xf8
049b9928  fabs s2,s0
049b992c  fabs s3,s1
049b9930  fsub s4,s11,s1
049b9934  fsub s5,s0,s1
049b9938  fabd s1,s0,s1
049b993c  fmov w8,s2
049b9940  fdiv s4,s4,s5
049b9944  cmp w8,w9
049b9948  mov w8,#0x35800000
049b994c  fccmp s3,s2,#0x0,ls
049b9950  fcsel s2,s3,s2,gt
049b9954  fmov s3,w8
049b9958  fmul s2,s2,s15
049b995c  fmaxnm s2,s2,s3
049b9960  fadd s3,s4,s9
049b9964  fcmp s1,s2
049b9968  ldr s1,[x19, #0xa4]
049b996c  fcsel s0,s0,s3,mi
049b9970  bl 0x049bae18
049b9974  ldp q4,q3,[sp, #0x60]
049b9978  adrp x20,0x625b000
049b997c  mov v0.S[0x1],v1.S[0x0]
049b9980  fmul s1,s8,s2
049b9984  ldr s2,[x19, #0x5c]
049b9988  ldr s8,[x19, #0x108]
049b998c  ldr s10,[x19, #0x10c]
049b9990  ldrb w8,[x20, #0xae8]
049b9994  mov v3.S[0x1],v4.S[0x0]
049b9998  str wzr,[x19, #0x118]
049b999c  str s8,[x19, #0x110]
049b99a0  fmul s1,s1,s2
049b99a4  str s10,[x19, #0x114]
049b99a8  fmul v0.2S,v3.2S,v0.2S
049b99ac  ldur d3,[x19, #0x54]
049b99b0  str s1,[x19, #0x84]
049b99b4  fmul v0.2S,v3.2S,v0.2S
049b99b8  stur d0,[x19, #0x7c]
049b99bc  cbnz w8,0x049b99e0
049b99c0  adrp x0,0x5e59000
049b99c4  ldr x0,[x0]
049b99c8  bl 0x029f5a50
049b99cc  ldr s8,[x19, #0x110]
049b99d0  ldr s10,[x19, #0x114]
049b99d4  mov w8,#0x1
049b99d8  ldr s9,[x19, #0x118]
049b99dc  strb w8,[x20, #0xae8]
049b99e0  adrp x8,0x5e59000
049b99e4  ldr x8,[x8]
049b99e8  ldr x0,[x8]
049b99ec  ldr w8,[x0, #0xe4]
049b99f0  cbnz w8,0x049b99f8
049b99f4  bl 0x029f5bd0
049b99f8  fmul s0,s8,s8
049b99fc  fmul s1,s10,s10
049b9a00  add x26,x19,#0x114
049b9a04  fadd s0,s0,s1
049b9a08  fmul s1,s9,s9
049b9a0c  fadd s0,s0,s1
049b9a10  fsqrt s0,s0
049b9a14  fcmp s0,#0.0
049b9a18  b.ne 0x049b9a38
049b9a1c  movi d2,#0x0
049b9a20  ldp s8,s0,[x19, #0x40]
049b9a24  str wzr,[x19, #0x118]
049b9a28  str s8,[x19, #0x110]
049b9a2c  mov v2.S[0x0],v0.S[0x0]
049b9a30  str s0,[x19, #0x114]
049b9a34  b 0x049b9a40
049b9a38  ldr s8,[x19, #0x110]
049b9a3c  ldr d2,[x26]
049b9a40  adrp x20,0x625b000
049b9a44  ldrb w8,[x20, #0x52e]
049b9a48  cbnz w8,0x049b9a68
049b9a4c  adrp x0,0x5e59000
049b9a50  ldr x0,[x0]
049b9a54  str q2,[sp, #0x70]
049b9a58  bl 0x029f5a50
049b9a5c  ldr q2,[sp, #0x70]
049b9a60  mov w8,#0x1
049b9a64  strb w8,[x20, #0x52e]
049b9a68  adrp x8,0x5e59000
049b9a6c  ldr x8,[x8]
049b9a70  ldr x0,[x8]
049b9a74  ldr w8,[x0, #0xe4]
049b9a78  cbnz w8,0x049b9a88
049b9a7c  str q2,[sp, #0x70]
049b9a80  bl 0x029f5bd0
049b9a84  ldr q2,[sp, #0x70]
049b9a88  fmul s0,s8,s8
049b9a8c  fmul v1.2S,v2.2S,v2.2S
049b9a90  adrp x8,0x116c000
049b9a94  adrp x21,0x5e58000
049b9a98  fadd s0,s0,s1
049b9a9c  dup s1,v1.S[0x1]
049b9aa0  fadd s0,s1,s0
049b9aa4  ldr s1,[x8, #0x240]
049b9aa8  str s1,[sp, #0x3c]
049b9aac  ldr x21,[x21, #0xbf8]
049b9ab0  fsqrt s0,s0
049b9ab4  fcmp s0,s1
049b9ab8  b.le 0x049b9af4
049b9abc  fdiv s1,s8,s0
049b9ac0  dup v0.2S,v0.S[0x0]
049b9ac4  adrp x20,0x625b000
049b9ac8  ldrb w8,[x20, #0x26f]
049b9acc  fdiv v0.2S,v2.2S,v0.2S
049b9ad0  str s1,[x19, #0x110]
049b9ad4  str d0,[x26]
049b9ad8  cbnz w8,0x049b9b2c
049b9adc  adrp x0,0x5e58000
049b9ae0  ldr x0,[x0, #0xbf8]
049b9ae4  bl 0x029f5a50
049b9ae8  mov w8,#0x1
049b9aec  strb w8,[x20, #0x26f]
049b9af0  b 0x049b9b2c
049b9af4  adrp x20,0x625b000
049b9af8  ldrb w8,[x20, #0x26f]
049b9afc  cbnz w8,0x049b9b14
049b9b00  adrp x0,0x5e58000
049b9b04  ldr x0,[x0, #0xbf8]
049b9b08  bl 0x029f5a50
049b9b0c  mov w8,#0x1
049b9b10  strb w8,[x20, #0x26f]
049b9b14  ldr x8,[x21]
049b9b18  ldr x8,[x8, #0xb8]
049b9b1c  ldr d0,[x8]
049b9b20  ldr s1,[x8, #0x8]
049b9b24  str d0,[x19, #0x110]
049b9b28  str s1,[x19, #0x118]
049b9b2c  ldr x8,[x19, #0x10]
049b9b30  cbz x8,0x049ba7f8
049b9b34  ldr x9,[x21]
049b9b38  ldrb w22,[x8, #0x491]
049b9b3c  add x0,sp,#0xf8
049b9b40  add x1,x8,#0x490
049b9b44  mov w2,#0x88
049b9b48  add x20,sp,#0xf8
049b9b4c  ldr x9,[x9, #0xb8]
049b9b50  ldp s14,s9,[x9]
049b9b54  ldr s8,[x9, #0x8]
049b9b58  bl 0x05afb2b0
049b9b5c  tbnz w22,#0x0,0x049b9bfc
049b9b60  add x0,x20,#0x8
049b9b64  mov x1,xzr
049b9b68  bl 0x05862388
049b9b6c  sub w8,w0,#0x1
049b9b70  cmp w8,#0x2
049b9b74  b.cc 0x049b9cac
049b9b78  cmp w0,#0x3
049b9b7c  b.eq 0x049b9b84
049b9b80  cbnz w0,0x049b9ce4
049b9b84  ldr x8,[x19, #0x10]
049b9b88  cbz x8,0x049ba7f8
049b9b8c  ldr s8,[x19, #0x78]
049b9b90  ldr s9,[x19, #0x60]
049b9b94  add x0,sp,#0xf8
049b9b98  add x1,x8,#0x490
049b9b9c  mov w2,#0x88
049b9ba0  bl 0x05afb2b0
049b9ba4  ldr s0,[x19, #0x64]
049b9ba8  ldr s1,[x19, #0xac]
049b9bac  add x0,x20,#0x8
049b9bb0  mov x1,xzr
049b9bb4  bl 0x058623c8
049b9bb8  fdiv s1,s9,s8
049b9bbc  fabs s2,s8
049b9bc0  movi d9,#0x0
049b9bc4  mov w9,#0x7f800000
049b9bc8  movi d14,#0x0
049b9bcc  fmul s3,s2,s15
049b9bd0  fmov w8,s2
049b9bd4  cmp w8,w9
049b9bd8  mov w8,#0x35800000
049b9bdc  fcsel s3,s9,s3,hi
049b9be0  fmul s0,s1,s0
049b9be4  fmov s1,w8
049b9be8  fmaxnm s1,s3,s1
049b9bec  fadd s0,s0,s9
049b9bf0  fcmp s2,s1
049b9bf4  fcsel s8,s8,s0,mi
049b9bf8  b 0x049b9ce4
049b9bfc  add x0,x20,#0x28
049b9c00  mov x1,xzr
049b9c04  bl 0x05862388
049b9c08  cbz w0,0x049b9c38
049b9c0c  ldr x8,[x19, #0x10]
049b9c10  cbz x8,0x049ba7f8
049b9c14  add x0,sp,#0xf8
049b9c18  add x1,x8,#0x490
049b9c1c  mov w2,#0x88
049b9c20  bl 0x05afb2b0
049b9c24  add x0,x20,#0x28
049b9c28  mov x1,xzr
049b9c2c  bl 0x05862388
049b9c30  cmp w0,#0x3
049b9c34  b.ne 0x049b9d48
049b9c38  ldr x8,[x19, #0x10]
049b9c3c  cbz x8,0x049ba7f8
049b9c40  ldr s8,[x19, #0x78]
049b9c44  ldr s9,[x19, #0x60]
049b9c48  add x0,sp,#0xf8
049b9c4c  add x1,x8,#0x490
049b9c50  mov w2,#0x88
049b9c54  bl 0x05afb2b0
049b9c58  ldr s0,[x19, #0xac]
049b9c5c  add x0,x20,#0x28
049b9c60  mov x1,xzr
049b9c64  fmov s1,s0
049b9c68  bl 0x058623c8
049b9c6c  fdiv s1,s9,s8
049b9c70  fabs s2,s8
049b9c74  movi d3,#0x0
049b9c78  mov w9,#0x7f800000
049b9c7c  fmul s4,s2,s15
049b9c80  fmov w8,s2
049b9c84  cmp w8,w9
049b9c88  mov w8,#0x35800000
049b9c8c  fcsel s4,s3,s4,hi
049b9c90  fmul s0,s1,s0
049b9c94  fmov s1,w8
049b9c98  fmaxnm s1,s4,s1
049b9c9c  fadd s0,s0,s3
049b9ca0  fcmp s2,s1
049b9ca4  fcsel s14,s8,s0,mi
049b9ca8  b 0x049b9d78
049b9cac  ldr x8,[x19, #0x10]
049b9cb0  cbz x8,0x049ba7f8
049b9cb4  add x0,sp,#0xf8
049b9cb8  add x1,x8,#0x490
049b9cbc  mov w2,#0x88
049b9cc0  bl 0x05afb2b0
049b9cc4  ldr s0,[x19, #0x64]
049b9cc8  ldr s1,[x19, #0xac]
049b9ccc  add x0,x20,#0x8
049b9cd0  mov x1,xzr
049b9cd4  bl 0x058623c8
049b9cd8  movi d9,#0x0
049b9cdc  movi d14,#0x0
049b9ce0  fmov s8,s0
049b9ce4  ldr x0,[x19, #0x10]
049b9ce8  cbz x0,0x049ba7f8
049b9cec  ldrb w8,[x0, #0x5c8]
049b9cf0  cbnz w8,0x049b9fcc
049b9cf4  mov x1,xzr
049b9cf8  bl 0x057dc0f8
049b9cfc  cbz x0,0x049ba7f8
049b9d00  mov x1,xzr
049b9d04  bl 0x057ef000
049b9d08  mov x0,xzr
049b9d0c  bl 0x057cd50c
049b9d10  mov x0,xzr
049b9d14  bl 0x057cd714
049b9d18  adrp x8,0x116c000
049b9d1c  mov x0,xzr
049b9d20  ldr s3,[x8, #0x74]
049b9d24  fmul s0,s0,s3
049b9d28  fmul s1,s1,s3
049b9d2c  fmul s2,s2,s3
049b9d30  bl 0x057cdc3c
049b9d34  movi d0,#0x0
049b9d38  fadd s8,s8,s2
049b9d3c  fadd s14,s14,s0
049b9d40  fadd s9,s9,s0
049b9d44  b 0x049b9fcc
049b9d48  ldr x8,[x19, #0x10]
049b9d4c  cbz x8,0x049ba7f8
049b9d50  add x0,sp,#0xf8
049b9d54  add x1,x8,#0x490
049b9d58  mov w2,#0x88
049b9d5c  bl 0x05afb2b0
049b9d60  ldr s0,[x19, #0x64]
049b9d64  ldr s1,[x19, #0xac]
049b9d68  add x0,x20,#0x28
049b9d6c  mov x1,xzr
049b9d70  bl 0x058623c8
049b9d74  fmov s14,s0
049b9d78  ldr x8,[x19, #0x10]
049b9d7c  cbz x8,0x049ba7f8
049b9d80  add x0,sp,#0xf8
049b9d84  add x1,x8,#0x490
049b9d88  mov w2,#0x88
049b9d8c  add x20,sp,#0xf8
049b9d90  bl 0x05afb2b0
049b9d94  add x0,x20,#0x48
049b9d98  mov x1,xzr
049b9d9c  bl 0x05862388
049b9da0  cbz w0,0x049b9dd0
049b9da4  ldr x8,[x19, #0x10]
049b9da8  cbz x8,0x049ba7f8
049b9dac  add x0,sp,#0xf8
049b9db0  add x1,x8,#0x490
049b9db4  mov w2,#0x88
049b9db8  bl 0x05afb2b0
049b9dbc  add x0,x20,#0x48
049b9dc0  mov x1,xzr
049b9dc4  bl 0x05862388
049b9dc8  cmp w0,#0x3
049b9dcc  b.ne 0x049b9e44
049b9dd0  ldr x8,[x19, #0x10]
049b9dd4  cbz x8,0x049ba7f8
049b9dd8  ldr s8,[x19, #0x78]
049b9ddc  ldr s9,[x19, #0x60]
049b9de0  add x0,sp,#0xf8
049b9de4  add x1,x8,#0x490
049b9de8  mov w2,#0x88
049b9dec  bl 0x05afb2b0
049b9df0  ldr s0,[x19, #0xac]
049b9df4  add x0,x20,#0x48
049b9df8  mov x1,xzr
049b9dfc  fmov s1,s0
049b9e00  bl 0x058623c8
049b9e04  fdiv s1,s9,s8
049b9e08  fabs s2,s8
049b9e0c  movi d3,#0x0
049b9e10  mov w9,#0x7f800000
049b9e14  fmul s4,s2,s15
049b9e18  fmov w8,s2
049b9e1c  cmp w8,w9
049b9e20  mov w8,#0x35800000
049b9e24  fcsel s4,s3,s4,hi
049b9e28  fmul s0,s1,s0
049b9e2c  fmov s1,w8
049b9e30  fmaxnm s1,s4,s1
049b9e34  fadd s0,s0,s3
049b9e38  fcmp s2,s1
049b9e3c  fcsel s9,s8,s0,mi
049b9e40  b 0x049b9e74
049b9e44  ldr x8,[x19, #0x10]
049b9e48  cbz x8,0x049ba7f8
049b9e4c  add x0,sp,#0xf8
049b9e50  add x1,x8,#0x490
049b9e54  mov w2,#0x88
049b9e58  bl 0x05afb2b0
049b9e5c  ldr s0,[x19, #0x64]
049b9e60  ldr s1,[x19, #0xac]
049b9e64  add x0,x20,#0x48
049b9e68  mov x1,xzr
049b9e6c  bl 0x058623c8
049b9e70  fmov s9,s0
049b9e74  ldr x8,[x19, #0x10]
049b9e78  cbz x8,0x049ba7f8
049b9e7c  add x0,sp,#0xf8
049b9e80  add x1,x8,#0x490
049b9e84  mov w2,#0x88
049b9e88  add x20,sp,#0xf8
049b9e8c  bl 0x05afb2b0
049b9e90  add x0,x20,#0x68
049b9e94  mov x1,xzr
049b9e98  bl 0x05862388
049b9e9c  cbz w0,0x049b9ecc
049b9ea0  ldr x8,[x19, #0x10]
049b9ea4  cbz x8,0x049ba7f8
049b9ea8  add x0,sp,#0xf8
049b9eac  add x1,x8,#0x490
049b9eb0  mov w2,#0x88
049b9eb4  bl 0x05afb2b0
049b9eb8  add x0,x20,#0x68
049b9ebc  mov x1,xzr
049b9ec0  bl 0x05862388
049b9ec4  cmp w0,#0x3
049b9ec8  b.ne 0x049b9f40
049b9ecc  ldr x8,[x19, #0x10]
049b9ed0  cbz x8,0x049ba7f8
049b9ed4  ldr s8,[x19, #0x78]
049b9ed8  ldr s10,[x19, #0x60]
049b9edc  add x0,sp,#0xf8
049b9ee0  add x1,x8,#0x490
049b9ee4  mov w2,#0x88
049b9ee8  bl 0x05afb2b0
049b9eec  ldr s0,[x19, #0xac]
049b9ef0  add x0,x20,#0x68
049b9ef4  mov x1,xzr
049b9ef8  fmov s1,s0
049b9efc  bl 0x058623c8
049b9f00  fdiv s1,s10,s8
049b9f04  fabs s2,s8
049b9f08  movi d3,#0x0
049b9f0c  mov w9,#0x7f800000
049b9f10  fmul s4,s2,s15
049b9f14  fmov w8,s2
049b9f18  cmp w8,w9
049b9f1c  mov w8,#0x35800000
049b9f20  fcsel s4,s3,s4,hi
049b9f24  fmul s0,s1,s0
049b9f28  fmov s1,w8
049b9f2c  fmaxnm s1,s4,s1
049b9f30  fadd s0,s0,s3
049b9f34  fcmp s2,s1
049b9f38  fcsel s8,s8,s0,mi
049b9f3c  b 0x049b9f70
049b9f40  ldr x8,[x19, #0x10]
049b9f44  cbz x8,0x049ba7f8
049b9f48  add x0,sp,#0xf8
049b9f4c  add x1,x8,#0x490
049b9f50  mov w2,#0x88
049b9f54  bl 0x05afb2b0
049b9f58  ldr s0,[x19, #0x64]
049b9f5c  ldr s1,[x19, #0xac]
049b9f60  add x0,x20,#0x68
049b9f64  mov x1,xzr
049b9f68  bl 0x058623c8
049b9f6c  fmov s8,s0
049b9f70  ldr x0,[x19, #0x10]
049b9f74  cbz x0,0x049ba7f8
049b9f78  ldrb w8,[x0, #0x5c8]
049b9f7c  cbnz w8,0x049b9fcc
049b9f80  mov x1,xzr
049b9f84  bl 0x057dc0f8
049b9f88  cbz x0,0x049ba7f8
049b9f8c  mov x1,xzr
049b9f90  bl 0x057ef000
049b9f94  mov x0,xzr
049b9f98  bl 0x057cd50c
049b9f9c  mov x0,xzr
049b9fa0  bl 0x057cd714
049b9fa4  adrp x8,0x116c000
049b9fa8  mov x0,xzr
049b9fac  ldr s3,[x8, #0x74]
049b9fb0  fmul s0,s0,s3
049b9fb4  fmul s1,s1,s3
049b9fb8  fmul s2,s2,s3
049b9fbc  bl 0x057cdc3c
049b9fc0  fadd s14,s14,s0
049b9fc4  fadd s9,s9,s1
049b9fc8  fadd s8,s8,s2
049b9fcc  ldr x22,[x19, #0x10]
049b9fd0  cbz x22,0x049ba7f8
049b9fd4  ldrb w23,[x22, #0x519]
049b9fd8  add x0,sp,#0xf8
049b9fdc  add x1,x22,#0x518
049b9fe0  mov w2,#0x88
049b9fe4  add x20,sp,#0xf8
049b9fe8  bl 0x05afb2b0
049b9fec  ldr s0,[x22, #0x5a4]
049b9ff0  ldr s1,[x22, #0x5a0]
049b9ff4  mov w9,#0x7f800000
049b9ff8  fabs s2,s0
049b9ffc  fabs s3,s1
049ba000  fsub s4,s11,s1
049ba004  fsub s5,s0,s1
049ba008  movi d11,#0x0
049ba00c  fabd s1,s0,s1
049ba010  fmov w8,s2
049ba014  fdiv s4,s4,s5
049ba018  cmp w8,w9
049ba01c  mov w8,#0x35800000
049ba020  fccmp s3,s2,#0x0,ls
049ba024  fcsel s2,s3,s2,gt
049ba028  fmov s3,w8
049ba02c  fmul s2,s2,s15
049ba030  fmaxnm s2,s2,s3
049ba034  fadd s3,s4,s11
049ba038  fcmp s1,s2
049ba03c  ldr s1,[x19, #0xac]
049ba040  fcsel s0,s0,s3,mi
049ba044  tbnz w23,#0x0,0x049ba070
049ba048  ldrb w8,[sp, #0xf9]
049ba04c  add x9,x20,#0x8
049ba050  add x10,x20,#0x68
049ba054  mov x1,xzr
049ba058  cmp w8,#0x0
049ba05c  csel x0,x9,x10,eq
049ba060  bl 0x058623c8
049ba064  movi d12,#0x0
049ba068  fmov s13,s0
049ba06c  b 0x049ba084
049ba070  add x0,sp,#0xf8
049ba074  bl 0x049bae18
049ba078  fmov s12,s0
049ba07c  fmov s11,s1
049ba080  fmov s13,s2
049ba084  ldr x8,[x19, #0x10]
049ba088  ldr q6,[sp, #0x20]
049ba08c  cbz x8,0x049ba7f8
049ba090  ldrb w9,[x8, #0x5c8]
049ba094  cbz w9,0x049ba17c
049ba098  fmov s10,s14
049ba09c  adrp x20,0x625b000
049ba0a0  str s8,[sp, #0x60]
049ba0a4  ldrb w8,[x20, #0x61d]
049ba0a8  str s9,[sp, #0x70]
049ba0ac  cbnz w8,0x049ba0c4
049ba0b0  adrp x0,0x5e58000
049ba0b4  ldr x0,[x0, #0xbf8]
049ba0b8  bl 0x029f5a50
049ba0bc  mov w8,#0x1
049ba0c0  strb w8,[x20, #0x61d]
049ba0c4  ldr x8,[x21]
049ba0c8  ldr s3,[x19, #0x110]
049ba0cc  mov x0,xzr
049ba0d0  ldr s4,[x19, #0x114]
049ba0d4  ldr s5,[x19, #0x118]
049ba0d8  ldr x8,[x8, #0xb8]
049ba0dc  ldp s0,s1,[x8, #0x18]
049ba0e0  ldr s2,[x8, #0x20]
049ba0e4  bl 0x057cd458
049ba0e8  ldp s14,s15,[x19, #0x48]
049ba0ec  mov x0,xzr
049ba0f0  ldr s8,[x19, #0x50]
049ba0f4  bl 0x057cd714
049ba0f8  adrp x8,0x116c000
049ba0fc  mov x0,xzr
049ba100  ldr s9,[x8, #0x74]
049ba104  fmul s0,s0,s9
049ba108  fmul s1,s1,s9
049ba10c  fmul s2,s2,s9
049ba110  bl 0x057cdc3c
049ba114  adrp x8,0x116c000
049ba118  movi d1,#0x0
049ba11c  mov x0,xzr
049ba120  ldr s0,[x8, #0x26c]
049ba124  fmul s2,s2,s0
049ba128  movi d0,#0x0
049ba12c  bl 0x057cd67c
049ba130  mov x0,xzr
049ba134  bl 0x057cd714
049ba138  fmul s0,s0,s9
049ba13c  fmul s1,s1,s9
049ba140  mov x0,xzr
049ba144  fmul s2,s2,s9
049ba148  bl 0x057cdc3c
049ba14c  fadd s0,s14,s0
049ba150  fadd s1,s15,s1
049ba154  ldr x8,[x19, #0x10]
049ba158  fadd s2,s8,s2
049ba15c  ldr q6,[sp, #0x20]
049ba160  ldr s15,[sp, #0x1c]
049ba164  ldr s9,[sp, #0x70]
049ba168  ldr s8,[sp, #0x60]
049ba16c  fmov s14,s10
049ba170  stp s0,s1,[x19, #0x98]
049ba174  str s2,[x19, #0xa0]
049ba178  b 0x049ba194
049ba17c  ldr x9,[x19, #0x48]
049ba180  ldr w10,[x19, #0x50]
049ba184  str x9,[x19, #0x98]
049ba188  str w10,[x19, #0xa0]
049ba18c  ldp s0,s1,[x19, #0x98]
049ba190  ldr s2,[x19, #0xa0]
049ba194  fadd s3,s14,s12
049ba198  fadd s4,s9,s11
049ba19c  fadd s5,s8,s13
049ba1a0  fadd s0,s3,s0
049ba1a4  fadd s1,s4,s1
049ba1a8  fadd s2,s5,s2
049ba1ac  stp s0,s1,[x19, #0x98]
049ba1b0  str s2,[x19, #0xa0]
049ba1b4  cbz x8,0x049ba7f8
049ba1b8  mov w9,#0x3140
049ba1bc  ldrb w8,[x8, x9, LSL ]
049ba1c0  cbz w8,0x049baa20
049ba1c4  ldr x8,[x19, #0x140]
049ba1c8  cbz x8,0x049ba7f8
049ba1cc  ldr w8,[x8, #0x18]
049ba1d0  cmp w8,#0x1
049ba1d4  b.lt 0x049baa20
049ba1d8  adrp x9,0x5e85000
049ba1dc  lsl w1,w8,#0x1
049ba1e0  add x0,sp,#0xb0
049ba1e4  ldr x9,[x9, #0xee8]
049ba1e8  mov w2,#0x2
049ba1ec  mov w3,#0x1
049ba1f0  ldr x4,[x9]
049ba1f4  bl 0x03577f68
049ba1f8  ldr x8,[x19, #0x140]
049ba1fc  cbz x8,0x049ba7f8
049ba200  adrp x9,0x5e85000
049ba204  ldr w8,[x8, #0x18]
049ba208  add x0,sp,#0xa0
049ba20c  ldr x9,[x9, #0xef0]
049ba210  mov w2,#0x2
049ba214  mov w3,#0x1
049ba218  lsl w1,w8,#0x1
049ba21c  ldr x4,[x9]
049ba220  bl 0x034f0f08
049ba224  ldr x8,[x19, #0x140]
049ba228  cbz x8,0x049ba7f8
049ba22c  ldr w8,[x8, #0x18]
049ba230  adrp x10,0x5e85000
049ba234  mov w9,#0x6
049ba238  ldr x10,[x10, #0xee0]
049ba23c  mov w11,#0xfffffffa
049ba240  add x0,sp,#0x90
049ba244  madd w1,w8,w9,w11
049ba248  mov w2,#0x2
049ba24c  mov w3,#0x1
049ba250  ldr x4,[x10]
049ba254  bl 0x03510628
049ba258  ldr s2,[x19, #0x60]
049ba25c  ldr s0,[x19, #0x78]
049ba260  fcmp s2,s0
049ba264  b.pl 0x049ba28c
049ba268  ldr x0,[x19, #0x140]
049ba26c  cbz x0,0x049ba7f8
049ba270  adrp x8,0x5e85000
049ba274  ldr x8,[x8, #0xed8]
049ba278  ldr w9,[x0, #0x18]
049ba27c  ldp s0,s1,[x19, #0x28]
049ba280  ldr x2,[x8]
049ba284  sub w1,w9,#0x1
049ba288  bl 0x0344c750
049ba28c  ldr x0,[x19, #0x140]
049ba290  cbz x0,0x049ba7f8
049ba294  ldr w8,[x0, #0x18]
049ba298  str x26,[sp, #0x10]
049ba29c  cmp w8,#0x2
049ba2a0  b.lt 0x049ba3d0
049ba2a4  adrp x20,0x5e85000
049ba2a8  mov w1,wzr
049ba2ac  ldr x20,[x20, #0xed0]
049ba2b0  ldr x2,[x20]
049ba2b4  bl 0x0344c6f4
049ba2b8  ldr x0,[x19, #0x140]
049ba2bc  cbz x0,0x049ba7f8
049ba2c0  ldr x2,[x20]
049ba2c4  mov w1,#0x1
049ba2c8  fmov s8,s2
049ba2cc  bl 0x0344c6f4
049ba2d0  ldr x0,[x19, #0x140]
049ba2d4  cbz x0,0x049ba7f8
049ba2d8  ldr x2,[x20]
049ba2dc  ldr s12,[x19, #0x158]
049ba2e0  mov w1,wzr
049ba2e4  ldr s13,[x19, #0x15c]
049ba2e8  ldr s14,[x19, #0x60]
049ba2ec  fmov s9,s0
049ba2f0  fmov s10,s1
049ba2f4  bl 0x0344c6f4
049ba2f8  ldr x8,[x19, #0x10]
049ba2fc  cbz x8,0x049ba7f8
049ba300  ldr x0,[x19, #0x140]
049ba304  cbz x0,0x049ba7f8
049ba308  ldr x2,[x20]
049ba30c  ldr s15,[x8, #0x3168]
049ba310  mov w1,#0x1
049ba314  fmov s11,s2
049ba318  bl 0x0344c6f4
049ba31c  ldr x8,[x19, #0x10]
049ba320  cbz x8,0x049ba7f8
049ba324  ldr x0,[x19, #0x140]
049ba328  cbz x0,0x049ba7f8
049ba32c  ldr s0,[x8, #0x3168]
049ba330  fadd s1,s11,s15
049ba334  mov w8,#0x7f800000
049ba338  mov w1,wzr
049ba33c  fadd s0,s2,s0
049ba340  fabs s3,s1
049ba344  fsub s4,s14,s1
049ba348  fabs s2,s0
049ba34c  fsub s5,s0,s1
049ba350  fabd s1,s0,s1
049ba354  fmov w9,s2
049ba358  fdiv s4,s4,s5
049ba35c  cmp w9,w8
049ba360  mov w8,#0x35800000
049ba364  fccmp s3,s2,#0x0,ls
049ba368  fmov s5,w8
049ba36c  adrp x8,0x5e85000
049ba370  fcsel s2,s3,s2,gt
049ba374  ldr s3,[sp, #0x1c]
049ba378  ldr x8,[x8, #0xed8]
049ba37c  ldr x2,[x8]
049ba380  fmul s2,s2,s3
049ba384  movi d3,#0x0
049ba388  fmaxnm s2,s2,s5
049ba38c  fadd s3,s4,s3
049ba390  fcmp s1,s2
049ba394  fmov s1,0x3f800000
049ba398  fsub s2,s13,s10
049ba39c  fcsel s0,s0,s3,mi
049ba3a0  fabs s0,s0
049ba3a4  fcmp s0,s1
049ba3a8  fcsel s0,s1,s0,gt
049ba3ac  fsub s1,s12,s9
049ba3b0  fmul s2,s2,s0
049ba3b4  fmul s0,s1,s0
049ba3b8  fadd s1,s10,s2
049ba3bc  fadd s0,s9,s0
049ba3c0  fmov s2,s8
049ba3c4  bl 0x0344c750
049ba3c8  ldr x0,[x19, #0x140]
049ba3cc  cbz x0,0x049ba7f8
049ba3d0  adrp x26,0x5e85000
049ba3d4  mov w1,wzr
049ba3d8  ldr x26,[x26, #0xed0]
049ba3dc  ldr x2,[x26]
049ba3e0  bl 0x0344c6f4
049ba3e4  fmov s8,s0
049ba3e8  fmov s9,s1
049ba3ec  adrp x8,0x625c000
049ba3f0  ldp s10,s11,[x19, #0x28]
049ba3f4  ldrb w8,[x8, #0xbe]
049ba3f8  cbnz w8,0x049ba414
049ba3fc  adrp x0,0x5e59000
049ba400  ldr x0,[x0]
049ba404  bl 0x029f5a50
049ba408  mov w8,#0x1
049ba40c  adrp x9,0x625c000
049ba410  strb w8,[x9, #0xbe]
049ba414  adrp x8,0x5e59000
049ba418  ldr x8,[x8]
049ba41c  ldr x0,[x8]
049ba420  ldr w8,[x0, #0xe4]
049ba424  cbnz w8,0x049ba42c
049ba428  bl 0x029f5bd0
049ba42c  ldr x0,[x19, #0x140]
049ba430  cbz x0,0x049ba7f8
049ba434  fsub s0,s9,s11
049ba438  fsub s1,s8,s10
049ba43c  mov w9,#0x7f800000
049ba440  mov x28,xzr
049ba444  mov w29,wzr
049ba448  mov x21,xzr
049ba44c  mov w27,#0x3148
049ba450  mov w23,#0x31a8
049ba454  mov w20,#0x31e8
049ba458  mov w22,#0xc
049ba45c  mov x24,#0x200000000
049ba460  fmul s1,s1,s1
049ba464  fmul s0,s0,s0
049ba468  fadd s0,s1,s0
049ba46c  movi d1,#0x0
049ba470  fsqrt s15,s0
049ba474  ldr s0,[sp, #0x1c]
049ba478  fabs s2,s15
049ba47c  fmul s0,s2,s0
049ba480  fmov w8,s2
049ba484  cmp w8,w9
049ba488  mov w8,#0x35800000
049ba48c  fcsel s0,s1,s0,hi
049ba490  fmov s1,w8
049ba494  fmaxnm s0,s0,s1
049ba498  stp s0,s2,[sp, #0x34]
049ba49c  ldrsw x8,[x0, #0x18]
049ba4a0  cmp x21,x8
049ba4a4  b.ge 0x049ba7fc
049ba4a8  ldr x2,[x26]
049ba4ac  mov w1,w21
049ba4b0  bl 0x0344c6f4
049ba4b4  fmov s12,s0
049ba4b8  fmov s13,s1
049ba4bc  cbz x21,0x049ba568
049ba4c0  ldr x0,[x19, #0x140]
049ba4c4  cbz x0,0x049ba7f8
049ba4c8  ldr x2,[x26]
049ba4cc  mov w1,wzr
049ba4d0  bl 0x0344c6f4
049ba4d4  ldr x0,[x19, #0x140]
049ba4d8  cbz x0,0x049ba7f8
049ba4dc  ldr x2,[x26]
049ba4e0  mov w1,w21
049ba4e4  fmov s8,s0
049ba4e8  fmov s9,s1
049ba4ec  bl 0x0344c6f4
049ba4f0  fmov s10,s0
049ba4f4  fmov s11,s1
049ba4f8  adrp x8,0x625c000
049ba4fc  ldrb w8,[x8, #0xbe]
049ba500  cbnz w8,0x049ba51c
049ba504  adrp x0,0x5e59000
049ba508  ldr x0,[x0]
049ba50c  bl 0x029f5a50
049ba510  adrp x8,0x625c000
049ba514  mov w9,#0x1
049ba518  strb w9,[x8, #0xbe]
049ba51c  adrp x8,0x5e59000
049ba520  ldr x8,[x8]
049ba524  ldr x0,[x8]
049ba528  ldr w8,[x0, #0xe4]
049ba52c  cbnz w8,0x049ba534
049ba530  bl 0x029f5bd0
049ba534  fsub s0,s9,s11
049ba538  fsub s1,s8,s10
049ba53c  fmul s1,s1,s1
049ba540  fmul s0,s0,s0
049ba544  fadd s0,s1,s0
049ba548  fmov s1,0x3f800000
049ba54c  fsqrt s0,s0
049ba550  fdiv s0,s0,s15
049ba554  fsub s0,s1,s0
049ba558  ldp s2,s1,[sp, #0x34]
049ba55c  fcmp s1,s2
049ba560  fcsel s9,s15,s0,mi
049ba564  b 0x049ba56c
049ba568  fmov s9,0x3f800000
049ba56c  ldr x8,[x19, #0x10]
049ba570  cbz x8,0x049ba7f8
049ba574  add x8,x8,x27
049ba578  ldr s1,[x19, #0xa4]
049ba57c  ldr s14,[x19, #0x7c]
049ba580  ldp q0,q2,[x8]
049ba584  add x8,sp,#0x180
049ba588  add x0,sp,#0x180
049ba58c  mov x1,xzr
049ba590  stp q0,q2,[x8]
049ba594  fmov s0,s9
049ba598  bl 0x058623c8
049ba59c  ldr x0,[x19, #0x140]
049ba5a0  cbz x0,0x049ba7f8
049ba5a4  fmov s8,s0
049ba5a8  ldr w8,[x0, #0x18]
049ba5ac  cmp w8,#0x2
049ba5b0  b.lt 0x049ba614
049ba5b4  sub w8,w8,#0x1
049ba5b8  ldr x2,[x26]
049ba5bc  cmp x21,x8
049ba5c0  b.cs 0x049ba5e8
049ba5c4  add w1,w21,#0x1
049ba5c8  bl 0x0344c6f4
049ba5cc  ldr x0,[x19, #0x140]
049ba5d0  cbz x0,0x049ba7f8
049ba5d4  ldr x2,[x26]
049ba5d8  fmov s10,s0
049ba5dc  fmov s11,s1
049ba5e0  mov w1,w21
049ba5e4  b 0x049ba608
049ba5e8  mov w1,w21
049ba5ec  bl 0x0344c6f4
049ba5f0  ldr x0,[x19, #0x140]
049ba5f4  cbz x0,0x049ba7f8
049ba5f8  fmov s10,s0
049ba5fc  fmov s11,s1
049ba600  ldr x2,[x26]
049ba604  sub w1,w21,#0x1
049ba608  bl 0x0344c6f4
049ba60c  fsub s12,s10,s0
049ba610  fsub s13,s11,s1
049ba614  ldr x0,[x19, #0x140]
049ba618  cbz x0,0x049ba7f8
049ba61c  ldr x2,[x26]
049ba620  mov w1,w21
049ba624  bl 0x0344c6f4
049ba628  fmov s10,s0
049ba62c  fmov s11,s1
049ba630  ldrb w8,[x25, #0x52c]
049ba634  cbnz w8,0x049ba64c
049ba638  adrp x0,0x5e59000
049ba63c  ldr x0,[x0]
049ba640  bl 0x029f5a50
049ba644  mov w8,#0x1
049ba648  strb w8,[x25, #0x52c]
049ba64c  adrp x8,0x5e59000
049ba650  ldr x8,[x8]
049ba654  ldr x0,[x8]
049ba658  ldr w8,[x0, #0xe4]
049ba65c  cbnz w8,0x049ba664
049ba660  bl 0x029f5bd0
049ba664  fmul s0,s12,s12
049ba668  fmul s1,s13,s13
049ba66c  fadd s0,s1,s0
049ba670  ldr s1,[sp, #0x3c]
049ba674  fsqrt s0,s0
049ba678  fcmp s0,s1
049ba67c  b.le 0x049ba68c
049ba680  fdiv s12,s12,s0
049ba684  fdiv s13,s13,s0
049ba688  b 0x049ba6c4
049ba68c  adrp x8,0x625b000
049ba690  ldrb w8,[x8, #0x271]
049ba694  cbnz w8,0x049ba6b0
049ba698  adrp x0,0x5e59000
049ba69c  ldr x0,[x0, #0x608]
049ba6a0  bl 0x029f5a50
049ba6a4  mov w8,#0x1
049ba6a8  adrp x9,0x625b000
049ba6ac  strb w8,[x9, #0x271]
049ba6b0  adrp x8,0x5e59000
049ba6b4  ldr x8,[x8, #0x608]
049ba6b8  ldr x8,[x8]
049ba6bc  ldr x8,[x8, #0xb8]
049ba6c0  ldp s12,s13,[x8]
049ba6c4  ldr x8,[x19, #0x10]
049ba6c8  cbz x8,0x049ba7f8
049ba6cc  add x9,x8,x23
049ba6d0  ldr x8,[x8, #0x31d8]
049ba6d4  ldr s1,[x19, #0xa8]
049ba6d8  ldp q0,q2,[x9]
049ba6dc  add x0,sp,#0xc0
049ba6e0  ldr q3,[x9, #0x20]
049ba6e4  mov x1,xzr
049ba6e8  str x8,[sp, #0xf0]
049ba6ec  stp q0,q2,[sp, #0xc0]
049ba6f0  fmov s0,s9
049ba6f4  str q3,[sp, #0xe0]
049ba6f8  bl 0x058626a4
049ba6fc  ldr x8,[x19, #0x10]
049ba700  stp q1,q2,[sp, #0x40]
049ba704  stp q3,q0,[sp, #0x60]
049ba708  cbz x8,0x049ba7f8
049ba70c  ldr q0,[x8, #0x3170]
049ba710  ldr q1,[x8, #0x3180]
049ba714  add x0,sp,#0xc0
049ba718  ldr q2,[x8, #0x3190]
049ba71c  ldr x8,[x8, #0x31a0]
049ba720  mov x1,xzr
049ba724  stp q0,q1,[sp, #0xc0]
049ba728  ldr s0,[x19, #0x64]
049ba72c  ldr s1,[x19, #0xa8]
049ba730  str q2,[sp, #0xe0]
049ba734  str x8,[sp, #0xf0]
049ba738  bl 0x058626a4
049ba73c  ldr x8,[x19, #0x10]
049ba740  cbz x8,0x049ba7f8
049ba744  ldr q4,[sp, #0x70]
049ba748  ldr q5,[sp, #0x40]
049ba74c  mov v0.S[0x1],v1.S[0x0]
049ba750  ldrb w8,[x8, x20, LSL ]
049ba754  mov v4.S[0x1],v5.S[0x0]
049ba758  ldp q5,q1,[sp, #0x50]
049ba75c  mov v0.S[0x2],v2.S[0x0]
049ba760  mov v4.S[0x2],v5.S[0x0]
049ba764  mov v0.S[0x3],v3.S[0x0]
049ba768  mov v4.S[0x3],v1.S[0x0]
049ba76c  fmul v0.4S,v4.4S,v0.4S
049ba770  cbz w8,0x049ba77c
049ba774  ldur q1,[x19, #0x88]
049ba778  fmul v0.4S,v0.4S,v1.4S
049ba77c  fmul s1,s14,s8
049ba780  fneg s2,s13
049ba784  fmov s3,0x3f000000
049ba788  asr x8,x28,#0x20
049ba78c  ldr x9,[sp, #0xb0]
049ba790  add x21,x21,#0x1
049ba794  add x28,x28,x24
049ba798  orr x8,x8,#0x1
049ba79c  fmul s2,s1,s2
049ba7a0  fmul s1,s1,s12
049ba7a4  smaddl x9,w8,w22,x9
049ba7a8  str wzr,[x9, #0x8]
049ba7ac  fmul s2,s2,s3
049ba7b0  fmul s1,s1,s3
049ba7b4  fadd s3,s10,s2
049ba7b8  fadd s4,s11,s1
049ba7bc  fsub s2,s10,s2
049ba7c0  fsub s1,s11,s1
049ba7c4  stp s3,s4,[x9]
049ba7c8  ldr x9,[sp, #0xb0]
049ba7cc  nop
049ba7d0  smaddl x9,w29,w22,x9
049ba7d4  stp s2,s1,[x9]
049ba7d8  str wzr,[x9, #0x8]
049ba7dc  ldr x9,[sp, #0xa0]
049ba7e0  str q0,[x9,w29, sxtw #4]
049ba7e4  add w29,w29,#0x2
049ba7e8  ldr x9,[sp, #0xa0]
049ba7ec  str q0,[x9,x8, lsl #4]
049ba7f0  ldr x0,[x19, #0x140]
049ba7f4  cbnz x0,0x049ba49c
049ba7f8  bl 0x029f5cfc
049ba7fc  sub w8,w8,#0x1
049ba800  cmp w8,#0x1
049ba804  b.lt 0x049ba86c
049ba808  ldr x9,[sp, #0x90]
049ba80c  mov x8,xzr
049ba810  mov w10,#0x5
049ba814  mov w11,#0x3
049ba818  sub w12,w10,#0x5
049ba81c  sub w13,w11,#0x3
049ba820  sub w14,w10,#0x4
049ba824  str w13,[x9, w12, SXTW #0x2]
049ba828  sub w13,w10,#0x3
049ba82c  sub w12,w11,#0x2
049ba830  str w12,[x9, w14, SXTW #0x2]
049ba834  sub w14,w11,#0x1
049ba838  add x8,x8,#0x1
049ba83c  str w14,[x9, w13, SXTW #0x2]
049ba840  sub w13,w10,#0x2
049ba844  str w14,[x9, w13, SXTW #0x2]
049ba848  sub w13,w10,#0x1
049ba84c  str w12,[x9, w13, SXTW #0x2]
049ba850  str w11,[x9, w10, SXTW #0x2]
049ba854  add w10,w10,#0x6
049ba858  add w11,w11,#0x2
049ba85c  ldr w12,[x0, #0x18]
049ba860  sub w12,w12,#0x1
049ba864  cmp x8,w12, SXTW 
049ba868  b.lt 0x049ba818
049ba86c  ldr x0,[x19, #0x10]
049ba870  ldr s15,[sp, #0x1c]
049ba874  cbz x0,0x049ba7f8
049ba878  bl 0x049bb058
049ba87c  cbz x0,0x049ba7f8
049ba880  ldp x5,x6,[sp, #0xa0]
049ba884  ldp x3,x4,[sp, #0x90]
049ba888  ldp x1,x2,[sp, #0xb0]
049ba88c  bl 0x049bb314
049ba890  ldr x0,[x19, #0x140]
049ba894  cbz x0,0x049ba7f8
049ba898  ldr x2,[x26]
049ba89c  ldr s8,[x19, #0x60]
049ba8a0  mov w1,wzr
049ba8a4  bl 0x0344c6f4
049ba8a8  ldr x8,[x19, #0x10]
049ba8ac  cbz x8,0x049ba7f8
049ba8b0  ldr s0,[x8, #0x3168]
049ba8b4  ldr q6,[sp, #0x20]
049ba8b8  fadd s0,s2,s0
049ba8bc  fcmp s8,s0
049ba8c0  b.lt 0x049ba910
049ba8c4  ldr x0,[x19, #0x140]
049ba8c8  cbz x0,0x049ba7f8
049ba8cc  adrp x8,0x5e85000
049ba8d0  mov w1,wzr
049ba8d4  ldr x8,[x8, #0xec0]
049ba8d8  ldr x2,[x8]
049ba8dc  bl 0x0344e27c
049ba8e0  ldr x0,[x19, #0x140]
049ba8e4  cbz x0,0x049ba7f8
049ba8e8  ldr w8,[x0, #0x18]
049ba8ec  ldr q6,[sp, #0x20]
049ba8f0  cmp w8,#0x1
049ba8f4  b.lt 0x049ba910
049ba8f8  ldr x2,[x26]
049ba8fc  mov w1,wzr
049ba900  bl 0x0344c6f4
049ba904  ldr q6,[sp, #0x20]
049ba908  str s0,[x19, #0x158]
049ba90c  str s1,[x19, #0x15c]
049ba910  ldr s0,[x19, #0x60]
049ba914  ldr s1,[x19, #0x78]
049ba918  add x24,sp,#0x180
049ba91c  ldr x20,[sp, #0x10]
049ba920  fcmp s0,s1
049ba924  b.pl 0x049baa20
049ba928  ldrb w8,[x19, #0x12c]
049ba92c  cbz w8,0x049baa20
049ba930  ldr d0,[x20, #0x8]
049ba934  ldr d1,[x19, #0x28]
049ba938  ldrb w8,[x25, #0x52c]
049ba93c  fsub v8.2S,v0.2S,v1.2S
049ba940  str d8,[x20, #0x10]
049ba944  cbnz w8,0x049ba964
049ba948  adrp x0,0x5e59000
049ba94c  ldr x0,[x0]
049ba950  bl 0x029f5a50
049ba954  ldr q6,[sp, #0x20]
049ba958  ldr d8,[x20, #0x10]
049ba95c  mov w8,#0x1
049ba960  strb w8,[x25, #0x52c]
049ba964  adrp x8,0x5e59000
049ba968  ldr x8,[x8]
049ba96c  ldr x0,[x8]
049ba970  ldr w8,[x0, #0xe4]
049ba974  cbnz w8,0x049ba980
049ba978  bl 0x029f5bd0
049ba97c  ldr q6,[sp, #0x20]
049ba980  ldr x8,[x19, #0x10]
049ba984  cbz x8,0x049ba7f8
049ba988  fmul v0.2S,v8.2S,v8.2S
049ba98c  ldr s1,[x8, #0x316c]
049ba990  faddp s0,v0.2S
049ba994  fsqrt s0,s0
049ba998  fcmp s0,s1
049ba99c  b.le 0x049baa20
049ba9a0  ldr x8,[x19, #0x28]
049ba9a4  ldr x0,[x19, #0x140]
049ba9a8  str x8,[x20, #0x8]
049ba9ac  cbz x0,0x049ba7f8
049ba9b0  adrp x10,0x5e85000
049ba9b4  ldr x10,[x10, #0xeb0]
049ba9b8  ldr w12,[x0, #0x1c]
049ba9bc  ldr x9,[x0, #0x10]
049ba9c0  ldr s2,[x19, #0x60]
049ba9c4  ldr x11,[x10]
049ba9c8  add w10,w12,#0x1
049ba9cc  str w10,[x0, #0x1c]
049ba9d0  cbz x9,0x049ba7f8
049ba9d4  ldrsw x12,[x0, #0x18]
049ba9d8  ldr w13,[x9, #0x18]
049ba9dc  lsr x10,x8,#0x20
049ba9e0  cmp w12,w13
049ba9e4  b.cs 0x049baa04
049ba9e8  mov w11,#0xc
049ba9ec  smaddl x9,w12,w11,x9
049ba9f0  add w11,w12,#0x1
049ba9f4  str w11,[x0, #0x18]
049ba9f8  stp w8,w10,[x9, #0x20]
049ba9fc  str s2,[x9, #0x28]
049baa00  b 0x049baa20
049baa04  ldr x9,[x11, #0x20]
049baa08  fmov s1,w10
049baa0c  fmov s0,w8
049baa10  ldr x9,[x9, #0xc0]
049baa14  ldr x1,[x9, #0x70]
049baa18  bl 0x0344ca24
049baa1c  ldr q6,[sp, #0x20]
049baa20  ldr x8,[x19, #0x10]
049baa24  cbz x8,0x049ba7f8
049baa28  ldr w9,[x8, #0x6e4]
049baa2c  ldr w20,[x8, #0x6f0]
049baa30  cbz w9,0x049bab44
049baa34  cmp w9,#0x2
049baa38  b.eq 0x049bab04
049baa3c  cmp w9,#0x1
049baa40  b.ne 0x049babc8
049baa44  ldrb w8,[x25, #0x52c]
049baa48  cbnz w8,0x049baa60
049baa4c  adrp x0,0x5e59000
049baa50  ldr x0,[x0]
049baa54  bl 0x029f5a50
049baa58  mov w8,#0x1
049baa5c  strb w8,[x25, #0x52c]
049baa60  adrp x8,0x5e59000
049baa64  ldr x8,[x8]
049baa68  ldr d8,[x19, #0x40]
049baa6c  ldr x0,[x8]
049baa70  ldr w8,[x0, #0xe4]
049baa74  cbnz w8,0x049baa7c
049baa78  bl 0x029f5bd0
049baa7c  ldr x8,[x19, #0x10]
049baa80  cbz x8,0x049ba7f8
049baa84  fmul v0.2S,v8.2S,v8.2S
049baa88  ldr s2,[x8, #0x73c]
049baa8c  ldr s1,[x8, #0x738]
049baa90  mov w9,#0x7f800000
049baa94  fabs s4,s2
049baa98  fsub s3,s2,s1
049baa9c  fabs s5,s1
049baaa0  faddp s0,v0.2S
049baaa4  fmov w8,s4
049baaa8  fsqrt s0,s0
049baaac  cmp w8,w9
049baab0  mov w8,#0x35800000
049baab4  fccmp s5,s4,#0x0,ls
049baab8  fsub s0,s0,s1
049baabc  fabd s1,s2,s1
049baac0  fdiv s0,s0,s3
049baac4  fcsel s3,s5,s4,gt
049baac8  scvtf s4,w20
049baacc  fmov s5,w8
049baad0  fmul s3,s3,s15
049baad4  fmaxnm s3,s3,s5
049baad8  fcmp s1,s3
049baadc  fmov s1,w9
049baae0  mov w9,#0x80000000
049baae4  fmul s0,s0,s4
049baae8  movi d4,#0x0
049baaec  fadd s0,s0,s4
049baaf0  fcsel s0,s2,s0,mi
049baaf4  fcvtzs w8,s0
049baaf8  fcmp s0,s1
049baafc  csel w8,w9,w8,eq
049bab00  b 0x049babc4
049bab04  ldr s0,[x8, #0x740]
049bab08  fmov s1,0x3f800000
049bab0c  scvtf s0,s0
049bab10  fdiv s0,s1,s0
049bab14  ldr s1,[x19, #0x130]
049bab18  fadd s1,s1,s6
049bab1c  str s1,[x19, #0x130]
049bab20  fcmp s1,s0
049bab24  b.lt 0x049babc8
049bab28  ldr w8,[x19, #0x134]
049bab2c  fsub s1,s1,s0
049bab30  add w8,w8,#0x1
049bab34  fcmp s1,s0
049bab38  b.ge 0x049bab2c
049bab3c  str s1,[x19, #0x130]
049bab40  b 0x049babc4
049bab44  add x8,x8,#0x6f8
049bab48  ldr s0,[x19, #0x64]
049bab4c  ldr s1,[x19, #0xbc]
049bab50  ldp q2,q3,[x8]
049bab54  add x0,sp,#0x180
049bab58  mov x1,xzr
049bab5c  stp q2,q3,[x24]
049bab60  bl 0x058623c8
049bab64  ldr x8,[x19, #0x10]
049bab68  cbz x8,0x049ba7f8
049bab6c  add x9,x8,#0x718
049bab70  fmov s8,s0
049bab74  ldr s0,[x19, #0x64]
049bab78  ldp q2,q3,[x9]
049bab7c  ldr s1,[x19, #0xc8]
049bab80  ldr s9,[x8, #0x744]
049bab84  add x0,sp,#0x180
049bab88  mov x1,xzr
049bab8c  stp q2,q3,[x24]
049bab90  bl 0x058623c8
049bab94  scvtf s1,s9
049bab98  mov w8,#0x7f800000
049bab9c  fcvtzs w10,s0
049baba0  fmov s2,w8
049baba4  mov w8,#0x80000000
049baba8  fmul s1,s8,s1
049babac  fcvtzs w9,s1
049babb0  fcmp s1,s2
049babb4  csel w9,w8,w9,eq
049babb8  fcmp s0,s2
049babbc  csel w8,w8,w10,eq
049babc0  add w8,w8,w9
049babc4  str w8,[x19, #0x134]
049babc8  ldr s0,[x19, #0x134]
049babcc  scvtf s1,w20
049babd0  mov w8,#0x7f800000
049babd4  mov w10,#0x80000000
049babd8  scvtf s0,s0
049babdc  fdiv s2,s0,s1
049babe0  frintm s2,s2
049babe4  fmul s2,s2,s1
049babe8  fsub s0,s0,s2
049babec  movi d2,#0x0
049babf0  fcmp s0,s1
049babf4  fcsel s1,s1,s0,gt
049babf8  fcmp s0,#0.0
049babfc  fcsel s0,s2,s1,mi
049bac00  fmov s1,w8
049bac04  ldr x8,[x19, #0x150]
049bac08  fcvtzs w9,s0
049bac0c  fcmp s0,s1
049bac10  csel w9,w10,w9,eq
049bac14  str w9,[x19, #0x138]
049bac18  cbz x8,0x049ba7f8
049bac1c  ldr w9,[x8, #0x18]
049bac20  cbz w9,0x049badc0
049bac24  movi v0.2S,#0x3f, LSL #24
049bac28  ldur d1,[x19, #0x7c]
049bac2c  fmul v0.2S,v1.2S,v0.2S
049bac30  str d0,[x8, #0x20]
049bac34  ldr x8,[x19, #0x150]
049bac38  cbz x8,0x049ba7f8
049bac3c  ldr w9,[x8, #0x18]
049bac40  tst w9,#0xfffffffe
049bac44  b.eq 0x049badc0
049bac48  adrp x9,0x1170000
049bac4c  ldur d0,[x19, #0x7c]
049bac50  ldr d1,[x9, #0x5b8]
049bac54  fmul v0.2S,v0.2S,v1.2S
049bac58  str d0,[x8, #0x28]
049bac5c  ldr x8,[x19, #0x150]
049bac60  cbz x8,0x049ba7f8
049bac64  ldr w9,[x8, #0x18]
049bac68  cmp w9,#0x2
049bac6c  b.ls 0x049badc0
049bac70  movi v0.2S,#0xbf, LSL #24
049bac74  ldur d1,[x19, #0x7c]
049bac78  fmul v0.2S,v1.2S,v0.2S
049bac7c  str d0,[x8, #0x30]
049bac80  ldr x8,[x19, #0x150]
049bac84  cbz x8,0x049ba7f8
049bac88  ldr w9,[x8, #0x18]
049bac8c  tst w9,#0xfffffffc
049bac90  b.eq 0x049badc0
049bac94  adrp x9,0x116f000
049bac98  ldur d0,[x19, #0x7c]
049bac9c  ldr d1,[x9, #0xc40]
049baca0  fmul v0.2S,v0.2S,v1.2S
049baca4  str d0,[x8, #0x38]
049baca8  ldp s0,s1,[x19, #0x98]
049bacac  ldr x1,[x19, #0x150]
049bacb0  ldr s2,[x19, #0xa0]
049bacb4  bl 0x049bb550
049bacb8  ldr x8,[x19, #0x150]
049bacbc  cbz x8,0x049ba7f8
049bacc0  ldr w9,[x8, #0x18]
049bacc4  cbz w9,0x049badc0
049bacc8  ldr x9,[x19, #0x148]
049baccc  cbz x9,0x049ba7f8
049bacd0  ldr w10,[x9, #0x18]
049bacd4  cbz w10,0x049badc0
049bacd8  ldr d0,[x19, #0x28]
049bacdc  ldr d1,[x8, #0x20]
049bace0  fadd v0.2S,v0.2S,v1.2S
049bace4  str d0,[x9, #0x20]
049bace8  ldr x8,[x19, #0x150]
049bacec  cbz x8,0x049ba7f8
049bacf0  ldr w9,[x8, #0x18]
049bacf4  tst w9,#0xfffffffe
049bacf8  b.eq 0x049badc0
049bacfc  ldr x9,[x19, #0x148]
049bad00  cbz x9,0x049ba7f8
049bad04  ldr w10,[x9, #0x18]
049bad08  tst w10,#0xfffffffe
049bad0c  b.eq 0x049badc0
049bad10  ldr d0,[x19, #0x28]
049bad14  ldr d1,[x8, #0x28]
049bad18  fadd v0.2S,v0.2S,v1.2S
049bad1c  str d0,[x9, #0x28]
049bad20  ldr x8,[x19, #0x150]
049bad24  cbz x8,0x049ba7f8
049bad28  ldr w9,[x8, #0x18]
049bad2c  cmp w9,#0x2
049bad30  b.ls 0x049badc0
049bad34  ldr x9,[x19, #0x148]
049bad38  cbz x9,0x049ba7f8
049bad3c  ldr w10,[x9, #0x18]
049bad40  cmp w10,#0x2
049bad44  b.ls 0x049badc0
049bad48  ldr d0,[x19, #0x28]
049bad4c  ldr d1,[x8, #0x30]
049bad50  fadd v0.2S,v0.2S,v1.2S
049bad54  str d0,[x9, #0x30]
049bad58  ldr x8,[x19, #0x150]
049bad5c  cbz x8,0x049ba7f8
049bad60  ldr w9,[x8, #0x18]
049bad64  tst w9,#0xfffffffc
049bad68  b.eq 0x049badc0
049bad6c  ldr x9,[x19, #0x148]
049bad70  cbz x9,0x049ba7f8
049bad74  ldr w10,[x9, #0x18]
049bad78  tst w10,#0xfffffffc
049bad7c  b.eq 0x049badc0
049bad80  ldr d0,[x19, #0x28]
049bad84  ldr d1,[x8, #0x38]
049bad88  fadd v0.2S,v0.2S,v1.2S
049bad8c  str d0,[x9, #0x38]
049bad90  add sp,sp,#0x1a0
049bad94  ldp x20,x19,[sp, #0x90]
049bad98  ldp x22,x21,[sp, #0x80]
049bad9c  ldp x24,x23,[sp, #0x70]
049bada0  ldp x26,x25,[sp, #0x60]
049bada4  ldp x28,x27,[sp, #0x50]
049bada8  ldp x29,x30,[sp, #0x40]
049badac  ldp d9,d8,[sp, #0x30]
049badb0  ldp d11,d10,[sp, #0x20]
049badb4  ldp d13,d12,[sp, #0x10]
049badb8  ldp d15,d14,[sp], #0xa0
049badbc  ret
049badc0  bl 0x029f5d04
