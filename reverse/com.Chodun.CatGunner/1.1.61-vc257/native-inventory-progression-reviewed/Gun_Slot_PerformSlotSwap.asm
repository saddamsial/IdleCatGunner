02c78cd8  sub sp,sp,#0x50
02c78cdc  str x30,[sp, #0x10]
02c78ce0  stp x24,x23,[sp, #0x20]
02c78ce4  stp x22,x21,[sp, #0x30]
02c78ce8  stp x20,x19,[sp, #0x40]
02c78cec  adrp x22,0x625c000
02c78cf0  adrp x21,0x5e5d000
02c78cf4  mov x19,x1
02c78cf8  ldrb w8,[x22, #0x30b]
02c78cfc  ldr x21,[x21, #0xd40]
02c78d00  mov x20,x0
02c78d04  tbnz w8,#0x0,0x02c78d58
02c78d08  adrp x0,0x5e5d000
02c78d0c  ldr x0,[x0, #0x5b0]
02c78d10  bl 0x029f5a50
02c78d14  adrp x0,0x5e58000
02c78d18  ldr x0,[x0, #0xf08]
02c78d1c  bl 0x029f5a50
02c78d20  adrp x0,0x5e5d000
02c78d24  ldr x0,[x0, #0xd40]
02c78d28  bl 0x029f5a50
02c78d2c  adrp x0,0x5e59000
02c78d30  ldr x0,[x0, #0x768]
02c78d34  bl 0x029f5a50
02c78d38  adrp x0,0x5e59000
02c78d3c  ldr x0,[x0, #0x1c0]
02c78d40  bl 0x029f5a50
02c78d44  adrp x0,0x5e63000
02c78d48  ldr x0,[x0, #0xcb8]
02c78d4c  bl 0x029f5a50
02c78d50  mov w8,#0x1
02c78d54  strb w8,[x22, #0x30b]
02c78d58  ldr x8,[x21]
02c78d5c  ldr x8,[x8, #0xb8]
02c78d60  ldr x0,[x8]
02c78d64  cbz x0,0x02c79078
02c78d68  ldr x8,[x0, #0x28]
02c78d6c  cbz x8,0x02c79078
02c78d70  ldrsw x10,[x20, #0x20]
02c78d74  ldr w9,[x8, #0x18]
02c78d78  cmp w10,w9
02c78d7c  b.cs 0x02c7907c
02c78d80  cbz x19,0x02c79078
02c78d84  ldrsw x11,[x19, #0x20]
02c78d88  cmp w11,w9
02c78d8c  b.cs 0x02c7907c
02c78d90  add x10,x8,x10, LSL #0x2
02c78d94  ldr w22,[x10, #0x20]!
02c78d98  cmn w22,#0x1
02c78d9c  b.eq 0x02c79060
02c78da0  add x11,x8,x11, LSL #0x2
02c78da4  ldr w23,[x11, #0x20]
02c78da8  str w23,[x10]
02c78dac  ldrsw x10,[x19, #0x20]
02c78db0  cmp w10,w9
02c78db4  b.cs 0x02c7907c
02c78db8  add x8,x8,x10, LSL #0x2
02c78dbc  mov x3,xzr
02c78dc0  str w22,[x8, #0x20]
02c78dc4  ldr w1,[x20, #0x20]
02c78dc8  ldr w2,[x19, #0x20]
02c78dcc  bl 0x02c682c4
02c78dd0  ldr x8,[x21]
02c78dd4  ldr x8,[x8, #0xb8]
02c78dd8  ldr x0,[x8]
02c78ddc  cbz x0,0x02c79078
02c78de0  adrp x24,0x5e5d000
02c78de4  adrp x21,0x5e59000
02c78de8  mov x1,xzr
02c78dec  ldr x24,[x24, #0x5b0]
02c78df0  ldr x21,[x21, #0x1c0]
02c78df4  bl 0x02c679fc
02c78df8  ldr x8,[x24]
02c78dfc  ldr x0,[x21]
02c78e00  ldr x8,[x8, #0xb8]
02c78e04  ldr w9,[x0, #0xe4]
02c78e08  ldr x21,[x8, #0x8]
02c78e0c  cbnz w9,0x02c78e14
02c78e10  bl 0x029f5bd0
02c78e14  mov x0,x21
02c78e18  mov x1,xzr
02c78e1c  mov x2,xzr
02c78e20  bl 0x057dfa70
02c78e24  tbz w0,#0x0,0x02c78e40
02c78e28  ldr x8,[x24]
02c78e2c  ldr x8,[x8, #0xb8]
02c78e30  ldr x0,[x8, #0x8]
02c78e34  cbz x0,0x02c79078
02c78e38  mov x1,xzr
02c78e3c  bl 0x02c43744
02c78e40  adrp x21,0x625b000
02c78e44  ldrb w8,[x21, #0xa57]
02c78e48  cbnz w8,0x02c78e60
02c78e4c  adrp x0,0x5e5d000
02c78e50  ldr x0,[x0, #0xd70]
02c78e54  bl 0x029f5a50
02c78e58  mov w8,#0x1
02c78e5c  strb w8,[x21, #0xa57]
02c78e60  adrp x8,0x5e5d000
02c78e64  ldr x8,[x8, #0xd70]
02c78e68  ldr x8,[x8]
02c78e6c  ldr x8,[x8, #0xb8]
02c78e70  ldr x0,[x8]
02c78e74  cbz x0,0x02c79078
02c78e78  fmov s0,0x3f800000
02c78e7c  adrp x21,0x5e59000
02c78e80  mov w1,#0x9
02c78e84  ldr x21,[x21, #0x768]
02c78e88  mov x2,xzr
02c78e8c  mov x3,xzr
02c78e90  bl 0x02c1f10c
02c78e94  ldr x0,[x21]
02c78e98  mov w1,#0x4
02c78e9c  bl 0x029f5b40
02c78ea0  adrp x24,0x5e58000
02c78ea4  mov x21,x0
02c78ea8  add x1,sp,#0x1c
02c78eac  ldr x24,[x24, #0xa10]
02c78eb0  ldr w8,[x20, #0x20]
02c78eb4  ldr x0,[x24, #0x48]
02c78eb8  str w8,[sp, #0x1c]
02c78ebc  bl 0x029f5bd8
02c78ec0  cbz x21,0x02c79078
02c78ec4  mov x20,x0
02c78ec8  cbz x0,0x02c78ee0
02c78ecc  ldr x8,[x21]
02c78ed0  mov x0,x20
02c78ed4  ldr x1,[x8, #0x40]
02c78ed8  bl 0x029f5bd4
02c78edc  cbz x0,0x02c79080
02c78ee0  ldr w8,[x21, #0x18]
02c78ee4  cbz w8,0x02c7907c
02c78ee8  mov x0,x21
02c78eec  mov x1,x20
02c78ef0  str x20,[x0, #0x20]!
02c78ef4  bl 0x029f59f4
02c78ef8  ldr x0,[x24, #0x48]
02c78efc  add x1,sp,#0x18
02c78f00  str w22,[sp, #0x18]
02c78f04  bl 0x029f5bd8
02c78f08  mov x20,x0
02c78f0c  cbz x0,0x02c78f24
02c78f10  ldr x8,[x21]
02c78f14  mov x0,x20
02c78f18  ldr x1,[x8, #0x40]
02c78f1c  bl 0x029f5bd4
02c78f20  cbz x0,0x02c79080
02c78f24  ldr w8,[x21, #0x18]
02c78f28  tst w8,#0xfffffffe
02c78f2c  b.eq 0x02c7907c
02c78f30  mov x0,x21
02c78f34  mov x1,x20
02c78f38  str x20,[x0, #0x28]!
02c78f3c  bl 0x029f59f4
02c78f40  ldr w8,[x19, #0x20]
02c78f44  ldr x0,[x24, #0x48]
02c78f48  add x1,sp,#0xc
02c78f4c  str w8,[sp, #0xc]
02c78f50  bl 0x029f5bd8
02c78f54  mov x19,x0
02c78f58  cbz x0,0x02c78f70
02c78f5c  ldr x8,[x21]
02c78f60  mov x0,x19
02c78f64  ldr x1,[x8, #0x40]
02c78f68  bl 0x029f5bd4
02c78f6c  cbz x0,0x02c79080
02c78f70  ldr w8,[x21, #0x18]
02c78f74  cmp w8,#0x2
02c78f78  b.ls 0x02c7907c
02c78f7c  mov x0,x21
02c78f80  mov x1,x19
02c78f84  str x19,[x0, #0x30]!
02c78f88  bl 0x029f59f4
02c78f8c  ldr x0,[x24, #0x48]
02c78f90  add x1,sp,#0x8
02c78f94  str w23,[sp, #0x8]
02c78f98  bl 0x029f5bd8
02c78f9c  mov x19,x0
02c78fa0  cbz x0,0x02c78fb8
02c78fa4  ldr x8,[x21]
02c78fa8  mov x0,x19
02c78fac  ldr x1,[x8, #0x40]
02c78fb0  bl 0x029f5bd4
02c78fb4  cbz x0,0x02c79080
02c78fb8  ldr w8,[x21, #0x18]
02c78fbc  tst w8,#0xfffffffc
02c78fc0  b.eq 0x02c7907c
02c78fc4  adrp x20,0x5e63000
02c78fc8  adrp x24,0x5e58000
02c78fcc  mov x0,x21
02c78fd0  ldr x20,[x20, #0xcb8]
02c78fd4  ldr x24,[x24, #0xf08]
02c78fd8  mov x1,x19
02c78fdc  str x19,[x0, #0x38]!
02c78fe0  bl 0x029f59f4
02c78fe4  ldr x0,[x20]
02c78fe8  mov x1,x21
02c78fec  mov x2,xzr
02c78ff0  bl 0x046c1d9c
02c78ff4  ldr x8,[x24]
02c78ff8  mov x19,x0
02c78ffc  ldr w9,[x8, #0xe4]
02c79000  cbnz w9,0x02c7900c
02c79004  mov x0,x8
02c79008  bl 0x029f5bd0
02c7900c  mov x0,x19
02c79010  mov x1,xzr
02c79014  bl 0x05799e30
02c79018  cmn w23,#0x1
02c7901c  b.eq 0x02c79060
02c79020  mov w8,#0x6667
02c79024  movk w8,#0x6666, LSL #16
02c79028  smull x9,w22,w8
02c7902c  smull x8,w23,w8
02c79030  lsr x10,x9,#0x3f
02c79034  asr x9,x9,#0x21
02c79038  lsr x11,x8,#0x3f
02c7903c  asr x8,x8,#0x21
02c79040  add w9,w9,w10
02c79044  add w8,w8,w11
02c79048  cmp w9,w8
02c7904c  b.ne 0x02c79060
02c79050  mov x0,xzr
02c79054  bl 0x02be0088
02c79058  mov x1,xzr
02c7905c  bl 0x02c1dd54
02c79060  ldp x20,x19,[sp, #0x40]
02c79064  ldr x30,[sp, #0x10]
02c79068  ldp x22,x21,[sp, #0x30]
02c7906c  ldp x24,x23,[sp, #0x20]
02c79070  add sp,sp,#0x50
02c79074  ret
02c79078  bl 0x029f5cfc
02c7907c  bl 0x029f5d04
02c79080  bl 0x029f5d20
02c79084  mov x1,xzr
02c79088  bl 0x029f5bc0
