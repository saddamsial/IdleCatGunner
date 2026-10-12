02c077b0  stp d15,d14,[sp, #-0xa0]!
02c077b4  stp d13,d12,[sp, #0x10]
02c077b8  stp d11,d10,[sp, #0x20]
02c077bc  stp d9,d8,[sp, #0x30]
02c077c0  stp x29,x30,[sp, #0x40]
02c077c4  stp x28,x27,[sp, #0x50]
02c077c8  stp x26,x25,[sp, #0x60]
02c077cc  stp x24,x23,[sp, #0x70]
02c077d0  stp x22,x21,[sp, #0x80]
02c077d4  stp x20,x19,[sp, #0x90]
02c077d8  sub sp,sp,#0x6b0
02c077dc  str w7,[sp, #0x4c]
02c077e0  adrp x20,0x625b000
02c077e4  adrp x21,0x5e62000
02c077e8  ldrb w8,[x20, #0xe7f]
02c077ec  ldr x21,[x21, #0x40]
02c077f0  mov x25,x6
02c077f4  mov x28,x5
02c077f8  mov w29,w4
02c077fc  mov w19,w3
02c07800  mov w24,w2
02c07804  mov w26,w1
02c07808  mov w27,w0
02c0780c  tbnz w8,#0x0,0x02c07884
02c07810  adrp x0,0x5e62000
02c07814  ldr x0,[x0, #0x98]
02c07818  bl 0x029f5a50
02c0781c  adrp x0,0x5e5d000
02c07820  ldr x0,[x0, #0xd40]
02c07824  bl 0x029f5a50
02c07828  adrp x0,0x5e59000
02c0782c  ldr x0,[x0]
02c07830  bl 0x029f5a50
02c07834  adrp x0,0x5e59000
02c07838  ldr x0,[x0, #0x1c0]
02c0783c  bl 0x029f5a50
02c07840  adrp x0,0x5e62000
02c07844  ldr x0,[x0, #0x40]
02c07848  bl 0x029f5a50
02c0784c  adrp x0,0x5e5d000
02c07850  ldr x0,[x0, #0x4d0]
02c07854  bl 0x029f5a50
02c07858  adrp x0,0x5e62000
02c0785c  ldr x0,[x0, #0xa0]
02c07860  bl 0x029f5a50
02c07864  adrp x0,0x5e62000
02c07868  ldr x0,[x0, #0xa8]
02c0786c  bl 0x029f5a50
02c07870  adrp x0,0x5e62000
02c07874  ldr x0,[x0, #0xb0]
02c07878  bl 0x029f5a50
02c0787c  mov w8,#0x1
02c07880  strb w8,[x20, #0xe7f]
02c07884  movi v0.2D,#0x0
02c07888  ldr x0,[x21]
02c0788c  ldr w8,[x0, #0xe4]
02c07890  str q0,[sp, #0x6a0]
02c07894  str q0,[sp, #0x690]
02c07898  str q0,[sp, #0x680]
02c0789c  str q0,[sp, #0x670]
02c078a0  str q0,[sp, #0x660]
02c078a4  str q0,[sp, #0x650]
02c078a8  str q0,[sp, #0x640]
02c078ac  str q0,[sp, #0x630]
02c078b0  str q0,[sp, #0x620]
02c078b4  str q0,[sp, #0x610]
02c078b8  str q0,[sp, #0x600]
02c078bc  str q0,[sp, #0x5f0]
02c078c0  str q0,[sp, #0x5e0]
02c078c4  str q0,[sp, #0x5d0]
02c078c8  str q0,[sp, #0x5c0]
02c078cc  str q0,[sp, #0x5b0]
02c078d0  str q0,[sp, #0x5a0]
02c078d4  str q0,[sp, #0x590]
02c078d8  str q0,[sp, #0x580]
02c078dc  str q0,[sp, #0x570]
02c078e0  str q0,[sp, #0x560]
02c078e4  str q0,[sp, #0x550]
02c078e8  str q0,[sp, #0x540]
02c078ec  str q0,[sp, #0x530]
02c078f0  cbnz w8,0x02c078f8
02c078f4  bl 0x029f5bd0
02c078f8  add w8,w24,w24, LSL #0x2
02c078fc  mov w9,#0x64
02c07900  movi d13,#0x0
02c07904  lsl w22,w8,#0x1
02c07908  add w8,w22,#0x1e
02c0790c  cmp w8,#0x64
02c07910  csel w8,w8,w9,lt
02c07914  mov w9,#0x1e
02c07918  cmp w8,#0x1e
02c0791c  csel w8,w8,w9,gt
02c07920  cmp w19,#0x4
02c07924  madd w20,w8,w19,w8
02c07928  cset w8,eq
02c0792c  orr w8,w20,w8
02c07930  cmp w8,#0x1
02c07934  b.lt 0x02c07a94
02c07938  ldr x0,[x21]
02c0793c  ldr w8,[x0, #0xe4]
02c07940  cbnz w8,0x02c07948
02c07944  bl 0x029f5bd0
02c07948  add x8,sp,#0x510
02c0794c  mov w0,w24
02c07950  bl 0x02c08714
02c07954  ldr q0,[sp, #0x510]
02c07958  ldr q1,[sp, #0x520]
02c0795c  mov w0,w19
02c07960  str q0,[sp, #0x610]
02c07964  str q1,[sp, #0x620]
02c07968  bl 0x02c088b0
02c0796c  add x8,sp,#0x4f0
02c07970  bl 0x02c089ac
02c07974  ldr q0,[sp, #0x4f0]
02c07978  ldr q1,[sp, #0x500]
02c0797c  add x8,sp,#0x4d0
02c07980  add x0,sp,#0x610
02c07984  add x1,sp,#0x5f0
02c07988  mov x2,xzr
02c0798c  str q0,[sp, #0x5f0]
02c07990  str q1,[sp, #0x600]
02c07994  bl 0x04658538
02c07998  ldr q0,[sp, #0x4d0]
02c0799c  ldr q1,[sp, #0x4e0]
02c079a0  add x8,sp,#0x4b0
02c079a4  mov w0,wzr
02c079a8  mov x1,xzr
02c079ac  str q0,[sp, #0x690]
02c079b0  str q1,[sp, #0x6a0]
02c079b4  bl 0x046544b8
02c079b8  ldr q0,[sp, #0x4b0]
02c079bc  ldr q1,[sp, #0x4c0]
02c079c0  add x0,sp,#0x690
02c079c4  add x1,sp,#0x610
02c079c8  mov x2,xzr
02c079cc  str q0,[sp, #0x610]
02c079d0  str q1,[sp, #0x620]
02c079d4  bl 0x0465468c
02c079d8  tbz w0,#0x0,0x02c079fc
02c079dc  add x8,sp,#0x510
02c079e0  mov w0,#0x1
02c079e4  mov x1,xzr
02c079e8  bl 0x046544b8
02c079ec  ldr q0,[sp, #0x510]
02c079f0  ldr q1,[sp, #0x520]
02c079f4  str q0,[sp, #0x690]
02c079f8  str q1,[sp, #0x6a0]
02c079fc  cmp w19,#0x4
02c07a00  str w20,[sp, #0x30]
02c07a04  b.ne 0x02c07a9c
02c07a08  ldr x0,[x21]
02c07a0c  ldr w8,[x0, #0xe4]
02c07a10  cbnz w8,0x02c07a18
02c07a14  bl 0x029f5bd0
02c07a18  add x8,sp,#0x510
02c07a1c  mov w0,w24
02c07a20  bl 0x02c08714
02c07a24  ldr x8,[x21]
02c07a28  ldr q0,[sp, #0x520]
02c07a2c  ldr q1,[sp, #0x510]
02c07a30  ldr x8,[x8, #0xb8]
02c07a34  str q0,[sp, #0x620]
02c07a38  str q1,[sp, #0x610]
02c07a3c  ldr x8,[x8]
02c07a40  cbz x8,0x02c086e0
02c07a44  ldr w9,[x8, #0x18]
02c07a48  tst w9,#0xfffffffc
02c07a4c  b.eq 0x02c086e4
02c07a50  ldr d0,[x8, #0x38]
02c07a54  add x8,sp,#0x4f0
02c07a58  bl 0x02c089ac
02c07a5c  ldr q0,[sp, #0x4f0]
02c07a60  ldr q1,[sp, #0x500]
02c07a64  add x8,sp,#0x4d0
02c07a68  add x0,sp,#0x610
02c07a6c  add x1,sp,#0x5f0
02c07a70  mov x2,xzr
02c07a74  str q0,[sp, #0x5f0]
02c07a78  str q1,[sp, #0x600]
02c07a7c  bl 0x04658538
02c07a80  ldr q0,[sp, #0x4d0]
02c07a84  ldr q1,[sp, #0x4e0]
02c07a88  str q0,[sp, #0x530]
02c07a8c  str q1,[sp, #0x540]
02c07a90  b 0x02c07aac
02c07a94  mov x0,xzr
02c07a98  b 0x02c086ac
02c07a9c  add x8,sp,#0x530
02c07aa0  mov w0,wzr
02c07aa4  mov x1,xzr
02c07aa8  bl 0x046544b8
02c07aac  adrp x8,0x5e5d000
02c07ab0  adrp x20,0x5e59000
02c07ab4  ldr x8,[x8, #0xd40]
02c07ab8  ldr x20,[x20, #0x1c0]
02c07abc  ldr q0,[sp, #0x530]
02c07ac0  ldr q1,[sp, #0x540]
02c07ac4  ldr x8,[x8]
02c07ac8  ldr x0,[x20]
02c07acc  str q0,[sp, #0x670]
02c07ad0  str q1,[sp, #0x680]
02c07ad4  ldr x8,[x8, #0xb8]
02c07ad8  ldr w9,[x0, #0xe4]
02c07adc  ldr x23,[x8]
02c07ae0  cbnz w9,0x02c07ae8
02c07ae4  bl 0x029f5bd0
02c07ae8  mov x0,x23
02c07aec  mov x1,xzr
02c07af0  mov x2,xzr
02c07af4  bl 0x057e14b4
02c07af8  tbnz w0,#0x0,0x02c086a8
02c07afc  cbz x23,0x02c086e0
02c07b00  ldr x8,[x23, #0x28]
02c07b04  cbz x8,0x02c086a8
02c07b08  ldr x8,[x23, #0x20]
02c07b0c  cbz x8,0x02c086a8
02c07b10  adrp x21,0x5e62000
02c07b14  ldr x21,[x21, #0xb0]
02c07b18  str x28,[sp, #0x40]
02c07b1c  ldr x0,[x21]
02c07b20  ldr w8,[x0, #0xe4]
02c07b24  cbnz w8,0x02c07b30
02c07b28  bl 0x029f5bd0
02c07b2c  ldr x0,[x21]
02c07b30  ldr x8,[x0, #0xb8]
02c07b34  str w29,[sp, #0x1c]
02c07b38  ldr x28,[x8, #0x28]
02c07b3c  cbnz x28,0x02c07b9c
02c07b40  ldr w9,[x0, #0xe4]
02c07b44  cbnz w9,0x02c07b54
02c07b48  bl 0x029f5bd0
02c07b4c  ldr x8,[x21]
02c07b50  ldr x8,[x8, #0xb8]
02c07b54  adrp x9,0x5e62000
02c07b58  ldr x9,[x9, #0x98]
02c07b5c  ldr x29,[x8]
02c07b60  ldr x0,[x9]
02c07b64  bl 0x029f5cec
02c07b68  adrp x8,0x5e62000
02c07b6c  mov x1,x29
02c07b70  mov x3,xzr
02c07b74  ldr x8,[x8, #0xa0]
02c07b78  mov x28,x0
02c07b7c  ldr x2,[x8]
02c07b80  bl 0x04235b8c
02c07b84  ldr x8,[x21]
02c07b88  mov x1,x28
02c07b8c  ldr x0,[x8, #0xb8]
02c07b90  str x28,[x0, #0x28]!
02c07b94  bl 0x029f59f4
02c07b98  ldr w29,[sp, #0x1c]
02c07b9c  adrp x8,0x5e62000
02c07ba0  ldr x8,[x8, #0x40]
02c07ba4  ldr x0,[x8]
02c07ba8  ldr w8,[x0, #0xe4]
02c07bac  cbnz w8,0x02c07bb4
02c07bb0  bl 0x029f5bd0
02c07bb4  movi d0,#0x0
02c07bb8  mov x0,x28
02c07bbc  movi d8,#0x0
02c07bc0  bl 0x02c08a04
02c07bc4  mov w8,#0x42c80000
02c07bc8  ldr x0,[x21]
02c07bcc  fmov s1,w8
02c07bd0  ldr w8,[x0, #0xe4]
02c07bd4  fdiv s0,s0,s1
02c07bd8  fmov s1,0x3f800000
02c07bdc  fcmp s0,s1
02c07be0  fcsel s1,s1,s0,gt
02c07be4  fcmp s0,#0.0
02c07be8  fcsel s8,s8,s1,mi
02c07bec  cbnz w8,0x02c07bf8
02c07bf0  bl 0x029f5bd0
02c07bf4  ldr x0,[x21]
02c07bf8  ldr x8,[x0, #0xb8]
02c07bfc  ldr x28,[x8, #0x30]
02c07c00  cbnz x28,0x02c07c60
02c07c04  ldr w9,[x0, #0xe4]
02c07c08  cbnz w9,0x02c07c18
02c07c0c  bl 0x029f5bd0
02c07c10  ldr x8,[x21]
02c07c14  ldr x8,[x8, #0xb8]
02c07c18  adrp x9,0x5e62000
02c07c1c  ldr x9,[x9, #0x98]
02c07c20  ldr x29,[x8]
02c07c24  ldr x0,[x9]
02c07c28  bl 0x029f5cec
02c07c2c  adrp x8,0x5e62000
02c07c30  mov x1,x29
02c07c34  mov x3,xzr
02c07c38  ldr x8,[x8, #0xa8]
02c07c3c  mov x28,x0
02c07c40  ldr x2,[x8]
02c07c44  bl 0x04235b8c
02c07c48  ldr x8,[x21]
02c07c4c  mov x1,x28
02c07c50  ldr x0,[x8, #0xb8]
02c07c54  str x28,[x0, #0x30]!
02c07c58  bl 0x029f59f4
02c07c5c  ldr w29,[sp, #0x1c]
02c07c60  adrp x8,0x5e62000
02c07c64  ldr w21,[sp, #0x750]
02c07c68  ldr x8,[x8, #0x40]
02c07c6c  ldr x0,[x8]
02c07c70  ldr w8,[x0, #0xe4]
02c07c74  cbnz w8,0x02c07c7c
02c07c78  bl 0x029f5bd0
02c07c7c  movi d0,#0x0
02c07c80  mov x0,x28
02c07c84  bl 0x02c08a04
02c07c88  add x8,sp,#0x510
02c07c8c  mov w0,w27
02c07c90  fmov s9,s0
02c07c94  bl 0x02c08ab4
02c07c98  ldr q0,[sp, #0x510]
02c07c9c  ldr q1,[sp, #0x520]
02c07ca0  mov w0,w26
02c07ca4  str q0,[sp, #0x650]
02c07ca8  str q1,[sp, #0x660]
02c07cac  bl 0x02c08bd4
02c07cb0  mov w26,w0
02c07cb4  mov x0,x25
02c07cb8  mov x1,xzr
02c07cbc  bl 0x04657108
02c07cc0  mov w8,#0xffffffe2
02c07cc4  add w9,w26,w0
02c07cc8  adrp x25,0x5e5d000
02c07ccc  madd w8,w24,w8,w21
02c07cd0  ldr x25,[x25, #0x4d0]
02c07cd4  mov w10,#0x64
02c07cd8  ldr x0,[x25]
02c07cdc  add w8,w8,w9
02c07ce0  mov w9,#0x2710
02c07ce4  sub w8,w8,#0xc8
02c07ce8  cmp w8,w9
02c07cec  csel w8,w8,w9,lt
02c07cf0  ldr w9,[x0, #0xe4]
02c07cf4  cmp w8,#0x64
02c07cf8  csel w21,w8,w10,gt
02c07cfc  cbnz w9,0x02c07d08
02c07d00  bl 0x029f5bd0
02c07d04  ldr x0,[x25]
02c07d08  ldr x8,[x20]
02c07d0c  ldr x9,[x0, #0xb8]
02c07d10  ldr w10,[x8, #0xe4]
02c07d14  ldr x24,[x9, #0x28]
02c07d18  cbnz w10,0x02c07d24
02c07d1c  mov x0,x8
02c07d20  bl 0x029f5bd0
02c07d24  mov x0,x24
02c07d28  mov x1,xzr
02c07d2c  mov x2,xzr
02c07d30  bl 0x057dfa70
02c07d34  tbz w0,#0x0,0x02c07d5c
02c07d38  ldr x0,[x25]
02c07d3c  ldr w8,[x0, #0xe4]
02c07d40  cbnz w8,0x02c07d4c
02c07d44  bl 0x029f5bd0
02c07d48  ldr x0,[x25]
02c07d4c  ldr x8,[x0, #0xb8]
02c07d50  ldr s0,[x8, #0x20]
02c07d54  scvtf s0,s0
02c07d58  b 0x02c07d64
02c07d5c  mov w8,#0x42c80000
02c07d60  fmov s0,w8
02c07d64  mov w8,#0x42c80000
02c07d68  add w20,w22,w19
02c07d6c  mov w0,wzr
02c07d70  fmov s1,w8
02c07d74  adrp x8,0x116c000
02c07d78  cmp w20,w29
02c07d7c  mov x1,xzr
02c07d80  fdiv s0,s0,s1
02c07d84  ldr s1,[x8, #0x88]
02c07d88  adrp x8,0x116c000
02c07d8c  fmaxnm s10,s0,s1
02c07d90  ldr s0,[x8, #0x174]
02c07d94  fmov s1,0x3f000000
02c07d98  add x8,sp,#0x510
02c07d9c  fdiv s0,s0,s10
02c07da0  fmul s1,s0,s1
02c07da4  fcsel s0,s1,s0,lt
02c07da8  str s0,[sp, #0x2c]
02c07dac  bl 0x046544b8
02c07db0  ldr q0,[sp, #0x510]
02c07db4  ldr q1,[sp, #0x520]
02c07db8  ldr x29,[x23, #0x28]
02c07dbc  str q0,[sp, #0x630]
02c07dc0  str q1,[sp, #0x640]
02c07dc4  cbz x29,0x02c086e0
02c07dc8  mov w8,#0x7f800000
02c07dcc  fcvtzs w9,s9
02c07dd0  mov w10,#0x7d
02c07dd4  fmov s0,w8
02c07dd8  ldr x8,[x29, #0x18]
02c07ddc  movk w10,#0x8000, LSL #16
02c07de0  str w20,[sp, #0x14]
02c07de4  str s10,[sp, #0x18]
02c07de8  fcmp s9,s0
02c07dec  add w9,w9,#0x7d
02c07df0  csel w24,w10,w9,eq
02c07df4  cmp w8,#0x1
02c07df8  adrp x9,0x116c000
02c07dfc  b.lt 0x02c08578
02c07e00  fmov s0,0x3f800000
02c07e04  ldr x10,[sp, #0x760]
02c07e08  ldr w25,[sp, #0x770]
02c07e0c  ldr s15,[x9, #0x94]
02c07e10  adrp x9,0x116f000
02c07e14  scvtf s12,w21
02c07e18  str x10,[sp, #0x38]
02c07e1c  ldr w10,[sp, #0x768]
02c07e20  scvtf s10,w25
02c07e24  fsub s9,s0,s8
02c07e28  ldr d0,[x9, #0x660]
02c07e2c  movi d13,#0x0
02c07e30  str w10,[sp, #0x34]
02c07e34  fmov s14,0x40000000
02c07e38  adrp x20,0x5e62000
02c07e3c  str d0,[sp, #0x20]
02c07e40  ldr x27,[sp, #0x758]
02c07e44  mov x28,xzr
02c07e48  ldr x20,[x20, #0x40]
02c07e4c  ldr w21,[sp, #0x4c]
02c07e50  and x8,x8,#0xffffffff
02c07e54  add x26,x29,#0x20
02c07e58  cmp x28,w8, UXTW 
02c07e5c  b.cs 0x02c086e4
02c07e60  ldr w8,[x26, x28, LSL #0x2]
02c07e64  tbnz w8,#0x1f,0x02c08564
02c07e68  ldr x9,[x23, #0x20]
02c07e6c  cbz x9,0x02c086e0
02c07e70  ldr w10,[x9, #0x18]
02c07e74  cmp w8,w10
02c07e78  b.ge 0x02c08564
02c07e7c  add x8,x9,x8, LSL #0x3
02c07e80  ldr x22,[x8, #0x20]
02c07e84  cbz x22,0x02c086e0
02c07e88  ldp q0,q1,[x22, #0x20]
02c07e8c  add x8,sp,#0x510
02c07e90  add x0,sp,#0x610
02c07e94  add x1,sp,#0x650
02c07e98  mov x2,xzr
02c07e9c  str q0,[sp, #0x610]
02c07ea0  str q1,[sp, #0x620]
02c07ea4  bl 0x04658538
02c07ea8  ldr q0,[sp, #0x510]
02c07eac  ldr q1,[sp, #0x520]
02c07eb0  add x8,sp,#0x4f0
02c07eb4  mov w0,#0x64
02c07eb8  mov x1,xzr
02c07ebc  str q0,[sp, #0x5f0]
02c07ec0  str q1,[sp, #0x600]
02c07ec4  bl 0x046544b8
02c07ec8  ldr q0,[sp, #0x4f0]
02c07ecc  ldr q1,[sp, #0x500]
02c07ed0  add x8,sp,#0x4d0
02c07ed4  add x0,sp,#0x5f0
02c07ed8  add x1,sp,#0x570
02c07edc  mov x2,xzr
02c07ee0  str q0,[sp, #0x570]
02c07ee4  str q1,[sp, #0x580]
02c07ee8  bl 0x046587e8
02c07eec  ldr q0,[sp, #0x4d0]
02c07ef0  ldr q1,[sp, #0x4e0]
02c07ef4  add x8,sp,#0x4b0
02c07ef8  ldr x1,[sp, #0x40]
02c07efc  add x0,sp,#0x5d0
02c07f00  mov x2,xzr
02c07f04  str q0,[sp, #0x5d0]
02c07f08  str q1,[sp, #0x5e0]
02c07f0c  bl 0x04658538
02c07f10  ldr q0,[sp, #0x4b0]
02c07f14  ldr q1,[sp, #0x4c0]
02c07f18  add x8,sp,#0x490
02c07f1c  mov w0,#0x64
02c07f20  mov x1,xzr
02c07f24  str q0,[sp, #0x610]
02c07f28  str q1,[sp, #0x620]
02c07f2c  bl 0x046544b8
02c07f30  ldr q0,[sp, #0x490]
02c07f34  ldr q1,[sp, #0x4a0]
02c07f38  add x8,sp,#0x470
02c07f3c  add x0,sp,#0x610
02c07f40  add x1,sp,#0x5f0
02c07f44  mov x2,xzr
02c07f48  str q0,[sp, #0x5f0]
02c07f4c  str q1,[sp, #0x600]
02c07f50  bl 0x046587e8
02c07f54  ldr q0,[sp, #0x470]
02c07f58  ldr q1,[sp, #0x480]
02c07f5c  add x8,sp,#0x450
02c07f60  add x0,sp,#0x570
02c07f64  mov x1,xzr
02c07f68  str q0,[sp, #0x570]
02c07f6c  str q1,[sp, #0x580]
02c07f70  bl 0x0465a16c
02c07f74  ldr q0,[sp, #0x450]
02c07f78  ldr q1,[sp, #0x460]
02c07f7c  add x8,sp,#0x430
02c07f80  mov w0,w21
02c07f84  mov x1,xzr
02c07f88  str q0,[sp, #0x5d0]
02c07f8c  str q1,[sp, #0x5e0]
02c07f90  bl 0x046544b8
02c07f94  ldr q0,[sp, #0x430]
02c07f98  ldr q1,[sp, #0x440]
02c07f9c  add x8,sp,#0x410
02c07fa0  add x0,sp,#0x5d0
02c07fa4  add x1,sp,#0x610
02c07fa8  mov x2,xzr
02c07fac  str q0,[sp, #0x610]
02c07fb0  str q1,[sp, #0x620]
02c07fb4  bl 0x04658538
02c07fb8  ldr q0,[sp, #0x410]
02c07fbc  ldr q1,[sp, #0x420]
02c07fc0  add x8,sp,#0x3f0
02c07fc4  mov w0,#0x64
02c07fc8  mov x1,xzr
02c07fcc  str q0,[sp, #0x5f0]
02c07fd0  str q1,[sp, #0x600]
02c07fd4  bl 0x046544b8
02c07fd8  ldp q0,q1,[sp, #0x3f0]
02c07fdc  add x8,sp,#0x3d0
02c07fe0  add x0,sp,#0x5f0
02c07fe4  add x1,sp,#0x570
02c07fe8  mov x2,xzr
02c07fec  str q0,[sp, #0x570]
02c07ff0  str q1,[sp, #0x580]
02c07ff4  bl 0x046587e8
02c07ff8  ldp q0,q1,[sp, #0x3d0]
02c07ffc  add x8,sp,#0x3b0
02c08000  add x0,sp,#0x550
02c08004  mov x1,xzr
02c08008  str q0,[sp, #0x550]
02c0800c  str q1,[sp, #0x560]
02c08010  bl 0x0465a16c
02c08014  ldp q0,q1,[sp, #0x3b0]
02c08018  add x8,sp,#0x390
02c0801c  ldr w9,[sp, #0x34]
02c08020  mov x1,xzr
02c08024  add w0,w9,#0x64
02c08028  str q0,[sp, #0x5d0]
02c0802c  str q1,[sp, #0x5e0]
02c08030  bl 0x046544b8
02c08034  ldp q0,q1,[sp, #0x390]
02c08038  add x8,sp,#0x370
02c0803c  add x0,sp,#0x5d0
02c08040  add x1,sp,#0x610
02c08044  mov x2,xzr
02c08048  str q0,[sp, #0x610]
02c0804c  str q1,[sp, #0x620]
02c08050  bl 0x04658538
02c08054  ldp q0,q1,[sp, #0x370]
02c08058  add x8,sp,#0x350
02c0805c  mov w0,#0x64
02c08060  mov x1,xzr
02c08064  str q0,[sp, #0x5f0]
02c08068  str q1,[sp, #0x600]
02c0806c  bl 0x046544b8
02c08070  ldp q0,q1,[sp, #0x350]
02c08074  add x8,sp,#0x330
02c08078  add x0,sp,#0x5f0
02c0807c  add x1,sp,#0x570
02c08080  mov x2,xzr
02c08084  str q0,[sp, #0x570]
02c08088  str q1,[sp, #0x580]
02c0808c  bl 0x046587e8
02c08090  ldp q0,q1,[sp, #0x330]
02c08094  add x8,sp,#0x310
02c08098  add x0,sp,#0x550
02c0809c  mov x1,xzr
02c080a0  str q0,[sp, #0x550]
02c080a4  str q1,[sp, #0x560]
02c080a8  bl 0x0465a16c
02c080ac  ldp q0,q1,[sp, #0x310]
02c080b0  add x8,sp,#0x2f0
02c080b4  add x0,sp,#0x5d0
02c080b8  mov x1,x27
02c080bc  mov x2,xzr
02c080c0  str q0,[sp, #0x5d0]
02c080c4  str q1,[sp, #0x5e0]
02c080c8  bl 0x04658538
02c080cc  ldp q0,q1,[sp, #0x2f0]
02c080d0  add x8,sp,#0x2d0
02c080d4  mov w0,#0x64
02c080d8  mov x1,xzr
02c080dc  str q0,[sp, #0x610]
02c080e0  str q1,[sp, #0x620]
02c080e4  bl 0x046544b8
02c080e8  ldp q0,q1,[sp, #0x2d0]
02c080ec  add x8,sp,#0x2b0
02c080f0  add x0,sp,#0x610
02c080f4  add x1,sp,#0x5f0
02c080f8  mov x2,xzr
02c080fc  str q0,[sp, #0x5f0]
02c08100  str q1,[sp, #0x600]
02c08104  bl 0x046587e8
02c08108  ldp q0,q1,[sp, #0x2b0]
02c0810c  add x8,sp,#0x290
02c08110  add x0,sp,#0x570
02c08114  mov x1,xzr
02c08118  str q0,[sp, #0x570]
02c0811c  str q1,[sp, #0x580]
02c08120  bl 0x0465a16c
02c08124  ldp q0,q1,[sp, #0x290]
02c08128  add x8,sp,#0x270
02c0812c  mov w0,w25
02c08130  mov x1,xzr
02c08134  str q0,[sp, #0x5d0]
02c08138  str q1,[sp, #0x5e0]
02c0813c  bl 0x046544b8
02c08140  ldp q0,q1,[sp, #0x270]
02c08144  add x8,sp,#0x250
02c08148  add x0,sp,#0x5d0
02c0814c  add x1,sp,#0x610
02c08150  mov x2,xzr
02c08154  str q0,[sp, #0x610]
02c08158  str q1,[sp, #0x620]
02c0815c  bl 0x04658538
02c08160  ldp q0,q1,[sp, #0x250]
02c08164  add x8,sp,#0x230
02c08168  add x0,sp,#0x5f0
02c0816c  mov x1,xzr
02c08170  str q0,[sp, #0x5f0]
02c08174  str q1,[sp, #0x600]
02c08178  bl 0x0465a16c
02c0817c  ldp q0,q1,[sp, #0x230]
02c08180  add x8,sp,#0x210
02c08184  mov w0,w24
02c08188  mov x1,xzr
02c0818c  str q0,[sp, #0x5d0]
02c08190  str q1,[sp, #0x5e0]
02c08194  bl 0x046544b8
02c08198  ldp q0,q1,[sp, #0x210]
02c0819c  add x8,sp,#0x1f0
02c081a0  add x0,sp,#0x5d0
02c081a4  add x1,sp,#0x610
02c081a8  mov x2,xzr
02c081ac  str q0,[sp, #0x610]
02c081b0  str q1,[sp, #0x620]
02c081b4  bl 0x04658538
02c081b8  ldp q0,q1,[sp, #0x1f0]
02c081bc  add x8,sp,#0x1d0
02c081c0  mov w0,#0x64
02c081c4  mov x1,xzr
02c081c8  str q0,[sp, #0x5f0]
02c081cc  str q1,[sp, #0x600]
02c081d0  bl 0x046544b8
02c081d4  ldp q0,q1,[sp, #0x1d0]
02c081d8  add x8,sp,#0x1b0
02c081dc  add x0,sp,#0x5f0
02c081e0  add x1,sp,#0x570
02c081e4  mov x2,xzr
02c081e8  str q0,[sp, #0x570]
02c081ec  str q1,[sp, #0x580]
02c081f0  bl 0x046587e8
02c081f4  ldp q0,q1,[sp, #0x1b0]
02c081f8  add x8,sp,#0x190
02c081fc  add x0,sp,#0x550
02c08200  mov x1,xzr
02c08204  str q0,[sp, #0x550]
02c08208  str q1,[sp, #0x560]
02c0820c  bl 0x0465a16c
02c08210  ldp q0,q1,[sp, #0x190]
02c08214  add x8,sp,#0x170
02c08218  ldr x1,[sp, #0x38]
02c0821c  add x0,sp,#0x5b0
02c08220  mov x2,xzr
02c08224  str q0,[sp, #0x5b0]
02c08228  str q1,[sp, #0x5c0]
02c0822c  bl 0x04658538
02c08230  ldp q0,q1,[sp, #0x170]
02c08234  add x8,sp,#0x150
02c08238  mov w0,#0x64
02c0823c  mov x1,xzr
02c08240  str q0,[sp, #0x610]
02c08244  str q1,[sp, #0x620]
02c08248  bl 0x046544b8
02c0824c  ldp q0,q1,[sp, #0x150]
02c08250  add x8,sp,#0x130
02c08254  add x0,sp,#0x610
02c08258  add x1,sp,#0x5f0
02c0825c  mov x2,xzr
02c08260  str q0,[sp, #0x5f0]
02c08264  str q1,[sp, #0x600]
02c08268  bl 0x046587e8
02c0826c  ldp q0,q1,[sp, #0x130]
02c08270  add x8,sp,#0x110
02c08274  add x0,sp,#0x570
02c08278  mov x1,xzr
02c0827c  str q0,[sp, #0x570]
02c08280  str q1,[sp, #0x580]
02c08284  bl 0x0465a16c
02c08288  ldr x0,[x20]
02c0828c  ldp q0,q1,[sp, #0x110]
02c08290  ldr w8,[x0, #0xe4]
02c08294  str q0,[sp, #0x5b0]
02c08298  str q1,[sp, #0x5c0]
02c0829c  cbnz w8,0x02c082a4
02c082a0  bl 0x029f5bd0
02c082a4  fmov s0,s9
02c082a8  add x8,sp,#0xf0
02c082ac  bl 0x02c08c6c
02c082b0  ldp q0,q1,[sp, #0xf0]
02c082b4  add x8,sp,#0xd0
02c082b8  add x0,sp,#0x5d0
02c082bc  add x1,sp,#0x610
02c082c0  mov x2,xzr
02c082c4  str q0,[sp, #0x610]
02c082c8  str q1,[sp, #0x620]
02c082cc  bl 0x04658538
02c082d0  ldp q0,q1,[sp, #0xd0]
02c082d4  add x8,sp,#0xb0
02c082d8  str q0,[sp, #0x5f0]
02c082dc  fmov s0,s8
02c082e0  str q1,[sp, #0x600]
02c082e4  bl 0x02c08c6c
02c082e8  ldp q0,q1,[sp, #0xb0]
02c082ec  add x8,sp,#0x90
02c082f0  add x0,sp,#0x5b0
02c082f4  add x1,sp,#0x570
02c082f8  mov x2,xzr
02c082fc  str q0,[sp, #0x570]
02c08300  str q1,[sp, #0x580]
02c08304  bl 0x04658538
02c08308  ldp q0,q1,[sp, #0x90]
02c0830c  add x8,sp,#0x70
02c08310  add x0,sp,#0x5f0
02c08314  add x1,sp,#0x550
02c08318  mov x2,xzr
02c0831c  str q0,[sp, #0x550]
02c08320  str q1,[sp, #0x560]
02c08324  bl 0x04658020
02c08328  ldp q0,q1,[sp, #0x70]
02c0832c  add x8,sp,#0x50
02c08330  mov w0,wzr
02c08334  mov x1,xzr
02c08338  str q0,[sp, #0x590]
02c0833c  str q1,[sp, #0x5a0]
02c08340  bl 0x046544b8
02c08344  ldp q0,q1,[sp, #0x50]
02c08348  add x0,sp,#0x590
02c0834c  add x1,sp,#0x610
02c08350  mov x2,xzr
02c08354  str q0,[sp, #0x610]
02c08358  str q1,[sp, #0x620]
02c0835c  bl 0x0465468c
02c08360  tbnz w0,#0x0,0x02c08564
02c08364  ldr s0,[x22, #0x40]
02c08368  mov w8,#0x42c80000
02c0836c  add x0,sp,#0x590
02c08370  fmov s1,w8
02c08374  add x1,sp,#0x690
02c08378  mov x2,xzr
02c0837c  fdiv s0,s0,s12
02c08380  fmul s0,s0,s1
02c08384  fdiv s0,s0,s10
02c08388  fcmp s0,s14
02c0838c  fcsel s1,s14,s0,gt
02c08390  fcmp s0,s15
02c08394  fcsel s11,s15,s1,mi
02c08398  bl 0x04654530
02c0839c  tbz w0,#0x0,0x02c083d4
02c083a0  ldr x0,[x20]
02c083a4  ldr w8,[x0, #0xe4]
02c083a8  cbnz w8,0x02c083b0
02c083ac  bl 0x029f5bd0
02c083b0  ldr w8,[x22, #0x18]
02c083b4  sub w9,w8,#0x4
02c083b8  cmp w9,#0x3
02c083bc  b.cc 0x02c084a8
02c083c0  sub w9,w8,#0x1
02c083c4  cmp w9,#0x2
02c083c8  b.cs 0x02c084b0
02c083cc  mov w8,#0xa
02c083d0  b 0x02c084cc
02c083d4  add x8,sp,#0x510
02c083d8  add x0,sp,#0x690
02c083dc  add x1,sp,#0x590
02c083e0  mov x2,xzr
02c083e4  fmov s14,s8
02c083e8  fmov s8,s10
02c083ec  fmov s10,s12
02c083f0  bl 0x046587e8
02c083f4  ldr q0,[sp, #0x510]
02c083f8  ldr q1,[sp, #0x520]
02c083fc  add x0,sp,#0x610
02c08400  mov x1,xzr
02c08404  str q0,[sp, #0x610]
02c08408  str q1,[sp, #0x620]
02c0840c  bl 0x046573a8
02c08410  fmov d12,d0
02c08414  adrp x8,0x5e59000
02c08418  ldr x8,[x8]
02c0841c  ldr x0,[x8]
02c08420  fmov x8,d12
02c08424  ubfx x8,x8,#0x34,#0xb
02c08428  cmp x8,#0x7fe
02c0842c  b.ls 0x02c08438
02c08430  ldr d0,[sp, #0x20]
02c08434  b 0x02c08454
02c08438  ldr w8,[x0, #0xe4]
02c0843c  cbnz w8,0x02c08450
02c08440  bl 0x029f5bd0
02c08444  adrp x8,0x5e59000
02c08448  ldr x8,[x8]
02c0844c  ldr x0,[x8]
02c08450  frintp d0,d12
02c08454  fmov d1,0x3ff0000000000000
02c08458  ldr w8,[x0, #0xe4]
02c0845c  fcmp d0,d1
02c08460  fcsel d12,d1,d0,mi
02c08464  cbnz w8,0x02c0846c
02c08468  bl 0x029f5bd0
02c0846c  fcvt d0,s11
02c08470  ldr d1,[sp, #0x20]
02c08474  mov x0,xzr
02c08478  fmul d0,d12,d0
02c0847c  bl 0x0485210c
02c08480  fcvt s0,d0
02c08484  ldr s1,[sp, #0x2c]
02c08488  fmov s12,s10
02c0848c  fmov s10,s8
02c08490  fmov s8,s14
02c08494  fmov s14,0x40000000
02c08498  fcmp s1,s0
02c0849c  fcsel s0,s0,s1,mi
02c084a0  fmov d1,0x3ff0000000000000
02c084a4  b 0x02c084dc
02c084a8  mov w8,#0x5
02c084ac  b 0x02c084cc
02c084b0  cmp w8,#0x3
02c084b4  b.ne 0x02c084c8
02c084b8  ldr w8,[x22, #0x44]
02c084bc  cmp w8,#0x1
02c084c0  csinc w8,w8,wzr,gt
02c084c4  b 0x02c084cc
02c084c8  mov w8,#0x1
02c084cc  ldr s0,[sp, #0x2c]
02c084d0  scvtf d1,w8
02c084d4  fcmp s11,s0
02c084d8  fcsel s0,s11,s0,gt
02c084dc  fcvt d0,s0
02c084e0  cmp w19,#0x4
02c084e4  fdiv d0,d1,d0
02c084e8  fadd d13,d13,d0
02c084ec  b.ne 0x02c08564
02c084f0  ldr x0,[x20]
02c084f4  ldr w8,[x0, #0xe4]
02c084f8  cbnz w8,0x02c08500
02c084fc  bl 0x029f5bd0
02c08500  fmov s0,s11
02c08504  add x8,sp,#0x510
02c08508  bl 0x02c08c6c
02c0850c  ldr q0,[sp, #0x510]
02c08510  ldr q1,[sp, #0x520]
02c08514  add x8,sp,#0x4f0
02c08518  add x0,sp,#0x590
02c0851c  add x1,sp,#0x610
02c08520  mov x2,xzr
02c08524  str q0,[sp, #0x610]
02c08528  str q1,[sp, #0x620]
02c0852c  bl 0x046587e8
02c08530  ldr q0,[sp, #0x4f0]
02c08534  ldr q1,[sp, #0x500]
02c08538  add x8,sp,#0x4d0
02c0853c  add x0,sp,#0x630
02c08540  add x1,sp,#0x5f0
02c08544  mov x2,xzr
02c08548  str q0,[sp, #0x5f0]
02c0854c  str q1,[sp, #0x600]
02c08550  bl 0x04658020
02c08554  ldr q0,[sp, #0x4d0]
02c08558  ldr q1,[sp, #0x4e0]
02c0855c  str q0,[sp, #0x630]
02c08560  str q1,[sp, #0x640]
02c08564  ldr w8,[x29, #0x18]
02c08568  add x28,x28,#0x1
02c0856c  cmp x28,w8, SXTW 
02c08570  b.lt 0x02c07e58
02c08574  b 0x02c08584
02c08578  adrp x20,0x5e62000
02c0857c  movi d13,#0x0
02c08580  ldr x20,[x20, #0x40]
02c08584  fcmp d13,#0.0
02c08588  b.ls 0x02c086a8
02c0858c  ldr w9,[sp, #0x30]
02c08590  adrp x8,0x116c000
02c08594  ldr s2,[sp, #0x18]
02c08598  ldr s1,[x8, #0x94]
02c0859c  ldr w8,[sp, #0x1c]
02c085a0  ldr w10,[sp, #0x14]
02c085a4  scvtf d0,w9
02c085a8  fdiv s1,s1,s2
02c085ac  fmov s2,0x3f000000
02c085b0  cmp w10,w8
02c085b4  fdiv d0,d0,d13
02c085b8  fmul s2,s1,s2
02c085bc  fcsel s1,s2,s1,lt
02c085c0  scvtf s2,w9
02c085c4  fmul s1,s1,s2
02c085c8  fcvt s0,d0
02c085cc  fcmp s1,s0
02c085d0  fcsel s8,s0,s1,mi
02c085d4  movi d0,#0x0
02c085d8  cmp w19,#0x4
02c085dc  b.ne 0x02c08664
02c085e0  add x8,sp,#0x510
02c085e4  mov w0,wzr
02c085e8  mov x1,xzr
02c085ec  bl 0x046544b8
02c085f0  ldr q0,[sp, #0x510]
02c085f4  ldr q1,[sp, #0x520]
02c085f8  add x0,sp,#0x630
02c085fc  add x1,sp,#0x610
02c08600  mov x2,xzr
02c08604  str q0,[sp, #0x610]
02c08608  str q1,[sp, #0x620]
02c0860c  bl 0x0465468c
02c08610  tbnz w0,#0x0,0x02c086a8
02c08614  add x8,sp,#0x510
02c08618  add x0,sp,#0x670
02c0861c  add x1,sp,#0x630
02c08620  mov x2,xzr
02c08624  bl 0x046587e8
02c08628  ldr q0,[sp, #0x510]
02c0862c  ldr q1,[sp, #0x520]
02c08630  add x0,sp,#0x610
02c08634  mov x1,xzr
02c08638  str q0,[sp, #0x610]
02c0863c  str q1,[sp, #0x620]
02c08640  bl 0x046573a8
02c08644  fmov x8,d0
02c08648  ubfx x8,x8,#0x34,#0xb
02c0864c  cmp x8,#0x7fe
02c08650  b.hi 0x02c086a8
02c08654  fcvt s0,d0
02c08658  ldr s1,[sp, #0x2c]
02c0865c  fcmp s1,s0
02c08660  fcsel s0,s0,s1,mi
02c08664  ldr x0,[x20]
02c08668  fadd s8,s8,s0
02c0866c  ldr w8,[x0, #0xe4]
02c08670  cbnz w8,0x02c08678
02c08674  bl 0x029f5bd0
02c08678  fmov w8,s8
02c0867c  ubfx w8,w8,#0x17,#0x8
02c08680  cmp w8,#0xfe
02c08684  b.hi 0x02c086a8
02c08688  mov w8,#0x43340000
02c0868c  fmov s0,w8
02c08690  mov w8,#0x7f800000
02c08694  fcmp s8,s0
02c08698  fmov s0,w8
02c0869c  fcsel s0,s8,s0,le
02c086a0  fmov w0,s0
02c086a4  b 0x02c086ac
02c086a8  mov w0,#0x7f800000
02c086ac  fmov x1,d13
02c086b0  add sp,sp,#0x6b0
02c086b4  ldp x20,x19,[sp, #0x90]
02c086b8  ldp x22,x21,[sp, #0x80]
02c086bc  ldp x24,x23,[sp, #0x70]
02c086c0  ldp x26,x25,[sp, #0x60]
02c086c4  ldp x28,x27,[sp, #0x50]
02c086c8  ldp x29,x30,[sp, #0x40]
02c086cc  ldp d9,d8,[sp, #0x30]
02c086d0  ldp d11,d10,[sp, #0x20]
02c086d4  ldp d13,d12,[sp, #0x10]
02c086d8  ldp d15,d14,[sp], #0xa0
02c086dc  ret
02c086e0  bl 0x029f5cfc
02c086e4  bl 0x029f5d04
