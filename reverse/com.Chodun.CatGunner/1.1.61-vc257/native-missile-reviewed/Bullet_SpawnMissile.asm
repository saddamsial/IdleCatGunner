02c65958  sub sp,sp,#0x90
02c6595c  stp d15,d14,[sp, #0x10]
02c65960  stp d13,d12,[sp, #0x20]
02c65964  stp d11,d10,[sp, #0x30]
02c65968  stp d9,d8,[sp, #0x40]
02c6596c  stp x30,x25,[sp, #0x50]
02c65970  stp x24,x23,[sp, #0x60]
02c65974  stp x22,x21,[sp, #0x70]
02c65978  stp x20,x19,[sp, #0x80]
02c6597c  fmov s15,s6
02c65980  fmov s13,s5
02c65984  adrp x25,0x625c000
02c65988  fmov s12,s4
02c6598c  fmov s14,s3
02c65990  ldrb w8,[x25, #0x24b]
02c65994  fmov s9,s2
02c65998  fmov s10,s1
02c6599c  ldr s8,[sp, #0x90]
02c659a0  fmov s11,s0
02c659a4  mov x23,x5
02c659a8  mov w21,w4
02c659ac  mov x20,x3
02c659b0  mov x22,x2
02c659b4  mov w24,w1
02c659b8  mov x19,x0
02c659bc  str s7,[sp, #0xc]
02c659c0  tbnz w8,#0x0,0x02c659d8
02c659c4  adrp x0,0x5e63000
02c659c8  ldr x0,[x0, #0x9d0]
02c659cc  bl 0x029f5a50
02c659d0  mov w8,#0x1
02c659d4  strb w8,[x25, #0x24b]
02c659d8  mov x0,x19
02c659dc  mov w1,w24
02c659e0  bl 0x02c652f8
02c659e4  mov x0,x19
02c659e8  mov w1,w24
02c659ec  bl 0x02c653ac
02c659f0  mov x0,x19
02c659f4  bl 0x02c656f0
02c659f8  mov w8,#0x5
02c659fc  ldr s1,[sp, #0xc]
02c65a00  adrp x24,0x625b000
02c65a04  str w8,[x19, #0x98]
02c65a08  adrp x8,0x116c000
02c65a0c  ldr s0,[x8, #0x174]
02c65a10  ldrb w8,[x24, #0xae8]
02c65a14  str w23,[x19, #0xa0]
02c65a18  mov w23,#0x1
02c65a1c  str s15,[x19, #0x9c]
02c65a20  fmaxnm s0,s1,s0
02c65a24  strb w23,[x19, #0xa4]
02c65a28  stp s11,s10,[x19, #0xa8]
02c65a2c  stp s9,s14,[x19, #0xb0]
02c65a30  stp s12,s13,[x19, #0xb8]
02c65a34  str s0,[x19, #0xc4]
02c65a38  str wzr,[x19, #0xc8]
02c65a3c  cbnz w8,0x02c65a50
02c65a40  adrp x0,0x5e59000
02c65a44  ldr x0,[x0]
02c65a48  bl 0x029f5a50
02c65a4c  strb w23,[x24, #0xae8]
02c65a50  adrp x24,0x5e59000
02c65a54  fsub s14,s14,s11
02c65a58  fsub s13,s13,s9
02c65a5c  ldr x24,[x24]
02c65a60  ldr x0,[x24]
02c65a64  ldr w8,[x0, #0xe4]
02c65a68  cbnz w8,0x02c65a70
02c65a6c  bl 0x029f5bd0
02c65a70  fmul s15,s14,s14
02c65a74  str s13,[sp, #0x8]
02c65a78  fmul s13,s13,s13
02c65a7c  ldr x0,[x19, #0x58]
02c65a80  fadd s0,s15,s13
02c65a84  fsqrt s0,s0
02c65a88  fmul s0,s0,s8
02c65a8c  str s0,[x19, #0xc0]
02c65a90  cbz x0,0x02c65c40
02c65a94  mov w1,#0x1
02c65a98  mov x2,xzr
02c65a9c  bl 0x0586b718
02c65aa0  mov x0,x19
02c65aa4  mov x1,xzr
02c65aa8  bl 0x057dc0f8
02c65aac  cbz x0,0x02c65c40
02c65ab0  fmov s0,s11
02c65ab4  fmov s1,s10
02c65ab8  mov x1,xzr
02c65abc  fmov s2,s9
02c65ac0  fsub s8,s12,s10
02c65ac4  bl 0x057eee74
02c65ac8  fmul s0,s8,s8
02c65acc  adrp x8,0x116c000
02c65ad0  stp s11,s10,[x19, #0x6c]
02c65ad4  str s9,[x19, #0x74]
02c65ad8  fadd s0,s15,s0
02c65adc  fadd s12,s13,s0
02c65ae0  ldr s0,[x8, #0x268]
02c65ae4  fcmp s12,s0
02c65ae8  b.le 0x02c65b9c
02c65aec  mov x0,x19
02c65af0  mov x1,xzr
02c65af4  bl 0x057dc0f8
02c65af8  adrp x25,0x625b000
02c65afc  mov x23,x0
02c65b00  ldrb w8,[x25, #0x52e]
02c65b04  cbnz w8,0x02c65b1c
02c65b08  adrp x0,0x5e59000
02c65b0c  ldr x0,[x0]
02c65b10  bl 0x029f5a50
02c65b14  mov w8,#0x1
02c65b18  strb w8,[x25, #0x52e]
02c65b1c  ldr x0,[x24]
02c65b20  ldr s9,[sp, #0x8]
02c65b24  ldr w8,[x0, #0xe4]
02c65b28  cbnz w8,0x02c65b30
02c65b2c  bl 0x029f5bd0
02c65b30  fsqrt s2,s12
02c65b34  adrp x8,0x116c000
02c65b38  ldr s0,[x8, #0x240]
02c65b3c  fcmp s2,s0
02c65b40  b.le 0x02c65b54
02c65b44  fdiv s0,s14,s2
02c65b48  fdiv s1,s8,s2
02c65b4c  fdiv s2,s9,s2
02c65b50  b 0x02c65b8c
02c65b54  adrp x24,0x625b000
02c65b58  ldrb w8,[x24, #0x26f]
02c65b5c  cbnz w8,0x02c65b74
02c65b60  adrp x0,0x5e58000
02c65b64  ldr x0,[x0, #0xbf8]
02c65b68  bl 0x029f5a50
02c65b6c  mov w8,#0x1
02c65b70  strb w8,[x24, #0x26f]
02c65b74  adrp x8,0x5e58000
02c65b78  ldr x8,[x8, #0xbf8]
02c65b7c  ldr x8,[x8]
02c65b80  ldr x8,[x8, #0xb8]
02c65b84  ldp s0,s1,[x8]
02c65b88  ldr s2,[x8, #0x8]
02c65b8c  cbz x23,0x02c65c40
02c65b90  mov x0,x23
02c65b94  mov x1,xzr
02c65b98  bl 0x057ef44c
02c65b9c  ldp q1,q0,[x22]
02c65ba0  add x0,x19,#0x28
02c65ba4  mov x1,xzr
02c65ba8  and w21,w21,#0x1
02c65bac  stur q0,[x19, #0x38]
02c65bb0  stur q1,[x19, #0x28]
02c65bb4  bl 0x029f59f4
02c65bb8  mov x0,x19
02c65bbc  mov x1,x20
02c65bc0  str x20,[x0, #0x48]!
02c65bc4  bl 0x029f59f4
02c65bc8  mov x0,x19
02c65bcc  mov x1,xzr
02c65bd0  strb w21,[x19, #0x24]
02c65bd4  bl 0x057dc1c8
02c65bd8  cbz x0,0x02c65c40
02c65bdc  mov w1,#0x1
02c65be0  mov x2,xzr
02c65be4  bl 0x057dff3c
02c65be8  ldr x0,[x19, #0x60]
02c65bec  cbz x0,0x02c65c40
02c65bf0  adrp x20,0x5e63000
02c65bf4  mov x1,xzr
02c65bf8  ldr x20,[x20, #0x9d0]
02c65bfc  bl 0x0586196c
02c65c00  fmov s0,0x3f000000
02c65c04  ldr s1,[sp, #0xc]
02c65c08  ldr x1,[x20]
02c65c0c  mov x0,x19
02c65c10  ldp x20,x19,[sp, #0x80]
02c65c14  ldp x22,x21,[sp, #0x70]
02c65c18  mov x2,xzr
02c65c1c  ldp x24,x23,[sp, #0x60]
02c65c20  fadd s0,s1,s0
02c65c24  ldp x30,x25,[sp, #0x50]
02c65c28  ldp d9,d8,[sp, #0x40]
02c65c2c  ldp d11,d10,[sp, #0x30]
02c65c30  ldp d13,d12,[sp, #0x20]
02c65c34  ldp d15,d14,[sp, #0x10]
02c65c38  add sp,sp,#0x90
02c65c3c  b 0x057e1774
02c65c40  bl 0x029f5cfc
