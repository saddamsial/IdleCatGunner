02c5ef70  sub sp,sp,#0x50
02c5ef74  stp x30,x25,[sp, #0x10]
02c5ef78  stp x24,x23,[sp, #0x20]
02c5ef7c  stp x22,x21,[sp, #0x30]
02c5ef80  stp x20,x19,[sp, #0x40]
02c5ef84  adrp x20,0x625c000
02c5ef88  mov x19,x0
02c5ef8c  ldrb w8,[x20, #0x234]
02c5ef90  tbnz w8,#0x0,0x02c5efcc
02c5ef94  adrp x0,0x5e5d000
02c5ef98  ldr x0,[x0, #0xd38]
02c5ef9c  bl 0x029f5a50
02c5efa0  adrp x0,0x5e62000
02c5efa4  ldr x0,[x0, #0xfe8]
02c5efa8  bl 0x029f5a50
02c5efac  adrp x0,0x5e63000
02c5efb0  ldr x0,[x0, #0x128]
02c5efb4  bl 0x029f5a50
02c5efb8  adrp x0,0x5e63000
02c5efbc  ldr x0,[x0, #0x838]
02c5efc0  bl 0x029f5a50
02c5efc4  mov w8,#0x1
02c5efc8  strb w8,[x20, #0x234]
02c5efcc  mov x0,x19
02c5efd0  mov x1,xzr
02c5efd4  bl 0x057dc1c8
02c5efd8  cbz x0,0x02c5f024
02c5efdc  mov x1,xzr
02c5efe0  bl 0x057e00b4
02c5efe4  tbz w0,#0x0,0x02c5f028
02c5efe8  ldr x8,[x19, #0x20]
02c5efec  cbz x8,0x02c5f024
02c5eff0  mov x20,xzr
02c5eff4  ldr w9,[x8, #0x18]
02c5eff8  cmp w20,w9
02c5effc  b.ge 0x02c5f034
02c5f000  cmp w20,w9
02c5f004  b.cs 0x02c5f1ac
02c5f008  add x8,x8,x20, LSL #0x3
02c5f00c  ldr x0,[x8, #0x20]
02c5f010  cbz x0,0x02c5f024
02c5f014  bl 0x02c5fb98
02c5f018  ldr x8,[x19, #0x20]
02c5f01c  add x20,x20,#0x1
02c5f020  cbnz x8,0x02c5eff4
02c5f024  bl 0x029f5cfc
02c5f028  mov w8,#0x1
02c5f02c  strb w8,[x19, #0x50]
02c5f030  b 0x02c5f194
02c5f034  adrp x23,0x5e5d000
02c5f038  ldr x23,[x23, #0xd38]
02c5f03c  ldr x8,[x23]
02c5f040  ldr x8,[x8, #0xb8]
02c5f044  ldr x8,[x8]
02c5f048  cbz x8,0x02c5f024
02c5f04c  ldr x20,[x8, #0x90]
02c5f050  cbz x20,0x02c5f024
02c5f054  ldr w8,[x20, #0x18]
02c5f058  cmp w8,#0x1
02c5f05c  b.lt 0x02c5f0f8
02c5f060  adrp x24,0x5e63000
02c5f064  mov w25,#0x4
02c5f068  ldr x24,[x24, #0x128]
02c5f06c  ldr x8,[x19, #0x20]
02c5f070  cbz x8,0x02c5f024
02c5f074  ldr w9,[x8, #0x18]
02c5f078  sub x21,x25,#0x4
02c5f07c  cmp w21,w9
02c5f080  b.ge 0x02c5f0f8
02c5f084  cmp w21,w9
02c5f088  b.cs 0x02c5f1ac
02c5f08c  ldr x2,[x24]
02c5f090  ldr x22,[x8, x25, LSL #0x3]
02c5f094  mov x0,x20
02c5f098  mov w1,w21
02c5f09c  bl 0x044f7718
02c5f0a0  cbz x22,0x02c5f024
02c5f0a4  mov w1,w0
02c5f0a8  mov x0,x22
02c5f0ac  mov w2,w21
02c5f0b0  bl 0x02c61164
02c5f0b4  ldr x8,[x19, #0x20]
02c5f0b8  cbz x8,0x02c5f024
02c5f0bc  ldr w9,[x8, #0x18]
02c5f0c0  cmp w21,w9
02c5f0c4  b.cs 0x02c5f1ac
02c5f0c8  ldr x21,[x8, x25, LSL #0x3]
02c5f0cc  mov x0,x19
02c5f0d0  mov x1,x21
02c5f0d4  bl 0x02c63258
02c5f0d8  cbz x21,0x02c5f024
02c5f0dc  mov x0,x21
02c5f0e0  bl 0x02c6298c
02c5f0e4  ldr w8,[x20, #0x18]
02c5f0e8  add x25,x25,#0x1
02c5f0ec  sub w9,w25,#0x4
02c5f0f0  cmp w9,w8
02c5f0f4  b.lt 0x02c5f06c
02c5f0f8  mov x0,x19
02c5f0fc  bl 0x02c633b4
02c5f100  ldr x8,[x23]
02c5f104  ldr x8,[x8, #0xb8]
02c5f108  ldr x8,[x8]
02c5f10c  cbz x8,0x02c5f024
02c5f110  ldr x8,[x8, #0x90]
02c5f114  cbz x8,0x02c5f024
02c5f118  adrp x22,0x5e58000
02c5f11c  add x1,sp,#0xc
02c5f120  ldr x22,[x22, #0xa10]
02c5f124  ldr w8,[x8, #0x18]
02c5f128  ldr x20,[x19, #0x48]
02c5f12c  ldr x0,[x22, #0x48]
02c5f130  str w8,[sp, #0xc]
02c5f134  bl 0x029f5bd8
02c5f138  mov x21,x0
02c5f13c  ldr x0,[x22, #0x48]
02c5f140  mov w8,#0x14
02c5f144  add x1,sp,#0x8
02c5f148  str w8,[sp, #0x8]
02c5f14c  bl 0x029f5bd8
02c5f150  adrp x8,0x5e63000
02c5f154  mov x2,x0
02c5f158  mov x1,x21
02c5f15c  ldr x8,[x8, #0x838]
02c5f160  mov x3,xzr
02c5f164  ldr x8,[x8]
02c5f168  mov x0,x8
02c5f16c  bl 0x046c1d14
02c5f170  cbz x20,0x02c5f024
02c5f174  ldr x8,[x20]
02c5f178  mov x1,x0
02c5f17c  mov x0,x20
02c5f180  ldr x9,[x8, #0x558]
02c5f184  ldr x2,[x8, #0x560]
02c5f188  blr x9
02c5f18c  mov x0,x19
02c5f190  bl 0x02c5e45c
02c5f194  ldp x20,x19,[sp, #0x40]
02c5f198  ldp x22,x21,[sp, #0x30]
02c5f19c  ldp x24,x23,[sp, #0x20]
02c5f1a0  ldp x30,x25,[sp, #0x10]
02c5f1a4  add sp,sp,#0x50
02c5f1a8  ret
02c5f1ac  bl 0x029f5d04
