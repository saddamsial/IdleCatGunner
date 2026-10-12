02c70ddc  str x30,[sp, #-0x20]!
02c70de0  stp x20,x19,[sp, #0x10]
02c70de4  adrp x20,0x625c000
02c70de8  mov x19,x0
02c70dec  ldrb w8,[x20, #0x2c7]
02c70df0  tbnz w8,#0x0,0x02c70e08
02c70df4  adrp x0,0x5e59000
02c70df8  ldr x0,[x0, #0x1c0]
02c70dfc  bl 0x029f5a50
02c70e00  mov w8,#0x1
02c70e04  strb w8,[x20, #0x2c7]
02c70e08  ldrb w8,[x19, #0xb8]
02c70e0c  cbz w8,0x02c70f0c
02c70e10  adrp x8,0x5e59000
02c70e14  ldr x8,[x8, #0x1c0]
02c70e18  ldr x20,[x19, #0xa8]
02c70e1c  strb wzr,[x19, #0xb8]
02c70e20  ldr x0,[x8]
02c70e24  ldr w8,[x0, #0xe4]
02c70e28  cbnz w8,0x02c70e30
02c70e2c  bl 0x029f5bd0
02c70e30  mov x0,x20
02c70e34  mov x1,xzr
02c70e38  mov x2,xzr
02c70e3c  bl 0x057dfa70
02c70e40  tbz w0,#0x0,0x02c70e58
02c70e44  ldr x0,[x19, #0xa8]
02c70e48  cbz x0,0x02c70f18
02c70e4c  mov w1,#0x1
02c70e50  mov x2,xzr
02c70e54  bl 0x05a9f1dc
02c70e58  ldr x0,[x19, #0x38]
02c70e5c  cbz x0,0x02c70f18
02c70e60  mov w1,wzr
02c70e64  mov x2,xzr
02c70e68  bl 0x057dff3c
02c70e6c  mov x20,x19
02c70e70  ldr x1,[x20, #0xf0]!
02c70e74  cbz x1,0x02c70e94
02c70e78  mov x0,x19
02c70e7c  mov x2,xzr
02c70e80  bl 0x057e237c
02c70e84  mov x0,x20
02c70e88  mov x1,xzr
02c70e8c  str xzr,[x19, #0xf0]
02c70e90  bl 0x029f59f4
02c70e94  mov x0,x19
02c70e98  mov x1,xzr
02c70e9c  bl 0x057dc0f8
02c70ea0  cbz x0,0x02c70f18
02c70ea4  ldp s1,s2,[x19, #0xfc]
02c70ea8  mov x1,xzr
02c70eac  ldr s0,[x19, #0xf8]
02c70eb0  bl 0x057ef654
02c70eb4  mov x0,x19
02c70eb8  bl 0x02c70f1c
02c70ebc  mov x0,x19
02c70ec0  mov w1,wzr
02c70ec4  bl 0x02c70fb0
02c70ec8  mov x0,x19
02c70ecc  mov x1,xzr
02c70ed0  str xzr,[x0, #0xc0]!
02c70ed4  bl 0x029f59f4
02c70ed8  mov x0,x19
02c70edc  mov x1,xzr
02c70ee0  strb wzr,[x19, #0xc8]
02c70ee4  str xzr,[x0, #0xd0]!
02c70ee8  bl 0x029f59f4
02c70eec  str xzr,[x19, #0xe0]!
02c70ef0  mov w8,#0xffffffff
02c70ef4  mov x0,x19
02c70ef8  stur w8,[x19, #-0x8]
02c70efc  mov x1,xzr
02c70f00  ldp x20,x19,[sp, #0x10]
02c70f04  ldr x30,[sp], #0x20
02c70f08  b 0x029f59f4
02c70f0c  ldp x20,x19,[sp, #0x10]
02c70f10  ldr x30,[sp], #0x20
02c70f14  ret
02c70f18  bl 0x029f5cfc
