02c08d84  str d8,[sp, #-0x70]!
02c08d88  stp x29,x30,[sp, #0x10]
02c08d8c  stp x28,x27,[sp, #0x20]
02c08d90  stp x26,x25,[sp, #0x30]
02c08d94  stp x24,x23,[sp, #0x40]
02c08d98  stp x22,x21,[sp, #0x50]
02c08d9c  stp x20,x19,[sp, #0x60]
02c08da0  sub sp,sp,#0x360
02c08da4  fmov d8,d0
02c08da8  adrp x28,0x625b000
02c08dac  mov w20,w7
02c08db0  ldrb w9,[x28, #0xe80]
02c08db4  mov x21,x6
02c08db8  mov w22,w5
02c08dbc  mov w23,w4
02c08dc0  mov x24,x3
02c08dc4  mov w26,w2
02c08dc8  mov w27,w1
02c08dcc  mov w25,w0
02c08dd0  mov x19,x8
02c08dd4  tbnz w9,#0x0,0x02c08dec
02c08dd8  adrp x0,0x5e62000
02c08ddc  ldr x0,[x0, #0x40]
02c08de0  bl 0x029f5a50
02c08de4  mov w8,#0x1
02c08de8  strb w8,[x28, #0xe80]
02c08dec  movi v0.2D,#0x0
02c08df0  fcmp d8,#0.0
02c08df4  stp q0,q0,[sp, #0x2c0]
02c08df8  stp q0,q0,[sp, #0x2e0]
02c08dfc  stp q0,q0,[sp, #0x300]
02c08e00  stp q0,q0,[sp, #0x320]
02c08e04  stp q0,q0,[sp, #0x340]
02c08e08  b.ls 0x02c0908c
02c08e0c  adrp x8,0x5e62000
02c08e10  ldr x8,[x8, #0x40]
02c08e14  ldr x0,[x8]
02c08e18  ldr w8,[x0, #0xe4]
02c08e1c  cbnz w8,0x02c08e24
02c08e20  bl 0x029f5bd0
02c08e24  add x8,sp,#0x300
02c08e28  mov w0,w27
02c08e2c  bl 0x02c090c8
02c08e30  mov w0,w26
02c08e34  bl 0x02c09264
02c08e38  add x8,sp,#0x2e0
02c08e3c  bl 0x02c089ac
02c08e40  add x8,sp,#0x2a0
02c08e44  add x0,sp,#0x300
02c08e48  add x1,sp,#0x2e0
02c08e4c  mov x2,xzr
02c08e50  bl 0x04658538
02c08e54  ldp q0,q1,[sp, #0x2a0]
02c08e58  add x8,sp,#0x320
02c08e5c  mov w0,w25
02c08e60  stp q0,q1,[sp, #0x340]
02c08e64  bl 0x02c09360
02c08e68  add x8,sp,#0x280
02c08e6c  add x0,sp,#0x340
02c08e70  add x1,sp,#0x320
02c08e74  mov x2,xzr
02c08e78  bl 0x04658538
02c08e7c  ldp q0,q1,[sp, #0x280]
02c08e80  add x8,sp,#0x260
02c08e84  mov w0,#0x64
02c08e88  mov x1,xzr
02c08e8c  stp q0,q1,[sp, #0x300]
02c08e90  bl 0x046544b8
02c08e94  ldp q0,q1,[sp, #0x260]
02c08e98  add x8,sp,#0x240
02c08e9c  add x0,sp,#0x300
02c08ea0  add x1,sp,#0x2e0
02c08ea4  mov x2,xzr
02c08ea8  stp q0,q1,[sp, #0x2e0]
02c08eac  bl 0x046587e8
02c08eb0  ldp q0,q1,[sp, #0x240]
02c08eb4  add x8,sp,#0x220
02c08eb8  add x0,sp,#0x340
02c08ebc  mov x1,x24
02c08ec0  mov x2,xzr
02c08ec4  stp q0,q1,[sp, #0x340]
02c08ec8  bl 0x04658538
02c08ecc  ldp q0,q1,[sp, #0x220]
02c08ed0  add x8,sp,#0x200
02c08ed4  mov w0,#0x64
02c08ed8  mov x1,xzr
02c08edc  stp q0,q1,[sp, #0x300]
02c08ee0  bl 0x046544b8
02c08ee4  ldp q0,q1,[sp, #0x200]
02c08ee8  add x8,sp,#0x1e0
02c08eec  add x0,sp,#0x300
02c08ef0  add x1,sp,#0x2e0
02c08ef4  mov x2,xzr
02c08ef8  stp q0,q1,[sp, #0x2e0]
02c08efc  bl 0x046587e8
02c08f00  ldp q0,q1,[sp, #0x1e0]
02c08f04  add x8,sp,#0x1c0
02c08f08  mov w0,w23
02c08f0c  mov x1,xzr
02c08f10  stp q0,q1,[sp, #0x340]
02c08f14  bl 0x046544b8
02c08f18  ldp q0,q1,[sp, #0x1c0]
02c08f1c  add x8,sp,#0x1a0
02c08f20  add x0,sp,#0x340
02c08f24  add x1,sp,#0x300
02c08f28  mov x2,xzr
02c08f2c  stp q0,q1,[sp, #0x300]
02c08f30  bl 0x04658538
02c08f34  ldp q0,q1,[sp, #0x1a0]
02c08f38  add x8,sp,#0x180
02c08f3c  mov w0,#0x64
02c08f40  mov x1,xzr
02c08f44  stp q0,q1,[sp, #0x2e0]
02c08f48  bl 0x046544b8
02c08f4c  ldp q0,q1,[sp, #0x180]
02c08f50  add x8,sp,#0x160
02c08f54  add x0,sp,#0x2e0
02c08f58  add x1,sp,#0x2c0
02c08f5c  mov x2,xzr
02c08f60  stp q0,q1,[sp, #0x2c0]
02c08f64  bl 0x046587e8
02c08f68  ldp q0,q1,[sp, #0x160]
02c08f6c  add x8,sp,#0x140
02c08f70  mov w0,w22
02c08f74  mov x1,xzr
02c08f78  stp q0,q1,[sp, #0x340]
02c08f7c  bl 0x046544b8
02c08f80  ldp q0,q1,[sp, #0x140]
02c08f84  add x8,sp,#0x120
02c08f88  add x0,sp,#0x340
02c08f8c  add x1,sp,#0x300
02c08f90  mov x2,xzr
02c08f94  stp q0,q1,[sp, #0x300]
02c08f98  bl 0x04658538
02c08f9c  ldp q0,q1,[sp, #0x120]
02c08fa0  add x8,sp,#0x100
02c08fa4  mov w0,#0x64
02c08fa8  mov x1,xzr
02c08fac  stp q0,q1,[sp, #0x2e0]
02c08fb0  bl 0x046544b8
02c08fb4  ldp q0,q1,[sp, #0x100]
02c08fb8  add x8,sp,#0xe0
02c08fbc  add x0,sp,#0x2e0
02c08fc0  add x1,sp,#0x2c0
02c08fc4  mov x2,xzr
02c08fc8  stp q0,q1,[sp, #0x2c0]
02c08fcc  bl 0x046587e8
02c08fd0  ldp q0,q1,[sp, #0xe0]
02c08fd4  add x8,sp,#0xc0
02c08fd8  add x0,sp,#0x340
02c08fdc  mov x1,x21
02c08fe0  mov x2,xzr
02c08fe4  stp q0,q1,[sp, #0x340]
02c08fe8  bl 0x04658538
02c08fec  ldp q0,q1,[sp, #0xc0]
02c08ff0  add x8,sp,#0xa0
02c08ff4  mov w0,#0x64
02c08ff8  mov x1,xzr
02c08ffc  stp q0,q1,[sp, #0x300]
02c09000  bl 0x046544b8
02c09004  ldp q0,q1,[sp, #0xa0]
02c09008  add x8,sp,#0x80
02c0900c  add x0,sp,#0x300
02c09010  add x1,sp,#0x2e0
02c09014  mov x2,xzr
02c09018  stp q0,q1,[sp, #0x2e0]
02c0901c  bl 0x046587e8
02c09020  ldp q0,q1,[sp, #0x80]
02c09024  add x8,sp,#0x60
02c09028  mov w0,w20
02c0902c  mov x1,xzr
02c09030  stp q0,q1,[sp, #0x340]
02c09034  bl 0x046544b8
02c09038  ldp q0,q1,[sp, #0x60]
02c0903c  add x8,sp,#0x40
02c09040  add x0,sp,#0x340
02c09044  add x1,sp,#0x300
02c09048  mov x2,xzr
02c0904c  stp q0,q1,[sp, #0x300]
02c09050  bl 0x04658538
02c09054  ldp q0,q1,[sp, #0x40]
02c09058  add x8,sp,#0x20
02c0905c  stp q0,q1,[sp, #0x340]
02c09060  fmov d0,d8
02c09064  bl 0x02c089ac
02c09068  ldp q0,q1,[sp, #0x20]
02c0906c  mov x8,sp
02c09070  add x0,sp,#0x340
02c09074  add x1,sp,#0x300
02c09078  mov x2,xzr
02c0907c  stp q0,q1,[sp, #0x300]
02c09080  bl 0x04658538
02c09084  ldp q0,q1,[sp]
02c09088  b 0x02c090a0
02c0908c  add x8,sp,#0x2a0
02c09090  mov w0,wzr
02c09094  mov x1,xzr
02c09098  bl 0x046544b8
02c0909c  ldp q0,q1,[sp, #0x2a0]
02c090a0  stp q0,q1,[x19]
02c090a4  add sp,sp,#0x360
02c090a8  ldp x20,x19,[sp, #0x60]
02c090ac  ldp x22,x21,[sp, #0x50]
02c090b0  ldp x24,x23,[sp, #0x40]
02c090b4  ldp x26,x25,[sp, #0x30]
02c090b8  ldp x28,x27,[sp, #0x20]
02c090bc  ldp x29,x30,[sp, #0x10]
02c090c0  ldr d8,[sp], #0x70
02c090c4  ret
