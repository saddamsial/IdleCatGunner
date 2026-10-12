049b8834  sub sp,sp,#0xb0
049b8838  stp d15,d14,[sp, #0x40]
049b883c  stp d13,d12,[sp, #0x50]
049b8840  stp d11,d10,[sp, #0x60]
049b8844  stp d9,d8,[sp, #0x70]
049b8848  str x30,[sp, #0x80]
049b884c  stp x22,x21,[sp, #0x90]
049b8850  stp x20,x19,[sp, #0xa0]
049b8854  fmov s14,s0
049b8858  ldr s0,[sp, #0xd0]
049b885c  fmov s13,s1
049b8860  ldp s7,s10,[sp, #0xb0]
049b8864  adrp x20,0x6262000
049b8868  stp s0,s5,[sp, #0x88]
049b886c  ldp s11,s0,[sp, #0xb8]
049b8870  ldp s9,s8,[sp, #0xc0]
049b8874  mov x19,x0
049b8878  ldrb w8,[x20, #0x829]
049b887c  ldr s12,[sp, #0xc8]
049b8880  stp s6,s4,[sp, #0x18]
049b8884  stp s2,s3,[sp, #0x10]
049b8888  stp s7,s0,[sp, #0x8]
049b888c  tbnz w8,#0x0,0x049b88b0
049b8890  adrp x0,0x5e85000
049b8894  ldr x0,[x0, #0xeb0]
049b8898  bl 0x029f5a50
049b889c  adrp x0,0x5e85000
049b88a0  ldr x0,[x0, #0xeb8]
049b88a4  bl 0x029f5a50
049b88a8  mov w8,#0x1
049b88ac  strb w8,[x20, #0x829]
049b88b0  movi v0.2D,#0x0
049b88b4  mov x0,xzr
049b88b8  stp q0,q0,[sp, #0x20]
049b88bc  bl 0x057d569c
049b88c0  mov x0,xzr
049b88c4  str s0,[x19, #0xa4]
049b88c8  bl 0x057d569c
049b88cc  mov x0,xzr
049b88d0  str s0,[x19, #0xa8]
049b88d4  bl 0x057d569c
049b88d8  mov x0,xzr
049b88dc  str s0,[x19, #0xac]
049b88e0  bl 0x057d569c
049b88e4  mov x0,xzr
049b88e8  str s0,[x19, #0xb0]
049b88ec  bl 0x057d569c
049b88f0  mov x0,xzr
049b88f4  str s0,[x19, #0xb4]
049b88f8  bl 0x057d569c
049b88fc  mov x0,xzr
049b8900  str s0,[x19, #0xb8]
049b8904  bl 0x057d569c
049b8908  mov x0,xzr
049b890c  str s0,[x19, #0xc8]
049b8910  bl 0x057d569c
049b8914  mov x0,xzr
049b8918  str s0,[x19, #0xbc]
049b891c  bl 0x057d569c
049b8920  mov x0,xzr
049b8924  str s0,[x19, #0xc0]
049b8928  bl 0x057d569c
049b892c  mov x0,xzr
049b8930  str s0,[x19, #0xc4]
049b8934  bl 0x057d569c
049b8938  mov x0,xzr
049b893c  str s0,[x19, #0xcc]
049b8940  bl 0x057d569c
049b8944  mov x0,xzr
049b8948  fmov s15,s0
049b894c  bl 0x057d569c
049b8950  mov x20,x19
049b8954  str s9,[x20, #0x54]!
049b8958  mov x21,x20
049b895c  stp s15,s0,[x20, #0x7c]
049b8960  ldp s1,s0,[sp, #0x10]
049b8964  ldur x0,[x20, #-0x3c]
049b8968  stp s14,s13,[x20, #-0x2c]
049b896c  stp s10,s11,[x20, #0x18]
049b8970  stp s1,s0,[x20, #-0x24]
049b8974  ldp s1,s2,[sp, #0x18]
049b8978  ldr s0,[sp, #0x8]
049b897c  stp s8,s12,[x20, #0x4]
049b8980  str s0,[x21, #0x14]!
049b8984  ldr s0,[sp, #0x8c]
049b8988  stur s1,[x20, #-0x4]
049b898c  ldr s1,[sp, #0xc]
049b8990  ldur w8,[x20, #-0x4]
049b8994  stp s2,s0,[x20, #-0xc]
049b8998  ldr s0,[sp, #0x88]
049b899c  str w8,[x20, #0x4c]
049b89a0  ldur x8,[x20, #-0xc]
049b89a4  stp s1,s0,[x20, #0x20]
049b89a8  stur x8,[x20, #0x44]
049b89ac  cbz x0,0x049b8c74
049b89b0  mov x1,xzr
049b89b4  bl 0x057eed98
049b89b8  adrp x22,0x625b000
049b89bc  ldr x8,[x19, #0x28]
049b89c0  stp s0,s1,[x19, #0xd8]
049b89c4  ldrb w9,[x22, #0x271]
049b89c8  str s2,[x19, #0xe0]
049b89cc  str x8,[x19, #0x20]
049b89d0  cbnz w9,0x049b89e8
049b89d4  adrp x0,0x5e59000
049b89d8  ldr x0,[x0, #0x608]
049b89dc  bl 0x029f5a50
049b89e0  mov w8,#0x1
049b89e4  strb w8,[x22, #0x271]
049b89e8  adrp x8,0x5e59000
049b89ec  adrp x22,0x625b000
049b89f0  ldr s8,[sp, #0xd8]
049b89f4  ldr x8,[x8, #0x608]
049b89f8  ldr x8,[x8]
049b89fc  ldr x9,[x8, #0xb8]
049b8a00  ldr d0,[x9]
049b8a04  str d0,[x19, #0x40]
049b8a08  ldr x9,[x8, #0xb8]
049b8a0c  ldr d0,[x9]
049b8a10  ldrb w9,[x22, #0x26f]
049b8a14  str d0,[x19, #0x38]
049b8a18  ldr x8,[x8, #0xb8]
049b8a1c  ldr d0,[x8]
049b8a20  str d0,[x19, #0x108]
049b8a24  cbnz w9,0x049b8a3c
049b8a28  adrp x0,0x5e58000
049b8a2c  ldr x0,[x0, #0xbf8]
049b8a30  bl 0x029f5a50
049b8a34  mov w8,#0x1
049b8a38  strb w8,[x22, #0x26f]
049b8a3c  adrp x8,0x5e58000
049b8a40  ldr x8,[x8, #0xbf8]
049b8a44  ldr x10,[x19, #0x28]
049b8a48  ldr x8,[x8]
049b8a4c  ldr x9,[x8, #0xb8]
049b8a50  ldr d0,[x9]
049b8a54  ldr s1,[x9, #0x8]
049b8a58  ldr w9,[x20, #0x8]
049b8a5c  stur d0,[x19, #0xf4]
049b8a60  ldr q0,[x21]
049b8a64  str s1,[x19, #0xfc]
049b8a68  ldr x8,[x8, #0xb8]
049b8a6c  ldr s1,[x8, #0x8]
049b8a70  ldr d2,[x8]
049b8a74  ldr x8,[x20]
049b8a78  stur q0,[x19, #0x88]
049b8a7c  stur x8,[x19, #0x7c]
049b8a80  ldr x8,[x19, #0x10]
049b8a84  str w9,[x19, #0x84]
049b8a88  str x10,[x19, #0x100]
049b8a8c  str s8,[x19, #0x60]
049b8a90  str wzr,[x19, #0x64]
049b8a94  str d2,[x19, #0x110]
049b8a98  str s1,[x19, #0x118]
049b8a9c  str wzr,[x19, #0x134]
049b8aa0  cbz x8,0x049b8c74
049b8aa4  ldr s0,[x19, #0x78]
049b8aa8  adrp x9,0x116c000
049b8aac  movi d4,#0x0
049b8ab0  ldr s2,[x9, #0x1e4]
049b8ab4  mov w20,#0x7f800000
049b8ab8  add x8,x8,#0x718
049b8abc  fabs s1,s0
049b8ac0  fdiv s3,s8,s0
049b8ac4  add x0,sp,#0x20
049b8ac8  mov x1,xzr
049b8acc  fmul s2,s1,s2
049b8ad0  fmov w9,s1
049b8ad4  cmp w9,w20
049b8ad8  mov w9,#0x35800000
049b8adc  fcsel s2,s4,s2,hi
049b8ae0  fmov s5,w9
049b8ae4  fmaxnm s2,s2,s5
049b8ae8  fadd s3,s3,s4
049b8aec  fcmp s1,s2
049b8af0  ldr s1,[x19, #0xc8]
049b8af4  fcsel s0,s0,s3,mi
049b8af8  ldp q2,q3,[x8]
049b8afc  stp q2,q3,[sp, #0x20]
049b8b00  bl 0x058623c8
049b8b04  fmov s1,w20
049b8b08  fcvtzs w9,s0
049b8b0c  mov w10,#0x80000000
049b8b10  ldr x8,[x19, #0x150]
049b8b14  fcmp s0,s1
049b8b18  csel w9,w10,w9,eq
049b8b1c  str w9,[x19, #0x134]
049b8b20  cbz x8,0x049b8c74
049b8b24  ldr w9,[x8, #0x18]
049b8b28  cbz w9,0x049b8c78
049b8b2c  movi v0.2S,#0x3f, LSL #24
049b8b30  ldur d1,[x19, #0x7c]
049b8b34  fmul v0.2S,v1.2S,v0.2S
049b8b38  str d0,[x8, #0x20]
049b8b3c  ldr x8,[x19, #0x150]
049b8b40  cbz x8,0x049b8c74
049b8b44  ldr w9,[x8, #0x18]
049b8b48  tst w9,#0xfffffffe
049b8b4c  b.eq 0x049b8c78
049b8b50  adrp x9,0x1170000
049b8b54  ldur d0,[x19, #0x7c]
049b8b58  ldr d1,[x9, #0x5b8]
049b8b5c  fmul v0.2S,v0.2S,v1.2S
049b8b60  str d0,[x8, #0x28]
049b8b64  ldr x8,[x19, #0x150]
049b8b68  cbz x8,0x049b8c74
049b8b6c  ldr w9,[x8, #0x18]
049b8b70  cmp w9,#0x2
049b8b74  b.ls 0x049b8c78
049b8b78  movi v0.2S,#0xbf, LSL #24
049b8b7c  ldur d1,[x19, #0x7c]
049b8b80  fmul v0.2S,v1.2S,v0.2S
049b8b84  str d0,[x8, #0x30]
049b8b88  ldr x8,[x19, #0x150]
049b8b8c  cbz x8,0x049b8c74
049b8b90  ldr w9,[x8, #0x18]
049b8b94  tst w9,#0xfffffffc
049b8b98  b.eq 0x049b8c78
049b8b9c  adrp x9,0x116f000
049b8ba0  ldur d0,[x19, #0x7c]
049b8ba4  ldr d1,[x9, #0xc40]
049b8ba8  fmul v0.2S,v0.2S,v1.2S
049b8bac  str d0,[x8, #0x38]
049b8bb0  ldr x8,[x19, #0x10]
049b8bb4  cbz x8,0x049b8c74
049b8bb8  mov w9,#0x3140
049b8bbc  ldrb w8,[x8, x9, LSL ]
049b8bc0  cbz w8,0x049b8c50
049b8bc4  ldr x0,[x19, #0x140]
049b8bc8  cbz x0,0x049b8c74
049b8bcc  ldr w10,[x0, #0x1c]
049b8bd0  adrp x9,0x5e85000
049b8bd4  add w8,w10,#0x1
049b8bd8  add w10,w10,#0x2
049b8bdc  str w8,[x0, #0x1c]
049b8be0  ldr x9,[x9, #0xeb0]
049b8be4  str wzr,[x0, #0x18]
049b8be8  ldr x8,[x0, #0x10]
049b8bec  ldp s0,s1,[x19, #0x28]
049b8bf0  str w10,[x0, #0x1c]
049b8bf4  ldr x9,[x9]
049b8bf8  cbz x8,0x049b8c74
049b8bfc  ldr w10,[x8, #0x18]
049b8c00  cbz w10,0x049b8c18
049b8c04  mov w9,#0x1
049b8c08  str w9,[x0, #0x18]
049b8c0c  stp s0,s1,[x8, #0x20]
049b8c10  str wzr,[x8, #0x28]
049b8c14  b 0x049b8c2c
049b8c18  ldr x8,[x9, #0x20]
049b8c1c  movi d2,#0x0
049b8c20  ldr x8,[x8, #0xc0]
049b8c24  ldr x1,[x8, #0x70]
049b8c28  bl 0x0344ca24
049b8c2c  ldr x9,[x19, #0x28]
049b8c30  ldr x8,[x19, #0x10]
049b8c34  str x9,[x19, #0x158]
049b8c38  cbz x8,0x049b8c74
049b8c3c  ldr s0,[x19, #0xcc]
049b8c40  ldr s1,[x8, #0x31ec]
049b8c44  fcmp s0,s1
049b8c48  cset w8,ls
049b8c4c  strb w8,[x19, #0x12c]
049b8c50  ldp x20,x19,[sp, #0xa0]
049b8c54  ldr x30,[sp, #0x80]
049b8c58  ldp x22,x21,[sp, #0x90]
049b8c5c  ldp d9,d8,[sp, #0x70]
049b8c60  ldp d11,d10,[sp, #0x60]
049b8c64  ldp d13,d12,[sp, #0x50]
049b8c68  ldp d15,d14,[sp, #0x40]
049b8c6c  add sp,sp,#0xb0
049b8c70  ret
049b8c74  bl 0x029f5cfc
049b8c78  bl 0x029f5d04
