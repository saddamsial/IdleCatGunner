02cb1dfc  str x30,[sp, #-0x60]!
02cb1e00  stp x28,x27,[sp, #0x10]
02cb1e04  stp x26,x25,[sp, #0x20]
02cb1e08  stp x24,x23,[sp, #0x30]
02cb1e0c  stp x22,x21,[sp, #0x40]
02cb1e10  stp x20,x19,[sp, #0x50]
02cb1e14  adrp x20,0x625c000
02cb1e18  mov x19,x0
02cb1e1c  ldrb w8,[x20, #0x563]
02cb1e20  tbnz w8,#0x0,0x02cb1e44
02cb1e24  adrp x0,0x5e5d000
02cb1e28  ldr x0,[x0, #0x5b0]
02cb1e2c  bl 0x029f5a50
02cb1e30  adrp x0,0x5e5d000
02cb1e34  ldr x0,[x0, #0x338]
02cb1e38  bl 0x029f5a50
02cb1e3c  mov w8,#0x1
02cb1e40  strb w8,[x20, #0x563]
02cb1e44  ldr x8,[x19, #0x20]
02cb1e48  cbz x8,0x02cb2108
02cb1e4c  adrp x23,0x5e5d000
02cb1e50  mov w22,wzr
02cb1e54  mov w24,wzr
02cb1e58  ldr x23,[x23, #0x338]
02cb1e5c  mov w25,#0x270f
02cb1e60  mov w26,wzr
02cb1e64  mov w21,#0x7fffffff
02cb1e68  mov w20,#0xffffffff
02cb1e6c  ldr w9,[x8, #0x18]
02cb1e70  cmp w26,w9
02cb1e74  b.ge 0x02cb1f90
02cb1e78  cmp w26,w9
02cb1e7c  b.cs 0x02cb212c
02cb1e80  sxtw x27,w26
02cb1e84  add x8,x8,x27, LSL #0x3
02cb1e88  ldr x8,[x8, #0x20]
02cb1e8c  cbz x8,0x02cb2108
02cb1e90  ldp x0,x1,[x8, #0x18]
02cb1e94  mov x2,xzr
02cb1e98  bl 0x02b1e644
02cb1e9c  cmp w0,w25
02cb1ea0  b.gt 0x02cb1f80
02cb1ea4  ldr x0,[x23]
02cb1ea8  ldr w8,[x0, #0xe4]
02cb1eac  cbnz w8,0x02cb1eb4
02cb1eb0  bl 0x029f5bd0
02cb1eb4  ldr x8,[x19, #0x20]
02cb1eb8  cbz x8,0x02cb2108
02cb1ebc  ldr w9,[x8, #0x18]
02cb1ec0  cmp w26,w9
02cb1ec4  b.cs 0x02cb212c
02cb1ec8  add x8,x8,x27, LSL #0x3
02cb1ecc  ldr x8,[x8, #0x20]
02cb1ed0  cbz x8,0x02cb2108
02cb1ed4  ldp x0,x1,[x8, #0x18]
02cb1ed8  mov x2,xzr
02cb1edc  ldr x28,[x19, #0x30]
02cb1ee0  bl 0x02b1e644
02cb1ee4  cbz x28,0x02cb2108
02cb1ee8  ldr w8,[x28, #0x18]
02cb1eec  cmp w0,w8
02cb1ef0  b.cs 0x02cb212c
02cb1ef4  sxtw x8,w0
02cb1ef8  ldr x9,[x23]
02cb1efc  mov x2,xzr
02cb1f00  ldr x9,[x9, #0xb8]
02cb1f04  add x8,x28,x8, LSL #0x5
02cb1f08  add x0,x9,#0x30
02cb1f0c  add x1,x8,#0x20
02cb1f10  bl 0x046595c4
02cb1f14  tbnz w0,#0x0,0x02cb1f80
02cb1f18  ldr x8,[x19, #0x20]
02cb1f1c  cbz x8,0x02cb2108
02cb1f20  ldr w9,[x8, #0x18]
02cb1f24  cmp w26,w9
02cb1f28  b.cs 0x02cb212c
02cb1f2c  add x8,x8,x27, LSL #0x3
02cb1f30  ldr x8,[x8, #0x20]
02cb1f34  cbz x8,0x02cb2108
02cb1f38  ldp x0,x1,[x8, #0x18]
02cb1f3c  mov x2,xzr
02cb1f40  bl 0x02b1e644
02cb1f44  cmp w0,w21
02cb1f48  b.ge 0x02cb1f80
02cb1f4c  ldr x8,[x19, #0x20]
02cb1f50  cbz x8,0x02cb2108
02cb1f54  ldr w9,[x8, #0x18]
02cb1f58  cmp w26,w9
02cb1f5c  b.cs 0x02cb212c
02cb1f60  add x8,x8,x27, LSL #0x3
02cb1f64  ldr x8,[x8, #0x20]
02cb1f68  cbz x8,0x02cb2108
02cb1f6c  ldp x0,x1,[x8, #0x18]
02cb1f70  mov x2,xzr
02cb1f74  bl 0x02b1e644
02cb1f78  mov w21,w0
02cb1f7c  mov w20,w26
02cb1f80  ldr x8,[x19, #0x20]
02cb1f84  add w26,w26,#0x1
02cb1f88  cbnz x8,0x02cb1e6c
02cb1f8c  b 0x02cb2108
02cb1f90  tbnz w20,#0x1f,0x02cb1fc0
02cb1f94  mov x0,x19
02cb1f98  mov w1,w20
02cb1f9c  bl 0x02cb3030
02cb1fa0  tbz w0,#0x0,0x02cb1fc0
02cb1fa4  cmp w20,#0x2
02cb1fa8  ldr x8,[x19, #0x20]
02cb1fac  mov w22,#0x1
02cb1fb0  cset w9,eq
02cb1fb4  orr w24,w9,w24
02cb1fb8  cbnz x8,0x02cb1e60
02cb1fbc  b 0x02cb2108
02cb1fc0  tbz w22,#0x0,0x02cb210c
02cb1fc4  ldr x0,[x19, #0x58]
02cb1fc8  cbz x0,0x02cb2108
02cb1fcc  bl 0x02cb2310
02cb1fd0  adrp x20,0x5e5d000
02cb1fd4  ldr x20,[x20, #0x5b0]
02cb1fd8  ldr x8,[x20]
02cb1fdc  ldr x8,[x8, #0xb8]
02cb1fe0  ldr x0,[x8, #0x8]
02cb1fe4  cbz x0,0x02cb2108
02cb1fe8  mov x1,xzr
02cb1fec  bl 0x02c43744
02cb1ff0  tbz w24,#0x0,0x02cb200c
02cb1ff4  ldr x0,[x23]
02cb1ff8  ldr w8,[x0, #0xe4]
02cb1ffc  cbnz w8,0x02cb2004
02cb2000  bl 0x029f5bd0
02cb2004  mov x0,xzr
02cb2008  bl 0x02b7dcfc
02cb200c  ldr x8,[x20]
02cb2010  ldr x8,[x8, #0xb8]
02cb2014  ldrb w8,[x8]
02cb2018  cbnz w8,0x02cb2068
02cb201c  adrp x20,0x625b000
02cb2020  ldrb w8,[x20, #0xa57]
02cb2024  cbnz w8,0x02cb203c
02cb2028  adrp x0,0x5e5d000
02cb202c  ldr x0,[x0, #0xd70]
02cb2030  bl 0x029f5a50
02cb2034  mov w8,#0x1
02cb2038  strb w8,[x20, #0xa57]
02cb203c  adrp x8,0x5e5d000
02cb2040  ldr x8,[x8, #0xd70]
02cb2044  ldr x8,[x8]
02cb2048  ldr x8,[x8, #0xb8]
02cb204c  ldr x0,[x8]
02cb2050  cbz x0,0x02cb2108
02cb2054  fmov s0,0x3f800000
02cb2058  mov w1,#0x4
02cb205c  mov x2,xzr
02cb2060  mov x3,xzr
02cb2064  bl 0x02c1f10c
02cb2068  ldr x8,[x19, #0x28]
02cb206c  cbz x8,0x02cb2108
02cb2070  mov w20,wzr
02cb2074  ldr w9,[x8, #0x18]
02cb2078  cmp w20,w9
02cb207c  b.ge 0x02cb210c
02cb2080  cmp w20,w9
02cb2084  b.cs 0x02cb212c
02cb2088  sxtw x21,w20
02cb208c  add x8,x8,x21, LSL #0x3
02cb2090  ldr x0,[x8, #0x20]
02cb2094  cbz x0,0x02cb2108
02cb2098  mov x1,xzr
02cb209c  bl 0x057e00b4
02cb20a0  tbz w0,#0x0,0x02cb20d0
02cb20a4  ldr x8,[x19, #0x28]
02cb20a8  cbz x8,0x02cb2108
02cb20ac  ldr w9,[x8, #0x18]
02cb20b0  cmp w20,w9
02cb20b4  b.cs 0x02cb212c
02cb20b8  add x8,x8,x21, LSL #0x3
02cb20bc  ldr x0,[x8, #0x20]
02cb20c0  cbz x0,0x02cb2108
02cb20c4  mov w1,wzr
02cb20c8  mov x2,xzr
02cb20cc  bl 0x057dff3c
02cb20d0  ldr x8,[x19, #0x28]
02cb20d4  cbz x8,0x02cb2108
02cb20d8  ldr w9,[x8, #0x18]
02cb20dc  cmp w20,w9
02cb20e0  b.cs 0x02cb212c
02cb20e4  add x8,x8,x21, LSL #0x3
02cb20e8  ldr x0,[x8, #0x20]
02cb20ec  cbz x0,0x02cb2108
02cb20f0  mov w1,#0x1
02cb20f4  mov x2,xzr
02cb20f8  bl 0x057dff3c
02cb20fc  ldr x8,[x19, #0x28]
02cb2100  add w20,w20,#0x1
02cb2104  cbnz x8,0x02cb2074
02cb2108  bl 0x029f5cfc
02cb210c  and w0,w22,#0x1
02cb2110  ldp x20,x19,[sp, #0x50]
02cb2114  ldp x22,x21,[sp, #0x40]
02cb2118  ldp x24,x23,[sp, #0x30]
02cb211c  ldp x26,x25,[sp, #0x20]
02cb2120  ldp x28,x27,[sp, #0x10]
02cb2124  ldr x30,[sp], #0x60
02cb2128  ret
02cb212c  bl 0x029f5d04
