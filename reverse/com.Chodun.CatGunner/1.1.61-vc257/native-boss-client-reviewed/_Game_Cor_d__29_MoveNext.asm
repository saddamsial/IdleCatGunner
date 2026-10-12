02c47d58  sub sp,sp,#0x70
02c47d5c  str d8,[sp, #0x40]
02c47d60  stp x30,x21,[sp, #0x50]
02c47d64  stp x20,x19,[sp, #0x60]
02c47d68  adrp x20,0x625c000
02c47d6c  mov x19,x0
02c47d70  ldrb w8,[x20, #0xf1]
02c47d74  tbnz w8,#0x0,0x02c47d8c
02c47d78  adrp x0,0x5e5d000
02c47d7c  ldr x0,[x0, #0x338]
02c47d80  bl 0x029f5a50
02c47d84  mov w8,#0x1
02c47d88  strb w8,[x20, #0xf1]
02c47d8c  ldr w8,[x19, #0x10]
02c47d90  ldr x20,[x19, #0x20]
02c47d94  cmp w8,#0x1
02c47d98  b.eq 0x02c47e08
02c47d9c  cbnz w8,0x02c47e98
02c47da0  mov w8,#0xffffffff
02c47da4  str w8,[x19, #0x10]
02c47da8  cbz x20,0x02c47eb0
02c47dac  mov x0,x20
02c47db0  bl 0x02c463bc
02c47db4  ldr x0,[x20, #0xa0]
02c47db8  str s0,[x20, #0x80]
02c47dbc  cbz x0,0x02c47eb0
02c47dc0  ldr s1,[x20, #0x84]
02c47dc4  bl 0x02c47eb4
02c47dc8  ldr x8,[x20, #0x110]
02c47dcc  cbz x8,0x02c47eb0
02c47dd0  ldr x8,[x8, #0x20]
02c47dd4  cbz x8,0x02c47eb0
02c47dd8  ldr x0,[x20, #0xa0]
02c47ddc  cbz x0,0x02c47eb0
02c47de0  ldur q0,[x8, #0x28]
02c47de4  ldur q1,[x8, #0x38]
02c47de8  add x1,sp,#0x20
02c47dec  ldur q2,[x8, #0x48]
02c47df0  mov x2,sp
02c47df4  stp q0,q1,[sp, #0x20]
02c47df8  ldur q0,[x8, #0x58]
02c47dfc  stp q2,q0,[sp]
02c47e00  bl 0x02c4692c
02c47e04  b 0x02c47e14
02c47e08  mov w8,#0xffffffff
02c47e0c  str w8,[x19, #0x10]
02c47e10  cbz x20,0x02c47eb0
02c47e14  ldr s8,[x20, #0x80]
02c47e18  fcmp s8,#0.0
02c47e1c  b.le 0x02c47e88
02c47e20  adrp x21,0x5e5d000
02c47e24  ldr x21,[x21, #0x338]
02c47e28  ldr x0,[x21]
02c47e2c  ldr w8,[x0, #0xe4]
02c47e30  cbnz w8,0x02c47e40
02c47e34  bl 0x029f5bd0
02c47e38  ldr x0,[x21]
02c47e3c  ldr s8,[x20, #0x80]
02c47e40  ldr x8,[x0, #0xb8]
02c47e44  ldrb w8,[x8]
02c47e48  cbz w8,0x02c47e88
02c47e4c  mov x0,xzr
02c47e50  bl 0x057ebabc
02c47e54  fsub s0,s8,s0
02c47e58  ldr x0,[x20, #0xa0]
02c47e5c  str s0,[x20, #0x80]
02c47e60  cbz x0,0x02c47eb0
02c47e64  ldr s1,[x20, #0x84]
02c47e68  bl 0x02c47eb4
02c47e6c  str xzr,[x19, #0x18]!
02c47e70  mov x0,x19
02c47e74  mov x1,xzr
02c47e78  bl 0x029f59f4
02c47e7c  mov w0,#0x1
02c47e80  stur w0,[x19, #-0x8]
02c47e84  b 0x02c47e9c
02c47e88  fcmp s8,#0.0
02c47e8c  b.hi 0x02c47e98
02c47e90  mov x0,x20
02c47e94  bl 0x02c469c0
02c47e98  mov w0,wzr
02c47e9c  ldp x20,x19,[sp, #0x60]
02c47ea0  ldr d8,[sp, #0x40]
02c47ea4  ldp x30,x21,[sp, #0x50]
02c47ea8  add sp,sp,#0x70
02c47eac  ret
02c47eb0  bl 0x029f5cfc
