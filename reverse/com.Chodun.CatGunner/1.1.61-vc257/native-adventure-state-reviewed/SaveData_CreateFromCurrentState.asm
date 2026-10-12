02c14ae4  sub sp,sp,#0x70
02c14ae8  stp x29,x30,[sp, #0x10]
02c14aec  stp x28,x27,[sp, #0x20]
02c14af0  stp x26,x25,[sp, #0x30]
02c14af4  stp x24,x23,[sp, #0x40]
02c14af8  stp x22,x21,[sp, #0x50]
02c14afc  stp x20,x19,[sp, #0x60]
02c14b00  adrp x21,0x625b000
02c14b04  adrp x20,0x5e62000
02c14b08  adrp x28,0x5e5d000
02c14b0c  ldrb w8,[x21, #0xeec]
02c14b10  ldr x20,[x20, #0x688]
02c14b14  ldr x28,[x28, #0x3c0]
02c14b18  tbnz w8,#0x0,0x02c14dd0
02c14b1c  adrp x0,0x5e62000
02c14b20  ldr x0,[x0, #0x690]
02c14b24  bl 0x029f5a50
02c14b28  adrp x0,0x5e62000
02c14b2c  ldr x0,[x0, #0x698]
02c14b30  bl 0x029f5a50
02c14b34  adrp x0,0x5e62000
02c14b38  ldr x0,[x0, #0x6a0]
02c14b3c  bl 0x029f5a50
02c14b40  adrp x0,0x5e62000
02c14b44  ldr x0,[x0, #0x6a8]
02c14b48  bl 0x029f5a50
02c14b4c  adrp x0,0x5e5d000
02c14b50  ldr x0,[x0, #0xd28]
02c14b54  bl 0x029f5a50
02c14b58  adrp x0,0x5e58000
02c14b5c  ldr x0,[x0, #0xa78]
02c14b60  bl 0x029f5a50
02c14b64  adrp x0,0x5e62000
02c14b68  ldr x0,[x0, #0x6b0]
02c14b6c  bl 0x029f5a50
02c14b70  adrp x0,0x5e5d000
02c14b74  ldr x0,[x0, #0xd30]
02c14b78  bl 0x029f5a50
02c14b7c  adrp x0,0x5e5d000
02c14b80  ldr x0,[x0, #0x4c0]
02c14b84  bl 0x029f5a50
02c14b88  adrp x0,0x5e59000
02c14b8c  ldr x0,[x0, #0x760]
02c14b90  bl 0x029f5a50
02c14b94  adrp x0,0x5e5e000
02c14b98  ldr x0,[x0, #0x4f8]
02c14b9c  bl 0x029f5a50
02c14ba0  adrp x0,0x5e62000
02c14ba4  ldr x0,[x0, #0x660]
02c14ba8  bl 0x029f5a50
02c14bac  adrp x0,0x5e59000
02c14bb0  ldr x0,[x0, #0x7d0]
02c14bb4  bl 0x029f5a50
02c14bb8  adrp x0,0x5e62000
02c14bbc  ldr x0,[x0, #0x668]
02c14bc0  bl 0x029f5a50
02c14bc4  adrp x0,0x5e5d000
02c14bc8  ldr x0,[x0, #0xd38]
02c14bcc  bl 0x029f5a50
02c14bd0  adrp x0,0x5e5d000
02c14bd4  ldr x0,[x0, #0xfa0]
02c14bd8  bl 0x029f5a50
02c14bdc  adrp x0,0x5e5d000
02c14be0  ldr x0,[x0, #0x338]
02c14be4  bl 0x029f5a50
02c14be8  adrp x0,0x5e5d000
02c14bec  ldr x0,[x0, #0xd40]
02c14bf0  bl 0x029f5a50
02c14bf4  adrp x0,0x5e5d000
02c14bf8  ldr x0,[x0, #0x790]
02c14bfc  bl 0x029f5a50
02c14c00  adrp x0,0x5e5e000
02c14c04  ldr x0,[x0, #0xd78]
02c14c08  bl 0x029f5a50
02c14c0c  adrp x0,0x5e62000
02c14c10  ldr x0,[x0, #0x6b8]
02c14c14  bl 0x029f5a50
02c14c18  adrp x0,0x5e62000
02c14c1c  ldr x0,[x0, #0x618]
02c14c20  bl 0x029f5a50
02c14c24  adrp x0,0x5e62000
02c14c28  ldr x0,[x0, #0x620]
02c14c2c  bl 0x029f5a50
02c14c30  adrp x0,0x5e62000
02c14c34  ldr x0,[x0, #0x628]
02c14c38  bl 0x029f5a50
02c14c3c  adrp x0,0x5e62000
02c14c40  ldr x0,[x0, #0x630]
02c14c44  bl 0x029f5a50
02c14c48  adrp x0,0x5e5a000
02c14c4c  ldr x0,[x0, #0x8a0]
02c14c50  bl 0x029f5a50
02c14c54  adrp x0,0x5e5d000
02c14c58  ldr x0,[x0, #0xd48]
02c14c5c  bl 0x029f5a50
02c14c60  adrp x0,0x5e5d000
02c14c64  ldr x0,[x0, #0xd50]
02c14c68  bl 0x029f5a50
02c14c6c  adrp x0,0x5e5d000
02c14c70  ldr x0,[x0, #0xd58]
02c14c74  bl 0x029f5a50
02c14c78  adrp x0,0x5e59000
02c14c7c  ldr x0,[x0, #0x1c0]
02c14c80  bl 0x029f5a50
02c14c84  adrp x0,0x5e5d000
02c14c88  ldr x0,[x0, #0x4d0]
02c14c8c  bl 0x029f5a50
02c14c90  adrp x0,0x5e5e000
02c14c94  ldr x0,[x0, #0xb8]
02c14c98  bl 0x029f5a50
02c14c9c  adrp x0,0x5e5e000
02c14ca0  ldr x0,[x0, #0x68]
02c14ca4  bl 0x029f5a50
02c14ca8  adrp x0,0x5e5e000
02c14cac  ldr x0,[x0, #0x70]
02c14cb0  bl 0x029f5a50
02c14cb4  adrp x0,0x5e5d000
02c14cb8  ldr x0,[x0, #0x498]
02c14cbc  bl 0x029f5a50
02c14cc0  adrp x0,0x5e5d000
02c14cc4  ldr x0,[x0, #0xd60]
02c14cc8  bl 0x029f5a50
02c14ccc  adrp x0,0x5e62000
02c14cd0  ldr x0,[x0, #0x640]
02c14cd4  bl 0x029f5a50
02c14cd8  adrp x0,0x5e62000
02c14cdc  ldr x0,[x0, #0x6c0]
02c14ce0  bl 0x029f5a50
02c14ce4  adrp x0,0x5e62000
02c14ce8  ldr x0,[x0, #0x6c8]
02c14cec  bl 0x029f5a50
02c14cf0  adrp x0,0x5e5d000
02c14cf4  ldr x0,[x0, #0x4d8]
02c14cf8  bl 0x029f5a50
02c14cfc  adrp x0,0x5e62000
02c14d00  ldr x0,[x0, #0x5c8]
02c14d04  bl 0x029f5a50
02c14d08  adrp x0,0x5e62000
02c14d0c  ldr x0,[x0, #0x648]
02c14d10  bl 0x029f5a50
02c14d14  adrp x0,0x5e62000
02c14d18  ldr x0,[x0, #0x688]
02c14d1c  bl 0x029f5a50
02c14d20  adrp x0,0x5e5d000
02c14d24  ldr x0,[x0, #0x6a8]
02c14d28  bl 0x029f5a50
02c14d2c  adrp x0,0x5e62000
02c14d30  ldr x0,[x0, #0x670]
02c14d34  bl 0x029f5a50
02c14d38  adrp x0,0x5e5d000
02c14d3c  ldr x0,[x0, #0x920]
02c14d40  bl 0x029f5a50
02c14d44  adrp x0,0x5e5d000
02c14d48  ldr x0,[x0, #0x4e0]
02c14d4c  bl 0x029f5a50
02c14d50  adrp x0,0x5e5d000
02c14d54  ldr x0,[x0, #0xd68]
02c14d58  bl 0x029f5a50
02c14d5c  adrp x0,0x5e5e000
02c14d60  ldr x0,[x0, #0x3e0]
02c14d64  bl 0x029f5a50
02c14d68  adrp x0,0x5e5e000
02c14d6c  ldr x0,[x0, #0x58]
02c14d70  bl 0x029f5a50
02c14d74  adrp x0,0x5e5e000
02c14d78  ldr x0,[x0, #0x4b8]
02c14d7c  bl 0x029f5a50
02c14d80  adrp x0,0x5e5d000
02c14d84  ldr x0,[x0, #0x3c0]
02c14d88  bl 0x029f5a50
02c14d8c  adrp x0,0x5e5d000
02c14d90  ldr x0,[x0, #0xc20]
02c14d94  bl 0x029f5a50
02c14d98  adrp x0,0x5e5e000
02c14d9c  ldr x0,[x0, #0x4d8]
02c14da0  bl 0x029f5a50
02c14da4  adrp x0,0x5e5d000
02c14da8  ldr x0,[x0, #0x4e8]
02c14dac  bl 0x029f5a50
02c14db0  adrp x0,0x5e62000
02c14db4  ldr x0,[x0, #0x6d0]
02c14db8  bl 0x029f5a50
02c14dbc  adrp x0,0x5e59000
02c14dc0  ldr x0,[x0, #0x50]
02c14dc4  bl 0x029f5a50
02c14dc8  mov w8,#0x1
02c14dcc  strb w8,[x21, #0xeec]
02c14dd0  adrp x19,0x5e58000
02c14dd4  ldr x19,[x19, #0xa78]
02c14dd8  ldr x0,[x20]
02c14ddc  bl 0x029f5cec
02c14de0  mov x20,x0
02c14de4  bl 0x02c1491c
02c14de8  ldr x0,[x28]
02c14dec  ldr w8,[x0, #0xe4]
02c14df0  cbnz w8,0x02c14df8
02c14df4  bl 0x029f5bd0
02c14df8  mov x0,xzr
02c14dfc  bl 0x02c25dac
02c14e00  ldr x0,[x19]
02c14e04  ldr w8,[x0, #0xe4]
02c14e08  cbnz w8,0x02c14e10
02c14e0c  bl 0x029f5bd0
02c14e10  mov x0,xzr
02c14e14  bl 0x05792284
02c14e18  cbz x20,0x02c16154
02c14e1c  mov x21,x20
02c14e20  mov x1,x0
02c14e24  str x0,[x21, #0x10]!
02c14e28  mov x0,x21
02c14e2c  bl 0x029f59f4
02c14e30  ldr x0,[x28]
02c14e34  adrp x19,0x625b000
02c14e38  ldrb w9,[x19, #0xefc]
02c14e3c  ldr x8,[x0, #0xb8]
02c14e40  ldr d0,[x8, #0x10]
02c14e44  ldrb w8,[x8, #0x18]
02c14e48  str d0,[x21, #0xa8]
02c14e4c  strb w8,[x21, #0xb0]
02c14e50  cbnz w9,0x02c14e68
02c14e54  mov x0,x28
02c14e58  bl 0x029f5a50
02c14e5c  ldr x0,[x28]
02c14e60  mov w8,#0x1
02c14e64  strb w8,[x19, #0xefc]
02c14e68  adrp x23,0x5e5d000
02c14e6c  ldr w8,[x0, #0xe4]
02c14e70  ldr x23,[x23, #0x338]
02c14e74  cbnz w8,0x02c14e80
02c14e78  bl 0x029f5bd0
02c14e7c  ldr x0,[x28]
02c14e80  ldr x8,[x0, #0xb8]
02c14e84  mov x0,x20
02c14e88  ldr x1,[x8, #0x28]
02c14e8c  str x1,[x0, #0xc8]!
02c14e90  bl 0x029f59f4
02c14e94  ldr x0,[x23]
02c14e98  ldr w8,[x0, #0xe4]
02c14e9c  cbnz w8,0x02c14ea8
02c14ea0  bl 0x029f5bd0
02c14ea4  ldr x0,[x23]
02c14ea8  ldr x8,[x0, #0xb8]
02c14eac  adrp x19,0x5e62000
02c14eb0  add x0,x20,#0x18
02c14eb4  mov x1,xzr
02c14eb8  ldp q1,q0,[x8, #0x30]
02c14ebc  ldr x19,[x19, #0x630]
02c14ec0  stur q0,[x20, #0x28]
02c14ec4  stur q1,[x20, #0x18]
02c14ec8  bl 0x029f59f4
02c14ecc  ldr x8,[x23]
02c14ed0  add x0,x20,#0x38
02c14ed4  mov x1,xzr
02c14ed8  ldr x8,[x8, #0xb8]
02c14edc  ldp q0,q1,[x8, #0x50]
02c14ee0  stur q0,[x20, #0x38]
02c14ee4  stur q1,[x20, #0x48]
02c14ee8  bl 0x029f59f4
02c14eec  ldr x8,[x23]
02c14ef0  add x0,x20,#0x58
02c14ef4  mov x1,xzr
02c14ef8  ldr x8,[x8, #0xb8]
02c14efc  ldp q0,q1,[x8, #0x70]
02c14f00  stur q0,[x20, #0x58]
02c14f04  stur q1,[x20, #0x68]
02c14f08  bl 0x029f59f4
02c14f0c  ldr x8,[x23]
02c14f10  mov x2,xzr
02c14f14  ldr x8,[x8, #0xb8]
02c14f18  ldp x0,x1,[x8, #0x90]
02c14f1c  bl 0x02b1e644
02c14f20  ldr x8,[x23]
02c14f24  str w0,[x20, #0x78]
02c14f28  mov x2,xzr
02c14f2c  ldr x8,[x8, #0xb8]
02c14f30  ldp x0,x1,[x8, #0xa0]
02c14f34  bl 0x02b1e644
02c14f38  ldr x8,[x23]
02c14f3c  str w0,[x20, #0x7c]
02c14f40  mov x2,xzr
02c14f44  ldr x8,[x8, #0xb8]
02c14f48  ldp x0,x1,[x8, #0xb0]
02c14f4c  bl 0x02b1e644
02c14f50  ldr x8,[x23]
02c14f54  str w0,[x20, #0x80]
02c14f58  mov x2,xzr
02c14f5c  ldr x8,[x8, #0xb8]
02c14f60  ldr w9,[x8, #0xc0]
02c14f64  ldr s0,[x8, #0x15c]
02c14f68  ldrb w10,[x8, #0xd0]
02c14f6c  str w9,[x20, #0x84]
02c14f70  str s0,[x20, #0x8c]
02c14f74  strb w10,[x20, #0x90]
02c14f78  ldp x0,x1,[x8, #0xf0]
02c14f7c  bl 0x02b1e644
02c14f80  ldr x8,[x23]
02c14f84  str w0,[x20, #0x94]
02c14f88  mov x0,x20
02c14f8c  ldr x8,[x8, #0xb8]
02c14f90  ldr x1,[x8, #0x100]
02c14f94  str x1,[x0, #0x98]!
02c14f98  bl 0x029f59f4
02c14f9c  ldr x8,[x23]
02c14fa0  mov x0,x20
02c14fa4  ldr x8,[x8, #0xb8]
02c14fa8  ldr x1,[x8, #0xd8]
02c14fac  str x1,[x0, #0xa0]!
02c14fb0  bl 0x029f59f4
02c14fb4  ldr x8,[x23]
02c14fb8  mov x0,x20
02c14fbc  ldr x8,[x8, #0xb8]
02c14fc0  ldr x1,[x8, #0xe0]
02c14fc4  str x1,[x0, #0xa8]!
02c14fc8  bl 0x029f59f4
02c14fcc  ldr x8,[x23]
02c14fd0  mov x0,x20
02c14fd4  ldr x8,[x8, #0xb8]
02c14fd8  ldr x1,[x8, #0xe8]
02c14fdc  str x1,[x0, #0xb0]!
02c14fe0  bl 0x029f59f4
02c14fe4  ldr x0,[x28]
02c14fe8  ldr x8,[x0, #0xb8]
02c14fec  ldr x21,[x8, #0x20]
02c14ff0  cbz x21,0x02c15030
02c14ff4  adrp x22,0x5e62000
02c14ff8  ldr w8,[x0, #0xe4]
02c14ffc  ldr x22,[x22, #0x6b8]
02c15000  cbnz w8,0x02c15014
02c15004  bl 0x029f5bd0
02c15008  ldr x8,[x28]
02c1500c  ldr x8,[x8, #0xb8]
02c15010  ldr x21,[x8, #0x20]
02c15014  ldr x0,[x19]
02c15018  bl 0x029f5cec
02c1501c  ldr x2,[x22]
02c15020  mov x1,x21
02c15024  mov x22,x0
02c15028  bl 0x0452c47c
02c1502c  b 0x02c1504c
02c15030  ldr x0,[x19]
02c15034  bl 0x029f5cec
02c15038  adrp x8,0x5e62000
02c1503c  mov x22,x0
02c15040  ldr x8,[x8, #0x618]
02c15044  ldr x1,[x8]
02c15048  bl 0x0452c340
02c1504c  adrp x21,0x5e62000
02c15050  mov x0,x20
02c15054  mov x1,x22
02c15058  ldr x21,[x21, #0x640]
02c1505c  str x22,[x0, #0xd0]!
02c15060  bl 0x029f59f4
02c15064  ldr x0,[x23]
02c15068  ldr w8,[x0, #0xe4]
02c1506c  cbnz w8,0x02c15078
02c15070  bl 0x029f5bd0
02c15074  ldr x0,[x23]
02c15078  ldr x8,[x0, #0xb8]
02c1507c  adrp x19,0x5e5d000
02c15080  mov x2,xzr
02c15084  ldr x19,[x19, #0x4e8]
02c15088  ldp x0,x1,[x8, #0x128]
02c1508c  bl 0x02b1e644
02c15090  ldr x8,[x23]
02c15094  str w0,[x20, #0xd8]
02c15098  mov x0,x20
02c1509c  ldr x8,[x8, #0xb8]
02c150a0  ldr x1,[x8, #0x138]
02c150a4  str x1,[x0, #0xe0]!
02c150a8  bl 0x029f59f4
02c150ac  ldr x8,[x23]
02c150b0  mov x0,x20
02c150b4  ldr x8,[x8, #0xb8]
02c150b8  ldr x1,[x8, #0x140]
02c150bc  str x1,[x0, #0xe8]!
02c150c0  bl 0x029f59f4
02c150c4  ldr x0,[x21]
02c150c8  ldr w8,[x0, #0xe4]
02c150cc  cbnz w8,0x02c150d8
02c150d0  bl 0x029f5bd0
02c150d4  ldr x0,[x21]
02c150d8  ldr x8,[x0, #0xb8]
02c150dc  mov x0,x20
02c150e0  ldr x1,[x8, #0x8]
02c150e4  str x1,[x0, #0xf0]!
02c150e8  bl 0x029f59f4
02c150ec  ldr x0,[x19]
02c150f0  ldr w8,[x0, #0xe4]
02c150f4  cbnz w8,0x02c15100
02c150f8  bl 0x029f5bd0
02c150fc  ldr x0,[x19]
02c15100  ldr x8,[x0, #0xb8]
02c15104  ldr x0,[x8]
02c15108  cbz x0,0x02c16154
02c1510c  adrp x21,0x5e5d000
02c15110  mov x1,xzr
02c15114  ldr x21,[x21, #0xd60]
02c15118  bl 0x02cb2b50
02c1511c  mov x1,x0
02c15120  str x0,[x20, #0x108]
02c15124  add x0,x20,#0x108
02c15128  bl 0x029f59f4
02c1512c  ldr x8,[x19]
02c15130  add x0,x20,#0x110
02c15134  ldr x8,[x8, #0xb8]
02c15138  ldr x1,[x8, #0x8]
02c1513c  str x1,[x20, #0x110]
02c15140  bl 0x029f59f4
02c15144  ldr x8,[x19]
02c15148  ldr x9,[x21]
02c1514c  ldr x8,[x8, #0xb8]
02c15150  ldr x9,[x9, #0xb8]
02c15154  ldr s0,[x8, #0x10]
02c15158  ldr x0,[x9]
02c1515c  str s0,[x20, #0x118]
02c15160  cbz x0,0x02c16154
02c15164  mov x1,xzr
02c15168  bl 0x02c87aa4
02c1516c  mov x1,x0
02c15170  str x0,[x20, #0x120]
02c15174  add x0,x20,#0x120
02c15178  bl 0x029f59f4
02c1517c  ldr x8,[x21]
02c15180  ldr x8,[x8, #0xb8]
02c15184  ldr x8,[x8]
02c15188  cbz x8,0x02c16154
02c1518c  ldr w9,[x8, #0x30]
02c15190  ldr x1,[x8, #0x58]
02c15194  adrp x24,0x5e5d000
02c15198  add x23,x20,#0x12c
02c1519c  add x0,x20,#0x138
02c151a0  str w9,[x20, #0x128]
02c151a4  ldur d0,[x8, #0x4c]
02c151a8  ldr x24,[x24, #0xd40]
02c151ac  str x1,[x20, #0x138]
02c151b0  str d0,[x23]
02c151b4  bl 0x029f59f4
02c151b8  ldr x8,[x24]
02c151bc  ldr x8,[x8, #0xb8]
02c151c0  ldr x8,[x8]
02c151c4  cbz x8,0x02c16154
02c151c8  ldr x1,[x8, #0x28]
02c151cc  add x0,x20,#0x140
02c151d0  str x1,[x20, #0x140]
02c151d4  bl 0x029f59f4
02c151d8  ldr x8,[x24]
02c151dc  ldr x8,[x8, #0xb8]
02c151e0  ldr x8,[x8]
02c151e4  cbz x8,0x02c16154
02c151e8  ldr x1,[x8, #0x30]
02c151ec  add x0,x20,#0x148
02c151f0  str x1,[x20, #0x148]
02c151f4  bl 0x029f59f4
02c151f8  ldr x8,[x24]
02c151fc  ldr x8,[x8, #0xb8]
02c15200  ldr x8,[x8]
02c15204  cbz x8,0x02c16154
02c15208  ldr x1,[x8, #0x40]
02c1520c  add x0,x20,#0x150
02c15210  str x1,[x20, #0x150]
02c15214  bl 0x029f59f4
02c15218  ldr x8,[x24]
02c1521c  ldr x8,[x8, #0xb8]
02c15220  ldr x8,[x8]
02c15224  cbz x8,0x02c16154
02c15228  ldr x0,[x8, #0x38]
02c1522c  cbz x0,0x02c16154
02c15230  adrp x19,0x5e5d000
02c15234  mov x1,xzr
02c15238  ldr x19,[x19, #0x790]
02c1523c  bl 0x04874260
02c15240  cbz x0,0x02c1527c
02c15244  ldr x22,[x19]
02c15248  mov x21,x0
02c1524c  mov x1,x22
02c15250  bl 0x029f5bd4
02c15254  cbz x0,0x02c16818
02c15258  ldr x22,[x19]
02c1525c  str x0,[x20, #0x158]
02c15260  mov x0,x21
02c15264  mov x1,x22
02c15268  bl 0x029f5bd4
02c1526c  cbz x0,0x02c16818
02c15270  mov x1,x0
02c15274  add x0,x20,#0x158
02c15278  b 0x02c15288
02c1527c  mov x1,xzr
02c15280  add x0,x20,#0x158
02c15284  str xzr,[x20, #0x158]
02c15288  bl 0x029f59f4
02c1528c  ldr x8,[x24]
02c15290  ldr x8,[x8, #0xb8]
02c15294  ldr x8,[x8]
02c15298  cbz x8,0x02c16154
02c1529c  ldr d0,[x8, #0xc0]
02c152a0  ldr x9,[x8, #0xc8]
02c152a4  add x0,x20,#0x178
02c152a8  ldrb w11,[x8, #0xd8]
02c152ac  str d0,[x20, #0x160]
02c152b0  ldr w10,[x8, #0xd4]
02c152b4  str x9,[x20, #0x168]
02c152b8  strb w11,[x20, #0x174]
02c152bc  str w10,[x20, #0x170]
02c152c0  add x10,x20,#0x175
02c152c4  ldrh w9,[x8, #0xe8]
02c152c8  strh w9,[x10]
02c152cc  ldr x1,[x8, #0xb8]
02c152d0  str x1,[x20, #0x178]
02c152d4  bl 0x029f59f4
02c152d8  ldr x8,[x24]
02c152dc  ldr x8,[x8, #0xb8]
02c152e0  ldr x0,[x8]
02c152e4  cbz x0,0x02c16154
02c152e8  mov x1,xzr
02c152ec  bl 0x02c678d0
02c152f0  ldr x8,[x24]
02c152f4  ldr x8,[x8, #0xb8]
02c152f8  ldr x8,[x8]
02c152fc  cbz x8,0x02c16154
02c15300  ldr x0,[x8, #0x60]
02c15304  cbz x0,0x02c16154
02c15308  adrp x19,0x5e62000
02c1530c  mov x1,xzr
02c15310  ldr x19,[x19, #0x6b0]
02c15314  bl 0x04874260
02c15318  cbz x0,0x02c15354
02c1531c  ldr x22,[x19]
02c15320  mov x21,x0
02c15324  mov x1,x22
02c15328  bl 0x029f5bd4
02c1532c  cbz x0,0x02c16818
02c15330  ldr x22,[x19]
02c15334  str x0,[x20, #0x180]
02c15338  mov x0,x21
02c1533c  mov x1,x22
02c15340  bl 0x029f5bd4
02c15344  cbz x0,0x02c16818
02c15348  mov x1,x0
02c1534c  add x0,x20,#0x180
02c15350  b 0x02c15360
02c15354  mov x1,xzr
02c15358  add x0,x20,#0x180
02c1535c  str xzr,[x20, #0x180]
02c15360  bl 0x029f59f4
02c15364  ldr x8,[x24]
02c15368  ldr x8,[x8, #0xb8]
02c1536c  ldr x8,[x8]
02c15370  cbz x8,0x02c16154
02c15374  ldr x0,[x8, #0x68]
02c15378  cbz x0,0x02c16154
02c1537c  mov x1,xzr
02c15380  bl 0x04874260
02c15384  cbz x0,0x02c153c0
02c15388  ldr x22,[x19]
02c1538c  mov x21,x0
02c15390  mov x1,x22
02c15394  bl 0x029f5bd4
02c15398  cbz x0,0x02c16818
02c1539c  ldr x22,[x19]
02c153a0  str x0,[x20, #0x188]
02c153a4  mov x0,x21
02c153a8  mov x1,x22
02c153ac  bl 0x029f5bd4
02c153b0  cbz x0,0x02c16818
02c153b4  mov x1,x0
02c153b8  add x0,x20,#0x188
02c153bc  b 0x02c153cc
02c153c0  mov x1,xzr
02c153c4  add x0,x20,#0x188
02c153c8  str xzr,[x20, #0x188]
02c153cc  adrp x19,0x5e62000
02c153d0  adrp x29,0x5e59000
02c153d4  ldr x19,[x19, #0x648]
02c153d8  ldr x29,[x29, #0x1c0]
02c153dc  bl 0x029f59f4
02c153e0  ldr x8,[x19]
02c153e4  ldr x0,[x29]
02c153e8  ldr x8,[x8, #0xb8]
02c153ec  ldr w9,[x0, #0xe4]
02c153f0  ldr x21,[x8]
02c153f4  cbnz w9,0x02c153fc
02c153f8  bl 0x029f5bd0
02c153fc  mov x0,x21
02c15400  mov x1,xzr
02c15404  mov x2,xzr
02c15408  bl 0x057dfa70
02c1540c  tbz w0,#0x0,0x02c1549c
02c15410  ldr x8,[x19]
02c15414  ldr x8,[x8, #0xb8]
02c15418  ldr x8,[x8]
02c1541c  cbz x8,0x02c16154
02c15420  ldr x0,[x8, #0x20]
02c15424  cbz x0,0x02c16154
02c15428  mov x1,xzr
02c1542c  bl 0x04874260
02c15430  cbz x0,0x02c15474
02c15434  adrp x24,0x5e5d000
02c15438  mov x21,x0
02c1543c  ldr x24,[x24, #0x790]
02c15440  ldr x22,[x24]
02c15444  mov x1,x22
02c15448  bl 0x029f5bd4
02c1544c  cbz x0,0x02c16818
02c15450  ldr x22,[x24]
02c15454  str x0,[x20, #0x190]
02c15458  mov x0,x21
02c1545c  mov x1,x22
02c15460  bl 0x029f5bd4
02c15464  cbz x0,0x02c16818
02c15468  mov x1,x0
02c1546c  add x0,x20,#0x190
02c15470  b 0x02c15480
02c15474  mov x1,xzr
02c15478  add x0,x20,#0x190
02c1547c  str xzr,[x20, #0x190]
02c15480  bl 0x029f59f4
02c15484  ldr x8,[x19]
02c15488  ldr x8,[x8, #0xb8]
02c1548c  ldr x8,[x8]
02c15490  cbz x8,0x02c16154
02c15494  ldr w8,[x8, #0x28]
02c15498  str w8,[x20, #0x198]
02c1549c  adrp x19,0x5e5d000
02c154a0  ldr x19,[x19, #0x4d0]
02c154a4  ldr x0,[x19]
02c154a8  ldr w8,[x0, #0xe4]
02c154ac  cbnz w8,0x02c154b8
02c154b0  bl 0x029f5bd0
02c154b4  ldr x0,[x19]
02c154b8  ldr x8,[x0, #0xb8]
02c154bc  ldr x8,[x8, #0x28]
02c154c0  cbz x8,0x02c16154
02c154c4  ldr x1,[x8, #0x30]
02c154c8  add x0,x20,#0x1a0
02c154cc  str x1,[x20, #0x1a0]
02c154d0  bl 0x029f59f4
02c154d4  ldr x8,[x19]
02c154d8  ldr x8,[x8, #0xb8]
02c154dc  ldr x8,[x8, #0x28]
02c154e0  cbz x8,0x02c16154
02c154e4  ldr x1,[x8, #0x28]
02c154e8  add x0,x20,#0x1a8
02c154ec  str x1,[x20, #0x1a8]
02c154f0  bl 0x029f59f4
02c154f4  ldr x8,[x19]
02c154f8  ldr x8,[x8, #0xb8]
02c154fc  ldr x8,[x8, #0x28]
02c15500  cbz x8,0x02c16154
02c15504  ldr x1,[x8, #0x38]
02c15508  add x0,x20,#0x1b0
02c1550c  str x1,[x20, #0x1b0]
02c15510  bl 0x029f59f4
02c15514  ldr x8,[x19]
02c15518  ldr x8,[x8, #0xb8]
02c1551c  ldr x8,[x8, #0x28]
02c15520  cbz x8,0x02c16154
02c15524  ldr x1,[x8, #0x40]
02c15528  add x0,x20,#0x1b8
02c1552c  str x1,[x20, #0x1b8]
02c15530  bl 0x029f59f4
02c15534  ldr x8,[x19]
02c15538  ldr x8,[x8, #0xb8]
02c1553c  ldr x8,[x8, #0x28]
02c15540  cbz x8,0x02c16154
02c15544  ldr x1,[x8, #0x48]
02c15548  add x0,x20,#0x1c0
02c1554c  str x1,[x20, #0x1c0]
02c15550  bl 0x029f59f4
02c15554  ldr x8,[x19]
02c15558  ldr x8,[x8, #0xb8]
02c1555c  ldr x8,[x8, #0x28]
02c15560  cbz x8,0x02c16154
02c15564  ldr x1,[x8, #0xb8]
02c15568  adrp x19,0x5e5d000
02c1556c  add x0,x20,#0x1c8
02c15570  ldr x19,[x19, #0xc20]
02c15574  str x1,[x20, #0x1c8]
02c15578  bl 0x029f59f4
02c1557c  ldr x0,[x19]
02c15580  ldr w8,[x0, #0xe4]
02c15584  cbnz w8,0x02c15590
02c15588  bl 0x029f5bd0
02c1558c  ldr x0,[x19]
02c15590  ldr x8,[x0, #0xb8]
02c15594  ldr x8,[x8, #0x10]
02c15598  cbz x8,0x02c16154
02c1559c  ldr d0,[x8, #0x28]
02c155a0  adrp x26,0x5e5a000
02c155a4  adrp x19,0x5e5e000
02c155a8  ldr x26,[x26, #0x8a0]
02c155ac  ldr x19,[x19, #0xd78]
02c155b0  adrp x24,0x5e5d000
02c155b4  str d0,[x20, #0x1d0]
02c155b8  ldr x24,[x24, #0xd68]
02c155bc  ldr w9,[x8, #0x30]
02c155c0  ldr x0,[x26]
02c155c4  ldr x21,[x8, #0x48]
02c155c8  str w9,[x20, #0x1d8]
02c155cc  bl 0x029f5cec
02c155d0  ldr x2,[x19]
02c155d4  mov x1,x21
02c155d8  mov x22,x0
02c155dc  bl 0x0452c47c
02c155e0  add x0,x20,#0x1e0
02c155e4  mov x1,x22
02c155e8  str x22,[x20, #0x1e0]
02c155ec  bl 0x029f59f4
02c155f0  ldr x0,[x24]
02c155f4  ldr w8,[x0, #0xe4]
02c155f8  cbnz w8,0x02c15604
02c155fc  bl 0x029f5bd0
02c15600  ldr x0,[x24]
02c15604  ldr x8,[x0, #0xb8]
02c15608  ldr x8,[x8, #0x8]
02c1560c  cbz x8,0x02c16154
02c15610  adrp x21,0x5e5d000
02c15614  ldr x21,[x21, #0x4e0]
02c15618  ldr w10,[x8, #0x30]
02c1561c  ldr x9,[x21]
02c15620  str w10,[x20, #0x1e8]
02c15624  ldr x9,[x9, #0xb8]
02c15628  ldr x8,[x9, #0x10]
02c1562c  cbz x8,0x02c16154
02c15630  ldr x1,[x8, #0x28]
02c15634  add x0,x20,#0x1f0
02c15638  str x1,[x20, #0x1f0]
02c1563c  bl 0x029f59f4
02c15640  ldr x8,[x21]
02c15644  ldr x8,[x8, #0xb8]
02c15648  ldr x8,[x8, #0x10]
02c1564c  cbz x8,0x02c16154
02c15650  adrp x27,0x5e5d000
02c15654  adrp x25,0x5e62000
02c15658  adrp x24,0x5e62000
02c1565c  ldr x27,[x27, #0x920]
02c15660  ldr x0,[x27]
02c15664  ldr x25,[x25, #0x628]
02c15668  ldr w8,[x8, #0x30]
02c1566c  ldr w9,[x0, #0xe4]
02c15670  ldr x24,[x24, #0x620]
02c15674  str w8,[x20, #0x1f8]
02c15678  cbnz w9,0x02c15684
02c1567c  bl 0x029f5bd0
02c15680  ldr x0,[x27]
02c15684  ldr x8,[x0, #0xb8]
02c15688  ldr x0,[x26]
02c1568c  ldr w9,[x8, #0x8]
02c15690  str w9,[x20, #0x1fc]
02c15694  ldrh w9,[x8, #0xc]
02c15698  strh w9,[x20, #0x200]
02c1569c  ldr w9,[x8, #0x38]
02c156a0  ldr x21,[x8, #0x40]
02c156a4  str w9,[x20, #0x204]
02c156a8  bl 0x029f5cec
02c156ac  ldr x2,[x19]
02c156b0  mov x1,x21
02c156b4  mov x22,x0
02c156b8  bl 0x0452c47c
02c156bc  add x0,x20,#0x208
02c156c0  mov x1,x22
02c156c4  str x22,[x20, #0x208]
02c156c8  bl 0x029f59f4
02c156cc  ldr x8,[x27]
02c156d0  ldr x0,[x25]
02c156d4  ldr x8,[x8, #0xb8]
02c156d8  ldr x21,[x8, #0x48]
02c156dc  bl 0x029f5cec
02c156e0  ldr x2,[x24]
02c156e4  mov x1,x21
02c156e8  mov x22,x0
02c156ec  bl 0x044f72bc
02c156f0  add x0,x20,#0x210
02c156f4  mov x1,x22
02c156f8  str x22,[x20, #0x210]
02c156fc  bl 0x029f59f4
02c15700  ldr x8,[x27]
02c15704  ldr x8,[x8, #0xb8]
02c15708  ldr x0,[x8, #0x28]
02c1570c  cbz x0,0x02c16154
02c15710  mov x1,xzr
02c15714  bl 0x04874260
02c15718  adrp x19,0x5e62000
02c1571c  ldr x19,[x19, #0x6b0]
02c15720  cbz x0,0x02c1575c
02c15724  ldr x22,[x19]
02c15728  mov x21,x0
02c1572c  mov x1,x22
02c15730  bl 0x029f5bd4
02c15734  cbz x0,0x02c16818
02c15738  ldr x22,[x19]
02c1573c  str x0,[x20, #0x390]
02c15740  mov x0,x21
02c15744  mov x1,x22
02c15748  bl 0x029f5bd4
02c1574c  cbz x0,0x02c16818
02c15750  mov x1,x0
02c15754  add x0,x20,#0x390
02c15758  b 0x02c15768
02c1575c  mov x1,xzr
02c15760  add x0,x20,#0x390
02c15764  str xzr,[x20, #0x390]
02c15768  adrp x19,0x5e62000
02c1576c  ldr x19,[x19, #0x668]
02c15770  bl 0x029f59f4
02c15774  ldr x8,[x19]
02c15778  ldr x8,[x8, #0xb8]
02c1577c  ldr x0,[x8]
02c15780  mov w8,#0x1
02c15784  str w8,[x20, #0x398]
02c15788  cbz x0,0x02c16154
02c1578c  adrp x19,0x5e62000
02c15790  mov x1,xzr
02c15794  ldr x19,[x19, #0x670]
02c15798  bl 0x02c8d6f0
02c1579c  mov x1,x0
02c157a0  str x0,[x20, #0x220]
02c157a4  add x0,x20,#0x220
02c157a8  bl 0x029f59f4
02c157ac  ldr x8,[x19]
02c157b0  ldr x8,[x8, #0xb8]
02c157b4  ldr x8,[x8, #0x8]
02c157b8  cbz x8,0x02c16154
02c157bc  ldrb w9,[x8, #0x20]
02c157c0  adrp x19,0x5e5d000
02c157c4  ldr x19,[x19, #0x498]
02c157c8  strb w9,[x20, #0x228]
02c157cc  add x9,x20,#0x229
02c157d0  ldurh w8,[x8, #0x21]
02c157d4  ldr x10,[x19]
02c157d8  strh w8,[x9]
02c157dc  ldr x8,[x10, #0xb8]
02c157e0  ldr x8,[x8]
02c157e4  cbz x8,0x02c16154
02c157e8  ldr x1,[x8, #0x28]
02c157ec  add x0,x20,#0x238
02c157f0  str x1,[x20, #0x238]
02c157f4  bl 0x029f59f4
02c157f8  ldr x8,[x19]
02c157fc  ldr x8,[x8, #0xb8]
02c15800  ldr x8,[x8]
02c15804  cbz x8,0x02c16154
02c15808  ldr x1,[x8, #0x30]
02c1580c  add x0,x20,#0x240
02c15810  str x1,[x20, #0x240]
02c15814  bl 0x029f59f4
02c15818  ldr x8,[x19]
02c1581c  ldr x8,[x8, #0xb8]
02c15820  ldr x8,[x8]
02c15824  cbz x8,0x02c16154
02c15828  ldr x1,[x8, #0x38]
02c1582c  adrp x19,0x5e5e000
02c15830  add x0,x20,#0x248
02c15834  ldr x19,[x19, #0x4d8]
02c15838  str x1,[x20, #0x248]
02c1583c  bl 0x029f59f4
02c15840  ldr x8,[x19]
02c15844  ldr x8,[x8, #0xb8]
02c15848  ldr x8,[x8]
02c1584c  cbz x8,0x02c16154
02c15850  adrp x9,0x5e5e000
02c15854  ldr x9,[x9, #0x4f8]
02c15858  ldr w8,[x8, #0x60]
02c1585c  ldr x9,[x9]
02c15860  cmp w8,#0x5
02c15864  cset w8,eq
02c15868  ldr x9,[x9, #0xb8]
02c1586c  strb w8,[x20, #0x3c9]
02c15870  ldr x19,[x9]
02c15874  cbz x19,0x02c16154
02c15878  ldr d0,[x19, #0x30]
02c1587c  adrp x21,0x5e62000
02c15880  mov x1,xzr
02c15884  str d0,[x20, #0x258]
02c15888  ldr x21,[x21, #0x5c8]
02c1588c  ldr x0,[x19, #0x28]
02c15890  bl 0x02c1485c
02c15894  mov x1,x0
02c15898  str x0,[x20, #0x250]
02c1589c  add x0,x20,#0x250
02c158a0  bl 0x029f59f4
02c158a4  ldr x0,[x19, #0x78]
02c158a8  mov x1,xzr
02c158ac  bl 0x02c1485c
02c158b0  mov x1,x0
02c158b4  str x0,[x20, #0x260]
02c158b8  add x0,x20,#0x260
02c158bc  bl 0x029f59f4
02c158c0  ldr x8,[x21]
02c158c4  ldr x8,[x8, #0xb8]
02c158c8  ldr x8,[x8]
02c158cc  cbz x8,0x02c16154
02c158d0  adrp x19,0x5e5d000
02c158d4  ldr x19,[x19, #0xd38]
02c158d8  ldrb w10,[x8, #0x20]
02c158dc  ldr x9,[x19]
02c158e0  strb w10,[x20, #0x3c8]
02c158e4  ldr x9,[x9, #0xb8]
02c158e8  ldr x8,[x9]
02c158ec  cbz x8,0x02c16154
02c158f0  ldr w9,[x8, #0x78]
02c158f4  mov x1,xzr
02c158f8  str w9,[x20, #0x278]
02c158fc  ldr x0,[x8, #0x70]
02c15900  bl 0x02c1485c
02c15904  mov x1,x0
02c15908  str x0,[x20, #0x270]
02c1590c  add x0,x20,#0x270
02c15910  bl 0x029f59f4
02c15914  ldr x8,[x19]
02c15918  ldr x8,[x8, #0xb8]
02c1591c  ldr x8,[x8]
02c15920  cbz x8,0x02c16154
02c15924  adrp x19,0x5e5d000
02c15928  ldr x19,[x19, #0xd48]
02c1592c  ldr x0,[x25]
02c15930  ldr x21,[x8, #0x90]
02c15934  bl 0x029f5cec
02c15938  ldr x2,[x24]
02c1593c  mov x1,x21
02c15940  mov x22,x0
02c15944  bl 0x044f72bc
02c15948  add x0,x20,#0x280
02c1594c  mov x1,x22
02c15950  str x22,[x20, #0x280]
02c15954  bl 0x029f59f4
02c15958  ldr x8,[x19]
02c1595c  ldr x8,[x8, #0xb8]
02c15960  ldr x8,[x8]
02c15964  cbz x8,0x02c16154
02c15968  ldr x0,[x8, #0x58]
02c1596c  mov x1,xzr
02c15970  bl 0x02c1485c
02c15974  mov x1,x0
02c15978  str x0,[x20, #0x290]
02c1597c  add x0,x20,#0x290
02c15980  bl 0x029f59f4
02c15984  ldr x8,[x19]
02c15988  ldr x8,[x8, #0xb8]
02c1598c  ldr x8,[x8]
02c15990  cbz x8,0x02c16154
02c15994  adrp x19,0x5e5e000
02c15998  ldr x19,[x19, #0x70]
02c1599c  ldr w9,[x8, #0x50]
02c159a0  ldr w8,[x8, #0x60]
02c159a4  ldr x0,[x19]
02c159a8  str w9,[x20, #0x288]
02c159ac  str w8,[x20, #0x298]
02c159b0  ldr w10,[x0, #0xe4]
02c159b4  cbnz w10,0x02c159c0
02c159b8  bl 0x029f5bd0
02c159bc  ldr x0,[x19]
02c159c0  ldr x8,[x29]
02c159c4  ldr x9,[x0, #0xb8]
02c159c8  ldr w10,[x8, #0xe4]
02c159cc  ldr x21,[x9]
02c159d0  cbnz w10,0x02c159dc
02c159d4  mov x0,x8
02c159d8  bl 0x029f5bd0
02c159dc  mov x0,x21
02c159e0  mov x1,xzr
02c159e4  mov x2,xzr
02c159e8  bl 0x057dfa70
02c159ec  tbz w0,#0x0,0x02c15a54
02c159f0  cbz x21,0x02c16154
02c159f4  ldr x0,[x21, #0x68]
02c159f8  mov x1,xzr
02c159fc  bl 0x02c1485c
02c15a00  mov x1,x0
02c15a04  str x0,[x20, #0x2a0]
02c15a08  add x0,x20,#0x2a0
02c15a0c  bl 0x029f59f4
02c15a10  ldr w8,[x21, #0x70]
02c15a14  mov x0,x21
02c15a18  mov x1,xzr
02c15a1c  str w8,[x20, #0x2a8]
02c15a20  ldrh w8,[x21, #0x74]
02c15a24  strh w8,[x20, #0x2ac]
02c15a28  ldr d0,[x21, #0x78]
02c15a2c  str d0,[x20, #0x2b0]
02c15a30  ldr w8,[x21, #0x80]
02c15a34  str w8,[x20, #0x2b8]
02c15a38  bl 0x02c599dc
02c15a3c  mov x1,x0
02c15a40  str x0,[x20, #0x2c0]
02c15a44  add x0,x20,#0x2c0
02c15a48  bl 0x029f59f4
02c15a4c  ldr w8,[x21, #0x100]
02c15a50  str w8,[x20, #0x424]
02c15a54  adrp x19,0x5e5d000
02c15a58  ldr x19,[x19, #0xd30]
02c15a5c  ldr x0,[x19]
02c15a60  ldr w8,[x0, #0xe4]
02c15a64  cbnz w8,0x02c15a70
02c15a68  bl 0x029f5bd0
02c15a6c  ldr x0,[x19]
02c15a70  ldr x8,[x0, #0xb8]
02c15a74  ldr x8,[x8, #0x8]
02c15a78  cbz x8,0x02c16154
02c15a7c  adrp x19,0x5e5d000
02c15a80  ldr x19,[x19, #0xd58]
02c15a84  ldr w8,[x8, #0x20]
02c15a88  ldr x0,[x19]
02c15a8c  str w8,[x20, #0x2c8]
02c15a90  ldr w9,[x0, #0xe4]
02c15a94  cbnz w9,0x02c15aa0
02c15a98  bl 0x029f5bd0
02c15a9c  ldr x0,[x19]
02c15aa0  ldr x8,[x0, #0xb8]
02c15aa4  ldr x8,[x8, #0x8]
02c15aa8  cbz x8,0x02c16154
02c15aac  adrp x19,0x5e5d000
02c15ab0  ldr x19,[x19, #0xd50]
02c15ab4  ldr d0,[x8, #0x20]
02c15ab8  ldr x0,[x19]
02c15abc  str d0,[x23, #0x1a0]
02c15ac0  ldr w8,[x0, #0xe4]
02c15ac4  cbnz w8,0x02c15ad0
02c15ac8  bl 0x029f5bd0
02c15acc  ldr x0,[x19]
02c15ad0  adrp x19,0x5e62000
02c15ad4  ldr x19,[x19, #0x6b0]
02c15ad8  ldr x8,[x0, #0xb8]
02c15adc  ldr x24,[x8, #0x8]
02c15ae0  cbz x24,0x02c16154
02c15ae4  ldr d0,[x24, #0x48]
02c15ae8  ldrb w10,[x24, #0x64]
02c15aec  mov x1,xzr
02c15af0  str d0,[x23, #0x1a8]
02c15af4  ldr w9,[x24, #0x60]
02c15af8  strb w10,[x20, #0x324]
02c15afc  str w9,[x20, #0x320]
02c15b00  ldrb w9,[x24, #0x65]
02c15b04  ldr q0,[x24, #0x50]
02c15b08  strb w9,[x20, #0x2ec]
02c15b0c  add x9,x20,#0x2ed
02c15b10  str q0,[x23, #0x1b0]
02c15b14  ldrh w8,[x8]
02c15b18  strh w8,[x9]
02c15b1c  ldr x0,[x24, #0x68]
02c15b20  bl 0x02c1485c
02c15b24  mov x1,x0
02c15b28  str x0,[x20, #0x2f0]
02c15b2c  add x0,x20,#0x2f0
02c15b30  bl 0x029f59f4
02c15b34  ldr x0,[x24, #0x70]
02c15b38  mov x1,xzr
02c15b3c  bl 0x02c1485c
02c15b40  mov x1,x0
02c15b44  str x0,[x20, #0x2f8]
02c15b48  add x0,x20,#0x2f8
02c15b4c  bl 0x029f59f4
02c15b50  ldr x8,[x24, #0x20]
02c15b54  cbz x8,0x02c16154
02c15b58  ldr x0,[x19]
02c15b5c  ldr w1,[x8, #0x18]
02c15b60  bl 0x029f5b40
02c15b64  add x22,x20,#0x300
02c15b68  mov x1,x0
02c15b6c  str x0,[x20, #0x300]
02c15b70  mov x0,x22
02c15b74  bl 0x029f59f4
02c15b78  ldr x8,[x24, #0x20]
02c15b7c  cbz x8,0x02c16154
02c15b80  ldr x0,[x19]
02c15b84  ldr w1,[x8, #0x18]
02c15b88  bl 0x029f5b40
02c15b8c  add x21,x20,#0x308
02c15b90  mov x1,x0
02c15b94  str x0,[x20, #0x308]
02c15b98  mov x0,x21
02c15b9c  bl 0x029f59f4
02c15ba0  ldr x8,[x24, #0x20]
02c15ba4  cbz x8,0x02c16154
02c15ba8  ldr w9,[x8, #0x18]
02c15bac  cmp w9,#0x1
02c15bb0  b.lt 0x02c15c20
02c15bb4  bic w10,w9,w9, ASR #0x1f
02c15bb8  ldr x11,[x22]
02c15bbc  mov w13,wzr
02c15bc0  cmp w9,w13
02c15bc4  b.eq 0x02c16808
02c15bc8  sxtw x12,w13
02c15bcc  add x13,x8,x12, LSL #0x3
02c15bd0  ldr x13,[x13, #0x20]
02c15bd4  cbz x13,0x02c16154
02c15bd8  cbz x11,0x02c16154
02c15bdc  ldr w14,[x11, #0x18]
02c15be0  cmp w12,w14
02c15be4  b.cs 0x02c16808
02c15be8  ldrb w15,[x13, #0x24]
02c15bec  ldr x14,[x21]
02c15bf0  add x16,x11,x12
02c15bf4  strb w15,[x16, #0x20]
02c15bf8  cbz x14,0x02c16154
02c15bfc  ldr w15,[x14, #0x18]
02c15c00  cmp w12,w15
02c15c04  b.cs 0x02c16808
02c15c08  ldrb w15,[x13, #0x25]
02c15c0c  add w13,w12,#0x1
02c15c10  add x12,x14,x12
02c15c14  cmp w10,w13
02c15c18  strb w15,[x12, #0x20]
02c15c1c  b.ne 0x02c15bc0
02c15c20  ldr x0,[x24, #0x38]
02c15c24  cbz x0,0x02c16154
02c15c28  mov x1,xzr
02c15c2c  bl 0x04874260
02c15c30  cbz x0,0x02c15c6c
02c15c34  ldr x22,[x19]
02c15c38  mov x21,x0
02c15c3c  mov x1,x22
02c15c40  bl 0x029f5bd4
02c15c44  cbz x0,0x02c16818
02c15c48  ldr x22,[x19]
02c15c4c  str x0,[x20, #0x310]
02c15c50  mov x0,x21
02c15c54  mov x1,x22
02c15c58  bl 0x029f5bd4
02c15c5c  cbz x0,0x02c16818
02c15c60  mov x1,x0
02c15c64  add x0,x20,#0x310
02c15c68  b 0x02c15c78
02c15c6c  mov x1,xzr
02c15c70  add x0,x20,#0x310
02c15c74  str xzr,[x20, #0x310]
02c15c78  bl 0x029f59f4
02c15c7c  ldr x0,[x24, #0x40]
02c15c80  cbz x0,0x02c16154
02c15c84  mov x1,xzr
02c15c88  bl 0x04874260
02c15c8c  cbz x0,0x02c15cc8
02c15c90  ldr x22,[x19]
02c15c94  mov x21,x0
02c15c98  mov x1,x22
02c15c9c  bl 0x029f5bd4
02c15ca0  cbz x0,0x02c16818
02c15ca4  ldr x22,[x19]
02c15ca8  str x0,[x20, #0x318]
02c15cac  mov x0,x21
02c15cb0  mov x1,x22
02c15cb4  bl 0x029f5bd4
02c15cb8  cbz x0,0x02c16818
02c15cbc  mov x1,x0
02c15cc0  add x0,x20,#0x318
02c15cc4  b 0x02c15cd4
02c15cc8  mov x1,xzr
02c15ccc  add x0,x20,#0x318
02c15cd0  str xzr,[x20, #0x318]
02c15cd4  adrp x19,0x5e5d000
02c15cd8  ldr x19,[x19, #0x4c0]
02c15cdc  bl 0x029f59f4
02c15ce0  ldr x0,[x19]
02c15ce4  ldr w8,[x0, #0xe4]
02c15ce8  cbnz w8,0x02c15cf4
02c15cec  bl 0x029f5bd0
02c15cf0  ldr x0,[x19]
02c15cf4  ldr x8,[x0, #0xb8]
02c15cf8  ldr x0,[x8]
02c15cfc  cbz x0,0x02c16154
02c15d00  mov w1,wzr
02c15d04  mov x2,xzr
02c15d08  bl 0x02c37464
02c15d0c  ldr x8,[x19]
02c15d10  str s0,[x20, #0x328]
02c15d14  ldr x8,[x8, #0xb8]
02c15d18  ldr x0,[x8]
02c15d1c  cbz x0,0x02c16154
02c15d20  mov w1,#0x1
02c15d24  mov x2,xzr
02c15d28  bl 0x02c37464
02c15d2c  ldr x8,[x19]
02c15d30  str s0,[x20, #0x32c]
02c15d34  ldr x8,[x8, #0xb8]
02c15d38  ldr x0,[x8]
02c15d3c  cbz x0,0x02c16154
02c15d40  adrp x19,0x5e5d000
02c15d44  mov w1,#0x2
02c15d48  mov x2,xzr
02c15d4c  ldr x19,[x19, #0xd28]
02c15d50  bl 0x02c37464
02c15d54  ldr x0,[x19]
02c15d58  str s0,[x20, #0x330]
02c15d5c  ldr w8,[x0, #0xe4]
02c15d60  cbnz w8,0x02c15d6c
02c15d64  bl 0x029f5bd0
02c15d68  ldr x0,[x19]
02c15d6c  ldr x8,[x29]
02c15d70  ldr x9,[x0, #0xb8]
02c15d74  ldr w10,[x8, #0xe4]
02c15d78  ldr x21,[x9, #0x10]
02c15d7c  cbnz w10,0x02c15d88
02c15d80  mov x0,x8
02c15d84  bl 0x029f5bd0
02c15d88  mov x0,x21
02c15d8c  mov x1,xzr
02c15d90  mov x2,xzr
02c15d94  bl 0x057dfa70
02c15d98  tbz w0,#0x0,0x02c16034
02c15d9c  adrp x19,0x5e5d000
02c15da0  ldr x19,[x19, #0x790]
02c15da4  cbz x21,0x02c16154
02c15da8  ldr x0,[x21, #0x28]
02c15dac  cbz x0,0x02c16154
02c15db0  mov x1,xzr
02c15db4  bl 0x04874260
02c15db8  cbz x0,0x02c15df4
02c15dbc  ldr x23,[x19]
02c15dc0  mov x22,x0
02c15dc4  mov x1,x23
02c15dc8  bl 0x029f5bd4
02c15dcc  cbz x0,0x02c16824
02c15dd0  ldr x23,[x19]
02c15dd4  str x0,[x20, #0x340]
02c15dd8  mov x0,x22
02c15ddc  mov x1,x23
02c15de0  bl 0x029f5bd4
02c15de4  cbz x0,0x02c16824
02c15de8  mov x1,x0
02c15dec  add x0,x20,#0x340
02c15df0  b 0x02c15e00
02c15df4  mov x1,xzr
02c15df8  add x0,x20,#0x340
02c15dfc  str xzr,[x20, #0x340]
02c15e00  bl 0x029f59f4
02c15e04  ldr d0,[x21, #0x30]
02c15e08  mov x1,xzr
02c15e0c  str d0,[x20, #0x348]
02c15e10  ldr w8,[x21, #0x58]
02c15e14  str w8,[x20, #0x350]
02c15e18  ldr x0,[x21, #0x60]
02c15e1c  bl 0x02c1485c
02c15e20  mov x1,x0
02c15e24  str x0,[x20, #0x358]
02c15e28  add x0,x20,#0x358
02c15e2c  bl 0x029f59f4
02c15e30  ldr x8,[x21, #0x20]
02c15e34  cbz x8,0x02c1600c
02c15e38  adrp x9,0x5e62000
02c15e3c  ldr x9,[x9, #0x690]
02c15e40  ldr w1,[x8, #0x18]
02c15e44  ldr x0,[x9]
02c15e48  bl 0x029f5b40
02c15e4c  mov x1,x0
02c15e50  add x0,x20,#0x338
02c15e54  str x1,[x20, #0x338]
02c15e58  str x0,[sp, #0x8]
02c15e5c  bl 0x029f59f4
02c15e60  ldr x8,[x21, #0x20]
02c15e64  cbz x8,0x02c16154
02c15e68  adrp x26,0x5e62000
02c15e6c  mov w29,wzr
02c15e70  ldr x26,[x26, #0x6a8]
02c15e74  str x21,[sp]
02c15e78  ldr w9,[x8, #0x18]
02c15e7c  cmp w29,w9
02c15e80  b.ge 0x02c1600c
02c15e84  cmp w29,w9
02c15e88  b.cs 0x02c16808
02c15e8c  sxtw x28,w29
02c15e90  add x8,x8,x28, LSL #0x3
02c15e94  ldr x8,[x8, #0x20]
02c15e98  cbz x8,0x02c16154
02c15e9c  ldr x19,[x8, #0x18]
02c15ea0  adrp x8,0x5e62000
02c15ea4  ldr x8,[x8, #0x698]
02c15ea8  ldr x0,[x8]
02c15eac  bl 0x029f5cec
02c15eb0  mov x1,xzr
02c15eb4  mov x23,x0
02c15eb8  bl 0x04893238
02c15ebc  adrp x8,0x5e62000
02c15ec0  ldr x8,[x8, #0x6a0]
02c15ec4  ldr x0,[x8]
02c15ec8  cbz x19,0x02c15fa0
02c15ecc  ldr w1,[x19, #0x18]
02c15ed0  bl 0x029f5b40
02c15ed4  cbz x23,0x02c16154
02c15ed8  mov x24,x23
02c15edc  mov x1,x0
02c15ee0  str x0,[x24, #0x10]!
02c15ee4  mov x0,x24
02c15ee8  bl 0x029f59f4
02c15eec  ldr w8,[x19, #0x18]
02c15ef0  cmp w8,#0x1
02c15ef4  b.lt 0x02c15fbc
02c15ef8  mov w27,wzr
02c15efc  mov w22,#0x20
02c15f00  ldr x0,[x26]
02c15f04  ldr x21,[x24]
02c15f08  bl 0x029f5cec
02c15f0c  mov x1,xzr
02c15f10  mov x25,x0
02c15f14  bl 0x04893238
02c15f18  ldr w8,[x19, #0x18]
02c15f1c  cmp w27,w8
02c15f20  b.cs 0x02c16808
02c15f24  ldr x8,[x19, x22, LSL #0x0]
02c15f28  cbz x8,0x02c16154
02c15f2c  cbz x25,0x02c16154
02c15f30  ldrb w9,[x8, #0x10]
02c15f34  mov x1,xzr
02c15f38  strb w9,[x25, #0x10]
02c15f3c  ldr x0,[x8, #0x18]
02c15f40  bl 0x02c1485c
02c15f44  mov x1,x0
02c15f48  mov x0,x25
02c15f4c  str x1,[x0, #0x18]!
02c15f50  bl 0x029f59f4
02c15f54  cbz x21,0x02c16154
02c15f58  ldr x8,[x21]
02c15f5c  mov x0,x25
02c15f60  ldr x1,[x8, #0x40]
02c15f64  bl 0x029f5bd4
02c15f68  cbz x0,0x02c1680c
02c15f6c  ldr w8,[x21, #0x18]
02c15f70  cmp w27,w8
02c15f74  b.cs 0x02c16808
02c15f78  add x0,x21,x22
02c15f7c  mov x1,x25
02c15f80  str x25,[x21, x22, LSL #0x0]
02c15f84  bl 0x029f59f4
02c15f88  ldr w8,[x19, #0x18]
02c15f8c  add w27,w27,#0x1
02c15f90  add x22,x22,#0x8
02c15f94  cmp w27,w8
02c15f98  b.lt 0x02c15f00
02c15f9c  b 0x02c15fbc
02c15fa0  mov w1,wzr
02c15fa4  bl 0x029f5b40
02c15fa8  cbz x23,0x02c16154
02c15fac  mov x1,x0
02c15fb0  mov x0,x23
02c15fb4  str x1,[x0, #0x10]!
02c15fb8  bl 0x029f59f4
02c15fbc  ldr x8,[sp, #0x8]
02c15fc0  ldr x19,[x8]
02c15fc4  cbz x19,0x02c16154
02c15fc8  ldr x8,[x19]
02c15fcc  mov x0,x23
02c15fd0  ldr x1,[x8, #0x40]
02c15fd4  bl 0x029f5bd4
02c15fd8  ldr x21,[sp]
02c15fdc  cbz x0,0x02c1680c
02c15fe0  ldr w8,[x19, #0x18]
02c15fe4  cmp w29,w8
02c15fe8  b.cs 0x02c16808
02c15fec  add x0,x19,x28, LSL #0x3
02c15ff0  mov x1,x23
02c15ff4  str x23,[x0, #0x20]!
02c15ff8  bl 0x029f59f4
02c15ffc  ldr x8,[x21, #0x20]
02c16000  add w29,w29,#0x1
02c16004  cbnz x8,0x02c15e78
02c16008  b 0x02c16154
02c1600c  ldr w8,[x21, #0x78]
02c16010  ldr x1,[x21, #0x80]
02c16014  add x0,x20,#0x368
02c16018  str w8,[x20, #0x360]
02c1601c  str x1,[x20, #0x368]
02c16020  bl 0x029f59f4
02c16024  adrp x28,0x5e5d000
02c16028  adrp x29,0x5e59000
02c1602c  ldr x28,[x28, #0x3c0]
02c16030  ldr x29,[x29, #0x1c0]
02c16034  adrp x19,0x5e5d000
02c16038  ldr x19,[x19, #0x4d8]
02c1603c  ldr x0,[x19]
02c16040  ldr w8,[x0, #0xe4]
02c16044  cbnz w8,0x02c16050
02c16048  bl 0x029f5bd0
02c1604c  ldr x0,[x19]
02c16050  ldr x8,[x29]
02c16054  ldr x9,[x0, #0xb8]
02c16058  ldr w10,[x8, #0xe4]
02c1605c  ldr x21,[x9, #0x70]
02c16060  cbnz w10,0x02c1606c
02c16064  mov x0,x8
02c16068  bl 0x029f5bd0
02c1606c  mov x0,x21
02c16070  mov x1,xzr
02c16074  mov x2,xzr
02c16078  bl 0x057dfa70
02c1607c  tbz w0,#0x0,0x02c16158
02c16080  cbz x21,0x02c16154
02c16084  ldr x8,[x21, #0x20]
02c16088  cbz x8,0x02c16158
02c1608c  adrp x9,0x5e62000
02c16090  ldr x9,[x9, #0x6c0]
02c16094  ldr w1,[x8, #0x18]
02c16098  ldr x0,[x9]
02c1609c  bl 0x029f5b40
02c160a0  add x22,x20,#0x370
02c160a4  mov x1,x0
02c160a8  str x0,[x20, #0x370]
02c160ac  mov x0,x22
02c160b0  bl 0x029f59f4
02c160b4  ldr x8,[x21, #0x20]
02c160b8  cbz x8,0x02c16154
02c160bc  adrp x24,0x5e62000
02c160c0  mov w19,wzr
02c160c4  mov w25,#0x20
02c160c8  ldr x24,[x24, #0x6c8]
02c160cc  ldr w9,[x8, #0x18]
02c160d0  cmp w19,w9
02c160d4  b.ge 0x02c16158
02c160d8  b.cs 0x02c16808
02c160dc  ldr x0,[x24]
02c160e0  ldr x27,[x8, x25, LSL #0x0]
02c160e4  ldr x26,[x22]
02c160e8  bl 0x029f5cec
02c160ec  mov x1,xzr
02c160f0  mov x23,x0
02c160f4  bl 0x04893238
02c160f8  cbz x27,0x02c16154
02c160fc  cbz x23,0x02c16154
02c16100  ldr d0,[x27, #0x18]
02c16104  ldrb w8,[x27, #0x20]
02c16108  str d0,[x23, #0x10]
02c1610c  strb w8,[x23, #0x18]
02c16110  cbz x26,0x02c16154
02c16114  ldr x8,[x26]
02c16118  mov x0,x23
02c1611c  ldr x1,[x8, #0x40]
02c16120  bl 0x029f5bd4
02c16124  cbz x0,0x02c1680c
02c16128  ldr w8,[x26, #0x18]
02c1612c  cmp w19,w8
02c16130  b.cs 0x02c16808
02c16134  add x0,x26,x25
02c16138  mov x1,x23
02c1613c  str x23,[x26, x25, LSL #0x0]
02c16140  bl 0x029f59f4
02c16144  ldr x8,[x21, #0x20]
02c16148  add w19,w19,#0x1
02c1614c  add x25,x25,#0x8
02c16150  cbnz x8,0x02c160cc
02c16154  bl 0x029f5cfc
02c16158  adrp x21,0x5e5d000
02c1615c  adrp x19,0x5e5e000
02c16160  ldr x21,[x21, #0x338]
02c16164  ldr x0,[x21]
02c16168  ldr w8,[x0, #0xe4]
02c1616c  ldr x19,[x19, #0x58]
02c16170  cbnz w8,0x02c1617c
02c16174  bl 0x029f5bd0
02c16178  ldr x0,[x21]
02c1617c  ldr x8,[x0, #0xb8]
02c16180  ldr x0,[x19]
02c16184  ldr w8,[x8, #0xc4]
02c16188  ldr w9,[x0, #0xe4]
02c1618c  str w8,[x20, #0x88]
02c16190  cbnz w9,0x02c1619c
02c16194  bl 0x029f5bd0
02c16198  ldr x0,[x19]
02c1619c  ldr x8,[x29]
02c161a0  ldr x9,[x0, #0xb8]
02c161a4  ldr w10,[x8, #0xe4]
02c161a8  ldr x21,[x9]
02c161ac  cbnz w10,0x02c161b8
02c161b0  mov x0,x8
02c161b4  bl 0x029f5bd0
02c161b8  mov x0,x21
02c161bc  mov x1,xzr
02c161c0  mov x2,xzr
02c161c4  bl 0x057dfa70
02c161c8  tbz w0,#0x0,0x02c1622c
02c161cc  ldr x0,[x19]
02c161d0  ldr w8,[x0, #0xe4]
02c161d4  cbnz w8,0x02c161e0
02c161d8  bl 0x029f5bd0
02c161dc  ldr x0,[x19]
02c161e0  ldr x8,[x0, #0xb8]
02c161e4  ldr x0,[x8]
02c161e8  cbz x0,0x02c16154
02c161ec  mov x1,xzr
02c161f0  bl 0x02c6e68c
02c161f4  mov x1,x0
02c161f8  mov x0,x20
02c161fc  str x1,[x0, #0xf8]!
02c16200  bl 0x029f59f4
02c16204  ldr x8,[x19]
02c16208  ldr x8,[x8, #0xb8]
02c1620c  ldr x0,[x8]
02c16210  cbz x0,0x02c16154
02c16214  mov x1,xzr
02c16218  bl 0x02c6e704
02c1621c  mov x1,x0
02c16220  str x0,[x20, #0x100]
02c16224  add x0,x20,#0x100
02c16228  bl 0x029f59f4
02c1622c  adrp x19,0x5e5e000
02c16230  ldr x19,[x19, #0x3e0]
02c16234  ldr x0,[x19]
02c16238  ldr w8,[x0, #0xe4]
02c1623c  cbnz w8,0x02c16248
02c16240  bl 0x029f5bd0
02c16244  ldr x0,[x19]
02c16248  ldr x8,[x29]
02c1624c  ldr x9,[x0, #0xb8]
02c16250  ldr w10,[x8, #0xe4]
02c16254  ldr x21,[x9]
02c16258  cbnz w10,0x02c16264
02c1625c  mov x0,x8
02c16260  bl 0x029f5bd0
02c16264  mov x0,x21
02c16268  mov x1,xzr
02c1626c  mov x2,xzr
02c16270  bl 0x057dfa70
02c16274  tbz w0,#0x0,0x02c162a0
02c16278  ldr x0,[x19]
02c1627c  ldr w8,[x0, #0xe4]
02c16280  cbnz w8,0x02c1628c
02c16284  bl 0x029f5bd0
02c16288  ldr x0,[x19]
02c1628c  ldr x8,[x0, #0xb8]
02c16290  ldr x8,[x8]
02c16294  cbz x8,0x02c16154
02c16298  ldr q0,[x8, #0x20]
02c1629c  str q0,[x20, #0x3f0]
02c162a0  adrp x19,0x5e5e000
02c162a4  ldr x19,[x19, #0x68]
02c162a8  ldr x0,[x29]
02c162ac  ldr x8,[x19]
02c162b0  ldr w9,[x0, #0xe4]
02c162b4  ldr x8,[x8, #0xb8]
02c162b8  ldr x21,[x8]
02c162bc  cbnz w9,0x02c162c4
02c162c0  bl 0x029f5bd0
02c162c4  mov x0,x21
02c162c8  mov x1,xzr
02c162cc  mov x2,xzr
02c162d0  bl 0x057dfa70
02c162d4  tbz w0,#0x0,0x02c1634c
02c162d8  ldr x8,[x19]
02c162dc  ldr x8,[x8, #0xb8]
02c162e0  ldr x21,[x8]
02c162e4  cbz x21,0x02c16154
02c162e8  ldr w8,[x21, #0x28]
02c162ec  mov x0,x21
02c162f0  mov x1,xzr
02c162f4  str w8,[x20, #0x400]
02c162f8  bl 0x02c54e5c
02c162fc  mov x1,x0
02c16300  str x0,[x20, #0x408]
02c16304  add x0,x20,#0x408
02c16308  bl 0x029f59f4
02c1630c  mov x0,x21
02c16310  mov x1,xzr
02c16314  bl 0x02c54ed4
02c16318  mov x1,x0
02c1631c  str x0,[x20, #0x410]
02c16320  add x0,x20,#0x410
02c16324  bl 0x029f59f4
02c16328  mov x0,x21
02c1632c  mov x1,xzr
02c16330  bl 0x02c54f4c
02c16334  mov x1,x0
02c16338  str x0,[x20, #0x418]
02c1633c  add x0,x20,#0x418
02c16340  bl 0x029f59f4
02c16344  ldrb w8,[x21, #0x48]
02c16348  strb w8,[x20, #0x420]
02c1634c  adrp x19,0x5e5e000
02c16350  ldr x19,[x19, #0x4b8]
02c16354  ldr x0,[x19]
02c16358  ldr w8,[x0, #0xe4]
02c1635c  cbnz w8,0x02c16368
02c16360  bl 0x029f5bd0
02c16364  ldr x0,[x19]
02c16368  ldr x8,[x29]
02c1636c  ldr x9,[x0, #0xb8]
02c16370  ldr w10,[x8, #0xe4]
02c16374  ldr x21,[x9]
02c16378  cbnz w10,0x02c16384
02c1637c  mov x0,x8
02c16380  bl 0x029f5bd0
02c16384  mov x0,x21
02c16388  mov x1,xzr
02c1638c  mov x2,xzr
02c16390  bl 0x057dfa70
02c16394  tbz w0,#0x0,0x02c16448
02c16398  ldr x0,[x19]
02c1639c  ldr w8,[x0, #0xe4]
02c163a0  cbnz w8,0x02c163ac
02c163a4  bl 0x029f5bd0
02c163a8  ldr x0,[x19]
02c163ac  ldr x8,[x0, #0xb8]
02c163b0  ldr x8,[x8]
02c163b4  cbz x8,0x02c16154
02c163b8  ldr x0,[x8, #0x38]
02c163bc  cbz x0,0x02c16154
02c163c0  mov x1,xzr
02c163c4  bl 0x04874260
02c163c8  cbz x0,0x02c1640c
02c163cc  adrp x23,0x5e62000
02c163d0  mov x21,x0
02c163d4  ldr x23,[x23, #0x6b0]
02c163d8  ldr x22,[x23]
02c163dc  mov x1,x22
02c163e0  bl 0x029f5bd4
02c163e4  cbz x0,0x02c16818
02c163e8  ldr x22,[x23]
02c163ec  str x0,[x20, #0x3d0]
02c163f0  mov x0,x21
02c163f4  mov x1,x22
02c163f8  bl 0x029f5bd4
02c163fc  cbz x0,0x02c16818
02c16400  mov x1,x0
02c16404  add x0,x20,#0x3d0
02c16408  b 0x02c16418
02c1640c  mov x1,xzr
02c16410  add x0,x20,#0x3d0
02c16414  str xzr,[x20, #0x3d0]
02c16418  bl 0x029f59f4
02c1641c  ldr x8,[x19]
02c16420  ldr x8,[x8, #0xb8]
02c16424  ldr x8,[x8]
02c16428  cbz x8,0x02c16154
02c1642c  ldr x0,[x8, #0x40]
02c16430  mov x1,xzr
02c16434  bl 0x02c1485c
02c16438  mov x1,x0
02c1643c  str x0,[x20, #0x3d8]
02c16440  add x0,x20,#0x3d8
02c16444  bl 0x029f59f4
02c16448  adrp x19,0x5e62000
02c1644c  ldr x19,[x19, #0x660]
02c16450  ldr x0,[x19]
02c16454  ldr w8,[x0, #0xe4]
02c16458  cbnz w8,0x02c16464
02c1645c  bl 0x029f5bd0
02c16460  ldr x0,[x19]
02c16464  ldr x8,[x29]
02c16468  ldr x9,[x0, #0xb8]
02c1646c  ldr w10,[x8, #0xe4]
02c16470  ldr x21,[x9]
02c16474  cbnz w10,0x02c16480
02c16478  mov x0,x8
02c1647c  bl 0x029f5bd0
02c16480  mov x0,x21
02c16484  mov x1,xzr
02c16488  mov x2,xzr
02c1648c  bl 0x057dfa70
02c16490  tbz w0,#0x0,0x02c16538
02c16494  ldr x0,[x19]
02c16498  ldr w8,[x0, #0xe4]
02c1649c  cbnz w8,0x02c164a8
02c164a0  bl 0x029f5bd0
02c164a4  ldr x0,[x19]
02c164a8  ldr x8,[x0, #0xb8]
02c164ac  ldr x8,[x8]
02c164b0  cbz x8,0x02c16154
02c164b4  ldr x0,[x8, #0x20]
02c164b8  cbz x0,0x02c16154
02c164bc  mov x1,xzr
02c164c0  bl 0x04874260
02c164c4  cbz x0,0x02c16508
02c164c8  adrp x23,0x5e5d000
02c164cc  mov x21,x0
02c164d0  ldr x23,[x23, #0x790]
02c164d4  ldr x22,[x23]
02c164d8  mov x1,x22
02c164dc  bl 0x029f5bd4
02c164e0  cbz x0,0x02c16818
02c164e4  ldr x22,[x23]
02c164e8  str x0,[x20, #0x3e0]
02c164ec  mov x0,x21
02c164f0  mov x1,x22
02c164f4  bl 0x029f5bd4
02c164f8  cbz x0,0x02c16818
02c164fc  mov x1,x0
02c16500  add x0,x20,#0x3e0
02c16504  b 0x02c16514
02c16508  mov x1,xzr
02c1650c  add x0,x20,#0x3e0
02c16510  str xzr,[x20, #0x3e0]
02c16514  bl 0x029f59f4
02c16518  ldr x8,[x19]
02c1651c  ldr x8,[x8, #0xb8]
02c16520  ldr x8,[x8]
02c16524  cbz x8,0x02c16154
02c16528  ldr x1,[x8, #0x28]
02c1652c  add x0,x20,#0x3e8
02c16530  str x1,[x20, #0x3e8]
02c16534  bl 0x029f59f4
02c16538  adrp x8,0x5e5e000
02c1653c  ldr x8,[x8, #0xb8]
02c16540  ldr x0,[x8]
02c16544  ldr w8,[x0, #0xe4]
02c16548  cbnz w8,0x02c16550
02c1654c  bl 0x029f5bd0
02c16550  mov x0,xzr
02c16554  bl 0x02c91618
02c16558  mov x1,x0
02c1655c  str x0,[x20, #0x218]
02c16560  add x0,x20,#0x218
02c16564  bl 0x029f59f4
02c16568  adrp x19,0x5e5d000
02c1656c  ldr x19,[x19, #0x920]
02c16570  ldr x0,[x19]
02c16574  ldr w8,[x0, #0xe4]
02c16578  cbnz w8,0x02c16584
02c1657c  bl 0x029f5bd0
02c16580  ldr x0,[x19]
02c16584  ldr x8,[x0, #0xb8]
02c16588  adrp x21,0x5e5d000
02c1658c  mov x1,xzr
02c16590  ldr x21,[x21, #0x6a8]
02c16594  ldr x0,[x8, #0x10]
02c16598  bl 0x02c1485c
02c1659c  mov x1,x0
02c165a0  str x0,[x20, #0x378]
02c165a4  add x0,x20,#0x378
02c165a8  bl 0x029f59f4
02c165ac  ldr x8,[x19]
02c165b0  mov x1,xzr
02c165b4  ldr x8,[x8, #0xb8]
02c165b8  ldr x0,[x8, #0x18]
02c165bc  bl 0x02c1485c
02c165c0  mov x1,x0
02c165c4  str x0,[x20, #0x380]
02c165c8  add x0,x20,#0x380
02c165cc  bl 0x029f59f4
02c165d0  ldr x8,[x19]
02c165d4  mov x1,xzr
02c165d8  ldr x8,[x8, #0xb8]
02c165dc  ldr x0,[x8, #0x20]
02c165e0  bl 0x02c1485c
02c165e4  mov x1,x0
02c165e8  str x0,[x20, #0x388]
02c165ec  add x0,x20,#0x388
02c165f0  bl 0x029f59f4
02c165f4  ldr x0,[x28]
02c165f8  ldr w8,[x0, #0xe4]
02c165fc  cbnz w8,0x02c16604
02c16600  bl 0x029f5bd0
02c16604  adrp x22,0x5e59000
02c16608  mov x0,xzr
02c1660c  ldr x22,[x22, #0x7d0]
02c16610  bl 0x02c1a570
02c16614  mov x1,xzr
02c16618  bl 0x02c1485c
02c1661c  mov x1,x0
02c16620  str x0,[x20, #0x230]
02c16624  add x0,x20,#0x230
02c16628  bl 0x029f59f4
02c1662c  ldr x0,[x21]
02c16630  ldr w8,[x0, #0xe4]
02c16634  cbnz w8,0x02c16640
02c16638  bl 0x029f5bd0
02c1663c  ldr x0,[x21]
02c16640  ldr x8,[x22]
02c16644  ldr x9,[x0, #0xb8]
02c16648  ldr w10,[x8, #0xe4]
02c1664c  ldr x19,[x9, #0x10]
02c16650  cbnz w10,0x02c1665c
02c16654  mov x0,x8
02c16658  bl 0x029f5bd0
02c1665c  mov x0,x19
02c16660  mov x1,xzr
02c16664  mov x2,xzr
02c16668  bl 0x04833138
02c1666c  tbz w0,#0x0,0x02c16680
02c16670  adrp x8,0x5e59000
02c16674  ldr x8,[x8, #0x50]
02c16678  ldr x1,[x8]
02c1667c  b 0x02c166f0
02c16680  ldr x0,[x21]
02c16684  ldr w8,[x0, #0xe4]
02c16688  cbnz w8,0x02c16690
02c1668c  bl 0x029f5bd0
02c16690  adrp x8,0x5e59000
02c16694  ldr x8,[x8, #0x760]
02c16698  ldr x0,[x8]
02c1669c  ldr w8,[x0, #0xe4]
02c166a0  cbnz w8,0x02c166a8
02c166a4  bl 0x029f5bd0
02c166a8  mov x0,xzr
02c166ac  bl 0x047e36ac
02c166b0  ldr x8,[x22]
02c166b4  mov x19,x0
02c166b8  ldr w9,[x8, #0xe4]
02c166bc  cbnz w9,0x02c166c8
02c166c0  mov x0,x8
02c166c4  bl 0x029f5bd0
02c166c8  ldr x8,[x21]
02c166cc  adrp x9,0x5e62000
02c166d0  mov x2,x19
02c166d4  ldr x9,[x9, #0x6d0]
02c166d8  mov x3,xzr
02c166dc  ldr x8,[x8, #0xb8]
02c166e0  ldr x1,[x9]
02c166e4  add x0,x8,#0x10
02c166e8  bl 0x04832440
02c166ec  mov x1,x0
02c166f0  adrp x22,0x5e5d000
02c166f4  add x0,x20,#0x3a0
02c166f8  ldr x22,[x22, #0xfa0]
02c166fc  str x1,[x20, #0x3a0]
02c16700  bl 0x029f59f4
02c16704  ldr x0,[x21]
02c16708  ldr w8,[x0, #0xe4]
02c1670c  cbnz w8,0x02c16718
02c16710  bl 0x029f5bd0
02c16714  ldr x0,[x21]
02c16718  ldr x8,[x0, #0xb8]
02c1671c  add x0,x20,#0x3a8
02c16720  ldr x1,[x8, #0x18]
02c16724  str x1,[x20, #0x3a8]
02c16728  bl 0x029f59f4
02c1672c  ldr x8,[x21]
02c16730  add x0,x20,#0x3b8
02c16734  ldr x8,[x8, #0xb8]
02c16738  ldr w9,[x8, #0x20]
02c1673c  ldr x1,[x8, #0x28]
02c16740  str w9,[x20, #0x3b0]
02c16744  str x1,[x20, #0x3b8]
02c16748  bl 0x029f59f4
02c1674c  ldr x8,[x21]
02c16750  add x0,x20,#0x3c0
02c16754  ldr x8,[x8, #0xb8]
02c16758  ldr x1,[x8, #0x30]
02c1675c  str x1,[x20, #0x3c0]
02c16760  bl 0x029f59f4
02c16764  mov x0,xzr
02c16768  bl 0x02b94f18
02c1676c  ldr x9,[x22]
02c16770  mov w8,w0
02c16774  ldr x0,[x29]
02c16778  and w8,w8,#0x1
02c1677c  ldr x9,[x9, #0xb8]
02c16780  ldr w10,[x0, #0xe4]
02c16784  strb w8,[x20, #0x39c]
02c16788  ldr x19,[x9]
02c1678c  cbnz w10,0x02c16794
02c16790  bl 0x029f5bd0
02c16794  mov x0,x19
02c16798  mov x1,xzr
02c1679c  mov x2,xzr
02c167a0  bl 0x057dfa70
02c167a4  tbz w0,#0x0,0x02c167c8
02c167a8  ldr x8,[x22]
02c167ac  ldr x8,[x8, #0xb8]
02c167b0  ldr x8,[x8]
02c167b4  cbz x8,0x02c16154
02c167b8  ldrb w8,[x8, #0x32]
02c167bc  cmp w8,#0x0
02c167c0  cset w8,ne
02c167c4  b 0x02c167cc
02c167c8  mov w8,wzr
02c167cc  mov x0,xzr
02c167d0  strb w8,[x20, #0x39d]
02c167d4  bl 0x02b93d0c
02c167d8  mov w8,w0
02c167dc  mov x0,x20
02c167e0  and w8,w8,#0x1
02c167e4  ldp x22,x21,[sp, #0x50]
02c167e8  strb w8,[x20, #0x39e]
02c167ec  ldp x20,x19,[sp, #0x60]
02c167f0  ldp x24,x23,[sp, #0x40]
02c167f4  ldp x26,x25,[sp, #0x30]
02c167f8  ldp x28,x27,[sp, #0x20]
02c167fc  ldp x29,x30,[sp, #0x10]
02c16800  add sp,sp,#0x70
02c16804  ret
02c16808  bl 0x029f5d04
02c1680c  bl 0x029f5d20
02c16810  mov x1,xzr
02c16814  bl 0x029f5bc0
02c16818  mov x0,x21
02c1681c  mov x1,x22
02c16820  bl 0x029f607c
02c16824  mov x0,x22
02c16828  mov x1,x23
02c1682c  bl 0x029f607c
