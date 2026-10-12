02c31ba4  sub sp,sp,#0x60
02c31ba8  stp x30,x27,[sp, #0x10]
02c31bac  stp x26,x25,[sp, #0x20]
02c31bb0  stp x24,x23,[sp, #0x30]
02c31bb4  stp x22,x21,[sp, #0x40]
02c31bb8  stp x20,x19,[sp, #0x50]
02c31bbc  adrp x21,0x625c000
02c31bc0  mov x19,x1
02c31bc4  mov x20,x0
02c31bc8  ldrb w8,[x21, #0x3b]
02c31bcc  tbnz w8,#0x0,0x02c31c14
02c31bd0  adrp x0,0x5e5d000
02c31bd4  ldr x0,[x0, #0xd28]
02c31bd8  bl 0x029f5a50
02c31bdc  adrp x0,0x5e5d000
02c31be0  ldr x0,[x0, #0x4d8]
02c31be4  bl 0x029f5a50
02c31be8  adrp x0,0x5e61000
02c31bec  ldr x0,[x0, #0xf18]
02c31bf0  bl 0x029f5a50
02c31bf4  adrp x0,0x5e63000
02c31bf8  ldr x0,[x0, #0x80]
02c31bfc  bl 0x029f5a50
02c31c00  adrp x0,0x5e61000
02c31c04  ldr x0,[x0, #0xf28]
02c31c08  bl 0x029f5a50
02c31c0c  mov w8,#0x1
02c31c10  strb w8,[x21, #0x3b]
02c31c14  ldr x0,[x20, #0x20]
02c31c18  cbz x0,0x02c31e8c
02c31c1c  mov x1,x19
02c31c20  bl 0x02c30f64
02c31c24  cbz x19,0x02c31e8c
02c31c28  ldr x0,[x20, #0x40]
02c31c2c  cbz x0,0x02c31e8c
02c31c30  ldrb w21,[x19, #0x20]
02c31c34  mov x2,xzr
02c31c38  cmp w21,#0x0
02c31c3c  cset w1,ne
02c31c40  bl 0x057dff3c
02c31c44  ldr x0,[x20, #0x48]
02c31c48  cbz x0,0x02c31e8c
02c31c4c  cmp w21,#0x0
02c31c50  mov x2,xzr
02c31c54  cset w1,eq
02c31c58  bl 0x057dff3c
02c31c5c  cbz w21,0x02c31c8c
02c31c60  adrp x8,0x5e5d000
02c31c64  adrp x27,0x5e61000
02c31c68  ldr x8,[x8, #0x4d8]
02c31c6c  ldr x0,[x8]
02c31c70  ldr x27,[x27, #0xf18]
02c31c74  ldr w22,[x19, #0x18]
02c31c78  ldr w25,[x19, #0x10]
02c31c7c  ldr w8,[x0, #0xe4]
02c31c80  cbz w8,0x02c31d14
02c31c84  mov w8,w22
02c31c88  b 0x02c31d1c
02c31c8c  ldr x8,[x20, #0x68]
02c31c90  cbz x8,0x02c31e8c
02c31c94  ldrsw x9,[x19, #0x14]
02c31c98  ldr w10,[x8, #0x18]
02c31c9c  cmp w9,w10
02c31ca0  b.cs 0x02c31e90
02c31ca4  ldr x0,[x20, #0x58]
02c31ca8  cbz x0,0x02c31e8c
02c31cac  add x8,x8,x9, LSL #0x3
02c31cb0  mov x2,xzr
02c31cb4  ldr x1,[x8, #0x20]
02c31cb8  bl 0x058d34cc
02c31cbc  adrp x8,0x5e5d000
02c31cc0  ldr x8,[x8, #0xd28]
02c31cc4  ldr x20,[x20, #0x60]
02c31cc8  ldr w19,[x19, #0x14]
02c31ccc  ldr x0,[x8]
02c31cd0  ldr w8,[x0, #0xe4]
02c31cd4  cbnz w8,0x02c31cdc
02c31cd8  bl 0x029f5bd0
02c31cdc  mov w0,w19
02c31ce0  mov x1,xzr
02c31ce4  bl 0x02c2ce84
02c31ce8  cbz x20,0x02c31e8c
02c31cec  mov x1,x0
02c31cf0  mov x0,x20
02c31cf4  mov x2,xzr
02c31cf8  ldp x20,x19,[sp, #0x50]
02c31cfc  ldp x22,x21,[sp, #0x40]
02c31d00  ldp x24,x23,[sp, #0x30]
02c31d04  ldp x26,x25,[sp, #0x20]
02c31d08  ldp x30,x27,[sp, #0x10]
02c31d0c  add sp,sp,#0x60
02c31d10  b 0x058d34cc
02c31d14  bl 0x029f5bd0
02c31d18  ldr w8,[x19, #0x18]
02c31d1c  lsl w9,w8,#0x1
02c31d20  adrp x24,0x5e58000
02c31d24  mov w26,#0x32
02c31d28  ldr x24,[x24, #0xa10]
02c31d2c  mov w10,#0x2
02c31d30  ldr x21,[x20, #0x28]
02c31d34  add w9,w9,#0x2
02c31d38  add w8,w8,#0x1
02c31d3c  add x1,sp,#0xc
02c31d40  cmp w9,#0x32
02c31d44  ldr x0,[x24, #0x48]
02c31d48  str w8,[sp, #0xc]
02c31d4c  csel w9,w9,w26,lt
02c31d50  cmp w9,#0x2
02c31d54  csel w23,w9,w10,gt
02c31d58  bl 0x029f5bd8
02c31d5c  ldr x8,[x27]
02c31d60  mov x1,x0
02c31d64  mov x2,xzr
02c31d68  mov x0,x8
02c31d6c  bl 0x046b6c0c
02c31d70  cbz x21,0x02c31e8c
02c31d74  ldr x8,[x21]
02c31d78  mov x1,x0
02c31d7c  cmp w25,#0x9
02c31d80  mov w9,#0x12c
02c31d84  mov x0,x21
02c31d88  ldr x10,[x8, #0x558]
02c31d8c  ldr x2,[x8, #0x560]
02c31d90  csel w25,w9,w26,cc
02c31d94  blr x10
02c31d98  ldr x21,[x20, #0x30]
02c31d9c  cmp w22,w25
02c31da0  b.ge 0x02c31e1c
02c31da4  ldr w8,[x19, #0x1c]
02c31da8  ldr x0,[x24, #0x48]
02c31dac  add x1,sp,#0x8
02c31db0  str w8,[sp, #0x8]
02c31db4  bl 0x029f5bd8
02c31db8  mov x22,x0
02c31dbc  ldr x0,[x24, #0x48]
02c31dc0  add x1,sp,#0x4
02c31dc4  str w23,[sp, #0x4]
02c31dc8  bl 0x029f5bd8
02c31dcc  adrp x8,0x5e61000
02c31dd0  mov x2,x0
02c31dd4  mov x1,x22
02c31dd8  ldr x8,[x8, #0xf28]
02c31ddc  mov x3,xzr
02c31de0  ldr x8,[x8]
02c31de4  mov x0,x8
02c31de8  bl 0x046c1d14
02c31dec  cbz x21,0x02c31e8c
02c31df0  ldr x8,[x21]
02c31df4  mov x1,x0
02c31df8  mov x0,x21
02c31dfc  ldr x9,[x8, #0x558]
02c31e00  ldr x2,[x8, #0x560]
02c31e04  blr x9
02c31e08  ldr s0,[x19, #0x1c]
02c31e0c  scvtf s1,w23
02c31e10  scvtf s0,s0
02c31e14  fdiv s0,s0,s1
02c31e18  b 0x02c31e44
02c31e1c  cbz x21,0x02c31e8c
02c31e20  adrp x8,0x5e63000
02c31e24  mov x0,x21
02c31e28  ldr x8,[x8, #0x80]
02c31e2c  ldr x9,[x21]
02c31e30  ldr x1,[x8]
02c31e34  ldr x8,[x9, #0x558]
02c31e38  ldr x2,[x9, #0x560]
02c31e3c  blr x8
02c31e40  movi d0,#0x0
02c31e44  ldr x0,[x20, #0x38]
02c31e48  cbz x0,0x02c31e8c
02c31e4c  mov x1,xzr
02c31e50  bl 0x02c28290
02c31e54  ldr x0,[x20, #0x50]
02c31e58  cbz x0,0x02c31e8c
02c31e5c  ldr w8,[x19, #0x1c]
02c31e60  mov x2,xzr
02c31e64  cmp w8,w23
02c31e68  cset w1,ge
02c31e6c  bl 0x057dff3c
02c31e70  ldp x20,x19,[sp, #0x50]
02c31e74  ldp x22,x21,[sp, #0x40]
02c31e78  ldp x24,x23,[sp, #0x30]
02c31e7c  ldp x26,x25,[sp, #0x20]
02c31e80  ldp x30,x27,[sp, #0x10]
02c31e84  add sp,sp,#0x60
02c31e88  ret
02c31e8c  bl 0x029f5cfc
02c31e90  bl 0x029f5d04
