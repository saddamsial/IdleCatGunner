02c87c10  sub sp,sp,#0xe0
02c87c14  str x30,[sp, #0xb0]
02c87c18  stp x22,x21,[sp, #0xc0]
02c87c1c  stp x20,x19,[sp, #0xd0]
02c87c20  adrp x20,0x625c000
02c87c24  mov x19,x0
02c87c28  ldrb w8,[x20, #0x386]
02c87c2c  tbnz w8,#0x0,0x02c87cb0
02c87c30  adrp x0,0x5e5d000
02c87c34  ldr x0,[x0, #0x910]
02c87c38  bl 0x029f5a50
02c87c3c  adrp x0,0x5e5d000
02c87c40  ldr x0,[x0, #0x540]
02c87c44  bl 0x029f5a50
02c87c48  adrp x0,0x5e5d000
02c87c4c  ldr x0,[x0, #0x5b0]
02c87c50  bl 0x029f5a50
02c87c54  adrp x0,0x5e5d000
02c87c58  ldr x0,[x0, #0x338]
02c87c5c  bl 0x029f5a50
02c87c60  adrp x0,0x5e5d000
02c87c64  ldr x0,[x0, #0xd50]
02c87c68  bl 0x029f5a50
02c87c6c  adrp x0,0x5e59000
02c87c70  ldr x0,[x0, #0x1c0]
02c87c74  bl 0x029f5a50
02c87c78  adrp x0,0x5e62000
02c87c7c  ldr x0,[x0, #0x5c8]
02c87c80  bl 0x029f5a50
02c87c84  adrp x0,0x5e5d000
02c87c88  ldr x0,[x0, #0x920]
02c87c8c  bl 0x029f5a50
02c87c90  adrp x0,0x5e5d000
02c87c94  ldr x0,[x0, #0xc20]
02c87c98  bl 0x029f5a50
02c87c9c  adrp x0,0x5e5d000
02c87ca0  ldr x0,[x0, #0x4e8]
02c87ca4  bl 0x029f5a50
02c87ca8  mov w8,#0x1
02c87cac  strb w8,[x20, #0x386]
02c87cb0  movi v0.2D,#0x0
02c87cb4  adrp x22,0x5e5d000
02c87cb8  add x8,sp,#0x40
02c87cbc  stp q0,q0,[sp, #0x90]
02c87cc0  str q0,[sp, #0x80]
02c87cc4  ldr x22,[x22, #0x540]
02c87cc8  str q0,[sp, #0x70]
02c87ccc  str wzr,[sp, #0x68]
02c87cd0  bl 0x02c88058
02c87cd4  ldp q0,q1,[sp, #0x40]
02c87cd8  ldrb w8,[x19, #0x48]
02c87cdc  stp q0,q1,[sp, #0x90]
02c87ce0  cbz w8,0x02c87d34
02c87ce4  add x8,sp,#0x40
02c87ce8  mov w0,#0x3
02c87cec  mov x1,xzr
02c87cf0  bl 0x046544b8
02c87cf4  ldp q0,q1,[sp, #0x40]
02c87cf8  add x8,sp,#0x20
02c87cfc  add x0,sp,#0x90
02c87d00  add x1,sp,#0x70
02c87d04  mov x2,xzr
02c87d08  stp q0,q1,[sp, #0x70]
02c87d0c  bl 0x04658538
02c87d10  ldp q0,q1,[sp, #0x20]
02c87d14  ldrb w8,[x19, #0x48]
02c87d18  stp q0,q1,[sp, #0x90]
02c87d1c  cbz w8,0x02c87d34
02c87d20  ldrb w8,[x19, #0x49]
02c87d24  cbz w8,0x02c87f54
02c87d28  mov w20,#0x3
02c87d2c  mov w21,#0x1
02c87d30  b 0x02c87d3c
02c87d34  mov w21,wzr
02c87d38  mov w20,wzr
02c87d3c  ldr w8,[x19, #0x30]
02c87d40  ldr x0,[x22]
02c87d44  add w8,w8,#0x1
02c87d48  str w8,[x19, #0x30]
02c87d4c  ldr w8,[x0, #0xe4]
02c87d50  cbnz w8,0x02c87d58
02c87d54  bl 0x029f5bd0
02c87d58  mov w0,w20
02c87d5c  mov x1,xzr
02c87d60  bl 0x02b98fa0
02c87d64  adrp x8,0x5e5d000
02c87d68  adrp x20,0x5e5d000
02c87d6c  ldr x8,[x8, #0x338]
02c87d70  ldp q0,q1,[sp, #0x90]
02c87d74  ldr x0,[x8]
02c87d78  ldr w8,[x0, #0xe4]
02c87d7c  ldr x20,[x20, #0x4e8]
02c87d80  stp q0,q1,[sp, #0x40]
02c87d84  cbnz w8,0x02c87d8c
02c87d88  bl 0x029f5bd0
02c87d8c  ldp q0,q1,[sp, #0x40]
02c87d90  mov x0,sp
02c87d94  mov x1,xzr
02c87d98  stp q0,q1,[sp]
02c87d9c  bl 0x02b7efe4
02c87da0  mov x0,xzr
02c87da4  bl 0x02b7ec3c
02c87da8  ldr x0,[x20]
02c87dac  ldr w8,[x0, #0xe4]
02c87db0  cbnz w8,0x02c87dbc
02c87db4  bl 0x029f5bd0
02c87db8  ldr x0,[x20]
02c87dbc  ldr x8,[x0, #0xb8]
02c87dc0  ldr x0,[x8]
02c87dc4  cbz x0,0x02c87f88
02c87dc8  adrp x20,0x5e5d000
02c87dcc  mov x1,xzr
02c87dd0  ldr x20,[x20, #0xc20]
02c87dd4  bl 0x02cb2ae0
02c87dd8  ldr x0,[x20]
02c87ddc  ldr w8,[x0, #0xe4]
02c87de0  cbnz w8,0x02c87dec
02c87de4  bl 0x029f5bd0
02c87de8  ldr x0,[x20]
02c87dec  ldr x8,[x0, #0xb8]
02c87df0  ldr x0,[x8, #0x10]
02c87df4  cbz x0,0x02c87f88
02c87df8  adrp x20,0x5e5d000
02c87dfc  mov x1,xzr
02c87e00  ldr x20,[x20, #0x5b0]
02c87e04  bl 0x02cadd84
02c87e08  ldr x8,[x20]
02c87e0c  ldr x8,[x8, #0xb8]
02c87e10  ldr x0,[x8, #0x8]
02c87e14  cbz x0,0x02c87f88
02c87e18  mov x1,xzr
02c87e1c  bl 0x02c43744
02c87e20  ldr x0,[x19, #0x38]
02c87e24  cbz x0,0x02c87f88
02c87e28  mov x1,xzr
02c87e2c  bl 0x057dc1c8
02c87e30  cbz x0,0x02c87f88
02c87e34  adrp x20,0x5e62000
02c87e38  mov w1,wzr
02c87e3c  mov x2,xzr
02c87e40  ldr x20,[x20, #0x5c8]
02c87e44  bl 0x057dff3c
02c87e48  ldr x8,[x20]
02c87e4c  ldr x8,[x8, #0xb8]
02c87e50  ldr x0,[x8]
02c87e54  cbz x0,0x02c87f88
02c87e58  adrp x22,0x5e5d000
02c87e5c  mov x1,xzr
02c87e60  ldr x22,[x22, #0xd50]
02c87e64  bl 0x02c11fc4
02c87e68  ldr x8,[x22]
02c87e6c  mov w20,w0
02c87e70  ldr w9,[x8, #0xe4]
02c87e74  cbnz w9,0x02c87e84
02c87e78  mov x0,x8
02c87e7c  bl 0x029f5bd0
02c87e80  ldr x8,[x22]
02c87e84  ldr x8,[x8, #0xb8]
02c87e88  ldr x0,[x8, #0x8]
02c87e8c  cbz x0,0x02c87f88
02c87e90  mov w1,#0x2
02c87e94  mov x2,xzr
02c87e98  bl 0x02ba6a18
02c87e9c  ldrb w8,[x19, #0x48]
02c87ea0  cbz w8,0x02c87ed0
02c87ea4  ldrb w8,[x19, #0x49]
02c87ea8  cbnz w8,0x02c87ecc
02c87eac  ldr w8,[x19, #0x4c]
02c87eb0  add w8,w8,#0x1
02c87eb4  str w8,[x19, #0x4c]
02c87eb8  bl 0x02c882c0
02c87ebc  mov x1,x0
02c87ec0  mov x0,x19
02c87ec4  str x1,[x0, #0x58]!
02c87ec8  bl 0x029f59f4
02c87ecc  strh wzr,[x19, #0x48]
02c87ed0  mov x0,xzr
02c87ed4  bl 0x02c0faf8
02c87ed8  orr w8,w21,w20
02c87edc  tbnz w8,#0x0,0x02c87f40
02c87ee0  adrp x20,0x5e5d000
02c87ee4  adrp x8,0x5e59000
02c87ee8  ldr x20,[x20, #0x910]
02c87eec  ldr x8,[x8, #0x1c0]
02c87ef0  ldr x9,[x20]
02c87ef4  ldr x0,[x8]
02c87ef8  ldr x8,[x9, #0xb8]
02c87efc  ldr w9,[x0, #0xe4]
02c87f00  ldr x19,[x8]
02c87f04  cbnz w9,0x02c87f0c
02c87f08  bl 0x029f5bd0
02c87f0c  mov x0,x19
02c87f10  mov x1,xzr
02c87f14  mov x2,xzr
02c87f18  bl 0x057dfa70
02c87f1c  tbz w0,#0x0,0x02c87f40
02c87f20  ldr x8,[x20]
02c87f24  ldr x8,[x8, #0xb8]
02c87f28  ldr x0,[x8]
02c87f2c  cbz x0,0x02c87f88
02c87f30  mov w1,wzr
02c87f34  mov x2,xzr
02c87f38  mov x3,xzr
02c87f3c  bl 0x02b8ddb4
02c87f40  ldp x20,x19,[sp, #0xd0]
02c87f44  ldr x30,[sp, #0xb0]
02c87f48  ldp x22,x21,[sp, #0xc0]
02c87f4c  add sp,sp,#0xe0
02c87f50  ret
02c87f54  adrp x20,0x5e5d000
02c87f58  ldr x20,[x20, #0x920]
02c87f5c  ldr x0,[x20]
02c87f60  ldr w8,[x0, #0xe4]
02c87f64  cbnz w8,0x02c87f70
02c87f68  bl 0x029f5bd0
02c87f6c  ldr x0,[x20]
02c87f70  ldr x8,[x0, #0xb8]
02c87f74  mov w21,#0x1
02c87f78  ldrb w8,[x8, #0x9]
02c87f7c  cmp w8,#0x0
02c87f80  cinc w20,w21,ne
02c87f84  b 0x02c87d3c
02c87f88  bl 0x029f5cfc
