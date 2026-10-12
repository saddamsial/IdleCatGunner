02c40a90  sub sp,sp,#0x50
02c40a94  stp d11,d10,[sp, #0x10]
02c40a98  stp d9,d8,[sp, #0x20]
02c40a9c  stp x30,x21,[sp, #0x30]
02c40aa0  stp x20,x19,[sp, #0x40]
02c40aa4  fmov s8,s0
02c40aa8  adrp x20,0x625c000
02c40aac  mov x19,x0
02c40ab0  ldrb w8,[x20, #0xa5]
02c40ab4  tbnz w8,#0x0,0x02c40ad8
02c40ab8  adrp x0,0x5e63000
02c40abc  ldr x0,[x0, #0x1d8]
02c40ac0  bl 0x029f5a50
02c40ac4  adrp x0,0x5e61000
02c40ac8  ldr x0,[x0, #0x878]
02c40acc  bl 0x029f5a50
02c40ad0  mov w8,#0x1
02c40ad4  strb w8,[x20, #0xa5]
02c40ad8  ldr s9,[x19, #0x1d0]
02c40adc  ldr s10,[x19, #0x1d8]
02c40ae0  adrp x8,0x116c000
02c40ae4  fmul s0,s9,s9
02c40ae8  fmul s1,s10,s10
02c40aec  fadd s11,s0,s1
02c40af0  ldr s0,[x8, #0x268]
02c40af4  fcmp s11,s0
02c40af8  b.pl 0x02c40b14
02c40afc  ldp x20,x19,[sp, #0x40]
02c40b00  ldp x30,x21,[sp, #0x30]
02c40b04  ldp d9,d8,[sp, #0x20]
02c40b08  ldp d11,d10,[sp, #0x10]
02c40b0c  add sp,sp,#0x50
02c40b10  ret
02c40b14  adrp x20,0x625b000
02c40b18  ldrb w8,[x20, #0x52e]
02c40b1c  cbnz w8,0x02c40b34
02c40b20  adrp x0,0x5e59000
02c40b24  ldr x0,[x0]
02c40b28  bl 0x029f5a50
02c40b2c  mov w8,#0x1
02c40b30  strb w8,[x20, #0x52e]
02c40b34  adrp x8,0x5e59000
02c40b38  ldr x8,[x8]
02c40b3c  ldr x0,[x8]
02c40b40  ldr w8,[x0, #0xe4]
02c40b44  cbnz w8,0x02c40b4c
02c40b48  bl 0x029f5bd0
02c40b4c  fsqrt s0,s11
02c40b50  adrp x8,0x116c000
02c40b54  adrp x20,0x5e63000
02c40b58  ldr s1,[x8, #0x240]
02c40b5c  ldr x20,[x20, #0x1d8]
02c40b60  fcmp s0,s1
02c40b64  b.le 0x02c40b7c
02c40b68  movi d1,#0x0
02c40b6c  fdiv s9,s9,s0
02c40b70  fdiv s11,s1,s0
02c40b74  fdiv s10,s10,s0
02c40b78  b 0x02c40bb4
02c40b7c  adrp x21,0x625b000
02c40b80  ldrb w8,[x21, #0x26f]
02c40b84  cbnz w8,0x02c40b9c
02c40b88  adrp x0,0x5e58000
02c40b8c  ldr x0,[x0, #0xbf8]
02c40b90  bl 0x029f5a50
02c40b94  mov w8,#0x1
02c40b98  strb w8,[x21, #0x26f]
02c40b9c  adrp x8,0x5e58000
02c40ba0  ldr x8,[x8, #0xbf8]
02c40ba4  ldr x8,[x8]
02c40ba8  ldr x8,[x8, #0xb8]
02c40bac  ldp s9,s11,[x8]
02c40bb0  ldr s10,[x8, #0x8]
02c40bb4  ldr x0,[x20]
02c40bb8  ldr w8,[x0, #0xe4]
02c40bbc  cbnz w8,0x02c40bc4
02c40bc0  bl 0x029f5bd0
02c40bc4  fmov s0,s9
02c40bc8  fmov s1,s11
02c40bcc  fmov s2,s10
02c40bd0  bl 0x02c38be8
02c40bd4  ldr s1,[x19, #0x20]
02c40bd8  ldr d11,[x19, #0x230]
02c40bdc  mov x0,xzr
02c40be0  fmul s2,s10,s1
02c40be4  fmul s1,s9,s1
02c40be8  ldr s10,[x19, #0x228]
02c40bec  fmul s2,s2,s8
02c40bf0  fmul s1,s1,s8
02c40bf4  ldr s8,[x19, #0x238]
02c40bf8  fmul s2,s0,s2
02c40bfc  fmul s0,s0,s1
02c40c00  str q0,[sp]
02c40c04  fsub s9,s2,s8
02c40c08  bl 0x057ebabc
02c40c0c  fmul s0,s10,s0
02c40c10  fmov s1,0x3f800000
02c40c14  movi d2,#0x0
02c40c18  ldr q3,[sp]
02c40c1c  ldr x20,[x19, #0x30]
02c40c20  fcmp s0,s1
02c40c24  mov v2.S[0x0],v3.S[0x0]
02c40c28  movi d3,#0x0
02c40c2c  fcsel s1,s1,s0,gt
02c40c30  fcmp s0,#0.0
02c40c34  fsub v0.2S,v2.2S,v11.2S
02c40c38  fcsel s1,s3,s1,mi
02c40c3c  fmul v0.2S,v0.2S,v1.S[0x0]
02c40c40  fmul s1,s9,s1
02c40c44  fadd v2.2S,v11.2S,v0.2S
02c40c48  fadd s0,s8,s1
02c40c4c  str q2,[sp]
02c40c50  str d2,[x19, #0x230]
02c40c54  str s0,[x19, #0x238]
02c40c58  cbz x20,0x02c40cb0
02c40c5c  mov x0,x20
02c40c60  mov x1,xzr
02c40c64  bl 0x0586b268
02c40c68  ldr s2,[x19, #0x238]
02c40c6c  mov x0,x20
02c40c70  ldr q0,[sp]
02c40c74  mov x1,xzr
02c40c78  bl 0x0586b344
02c40c7c  ldr x0,[x19, #0x38]
02c40c80  cbz x0,0x02c40cb0
02c40c84  adrp x8,0x5e61000
02c40c88  mov w2,#0x1
02c40c8c  mov x3,xzr
02c40c90  ldr x8,[x8, #0x878]
02c40c94  ldp x20,x19,[sp, #0x40]
02c40c98  ldp x30,x21,[sp, #0x30]
02c40c9c  ldp d9,d8,[sp, #0x20]
02c40ca0  ldr x1,[x8]
02c40ca4  ldp d11,d10,[sp, #0x10]
02c40ca8  add sp,sp,#0x50
02c40cac  b 0x05784a20
02c40cb0  bl 0x029f5cfc
