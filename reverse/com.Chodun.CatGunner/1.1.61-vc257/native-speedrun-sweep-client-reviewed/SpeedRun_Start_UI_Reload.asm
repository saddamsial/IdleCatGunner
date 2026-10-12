02ca9cb8  str x30,[sp, #-0x40]!
02ca9cbc  stp x24,x23,[sp, #0x10]
02ca9cc0  stp x22,x21,[sp, #0x20]
02ca9cc4  stp x20,x19,[sp, #0x30]
02ca9cc8  adrp x20,0x625c000
02ca9ccc  adrp x22,0x5e5d000
02ca9cd0  mov x19,x0
02ca9cd4  ldrb w8,[x20, #0x50e]
02ca9cd8  ldr x22,[x22, #0xd68]
02ca9cdc  tbnz w8,#0x0,0x02ca9d24
02ca9ce0  adrp x0,0x5e5e000
02ca9ce4  ldr x0,[x0, #0xb8]
02ca9ce8  bl 0x029f5a50
02ca9cec  adrp x0,0x5e5d000
02ca9cf0  ldr x0,[x0, #0xd68]
02ca9cf4  bl 0x029f5a50
02ca9cf8  adrp x0,0x5e5d000
02ca9cfc  ldr x0,[x0, #0xc20]
02ca9d00  bl 0x029f5a50
02ca9d04  adrp x0,0x5e63000
02ca9d08  ldr x0,[x0, #0x338]
02ca9d0c  bl 0x029f5a50
02ca9d10  adrp x0,0x5e63000
02ca9d14  ldr x0,[x0, #0xd0]
02ca9d18  bl 0x029f5a50
02ca9d1c  mov w8,#0x1
02ca9d20  strb w8,[x20, #0x50e]
02ca9d24  ldr x0,[x22]
02ca9d28  ldr w8,[x0, #0xe4]
02ca9d2c  cbnz w8,0x02ca9d38
02ca9d30  bl 0x029f5bd0
02ca9d34  ldr x0,[x22]
02ca9d38  ldr x8,[x0, #0xb8]
02ca9d3c  ldr x8,[x8, #0x8]
02ca9d40  cbz x8,0x02ca9f60
02ca9d44  adrp x23,0x5e58000
02ca9d48  ldr w20,[x8, #0x30]
02ca9d4c  adrp x24,0x5e63000
02ca9d50  ldr x23,[x23, #0xa10]
02ca9d54  ldr x24,[x24, #0xd0]
02ca9d58  ldr x21,[x19, #0x28]
02ca9d5c  add w8,w20,#0x1
02ca9d60  add x1,sp,#0xc
02ca9d64  ldr x0,[x23, #0x48]
02ca9d68  str w8,[sp, #0xc]
02ca9d6c  bl 0x029f5bd8
02ca9d70  ldr x8,[x24]
02ca9d74  mov x1,x0
02ca9d78  mov x2,xzr
02ca9d7c  mov x0,x8
02ca9d80  bl 0x046b6c0c
02ca9d84  cbz x21,0x02ca9f60
02ca9d88  ldr x8,[x21]
02ca9d8c  adrp x24,0x5e5d000
02ca9d90  mov x1,x0
02ca9d94  ldr x24,[x24, #0xc20]
02ca9d98  mov x0,x21
02ca9d9c  ldr x9,[x8, #0x558]
02ca9da0  ldr x2,[x8, #0x560]
02ca9da4  blr x9
02ca9da8  ldr x0,[x24]
02ca9dac  ldr x21,[x19, #0x20]
02ca9db0  ldr w8,[x0, #0xe4]
02ca9db4  cbnz w8,0x02ca9dbc
02ca9db8  bl 0x029f5bd0
02ca9dbc  mov w0,w20
02ca9dc0  mov w1,wzr
02ca9dc4  bl 0x02cab8f8
02ca9dc8  cbz x21,0x02ca9f60
02ca9dcc  mov x1,x0
02ca9dd0  mov x0,x21
02ca9dd4  mov x2,xzr
02ca9dd8  bl 0x058d34cc
02ca9ddc  mov x0,x19
02ca9de0  mov x1,xzr
02ca9de4  bl 0x057dc1c8
02ca9de8  cbz x0,0x02ca9f60
02ca9dec  adrp x20,0x5e5e000
02ca9df0  mov w1,#0x1
02ca9df4  mov x2,xzr
02ca9df8  ldr x20,[x20, #0xb8]
02ca9dfc  bl 0x057dff3c
02ca9e00  ldr x0,[x20]
02ca9e04  ldr w8,[x0, #0xe4]
02ca9e08  cbnz w8,0x02ca9e10
02ca9e0c  bl 0x029f5bd0
02ca9e10  mov w0,#0x2
02ca9e14  mov x1,xzr
02ca9e18  bl 0x02c9077c
02ca9e1c  ldr x8,[x19, #0x40]
02ca9e20  cbz x8,0x02ca9f60
02ca9e24  mov w9,#0x1
02ca9e28  mov w20,w0
02ca9e2c  mov x2,xzr
02ca9e30  bic w1,w9,w0
02ca9e34  mov x0,x8
02ca9e38  bl 0x057dff3c
02ca9e3c  ldr x0,[x19, #0x48]
02ca9e40  cbz x0,0x02ca9f60
02ca9e44  and w1,w20,#0x1
02ca9e48  mov x2,xzr
02ca9e4c  bl 0x057dff3c
02ca9e50  tbz w20,#0x0,0x02ca9f44
02ca9e54  ldr x0,[x22]
02ca9e58  ldr w8,[x0, #0xe4]
02ca9e5c  cbnz w8,0x02ca9e68
02ca9e60  bl 0x029f5bd0
02ca9e64  ldr x0,[x22]
02ca9e68  ldr x8,[x0, #0xb8]
02ca9e6c  ldr x0,[x8, #0x8]
02ca9e70  cbz x0,0x02ca9f60
02ca9e74  bl 0x02ca985c
02ca9e78  ldr x8,[x19, #0x50]
02ca9e7c  cbz x8,0x02ca9f60
02ca9e80  mov w9,#0x1
02ca9e84  mov w20,w0
02ca9e88  mov x2,xzr
02ca9e8c  bic w1,w9,w0
02ca9e90  mov x0,x8
02ca9e94  bl 0x057dff3c
02ca9e98  ldr x0,[x19, #0x58]
02ca9e9c  cbz x0,0x02ca9f60
02ca9ea0  and w1,w20,#0x1
02ca9ea4  mov x2,xzr
02ca9ea8  bl 0x057dff3c
02ca9eac  tbnz w20,#0x0,0x02ca9f44
02ca9eb0  ldr x0,[x22]
02ca9eb4  ldr w8,[x0, #0xe4]
02ca9eb8  cbnz w8,0x02ca9ec4
02ca9ebc  bl 0x029f5bd0
02ca9ec0  ldr x0,[x22]
02ca9ec4  ldr x8,[x0, #0xb8]
02ca9ec8  ldr x0,[x8, #0x8]
02ca9ecc  cbz x0,0x02ca9f60
02ca9ed0  bl 0x02ca98f4
02ca9ed4  mov w20,w0
02ca9ed8  ldr x0,[x23, #0x48]
02ca9edc  ldr x21,[x19, #0x60]
02ca9ee0  add x1,sp,#0x8
02ca9ee4  str w20,[sp, #0x8]
02ca9ee8  bl 0x029f5bd8
02ca9eec  adrp x8,0x5e63000
02ca9ef0  mov x1,x0
02ca9ef4  mov x2,xzr
02ca9ef8  ldr x8,[x8, #0x338]
02ca9efc  ldr x8,[x8]
02ca9f00  mov x0,x8
02ca9f04  bl 0x046b6c0c
02ca9f08  cbz x21,0x02ca9f60
02ca9f0c  ldr x8,[x21]
02ca9f10  mov x1,x0
02ca9f14  mov x0,x21
02ca9f18  ldr x9,[x8, #0x558]
02ca9f1c  ldr x2,[x8, #0x560]
02ca9f20  blr x9
02ca9f24  ldr x0,[x19, #0x68]
02ca9f28  cbz x0,0x02ca9f60
02ca9f2c  scvtf s0,w20
02ca9f30  mov w8,#0x42c80000
02ca9f34  mov x1,xzr
02ca9f38  fmov s1,w8
02ca9f3c  fdiv s0,s0,s1
02ca9f40  bl 0x02c28290
02ca9f44  mov x0,x19
02ca9f48  bl 0x02cabb04
02ca9f4c  ldp x20,x19,[sp, #0x30]
02ca9f50  ldp x22,x21,[sp, #0x20]
02ca9f54  ldp x24,x23,[sp, #0x10]
02ca9f58  ldr x30,[sp], #0x40
02ca9f5c  ret
02ca9f60  bl 0x029f5cfc
