02c82c7c  sub sp,sp,#0x70
02c82c80  stp x29,x30,[sp, #0x10]
02c82c84  stp x28,x27,[sp, #0x20]
02c82c88  stp x26,x25,[sp, #0x30]
02c82c8c  stp x24,x23,[sp, #0x40]
02c82c90  stp x22,x21,[sp, #0x50]
02c82c94  stp x20,x19,[sp, #0x60]
02c82c98  adrp x22,0x625c000
02c82c9c  adrp x24,0x5e63000
02c82ca0  mov x20,x2
02c82ca4  ldrb w8,[x22, #0x363]
02c82ca8  ldr x24,[x24, #0xd98]
02c82cac  mov x21,x1
02c82cb0  mov x19,x0
02c82cb4  tbnz w8,#0x0,0x02c82d14
02c82cb8  adrp x0,0x5e58000
02c82cbc  ldr x0,[x0, #0xf08]
02c82cc0  bl 0x029f5a50
02c82cc4  adrp x0,0x5e59000
02c82cc8  ldr x0,[x0, #0x1c0]
02c82ccc  bl 0x029f5a50
02c82cd0  adrp x0,0x5e63000
02c82cd4  ldr x0,[x0, #0xd98]
02c82cd8  bl 0x029f5a50
02c82cdc  adrp x0,0x5e5d000
02c82ce0  ldr x0,[x0, #0x4d0]
02c82ce4  bl 0x029f5a50
02c82ce8  adrp x0,0x5e63000
02c82cec  ldr x0,[x0, #0xc10]
02c82cf0  bl 0x029f5a50
02c82cf4  adrp x0,0x5e63000
02c82cf8  ldr x0,[x0, #0xc18]
02c82cfc  bl 0x029f5a50
02c82d00  adrp x0,0x5e63000
02c82d04  ldr x0,[x0, #0xe10]
02c82d08  bl 0x029f5a50
02c82d0c  mov w8,#0x1
02c82d10  strb w8,[x22, #0x363]
02c82d14  ldr x8,[x24]
02c82d18  adrp x25,0x5e58000
02c82d1c  ldr x8,[x8, #0xb8]
02c82d20  ldrb w8,[x8, #0x8]
02c82d24  ldr x25,[x25, #0xf08]
02c82d28  cbz w8,0x02c82d4c
02c82d2c  ldr x0,[x25]
02c82d30  adrp x20,0x5e63000
02c82d34  ldr w8,[x0, #0xe4]
02c82d38  ldr x20,[x20, #0xc10]
02c82d3c  cbnz w8,0x02c82d44
02c82d40  bl 0x029f5bd0
02c82d44  ldr x0,[x20]
02c82d48  b 0x02c82ee8
02c82d4c  adrp x27,0x5e5d000
02c82d50  ldr x27,[x27, #0x4d0]
02c82d54  ldr x0,[x27]
02c82d58  ldr w8,[x0, #0xe4]
02c82d5c  cbnz w8,0x02c82d68
02c82d60  bl 0x029f5bd0
02c82d64  ldr x0,[x27]
02c82d68  ldr x8,[x0, #0xb8]
02c82d6c  ldr x8,[x8, #0x28]
02c82d70  cbz x8,0x02c831d8
02c82d74  adrp x26,0x5e59000
02c82d78  ldr x26,[x26, #0x1c0]
02c82d7c  ldr x28,[x8, #0x38]
02c82d80  ldr x0,[x26]
02c82d84  ldr w9,[x0, #0xe4]
02c82d88  cbnz w9,0x02c82d90
02c82d8c  bl 0x029f5bd0
02c82d90  mov x0,x21
02c82d94  mov x1,xzr
02c82d98  mov x2,xzr
02c82d9c  bl 0x057dfa70
02c82da0  tbz w0,#0x0,0x02c82e24
02c82da4  cbz x21,0x02c831d8
02c82da8  mov x0,x21
02c82dac  mov x1,xzr
02c82db0  bl 0x057dc1c8
02c82db4  cbz x0,0x02c831d8
02c82db8  mov x1,xzr
02c82dbc  bl 0x057e0000
02c82dc0  tbz w0,#0x0,0x02c82e24
02c82dc4  ldr w8,[x21, #0x68]
02c82dc8  tbnz w8,#0x1f,0x02c82e24
02c82dcc  cbz x28,0x02c831d8
02c82dd0  ldr w9,[x28, #0x18]
02c82dd4  cmp w8,w9
02c82dd8  b.ge 0x02c82e24
02c82ddc  add x8,x28,x8, LSL #0x2
02c82de0  ldr w9,[x21, #0x64]
02c82de4  ldr w8,[x8, #0x20]
02c82de8  cmp w8,w9
02c82dec  b.ne 0x02c82e24
02c82df0  ldr x0,[x27]
02c82df4  ldr w8,[x0, #0xe4]
02c82df8  cbnz w8,0x02c82e04
02c82dfc  bl 0x029f5bd0
02c82e00  ldr x0,[x27]
02c82e04  ldr x8,[x0, #0xb8]
02c82e08  ldr x0,[x8, #0x28]
02c82e0c  cbz x0,0x02c831d8
02c82e10  ldr w1,[x21, #0x68]
02c82e14  mov x2,xzr
02c82e18  bl 0x02c7cc68
02c82e1c  mov w22,w0
02c82e20  b 0x02c82e28
02c82e24  mov w22,#0x1
02c82e28  ldr x0,[x26]
02c82e2c  ldr w8,[x0, #0xe4]
02c82e30  cbnz w8,0x02c82e38
02c82e34  bl 0x029f5bd0
02c82e38  mov x0,x20
02c82e3c  mov x1,xzr
02c82e40  mov x2,xzr
02c82e44  bl 0x057dfa70
02c82e48  tbz w0,#0x0,0x02c82ecc
02c82e4c  cbz x20,0x02c831d8
02c82e50  mov x0,x20
02c82e54  mov x1,xzr
02c82e58  bl 0x057dc1c8
02c82e5c  cbz x0,0x02c831d8
02c82e60  mov x1,xzr
02c82e64  bl 0x057e0000
02c82e68  tbz w0,#0x0,0x02c82ecc
02c82e6c  ldr w8,[x20, #0x68]
02c82e70  tbnz w8,#0x1f,0x02c82ecc
02c82e74  cbz x28,0x02c831d8
02c82e78  ldr w9,[x28, #0x18]
02c82e7c  cmp w8,w9
02c82e80  b.ge 0x02c82ecc
02c82e84  add x8,x28,x8, LSL #0x2
02c82e88  ldr w9,[x20, #0x64]
02c82e8c  ldr w8,[x8, #0x20]
02c82e90  cmp w8,w9
02c82e94  b.ne 0x02c82ecc
02c82e98  ldr x0,[x27]
02c82e9c  ldr w8,[x0, #0xe4]
02c82ea0  cbnz w8,0x02c82eac
02c82ea4  bl 0x029f5bd0
02c82ea8  ldr x0,[x27]
02c82eac  ldr x8,[x0, #0xb8]
02c82eb0  ldr x0,[x8, #0x28]
02c82eb4  cbz x0,0x02c831d8
02c82eb8  ldr w1,[x20, #0x68]
02c82ebc  mov x2,xzr
02c82ec0  bl 0x02c7cc68
02c82ec4  orr w8,w22,w0
02c82ec8  tbz w8,#0x0,0x02c82f14
02c82ecc  ldr x0,[x25]
02c82ed0  ldr w8,[x0, #0xe4]
02c82ed4  cbnz w8,0x02c82edc
02c82ed8  bl 0x029f5bd0
02c82edc  adrp x8,0x5e63000
02c82ee0  ldr x8,[x8, #0xc18]
02c82ee4  ldr x0,[x8]
02c82ee8  mov x1,xzr
02c82eec  bl 0x0579a8d0
02c82ef0  mov x0,x19
02c82ef4  ldp x20,x19,[sp, #0x60]
02c82ef8  ldp x22,x21,[sp, #0x50]
02c82efc  ldp x24,x23,[sp, #0x40]
02c82f00  ldp x26,x25,[sp, #0x30]
02c82f04  ldp x28,x27,[sp, #0x20]
02c82f08  ldp x29,x30,[sp, #0x10]
02c82f0c  add sp,sp,#0x70
02c82f10  b 0x02c825a8
02c82f14  cbz x21,0x02c831d8
02c82f18  mov x8,x19
02c82f1c  ldr w9,[x8, #0x50]!
02c82f20  cmn w9,#0x1
02c82f24  b.eq 0x02c82f48
02c82f28  ldr w11,[x21, #0x68]
02c82f2c  cmp w9,w11
02c82f30  b.eq 0x02c82f40
02c82f34  ldr w10,[x19, #0x58]
02c82f38  cmp w10,w11
02c82f3c  b.ne 0x02c831c0
02c82f40  mov x9,#-0x1
02c82f44  stp x9,x9,[x8]
02c82f48  ldr x8,[x24]
02c82f4c  ldr x0,[x27]
02c82f50  mov w10,#0x1
02c82f54  ldr w29,[x21, #0x64]
02c82f58  ldr x8,[x8, #0xb8]
02c82f5c  ldr w9,[x0, #0xe4]
02c82f60  strb w10,[x8, #0x8]
02c82f64  cbnz w9,0x02c82f70
02c82f68  bl 0x029f5bd0
02c82f6c  ldr x0,[x27]
02c82f70  ldr x8,[x0, #0xb8]
02c82f74  ldr x8,[x8, #0x28]
02c82f78  cbz x8,0x02c831dc
02c82f7c  ldr x9,[x8, #0x20]
02c82f80  cbz x9,0x02c831e0
02c82f84  ldr w9,[x9, #0x18]
02c82f88  add w22,w29,#0x1
02c82f8c  cmp w22,w9
02c82f90  b.ge 0x02c8317c
02c82f94  ldrsw x9,[x21, #0x68]
02c82f98  ldr w10,[x28, #0x18]
02c82f9c  cmp w9,w10
02c82fa0  b.cs 0x02c831e4
02c82fa4  add x9,x28,x9, LSL #0x2
02c82fa8  mov w10,#0xffffffff
02c82fac  ldrsw x23,[x20, #0x68]
02c82fb0  str w10,[x9, #0x20]
02c82fb4  ldr w9,[x0, #0xe4]
02c82fb8  cbnz w9,0x02c82fd0
02c82fbc  bl 0x029f5bd0
02c82fc0  ldr x8,[x27]
02c82fc4  ldr x8,[x8, #0xb8]
02c82fc8  ldr x8,[x8, #0x28]
02c82fcc  cbz x8,0x02c8320c
02c82fd0  ldr x8,[x8, #0x40]
02c82fd4  cbz x8,0x02c831e8
02c82fd8  ldrsw x10,[x21, #0x68]
02c82fdc  ldr w9,[x8, #0x18]
02c82fe0  cmp w10,w9
02c82fe4  b.cs 0x02c831ec
02c82fe8  add x10,x8,x10, LSL #0x2
02c82fec  mov w11,#0xffffffff
02c82ff0  str w11,[x10, #0x20]
02c82ff4  ldr w10,[x28, #0x18]
02c82ff8  ldrsw x12,[x20, #0x68]
02c82ffc  cmp w12,w10
02c83000  b.cs 0x02c831f0
02c83004  add x12,x28,x12, LSL #0x2
02c83008  str w11,[x12, #0x20]
02c8300c  ldrsw x11,[x20, #0x68]
02c83010  cmp w11,w9
02c83014  b.cs 0x02c831f4
02c83018  add x11,x8,x11, LSL #0x2
02c8301c  mov w12,#0xffffffff
02c83020  cmp w23,w10
02c83024  str w12,[x11, #0x20]
02c83028  b.cs 0x02c831f8
02c8302c  add x10,x28,x23, LSL #0x2
02c83030  cmp w23,w9
02c83034  str w22,[x10, #0x20]
02c83038  b.cs 0x02c831fc
02c8303c  add x8,x8,x23, LSL #0x2
02c83040  mov w9,#0xffffffff
02c83044  str w9,[x8, #0x20]
02c83048  mov x0,x19
02c8304c  bl 0x02c825a8
02c83050  ldr x8,[x27]
02c83054  ldr x8,[x8, #0xb8]
02c83058  ldr x0,[x8, #0x28]
02c8305c  cbz x0,0x02c83200
02c83060  mov w1,w22
02c83064  mov x2,xzr
02c83068  bl 0x02c7d444
02c8306c  mov x0,x19
02c83070  mov w1,w23
02c83074  bl 0x02c82b30
02c83078  mov x20,x0
02c8307c  ldr x0,[x26]
02c83080  ldr w8,[x0, #0xe4]
02c83084  cbnz w8,0x02c8308c
02c83088  bl 0x029f5bd0
02c8308c  mov x0,x20
02c83090  mov x1,xzr
02c83094  mov x2,xzr
02c83098  bl 0x057dfa70
02c8309c  tbz w0,#0x0,0x02c830b0
02c830a0  cbz x20,0x02c83208
02c830a4  mov x0,x20
02c830a8  mov x1,xzr
02c830ac  bl 0x02c7f5d0
02c830b0  adrp x20,0x625b000
02c830b4  ldrb w8,[x20, #0xa57]
02c830b8  cbnz w8,0x02c830d0
02c830bc  adrp x0,0x5e5d000
02c830c0  ldr x0,[x0, #0xd70]
02c830c4  bl 0x029f5a50
02c830c8  mov w8,#0x1
02c830cc  strb w8,[x20, #0xa57]
02c830d0  adrp x8,0x5e5d000
02c830d4  ldr x8,[x8, #0xd70]
02c830d8  ldr x8,[x8]
02c830dc  ldr x8,[x8, #0xb8]
02c830e0  ldr x0,[x8]
02c830e4  cbz x0,0x02c83204
02c830e8  fmov s0,0x3f800000
02c830ec  mov w1,#0x3
02c830f0  mov x2,xzr
02c830f4  mov x3,xzr
02c830f8  bl 0x02c1f10c
02c830fc  adrp x21,0x5e58000
02c83100  ldr x21,[x21, #0xa10]
02c83104  str w29,[sp, #0xc]
02c83108  ldr x0,[x21, #0x48]
02c8310c  add x1,sp,#0xc
02c83110  bl 0x029f5bd8
02c83114  mov x20,x0
02c83118  ldr x0,[x21, #0x48]
02c8311c  str w22,[sp, #0x8]
02c83120  add x1,sp,#0x8
02c83124  bl 0x029f5bd8
02c83128  adrp x8,0x5e63000
02c8312c  mov x2,x0
02c83130  ldr x8,[x8, #0xe10]
02c83134  ldr x0,[x8]
02c83138  mov x1,x20
02c8313c  mov x3,xzr
02c83140  bl 0x046c1d14
02c83144  mov x20,x0
02c83148  ldr x0,[x25]
02c8314c  ldr w8,[x0, #0xe4]
02c83150  cbnz w8,0x02c83158
02c83154  bl 0x029f5bd0
02c83158  mov x0,x20
02c8315c  mov x1,xzr
02c83160  bl 0x05799e30
02c83164  ldr x8,[x24]
02c83168  ldr x8,[x8, #0xb8]
02c8316c  strb wzr,[x8, #0x8]
02c83170  mov x0,x19
02c83174  bl 0x02c82428
02c83178  b 0x02c831a0
02c8317c  mov x0,xzr
02c83180  bl 0x02bdfc08
02c83184  mov x1,xzr
02c83188  bl 0x02c1dd54
02c8318c  mov x0,x19
02c83190  bl 0x02c825a8
02c83194  ldr x8,[x24]
02c83198  ldr x8,[x8, #0xb8]
02c8319c  strb wzr,[x8, #0x8]
02c831a0  ldp x20,x19,[sp, #0x60]
02c831a4  ldp x22,x21,[sp, #0x50]
02c831a8  ldp x24,x23,[sp, #0x40]
02c831ac  ldp x26,x25,[sp, #0x30]
02c831b0  ldp x28,x27,[sp, #0x20]
02c831b4  ldp x29,x30,[sp, #0x10]
02c831b8  add sp,sp,#0x70
02c831bc  ret
02c831c0  ldr w11,[x20, #0x68]
02c831c4  cmp w9,w11
02c831c8  b.eq 0x02c82f40
02c831cc  cmp w10,w11
02c831d0  b.ne 0x02c82f48
02c831d4  b 0x02c82f40
02c831d8  bl 0x029f5cfc
02c831dc  bl 0x029f5cfc
02c831e0  bl 0x029f5cfc
02c831e4  bl 0x029f5d04
02c831e8  bl 0x029f5cfc
02c831ec  bl 0x029f5d04
02c831f0  bl 0x029f5d04
02c831f4  bl 0x029f5d04
02c831f8  bl 0x029f5d04
02c831fc  bl 0x029f5d04
02c83200  bl 0x029f5cfc
02c83204  bl 0x029f5cfc
02c83208  bl 0x029f5cfc
02c8320c  bl 0x029f5cfc
