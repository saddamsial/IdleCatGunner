049c0a84  sub sp,sp,#0xf0
049c0a88  stp d15,d14,[sp, #0x50]
049c0a8c  stp d13,d12,[sp, #0x60]
049c0a90  stp d11,d10,[sp, #0x70]
049c0a94  stp d9,d8,[sp, #0x80]
049c0a98  stp x29,x30,[sp, #0x90]
049c0a9c  stp x28,x27,[sp, #0xa0]
049c0aa0  stp x26,x25,[sp, #0xb0]
049c0aa4  stp x24,x23,[sp, #0xc0]
049c0aa8  stp x22,x21,[sp, #0xd0]
049c0aac  stp x20,x19,[sp, #0xe0]
049c0ab0  adrp x20,0x6262000
049c0ab4  mov x19,x0
049c0ab8  ldrb w8,[x20, #0x83d]
049c0abc  tbnz w8,#0x0,0x049c0ad4
049c0ac0  adrp x0,0x5e58000
049c0ac4  ldr x0,[x0, #0xf08]
049c0ac8  bl 0x029f5a50
049c0acc  mov w8,#0x1
049c0ad0  strb w8,[x20, #0x83d]
049c0ad4  ldr w8,[x19, #0x12c]
049c0ad8  cmp w8,#0x1
049c0adc  b.ne 0x049c0aec
049c0ae0  mov x0,xzr
049c0ae4  bl 0x057ebabc
049c0ae8  b 0x049c0af4
049c0aec  mov x0,xzr
049c0af0  bl 0x057ebb34
049c0af4  mov x0,x19
049c0af8  mov w1,wzr
049c0afc  bl 0x049bd23c
049c0b00  ldrb w8,[x19, #0x624]
049c0b04  cbz w8,0x049c11ec
049c0b08  add x8,x19,#0x3, LSL #12
049c0b0c  ldrb w9,[x8, #0x220]
049c0b10  cbz w9,0x049c11ec
049c0b14  ldrb w9,[x8, #0x22c]
049c0b18  cbz w9,0x049c0ee8
049c0b1c  ldrb w8,[x8, #0x22d]
049c0b20  cbz w8,0x049c0ee8
049c0b24  ldr w10,[x19, #0x3224]
049c0b28  ldr w9,[x19, #0x3228]
049c0b2c  cmp w10,#0x0
049c0b30  str w9,[sp, #0x20]
049c0b34  cinc w8,w10,lt
049c0b38  cmp w9,#0x0
049c0b3c  cinc w9,w9,lt
049c0b40  cmp w10,#0x2
049c0b44  b.lt 0x049c11ec
049c0b48  asr w24,w9,#0x1
049c0b4c  asr w10,w8,#0x1
049c0b50  mov w8,#0xfffffff6
049c0b54  adrp x9,0x116c000
049c0b58  adrp x20,0x5e59000
049c0b5c  adrp x27,0x5e58000
049c0b60  mul w8,w24,w8
049c0b64  str w10,[sp, #0x1c]
049c0b68  neg w10,w10
049c0b6c  ldr s0,[x9, #0x1ac]
049c0b70  str w10,[sp, #0x24]
049c0b74  neg w10,w24
049c0b78  mov w25,#0x42c80000
049c0b7c  adrp x29,0x6262000
049c0b80  adrp x23,0x6262000
049c0b84  stp w8,w10,[sp, #0x14]
049c0b88  mov x22,#0x3f80000000000000
049c0b8c  str s0,[sp, #0x28]
049c0b90  ldr x20,[x20]
049c0b94  ldr x27,[x27, #0xf08]
049c0b98  ldr w8,[sp, #0x20]
049c0b9c  cmp w8,#0x2
049c0ba0  b.lt 0x049c0ecc
049c0ba4  ldr w8,[sp, #0x24]
049c0ba8  ldp w28,w26,[sp, #0x14]
049c0bac  add w8,w8,w8, LSL #0x2
049c0bb0  lsl w8,w8,#0x1
049c0bb4  scvtf s0,w8
049c0bb8  str s0,[sp, #0x44]
049c0bbc  scvtf s12,w28
049c0bc0  ldr w8,[x19, #0x128]
049c0bc4  cbz w8,0x049c0c28
049c0bc8  mov x0,x19
049c0bcc  mov x1,xzr
049c0bd0  bl 0x057dc0f8
049c0bd4  cbz x0,0x049c121c
049c0bd8  mov x1,xzr
049c0bdc  bl 0x057ee2ec
049c0be0  mov x0,x19
049c0be4  mov x1,xzr
049c0be8  fmov s8,s0
049c0bec  fmov s9,s1
049c0bf0  fmov s10,s2
049c0bf4  bl 0x057dc0f8
049c0bf8  cbz x0,0x049c121c
049c0bfc  movi d0,#0x0
049c0c00  mov x1,xzr
049c0c04  fadd s9,s9,s12
049c0c08  fadd s10,s10,s0
049c0c0c  ldr s0,[sp, #0x44]
049c0c10  fadd s8,s8,s0
049c0c14  bl 0x057ee2ec
049c0c18  fadd s0,s8,s0
049c0c1c  fadd s1,s9,s1
049c0c20  fadd s2,s10,s2
049c0c24  b 0x049c0c40
049c0c28  ldr s0,[x19, #0x3210]
049c0c2c  ldr s1,[x19, #0x3214]
049c0c30  ldr s2,[sp, #0x44]
049c0c34  fadd s0,s0,s2
049c0c38  fadd s1,s1,s12
049c0c3c  movi d2,#0x0
049c0c40  mov x0,xzr
049c0c44  bl 0x052c82e4
049c0c48  ldr s2,[x19, #0x3218]
049c0c4c  mov x0,xzr
049c0c50  fmul s0,s0,s2
049c0c54  fmul s1,s1,s2
049c0c58  fmov s2,w25
049c0c5c  fdiv s0,s0,s2
049c0c60  fdiv s1,s1,s2
049c0c64  bl 0x05308f58
049c0c68  mov x0,x19
049c0c6c  mov x1,xzr
049c0c70  fmov s11,s0
049c0c74  bl 0x057dc0f8
049c0c78  cbz x0,0x049c121c
049c0c7c  mov x1,xzr
049c0c80  bl 0x057ee2ec
049c0c84  ldr x0,[x19, #0xe8]
049c0c88  cbz x0,0x049c121c
049c0c8c  mov x1,xzr
049c0c90  fmov s8,s0
049c0c94  fmov s9,s1
049c0c98  fmov s10,s2
049c0c9c  bl 0x057ef578
049c0ca0  ldr x0,[x19, #0xe8]
049c0ca4  cbz x0,0x049c121c
049c0ca8  movi d1,#0x0
049c0cac  ldr s3,[sp, #0x44]
049c0cb0  fadd s2,s9,s12
049c0cb4  mov x1,xzr
049c0cb8  fadd s3,s8,s3
049c0cbc  fadd s1,s10,s1
049c0cc0  fmul s9,s2,s0
049c0cc4  fmul s10,s3,s0
049c0cc8  fmul s8,s1,s0
049c0ccc  bl 0x057eefd0
049c0cd0  fmov s3,s0
049c0cd4  fmov s4,s1
049c0cd8  fmov s5,s2
049c0cdc  fmov s0,s10
049c0ce0  fmov s1,s9
049c0ce4  fmov s2,s8
049c0ce8  bl 0x049c1220
049c0cec  ldr x0,[x19, #0xe8]
049c0cf0  cbz x0,0x049c121c
049c0cf4  mov x1,xzr
049c0cf8  fmov s8,s0
049c0cfc  fmov s9,s1
049c0d00  fmov s13,s2
049c0d04  bl 0x057eed98
049c0d08  mov x0,x19
049c0d0c  mov x1,xzr
049c0d10  stp s1,s0,[sp, #0x3c]
049c0d14  fmov s14,s2
049c0d18  bl 0x057dc0f8
049c0d1c  cbz x0,0x049c121c
049c0d20  mov x1,xzr
049c0d24  bl 0x057ee2ec
049c0d28  fmov s15,s0
049c0d2c  fmov s10,s2
049c0d30  ldrb w8,[x29, #0x871]
049c0d34  str s1,[sp, #0x38]
049c0d38  cbnz w8,0x049c0d4c
049c0d3c  mov x0,x20
049c0d40  bl 0x029f5a50
049c0d44  mov w8,#0x1
049c0d48  strb w8,[x29, #0x871]
049c0d4c  ldr x0,[x20]
049c0d50  str s9,[sp, #0x30]
049c0d54  ldr w8,[x0, #0xe4]
049c0d58  cbnz w8,0x049c0d60
049c0d5c  bl 0x029f5bd0
049c0d60  ldr s0,[sp, #0x28]
049c0d64  str s11,[sp, #0x34]
049c0d68  fmul s0,s11,s0
049c0d6c  fcvt d11,s0
049c0d70  fmov d0,d11
049c0d74  bl 0x05afb320
049c0d78  fmov d9,d0
049c0d7c  ldrb w8,[x23, #0x872]
049c0d80  cbnz w8,0x049c0d94
049c0d84  mov x0,x20
049c0d88  bl 0x029f5a50
049c0d8c  mov w8,#0x1
049c0d90  strb w8,[x23, #0x872]
049c0d94  ldr x0,[x20]
049c0d98  str s13,[sp, #0x2c]
049c0d9c  ldr w8,[x0, #0xe4]
049c0da0  cbnz w8,0x049c0da8
049c0da4  bl 0x029f5bd0
049c0da8  ldr x0,[x19, #0xe8]
049c0dac  cbz x0,0x049c121c
049c0db0  mov x1,xzr
049c0db4  fmov s13,s8
049c0db8  bl 0x057ef578
049c0dbc  ldr x21,[x19, #0xe8]
049c0dc0  cbz x21,0x049c121c
049c0dc4  fmov s8,s0
049c0dc8  movi d0,#0x0
049c0dcc  ldr s1,[sp, #0x44]
049c0dd0  fadd s0,s10,s0
049c0dd4  fadd s10,s15,s1
049c0dd8  fcvt s15,d9
049c0ddc  ldr s1,[sp, #0x38]
049c0de0  fadd s12,s1,s12
049c0de4  fmul s9,s0,s8
049c0de8  fmov d0,d11
049c0dec  bl 0x05afb310
049c0df0  fcvt s0,d0
049c0df4  fmov s2,0x41200000
049c0df8  mov x0,x21
049c0dfc  mov x1,xzr
049c0e00  fmul s1,s15,s2
049c0e04  fmul s0,s0,s2
049c0e08  fadd s1,s1,s10
049c0e0c  fadd s0,s0,s12
049c0e10  fmul s10,s1,s8
049c0e14  fmul s8,s0,s8
049c0e18  bl 0x057eefd0
049c0e1c  fmov s3,s0
049c0e20  fmov s4,s1
049c0e24  fmov s5,s2
049c0e28  fmov s0,s10
049c0e2c  fmov s1,s8
049c0e30  fmov s2,s9
049c0e34  bl 0x049c1220
049c0e38  ldr x0,[x19, #0xe8]
049c0e3c  cbz x0,0x049c121c
049c0e40  mov x1,xzr
049c0e44  fmov s9,s0
049c0e48  fmov s10,s1
049c0e4c  fmov s11,s2
049c0e50  bl 0x057eed98
049c0e54  fmov s15,s0
049c0e58  fmov s8,s1
049c0e5c  ldr x0,[x27]
049c0e60  fmov s12,s2
049c0e64  ldr w8,[x0, #0xe4]
049c0e68  cbnz w8,0x049c0e70
049c0e6c  bl 0x029f5bd0
049c0e70  fmov s7,0x3f800000
049c0e74  ldr s16,[sp, #0x34]
049c0e78  fmov s1,0xbf000000
049c0e7c  fadd s3,s9,s15
049c0e80  fadd s4,s10,s8
049c0e84  mov x0,xzr
049c0e88  fadd s5,s11,s12
049c0e8c  str x22,[sp, #0x8]
049c0e90  fadd s0,s16,s7
049c0e94  fmul s6,s0,s1
049c0e98  ldp s2,s0,[sp, #0x3c]
049c0e9c  ldr s1,[sp, #0x30]
049c0ea0  fadd s1,s1,s2
049c0ea4  ldr s2,[sp, #0x2c]
049c0ea8  fadd s0,s13,s0
049c0eac  fadd s6,s6,s7
049c0eb0  fadd s2,s2,s14
049c0eb4  stp s16,s6,[sp]
049c0eb8  bl 0x0579985c
049c0ebc  add w26,w26,#0x1
049c0ec0  add w28,w28,#0xa
049c0ec4  cmp w26,w24
049c0ec8  b.lt 0x049c0bbc
049c0ecc  ldr w9,[sp, #0x24]
049c0ed0  ldr w8,[sp, #0x1c]
049c0ed4  add w9,w9,#0x1
049c0ed8  cmp w9,w8
049c0edc  str w9,[sp, #0x24]
049c0ee0  b.lt 0x049c0b98
049c0ee4  b 0x049c11ec
049c0ee8  ldr w10,[x19, #0x3224]
049c0eec  ldr w21,[x19, #0x3228]
049c0ef0  cmp w10,#0x0
049c0ef4  cinc w8,w10,lt
049c0ef8  cmp w21,#0x0
049c0efc  cinc w9,w21,lt
049c0f00  cmp w10,#0x2
049c0f04  b.lt 0x049c11ec
049c0f08  asr w22,w9,#0x1
049c0f0c  asr w23,w8,#0x1
049c0f10  mov w8,#0xfffffff6
049c0f14  adrp x9,0x116c000
049c0f18  movi d15,#0x0
049c0f1c  adrp x25,0x5e58000
049c0f20  mul w8,w22,w8
049c0f24  ldr s0,[x9, #0x1ac]
049c0f28  neg w26,w23
049c0f2c  neg w24,w22
049c0f30  mov x28,#0x3f80000000000000
049c0f34  str s0,[sp, #0x2c]
049c0f38  str w8,[sp, #0x28]
049c0f3c  ldr x25,[x25, #0xf08]
049c0f40  cmp w21,#0x2
049c0f44  b.lt 0x049c11e0
049c0f48  add w8,w26,w26, LSL #0x2
049c0f4c  ldr w29,[sp, #0x28]
049c0f50  mov w27,w24
049c0f54  lsl w8,w8,#0x1
049c0f58  scvtf s0,w8
049c0f5c  str s0,[sp, #0x44]
049c0f60  ldr x0,[x19, #0x3208]
049c0f64  cbz x0,0x049c121c
049c0f68  scvtf s12,w29
049c0f6c  ldr s1,[x19, #0x3214]
049c0f70  ldr s0,[x19, #0x3210]
049c0f74  ldr s2,[sp, #0x44]
049c0f78  fadd s0,s0,s2
049c0f7c  fadd s1,s1,s12
049c0f80  bl 0x049baf6c
049c0f84  ldr w8,[x19, #0x128]
049c0f88  str s0,[sp, #0x40]
049c0f8c  cmp w8,#0x1
049c0f90  b.ne 0x049c0ff8
049c0f94  ldr x20,[x19, #0x3208]
049c0f98  mov x0,x19
049c0f9c  mov x1,xzr
049c0fa0  bl 0x057dc0f8
049c0fa4  cbz x0,0x049c121c
049c0fa8  mov x1,xzr
049c0fac  bl 0x057ee2ec
049c0fb0  ldr s9,[x19, #0x3210]
049c0fb4  mov x0,x19
049c0fb8  mov x1,xzr
049c0fbc  fmov s8,s0
049c0fc0  bl 0x057dc0f8
049c0fc4  cbz x0,0x049c121c
049c0fc8  mov x1,xzr
049c0fcc  bl 0x057ee2ec
049c0fd0  cbz x20,0x049c121c
049c0fd4  ldr s0,[sp, #0x44]
049c0fd8  fadd s1,s1,s12
049c0fdc  ldr s2,[x19, #0x3214]
049c0fe0  mov x0,x20
049c0fe4  fadd s0,s8,s0
049c0fe8  fadd s1,s1,s2
049c0fec  fadd s0,s9,s0
049c0ff0  bl 0x049baf6c
049c0ff4  str s0,[sp, #0x40]
049c0ff8  mov x0,x19
049c0ffc  mov x1,xzr
049c1000  bl 0x057dc0f8
049c1004  cbz x0,0x049c121c
049c1008  mov x1,xzr
049c100c  bl 0x057ee2ec
049c1010  ldr x0,[x19, #0xe8]
049c1014  cbz x0,0x049c121c
049c1018  mov x1,xzr
049c101c  fmov s8,s0
049c1020  fmov s9,s1
049c1024  fmov s10,s2
049c1028  bl 0x057ef578
049c102c  ldr x0,[x19, #0xe8]
049c1030  cbz x0,0x049c121c
049c1034  ldr s3,[sp, #0x44]
049c1038  fadd s1,s10,s15
049c103c  fadd s2,s9,s12
049c1040  mov x1,xzr
049c1044  fadd s3,s8,s3
049c1048  fmul s8,s1,s0
049c104c  fmul s9,s2,s0
049c1050  fmul s10,s3,s0
049c1054  bl 0x057eefd0
049c1058  fmov s3,s0
049c105c  fmov s4,s1
049c1060  fmov s5,s2
049c1064  fmov s0,s10
049c1068  fmov s1,s9
049c106c  fmov s2,s8
049c1070  bl 0x049c1220
049c1074  ldr x0,[x19, #0xe8]
049c1078  cbz x0,0x049c121c
049c107c  mov x1,xzr
049c1080  fmov s13,s0
049c1084  fmov s14,s1
049c1088  str s2,[sp, #0x3c]
049c108c  bl 0x057eed98
049c1090  mov x0,x19
049c1094  mov x1,xzr
049c1098  stp s1,s0,[sp, #0x34]
049c109c  str s2,[sp, #0x30]
049c10a0  bl 0x057dc0f8
049c10a4  cbz x0,0x049c121c
049c10a8  mov x1,xzr
049c10ac  bl 0x057ee2ec
049c10b0  ldr x0,[x19, #0xe8]
049c10b4  cbz x0,0x049c121c
049c10b8  mov x1,xzr
049c10bc  fmov s8,s0
049c10c0  fmov s10,s1
049c10c4  fmov s11,s2
049c10c8  bl 0x057ef578
049c10cc  ldr x20,[x19, #0xe8]
049c10d0  cbz x20,0x049c121c
049c10d4  fmov s9,s0
049c10d8  fadd s0,s11,s15
049c10dc  ldr s1,[sp, #0x40]
049c10e0  add x0,sp,#0x4c
049c10e4  add x1,sp,#0x48
049c10e8  fadd s10,s10,s12
049c10ec  fmul s11,s0,s9
049c10f0  ldr s0,[sp, #0x2c]
049c10f4  fmul s0,s1,s0
049c10f8  bl 0x05afb270
049c10fc  ldp s0,s1,[sp, #0x48]
049c1100  fmov s3,0x41200000
049c1104  ldr s2,[sp, #0x44]
049c1108  mov x0,x20
049c110c  mov x1,xzr
049c1110  fmul s1,s1,s3
049c1114  fadd s2,s8,s2
049c1118  fmul s0,s0,s3
049c111c  fadd s1,s1,s10
049c1120  fadd s0,s0,s2
049c1124  fmul s8,s1,s9
049c1128  fmul s9,s0,s9
049c112c  bl 0x057eefd0
049c1130  fmov s3,s0
049c1134  fmov s4,s1
049c1138  fmov s5,s2
049c113c  fmov s0,s9
049c1140  fmov s1,s8
049c1144  fmov s2,s11
049c1148  bl 0x049c1220
049c114c  ldr x0,[x19, #0xe8]
049c1150  cbz x0,0x049c121c
049c1154  mov x1,xzr
049c1158  fmov s15,s0
049c115c  fmov s8,s1
049c1160  fmov s9,s2
049c1164  bl 0x057eed98
049c1168  fmov s10,s0
049c116c  fmov s11,s1
049c1170  ldr x0,[x25]
049c1174  fmov s12,s2
049c1178  ldr w8,[x0, #0xe4]
049c117c  cbnz w8,0x049c1184
049c1180  bl 0x029f5bd0
049c1184  fmov s7,0x3f800000
049c1188  ldp s2,s16,[sp, #0x3c]
049c118c  fmov s1,0xbf000000
049c1190  ldr s3,[sp, #0x30]
049c1194  fadd s4,s8,s11
049c1198  fadd s5,s9,s12
049c119c  mov x0,xzr
049c11a0  str x28,[sp, #0x8]
049c11a4  fadd s0,s16,s7
049c11a8  fadd s2,s2,s3
049c11ac  fadd s3,s15,s10
049c11b0  fmul s6,s0,s1
049c11b4  ldp s1,s0,[sp, #0x34]
049c11b8  fadd s0,s13,s0
049c11bc  fadd s1,s14,s1
049c11c0  fadd s6,s6,s7
049c11c4  stp s16,s6,[sp]
049c11c8  bl 0x0579985c
049c11cc  movi d15,#0x0
049c11d0  add w27,w27,#0x1
049c11d4  add w29,w29,#0xa
049c11d8  cmp w27,w22
049c11dc  b.lt 0x049c0f60
049c11e0  add w26,w26,#0x1
049c11e4  cmp w26,w23
049c11e8  b.lt 0x049c0f40
049c11ec  ldp x20,x19,[sp, #0xe0]
049c11f0  ldp x22,x21,[sp, #0xd0]
049c11f4  ldp x24,x23,[sp, #0xc0]
049c11f8  ldp x26,x25,[sp, #0xb0]
049c11fc  ldp x28,x27,[sp, #0xa0]
049c1200  ldp x29,x30,[sp, #0x90]
049c1204  ldp d9,d8,[sp, #0x80]
049c1208  ldp d11,d10,[sp, #0x70]
049c120c  ldp d13,d12,[sp, #0x60]
049c1210  ldp d15,d14,[sp, #0x50]
049c1214  add sp,sp,#0xf0
049c1218  ret
049c121c  bl 0x029f5cfc
