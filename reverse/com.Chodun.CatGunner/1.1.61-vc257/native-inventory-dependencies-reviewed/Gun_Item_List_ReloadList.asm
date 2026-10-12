02c73c20  sub sp,sp,#0x90
02c73c24  stp x30,x27,[sp, #0x40]
02c73c28  stp x26,x25,[sp, #0x50]
02c73c2c  stp x24,x23,[sp, #0x60]
02c73c30  stp x22,x21,[sp, #0x70]
02c73c34  stp x20,x19,[sp, #0x80]
02c73c38  adrp x20,0x625c000
02c73c3c  adrp x22,0x5e5d000
02c73c40  mov x19,x0
02c73c44  ldrb w8,[x20, #0x2ec]
02c73c48  ldr x22,[x22, #0xd40]
02c73c4c  tbnz w8,#0x0,0x02c73cb8
02c73c50  adrp x0,0x5e63000
02c73c54  ldr x0,[x0, #0xa90]
02c73c58  bl 0x029f5a50
02c73c5c  adrp x0,0x5e63000
02c73c60  ldr x0,[x0, #0xa98]
02c73c64  bl 0x029f5a50
02c73c68  adrp x0,0x5e63000
02c73c6c  ldr x0,[x0, #0xaa0]
02c73c70  bl 0x029f5a50
02c73c74  adrp x0,0x5e5d000
02c73c78  ldr x0,[x0, #0xd40]
02c73c7c  bl 0x029f5a50
02c73c80  adrp x0,0x5e63000
02c73c84  ldr x0,[x0, #0xc20]
02c73c88  bl 0x029f5a50
02c73c8c  adrp x0,0x5e63000
02c73c90  ldr x0,[x0, #0xc28]
02c73c94  bl 0x029f5a50
02c73c98  adrp x0,0x5e63000
02c73c9c  ldr x0,[x0, #0xab0]
02c73ca0  bl 0x029f5a50
02c73ca4  adrp x0,0x5e59000
02c73ca8  ldr x0,[x0, #0x1c0]
02c73cac  bl 0x029f5a50
02c73cb0  mov w8,#0x1
02c73cb4  strb w8,[x20, #0x2ec]
02c73cb8  ldr x8,[x22]
02c73cbc  stp xzr,xzr,[sp, #0x20]
02c73cc0  str xzr,[sp, #0x30]
02c73cc4  ldr x8,[x8, #0xb8]
02c73cc8  ldr x8,[x8]
02c73ccc  cbz x8,0x02c73f54
02c73cd0  ldr x0,[x19, #0x40]
02c73cd4  cbz x0,0x02c73f54
02c73cd8  adrp x9,0x5e63000
02c73cdc  adrp x26,0x5e63000
02c73ce0  adrp x23,0x5e59000
02c73ce4  ldr x9,[x9, #0xab0]
02c73ce8  adrp x24,0x5e63000
02c73cec  adrp x21,0x5e63000
02c73cf0  ldr x26,[x26, #0xa98]
02c73cf4  ldr x23,[x23, #0x1c0]
02c73cf8  ldr x24,[x24, #0xc20]
02c73cfc  ldr x21,[x21, #0xa90]
02c73d00  ldr x1,[x9]
02c73d04  ldr x25,[x8, #0x40]
02c73d08  add x8,sp,#0x8
02c73d0c  bl 0x0452d690
02c73d10  ldr x8,[sp, #0x18]
02c73d14  ldur q0,[sp, #0x8]
02c73d18  str x8,[sp, #0x30]
02c73d1c  add x8,sp,#0x20
02c73d20  str q0,[sp, #0x20]
02c73d24  stp xzr,x8,[sp, #0x8]
02c73d28  ldr x1,[x26]
02c73d2c  add x0,sp,#0x20
02c73d30  bl 0x03fa4e10
02c73d34  tbz w0,#0x0,0x02c73d70
02c73d38  ldr x20,[sp, #0x30]
02c73d3c  cbz x20,0x02c73f58
02c73d40  ldrb w8,[x20, #0xb8]
02c73d44  cbz w8,0x02c73d50
02c73d48  mov x0,x20
02c73d4c  bl 0x02c70ddc
02c73d50  mov x0,x20
02c73d54  mov x1,xzr
02c73d58  bl 0x057dc1c8
02c73d5c  cbz x0,0x02c73f5c
02c73d60  mov w1,wzr
02c73d64  mov x2,xzr
02c73d68  bl 0x057dff3c
02c73d6c  b 0x02c73d28
02c73d70  ldr x1,[x21]
02c73d74  add x0,sp,#0x20
02c73d78  bl 0x03fa4e0c
02c73d7c  ldr x8,[x19, #0x40]
02c73d80  cbz x8,0x02c73f54
02c73d84  ldp w2,w9,[x8, #0x18]
02c73d88  add w9,w9,#0x1
02c73d8c  cmp w2,#0x1
02c73d90  stp wzr,w9,[x8, #0x18]
02c73d94  b.lt 0x02c73da8
02c73d98  ldr x0,[x8, #0x10]
02c73d9c  mov w1,wzr
02c73da0  mov x3,xzr
02c73da4  bl 0x04873aac
02c73da8  cbz x25,0x02c73f54
02c73dac  ldr x8,[x25, #0x18]
02c73db0  cmp w8,#0x1
02c73db4  b.lt 0x02c73ea0
02c73db8  mov w26,wzr
02c73dbc  mov x20,xzr
02c73dc0  and x8,x8,#0xffffffff
02c73dc4  add x27,x25,#0x20
02c73dc8  cmp x20,w8, UXTW 
02c73dcc  b.cs 0x02c73f60
02c73dd0  ldr w1,[x27, x20, LSL #0x2]
02c73dd4  cmn w1,#0x1
02c73dd8  b.eq 0x02c73e90
02c73ddc  ldr x8,[x19, #0x20]
02c73de0  cbz x8,0x02c73f54
02c73de4  ldr w9,[x8, #0x18]
02c73de8  cmp w26,w9
02c73dec  b.ge 0x02c73ea0
02c73df0  b.cs 0x02c73f60
02c73df4  add x8,x8,w26, SXTW  #0x3
02c73df8  ldr x21,[x8, #0x20]
02c73dfc  cbz x21,0x02c73f54
02c73e00  mov x0,x21
02c73e04  mov w2,w20
02c73e08  bl 0x02c70974
02c73e0c  mov x0,x21
02c73e10  mov x1,xzr
02c73e14  bl 0x057dc1c8
02c73e18  cbz x0,0x02c73f54
02c73e1c  mov w1,#0x1
02c73e20  mov x2,xzr
02c73e24  bl 0x057dff3c
02c73e28  ldr x0,[x19, #0x40]
02c73e2c  cbz x0,0x02c73f54
02c73e30  ldr w10,[x0, #0x1c]
02c73e34  ldr x8,[x0, #0x10]
02c73e38  ldr x9,[x24]
02c73e3c  add w10,w10,#0x1
02c73e40  str w10,[x0, #0x1c]
02c73e44  cbz x8,0x02c73f54
02c73e48  ldrsw x10,[x0, #0x18]
02c73e4c  ldr w11,[x8, #0x18]
02c73e50  cmp w10,w11
02c73e54  b.cs 0x02c73e78
02c73e58  add x8,x8,x10, LSL #0x3
02c73e5c  add w9,w10,#0x1
02c73e60  mov x1,x21
02c73e64  str w9,[x0, #0x18]
02c73e68  str x21,[x8, #0x20]!
02c73e6c  mov x0,x8
02c73e70  bl 0x029f59f4
02c73e74  b 0x02c73e8c
02c73e78  ldr x8,[x9, #0x20]
02c73e7c  mov x1,x21
02c73e80  ldr x8,[x8, #0xc0]
02c73e84  ldr x2,[x8, #0x70]
02c73e88  bl 0x0452cba8
02c73e8c  add w26,w26,#0x1
02c73e90  ldr w8,[x25, #0x18]
02c73e94  add x20,x20,#0x1
02c73e98  cmp x20,w8, SXTW 
02c73e9c  b.lt 0x02c73dc8
02c73ea0  mov x0,x19
02c73ea4  bl 0x02c75ec8
02c73ea8  mov x0,x19
02c73eac  bl 0x02c76004
02c73eb0  ldr x8,[x22]
02c73eb4  ldr x0,[x23]
02c73eb8  ldr x8,[x8, #0xb8]
02c73ebc  ldr w9,[x0, #0xe4]
02c73ec0  ldr x19,[x8]
02c73ec4  cbnz w9,0x02c73ecc
02c73ec8  bl 0x029f5bd0
02c73ecc  mov x0,x19
02c73ed0  mov x1,xzr
02c73ed4  mov x2,xzr
02c73ed8  bl 0x057dfa70
02c73edc  tbz w0,#0x0,0x02c73f38
02c73ee0  ldr x8,[x22]
02c73ee4  ldr x8,[x8, #0xb8]
02c73ee8  ldr x8,[x8]
02c73eec  cbz x8,0x02c73f54
02c73ef0  ldr x0,[x23]
02c73ef4  ldr x19,[x8, #0xe0]
02c73ef8  ldr w9,[x0, #0xe4]
02c73efc  cbnz w9,0x02c73f04
02c73f00  bl 0x029f5bd0
02c73f04  mov x0,x19
02c73f08  mov x1,xzr
02c73f0c  mov x2,xzr
02c73f10  bl 0x057dfa70
02c73f14  tbz w0,#0x0,0x02c73f38
02c73f18  ldr x8,[x22]
02c73f1c  ldr x8,[x8, #0xb8]
02c73f20  ldr x8,[x8]
02c73f24  cbz x8,0x02c73f54
02c73f28  ldr x0,[x8, #0xe0]
02c73f2c  cbz x0,0x02c73f54
02c73f30  mov x1,xzr
02c73f34  bl 0x02c69758
02c73f38  ldp x20,x19,[sp, #0x80]
02c73f3c  ldp x22,x21,[sp, #0x70]
02c73f40  ldp x24,x23,[sp, #0x60]
02c73f44  ldp x26,x25,[sp, #0x50]
02c73f48  ldp x30,x27,[sp, #0x40]
02c73f4c  add sp,sp,#0x90
02c73f50  ret
02c73f54  bl 0x029f5cfc
02c73f58  bl 0x029f5cfc
02c73f5c  bl 0x029f5cfc
02c73f60  bl 0x029f5d04
