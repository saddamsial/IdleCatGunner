02c52a00  sub sp,sp,#0x50
02c52a04  str x30,[sp, #0x10]
02c52a08  stp x24,x23,[sp, #0x20]
02c52a0c  stp x22,x21,[sp, #0x30]
02c52a10  stp x20,x19,[sp, #0x40]
02c52a14  adrp x21,0x625c000
02c52a18  adrp x20,0x5e5e000
02c52a1c  adrp x23,0x5e59000
02c52a20  ldrb w8,[x21, #0x169]
02c52a24  ldr x20,[x20, #0x68]
02c52a28  ldr x23,[x23, #0x1c0]
02c52a2c  mov x19,x0
02c52a30  tbnz w8,#0x0,0x02c52a60
02c52a34  adrp x0,0x5e59000
02c52a38  ldr x0,[x0, #0x1c0]
02c52a3c  bl 0x029f5a50
02c52a40  adrp x0,0x5e5e000
02c52a44  ldr x0,[x0, #0x68]
02c52a48  bl 0x029f5a50
02c52a4c  adrp x0,0x5e61000
02c52a50  ldr x0,[x0, #0xf28]
02c52a54  bl 0x029f5a50
02c52a58  mov w8,#0x1
02c52a5c  strb w8,[x21, #0x169]
02c52a60  ldr x8,[x20]
02c52a64  ldr x0,[x23]
02c52a68  str xzr,[sp, #0x18]
02c52a6c  str wzr,[sp, #0xc]
02c52a70  ldr x8,[x8, #0xb8]
02c52a74  ldr w9,[x0, #0xe4]
02c52a78  ldr x20,[x8]
02c52a7c  cbnz w9,0x02c52a84
02c52a80  bl 0x029f5bd0
02c52a84  mov x0,x20
02c52a88  mov x1,xzr
02c52a8c  mov x2,xzr
02c52a90  bl 0x057e14b4
02c52a94  tbnz w0,#0x0,0x02c52d9c
02c52a98  cbz x20,0x02c52db4
02c52a9c  ldr w8,[x19, #0x60]
02c52aa0  cmp w8,#0x7
02c52aa4  b.hi 0x02c52d9c
02c52aa8  ldr x0,[x23]
02c52aac  ldr x21,[x19, #0x20]
02c52ab0  ldr w8,[x0, #0xe4]
02c52ab4  cbnz w8,0x02c52abc
02c52ab8  bl 0x029f5bd0
02c52abc  mov x0,x21
02c52ac0  mov x1,xzr
02c52ac4  mov x2,xzr
02c52ac8  bl 0x057dfa70
02c52acc  tbz w0,#0x0,0x02c52b0c
02c52ad0  ldr w1,[x19, #0x60]
02c52ad4  ldr x21,[x19, #0x20]
02c52ad8  mov x0,x20
02c52adc  bl 0x02c52dc4
02c52ae0  str w0,[sp, #0xc]
02c52ae4  add x0,sp,#0xc
02c52ae8  mov x1,xzr
02c52aec  bl 0x0484e6a4
02c52af0  cbz x21,0x02c52db4
02c52af4  ldr x8,[x21]
02c52af8  mov x1,x0
02c52afc  mov x0,x21
02c52b00  ldr x9,[x8, #0x558]
02c52b04  ldr x2,[x8, #0x560]
02c52b08  blr x9
02c52b0c  ldr x0,[x23]
02c52b10  ldr x21,[x19, #0x28]
02c52b14  ldr w8,[x0, #0xe4]
02c52b18  cbnz w8,0x02c52b20
02c52b1c  bl 0x029f5bd0
02c52b20  mov x0,x21
02c52b24  mov x1,xzr
02c52b28  mov x2,xzr
02c52b2c  bl 0x057dfa70
02c52b30  tbz w0,#0x0,0x02c52b60
02c52b34  ldr w1,[x19, #0x60]
02c52b38  ldr x21,[x19, #0x28]
02c52b3c  mov x0,x20
02c52b40  bl 0x02c52e0c
02c52b44  cbz x21,0x02c52db4
02c52b48  ldr x8,[x21]
02c52b4c  mov x1,x0
02c52b50  mov x0,x21
02c52b54  ldr x9,[x8, #0x558]
02c52b58  ldr x2,[x8, #0x560]
02c52b5c  blr x9
02c52b60  ldr w1,[x19, #0x60]
02c52b64  add x2,sp,#0x1c
02c52b68  add x3,sp,#0x18
02c52b6c  mov x0,x20
02c52b70  bl 0x02c52fb8
02c52b74  ldr x0,[x23]
02c52b78  ldr x21,[x19, #0x30]
02c52b7c  ldr w8,[x0, #0xe4]
02c52b80  cbnz w8,0x02c52b88
02c52b84  bl 0x029f5bd0
02c52b88  mov x0,x21
02c52b8c  mov x1,xzr
02c52b90  mov x2,xzr
02c52b94  bl 0x057dfa70
02c52b98  tbz w0,#0x0,0x02c52c10
02c52b9c  adrp x24,0x5e58000
02c52ba0  add x1,sp,#0x8
02c52ba4  ldr x24,[x24, #0xa10]
02c52ba8  ldr w8,[sp, #0x1c]
02c52bac  ldr x21,[x19, #0x30]
02c52bb0  ldr x0,[x24, #0x48]
02c52bb4  str w8,[sp, #0x8]
02c52bb8  bl 0x029f5bd8
02c52bbc  mov x22,x0
02c52bc0  ldr w8,[sp, #0x18]
02c52bc4  ldr x0,[x24, #0x48]
02c52bc8  add x1,sp,#0x4
02c52bcc  str w8,[sp, #0x4]
02c52bd0  bl 0x029f5bd8
02c52bd4  adrp x8,0x5e61000
02c52bd8  mov x2,x0
02c52bdc  mov x1,x22
02c52be0  ldr x8,[x8, #0xf28]
02c52be4  mov x3,xzr
02c52be8  ldr x8,[x8]
02c52bec  mov x0,x8
02c52bf0  bl 0x046c1d14
02c52bf4  cbz x21,0x02c52db4
02c52bf8  ldr x8,[x21]
02c52bfc  mov x1,x0
02c52c00  mov x0,x21
02c52c04  ldr x9,[x8, #0x558]
02c52c08  ldr x2,[x8, #0x560]
02c52c0c  blr x9
02c52c10  ldr x0,[x23]
02c52c14  ldr x21,[x19, #0x58]
02c52c18  ldr w8,[x0, #0xe4]
02c52c1c  cbnz w8,0x02c52c24
02c52c20  bl 0x029f5bd0
02c52c24  mov x0,x21
02c52c28  mov x1,xzr
02c52c2c  mov x2,xzr
02c52c30  bl 0x057dfa70
02c52c34  tbz w0,#0x0,0x02c52c88
02c52c38  ldr w8,[sp, #0x18]
02c52c3c  ldr x0,[x19, #0x58]
02c52c40  cmp w8,#0x1
02c52c44  b.lt 0x02c52c78
02c52c48  ldr s0,[sp, #0x1c]
02c52c4c  scvtf s1,w8
02c52c50  movi d2,#0x0
02c52c54  scvtf s0,s0
02c52c58  fdiv s0,s0,s1
02c52c5c  fmov s1,0x3f800000
02c52c60  fcmp s0,s1
02c52c64  fcsel s1,s1,s0,gt
02c52c68  fcmp s0,#0.0
02c52c6c  fcsel s0,s2,s1,mi
02c52c70  cbnz x0,0x02c52c80
02c52c74  b 0x02c52db4
02c52c78  movi d0,#0x0
02c52c7c  cbz x0,0x02c52db4
02c52c80  mov x1,xzr
02c52c84  bl 0x02c28290
02c52c88  ldr w1,[x19, #0x60]
02c52c8c  mov x0,x20
02c52c90  bl 0x02c53078
02c52c94  ldr x8,[x23]
02c52c98  ldr x21,[x19, #0x38]
02c52c9c  mov w20,w0
02c52ca0  ldr w9,[x8, #0xe4]
02c52ca4  cbnz w9,0x02c52cb0
02c52ca8  mov x0,x8
02c52cac  bl 0x029f5bd0
02c52cb0  mov x0,x21
02c52cb4  mov x1,xzr
02c52cb8  mov x2,xzr
02c52cbc  bl 0x057dfa70
02c52cc0  tbz w0,#0x0,0x02c52cdc
02c52cc4  ldr x0,[x19, #0x38]
02c52cc8  cbz x0,0x02c52db4
02c52ccc  cmp w20,#0x0
02c52cd0  mov x2,xzr
02c52cd4  cset w1,eq
02c52cd8  bl 0x057dff3c
02c52cdc  ldr x0,[x23]
02c52ce0  ldr x21,[x19, #0x40]
02c52ce4  ldr w8,[x0, #0xe4]
02c52ce8  cbnz w8,0x02c52cf0
02c52cec  bl 0x029f5bd0
02c52cf0  mov x0,x21
02c52cf4  mov x1,xzr
02c52cf8  mov x2,xzr
02c52cfc  bl 0x057dfa70
02c52d00  tbz w0,#0x0,0x02c52d1c
02c52d04  ldr x0,[x19, #0x40]
02c52d08  cbz x0,0x02c52db4
02c52d0c  cmp w20,#0x1
02c52d10  mov x2,xzr
02c52d14  cset w1,eq
02c52d18  bl 0x057dff3c
02c52d1c  ldr x0,[x23]
02c52d20  ldr x21,[x19, #0x48]
02c52d24  ldr w8,[x0, #0xe4]
02c52d28  cbnz w8,0x02c52d30
02c52d2c  bl 0x029f5bd0
02c52d30  mov x0,x21
02c52d34  mov x1,xzr
02c52d38  mov x2,xzr
02c52d3c  bl 0x057dfa70
02c52d40  tbz w0,#0x0,0x02c52d5c
02c52d44  ldr x0,[x19, #0x48]
02c52d48  cbz x0,0x02c52db4
02c52d4c  cmp w20,#0x2
02c52d50  mov x2,xzr
02c52d54  cset w1,eq
02c52d58  bl 0x057dff3c
02c52d5c  ldr x0,[x23]
02c52d60  ldr x21,[x19, #0x50]
02c52d64  ldr w8,[x0, #0xe4]
02c52d68  cbnz w8,0x02c52d70
02c52d6c  bl 0x029f5bd0
02c52d70  mov x0,x21
02c52d74  mov x1,xzr
02c52d78  mov x2,xzr
02c52d7c  bl 0x057dfa70
02c52d80  tbz w0,#0x0,0x02c52d9c
02c52d84  ldr x0,[x19, #0x50]
02c52d88  cbz x0,0x02c52db4
02c52d8c  cmp w20,#0x3
02c52d90  mov x2,xzr
02c52d94  cset w1,eq
02c52d98  bl 0x057dff3c
02c52d9c  ldp x20,x19,[sp, #0x40]
02c52da0  ldr x30,[sp, #0x10]
02c52da4  ldp x22,x21,[sp, #0x30]
02c52da8  ldp x24,x23,[sp, #0x20]
02c52dac  add sp,sp,#0x50
02c52db0  ret
02c52db4  bl 0x029f5cfc
