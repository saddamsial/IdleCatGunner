02c6eaa8  sub sp,sp,#0x150
02c6eaac  stp x29,x30,[sp, #0xf0]
02c6eab0  stp x28,x27,[sp, #0x100]
02c6eab4  stp x26,x25,[sp, #0x110]
02c6eab8  stp x24,x23,[sp, #0x120]
02c6eabc  stp x22,x21,[sp, #0x130]
02c6eac0  stp x20,x19,[sp, #0x140]
02c6eac4  adrp x20,0x625c000
02c6eac8  adrp x24,0x5e5e000
02c6eacc  mov x19,x0
02c6ead0  ldrb w8,[x20, #0x2b7]
02c6ead4  ldr x24,[x24, #0x58]
02c6ead8  tbnz w8,#0x0,0x02c6eb5c
02c6eadc  adrp x0,0x5e5d000
02c6eae0  ldr x0,[x0, #0x338]
02c6eae4  bl 0x029f5a50
02c6eae8  adrp x0,0x5e5e000
02c6eaec  ldr x0,[x0, #0x528]
02c6eaf0  bl 0x029f5a50
02c6eaf4  adrp x0,0x5e59000
02c6eaf8  ldr x0,[x0, #0x1c0]
02c6eafc  bl 0x029f5a50
02c6eb00  adrp x0,0x5e5e000
02c6eb04  ldr x0,[x0, #0x58]
02c6eb08  bl 0x029f5a50
02c6eb0c  adrp x0,0x5e63000
02c6eb10  ldr x0,[x0, #0xb50]
02c6eb14  bl 0x029f5a50
02c6eb18  adrp x0,0x5e5d000
02c6eb1c  ldr x0,[x0, #0x528]
02c6eb20  bl 0x029f5a50
02c6eb24  adrp x0,0x5e5a000
02c6eb28  ldr x0,[x0, #0xcc0]
02c6eb2c  bl 0x029f5a50
02c6eb30  adrp x0,0x5e63000
02c6eb34  ldr x0,[x0, #0x338]
02c6eb38  bl 0x029f5a50
02c6eb3c  adrp x0,0x5e62000
02c6eb40  ldr x0,[x0, #0xd68]
02c6eb44  bl 0x029f5a50
02c6eb48  adrp x0,0x5e63000
02c6eb4c  ldr x0,[x0, #0xb58]
02c6eb50  bl 0x029f5a50
02c6eb54  mov w8,#0x1
02c6eb58  strb w8,[x20, #0x2b7]
02c6eb5c  movi v0.2D,#0x0
02c6eb60  ldr x0,[x24]
02c6eb64  str xzr,[sp, #0xe8]
02c6eb68  str wzr,[sp, #0xbc]
02c6eb6c  adrp x20,0x5e59000
02c6eb70  ldr w8,[x0, #0xe4]
02c6eb74  stp q0,q0,[sp, #0xc0]
02c6eb78  ldr x20,[x20, #0x1c0]
02c6eb7c  stp q0,q0,[sp, #0x90]
02c6eb80  cbnz w8,0x02c6eb8c
02c6eb84  bl 0x029f5bd0
02c6eb88  ldr x0,[x24]
02c6eb8c  ldr x8,[x20]
02c6eb90  ldr x9,[x0, #0xb8]
02c6eb94  ldr w10,[x8, #0xe4]
02c6eb98  ldr x20,[x9]
02c6eb9c  cbnz w10,0x02c6eba8
02c6eba0  mov x0,x8
02c6eba4  bl 0x029f5bd0
02c6eba8  mov x0,x20
02c6ebac  mov x1,xzr
02c6ebb0  mov x2,xzr
02c6ebb4  bl 0x057e14b4
02c6ebb8  tbnz w0,#0x0,0x02c6f178
02c6ebbc  ldr w8,[x19, #0x98]
02c6ebc0  tbnz w8,#0x1f,0x02c6f178
02c6ebc4  cbz x20,0x02c6f198
02c6ebc8  ldr x9,[x20, #0x30]
02c6ebcc  cbz x9,0x02c6ebf8
02c6ebd0  ldr w10,[x9, #0x18]
02c6ebd4  cmp w8,w10
02c6ebd8  b.ge 0x02c6ebf8
02c6ebdc  add x8,x9,x8, LSL #0x2
02c6ebe0  ldr w9,[x8, #0x20]
02c6ebe4  str w9,[sp, #0xec]
02c6ebe8  ldr w8,[x8, #0x20]
02c6ebec  cmp w8,#0x13
02c6ebf0  cset w27,gt
02c6ebf4  b 0x02c6ec00
02c6ebf8  mov w27,wzr
02c6ebfc  str wzr,[sp, #0xec]
02c6ec00  adrp x8,0x5e5e000
02c6ec04  ldr x8,[x8, #0x528]
02c6ec08  ldr x21,[x19, #0x20]
02c6ec0c  ldr x0,[x8]
02c6ec10  ldr w8,[x0, #0xe4]
02c6ec14  cbnz w8,0x02c6ec1c
02c6ec18  bl 0x029f5bd0
02c6ec1c  adrp x8,0x5e63000
02c6ec20  mov w1,#0x1
02c6ec24  mov w2,wzr
02c6ec28  ldr x8,[x8, #0xb50]
02c6ec2c  mov w3,#0x1
02c6ec30  mov w4,wzr
02c6ec34  mov x5,xzr
02c6ec38  mov x6,xzr
02c6ec3c  mov w7,#0x1
02c6ec40  ldr x0,[x8]
02c6ec44  str xzr,[sp]
02c6ec48  bl 0x02bccb00
02c6ec4c  adrp x25,0x5e58000
02c6ec50  ldr w8,[x19, #0x98]
02c6ec54  mov x22,x0
02c6ec58  ldr x25,[x25, #0xa10]
02c6ec5c  add x1,sp,#0x50
02c6ec60  add w8,w8,#0x1
02c6ec64  ldr x0,[x25, #0x48]
02c6ec68  str w8,[sp, #0x50]
02c6ec6c  bl 0x029f5bd8
02c6ec70  mov x1,x0
02c6ec74  mov x0,x22
02c6ec78  mov x2,xzr
02c6ec7c  bl 0x046b6c0c
02c6ec80  cbz x21,0x02c6f198
02c6ec84  ldr x8,[x21]
02c6ec88  mov x1,x0
02c6ec8c  mov x0,x21
02c6ec90  ldr x9,[x8, #0x558]
02c6ec94  ldr x2,[x8, #0x560]
02c6ec98  blr x9
02c6ec9c  adrp x26,0x5e5d000
02c6eca0  ldr x26,[x26, #0x338]
02c6eca4  ldr x21,[x19, #0x28]
02c6eca8  ldr x0,[x26]
02c6ecac  ldr w8,[x0, #0xe4]
02c6ecb0  cbnz w8,0x02c6ecbc
02c6ecb4  bl 0x029f5bd0
02c6ecb8  ldr x0,[x26]
02c6ecbc  ldr x8,[x0, #0xb8]
02c6ecc0  mov x1,xzr
02c6ecc4  add x0,x8,#0xc4
02c6ecc8  bl 0x0484e6a4
02c6eccc  cbz x21,0x02c6f198
02c6ecd0  ldr x8,[x21]
02c6ecd4  mov x1,x0
02c6ecd8  mov x0,x21
02c6ecdc  ldr x9,[x8, #0x558]
02c6ece0  ldr x2,[x8, #0x560]
02c6ece4  blr x9
02c6ece8  ldr x21,[x19, #0x30]
02c6ecec  add x0,sp,#0xec
02c6ecf0  mov x1,xzr
02c6ecf4  bl 0x0484e6a4
02c6ecf8  cbz x21,0x02c6f198
02c6ecfc  ldr x8,[x21]
02c6ed00  mov x1,x0
02c6ed04  mov x0,x21
02c6ed08  ldr x9,[x8, #0x558]
02c6ed0c  ldr x2,[x8, #0x560]
02c6ed10  blr x9
02c6ed14  ldr x0,[x24]
02c6ed18  ldr x21,[x19, #0x38]
02c6ed1c  ldr w22,[sp, #0xec]
02c6ed20  ldr w8,[x0, #0xe4]
02c6ed24  cbnz w8,0x02c6ed2c
02c6ed28  bl 0x029f5bd0
02c6ed2c  add x8,sp,#0x70
02c6ed30  mov w0,w22
02c6ed34  bl 0x02c6d98c
02c6ed38  ldp q0,q1,[sp, #0x70]
02c6ed3c  add x0,sp,#0x90
02c6ed40  mov x1,xzr
02c6ed44  stp q0,q1,[sp, #0x90]
02c6ed48  bl 0x0465bddc
02c6ed4c  adrp x28,0x5e5d000
02c6ed50  adrp x29,0x5e63000
02c6ed54  mov x1,x0
02c6ed58  ldr x28,[x28, #0x528]
02c6ed5c  ldr x29,[x29, #0xb58]
02c6ed60  mov x3,xzr
02c6ed64  ldr x8,[x28]
02c6ed68  ldr x2,[x29]
02c6ed6c  mov x0,x8
02c6ed70  bl 0x046c118c
02c6ed74  cbz x21,0x02c6f198
02c6ed78  ldr x8,[x21]
02c6ed7c  mov x1,x0
02c6ed80  mov x0,x21
02c6ed84  ldr x9,[x8, #0x558]
02c6ed88  ldr x2,[x8, #0x560]
02c6ed8c  blr x9
02c6ed90  add x1,sp,#0xe8
02c6ed94  add x2,sp,#0xc0
02c6ed98  mov x0,x19
02c6ed9c  bl 0x02c6f1a0
02c6eda0  ldr x8,[x19, #0x70]
02c6eda4  cbz x8,0x02c6f198
02c6eda8  mov w21,w0
02c6edac  and w1,w0,#0x1
02c6edb0  mov x0,x8
02c6edb4  mov x2,xzr
02c6edb8  bl 0x057dff3c
02c6edbc  tbz w21,#0x0,0x02c6f080
02c6edc0  ldr x0,[x24]
02c6edc4  ldp q0,q1,[sp, #0xc0]
02c6edc8  ldr x22,[x19, #0x40]
02c6edcc  ldr w23,[sp, #0xec]
02c6edd0  ldr w8,[x0, #0xe4]
02c6edd4  stp q0,q1,[sp, #0x70]
02c6edd8  cbnz w8,0x02c6ede0
02c6eddc  bl 0x029f5bd0
02c6ede0  ldp q0,q1,[sp, #0x70]
02c6ede4  add x8,sp,#0x50
02c6ede8  add x0,sp,#0x30
02c6edec  mov w1,w23
02c6edf0  stp q0,q1,[sp, #0x30]
02c6edf4  bl 0x02c6da2c
02c6edf8  ldp q0,q1,[sp, #0x50]
02c6edfc  add x0,sp,#0x90
02c6ee00  mov x1,xzr
02c6ee04  stp q0,q1,[sp, #0x90]
02c6ee08  bl 0x0465bddc
02c6ee0c  cbz x22,0x02c6f198
02c6ee10  ldr x8,[x22]
02c6ee14  mov x1,x0
02c6ee18  mov x0,x22
02c6ee1c  ldr x9,[x8, #0x558]
02c6ee20  ldr x2,[x8, #0x560]
02c6ee24  blr x9
02c6ee28  tbnz w27,#0x0,0x02c6f084
02c6ee2c  ldr w8,[sp, #0xec]
02c6ee30  ldr x22,[x19, #0x48]
02c6ee34  add x0,sp,#0xbc
02c6ee38  mov x1,xzr
02c6ee3c  add w8,w8,#0x1
02c6ee40  str w8,[sp, #0xbc]
02c6ee44  bl 0x0484e6a4
02c6ee48  cbz x22,0x02c6f198
02c6ee4c  ldr x8,[x22]
02c6ee50  mov x1,x0
02c6ee54  mov x0,x22
02c6ee58  ldr x9,[x8, #0x558]
02c6ee5c  ldr x2,[x8, #0x560]
02c6ee60  blr x9
02c6ee64  ldr x0,[x24]
02c6ee68  ldr x22,[x19, #0x50]
02c6ee6c  ldr w23,[sp, #0xbc]
02c6ee70  ldr w8,[x0, #0xe4]
02c6ee74  cbnz w8,0x02c6ee7c
02c6ee78  bl 0x029f5bd0
02c6ee7c  add x8,sp,#0x70
02c6ee80  mov w0,w23
02c6ee84  bl 0x02c6d98c
02c6ee88  ldp q0,q1,[sp, #0x70]
02c6ee8c  add x0,sp,#0x90
02c6ee90  mov x1,xzr
02c6ee94  stp q0,q1,[sp, #0x90]
02c6ee98  bl 0x0465bddc
02c6ee9c  ldr x8,[x28]
02c6eea0  ldr x2,[x29]
02c6eea4  mov x1,x0
02c6eea8  mov x3,xzr
02c6eeac  mov x0,x8
02c6eeb0  bl 0x046c118c
02c6eeb4  cbz x22,0x02c6f198
02c6eeb8  ldr x8,[x22]
02c6eebc  mov x1,x0
02c6eec0  mov x0,x22
02c6eec4  ldr x9,[x8, #0x558]
02c6eec8  ldr x2,[x8, #0x560]
02c6eecc  blr x9
02c6eed0  tbz w21,#0x0,0x02c6ef3c
02c6eed4  ldr x0,[x24]
02c6eed8  ldp q0,q1,[sp, #0xc0]
02c6eedc  ldr x21,[x19, #0x58]
02c6eee0  ldr w22,[sp, #0xbc]
02c6eee4  ldr w8,[x0, #0xe4]
02c6eee8  stp q0,q1,[sp, #0x70]
02c6eeec  cbnz w8,0x02c6eef4
02c6eef0  bl 0x029f5bd0
02c6eef4  ldp q0,q1,[sp, #0x70]
02c6eef8  add x8,sp,#0x50
02c6eefc  add x0,sp,#0x10
02c6ef00  mov w1,w22
02c6ef04  stp q0,q1,[sp, #0x10]
02c6ef08  bl 0x02c6da2c
02c6ef0c  ldp q0,q1,[sp, #0x50]
02c6ef10  add x0,sp,#0x90
02c6ef14  mov x1,xzr
02c6ef18  stp q0,q1,[sp, #0x90]
02c6ef1c  bl 0x0465bddc
02c6ef20  cbz x21,0x02c6f198
02c6ef24  ldr x8,[x21]
02c6ef28  mov x1,x0
02c6ef2c  mov x0,x21
02c6ef30  ldr x9,[x8, #0x558]
02c6ef34  ldr x2,[x8, #0x560]
02c6ef38  blr x9
02c6ef3c  ldr w1,[x19, #0x98]
02c6ef40  ldr x21,[x19, #0x60]
02c6ef44  mov x0,x20
02c6ef48  bl 0x02c6dd48
02c6ef4c  ldr x8,[x25, #0x48]
02c6ef50  str w0,[sp, #0x70]
02c6ef54  add x1,sp,#0x70
02c6ef58  mov x0,x8
02c6ef5c  bl 0x029f5bd8
02c6ef60  adrp x8,0x5e63000
02c6ef64  mov x1,x0
02c6ef68  mov x2,xzr
02c6ef6c  ldr x8,[x8, #0x338]
02c6ef70  ldr x8,[x8]
02c6ef74  mov x0,x8
02c6ef78  bl 0x046b6c0c
02c6ef7c  cbz x21,0x02c6f198
02c6ef80  ldr x8,[x21]
02c6ef84  mov x1,x0
02c6ef88  mov x0,x21
02c6ef8c  ldr x9,[x8, #0x558]
02c6ef90  ldr x2,[x8, #0x560]
02c6ef94  blr x9
02c6ef98  ldr w1,[x19, #0x98]
02c6ef9c  mov x0,x20
02c6efa0  bl 0x02c6dc64
02c6efa4  ldr x8,[x26]
02c6efa8  mov w20,w0
02c6efac  ldr w9,[x8, #0xe4]
02c6efb0  cbnz w9,0x02c6efc0
02c6efb4  mov x0,x8
02c6efb8  bl 0x029f5bd0
02c6efbc  ldr x8,[x26]
02c6efc0  ldr x8,[x8, #0xb8]
02c6efc4  ldr x0,[x25, #0x48]
02c6efc8  add x1,sp,#0x50
02c6efcc  ldr x21,[x19, #0x68]
02c6efd0  str w20,[sp, #0x50]
02c6efd4  ldr w23,[x8, #0xc4]
02c6efd8  bl 0x029f5bd8
02c6efdc  adrp x8,0x5e62000
02c6efe0  mov x1,x0
02c6efe4  mov x2,xzr
02c6efe8  ldr x8,[x8, #0xd68]
02c6efec  ldr x8,[x8]
02c6eff0  mov x0,x8
02c6eff4  bl 0x046b6c0c
02c6eff8  cbz x21,0x02c6f198
02c6effc  ldr x8,[x21]
02c6f000  mov x1,x0
02c6f004  cmp w23,w20
02c6f008  mov x0,x21
02c6f00c  cset w22,ge
02c6f010  ldr x9,[x8, #0x558]
02c6f014  ldr x2,[x8, #0x560]
02c6f018  blr x9
02c6f01c  ldr x8,[x19, #0x90]
02c6f020  cbz x8,0x02c6f198
02c6f024  cmp w23,w20
02c6f028  ldr w9,[x8, #0x18]
02c6f02c  cset w20,ge
02c6f030  cmp w20,w9
02c6f034  b.cs 0x02c6f19c
02c6f038  ldr x0,[x19, #0x68]
02c6f03c  cbz x0,0x02c6f198
02c6f040  add x8,x8,x22, LSL #0x4
02c6f044  ldr x9,[x0]
02c6f048  ldp s2,s3,[x8, #0x28]
02c6f04c  ldr x1,[x9, #0x2b0]
02c6f050  ldp s0,s1,[x8, #0x20]
02c6f054  ldr x8,[x9, #0x2a8]
02c6f058  blr x8
02c6f05c  ldr x8,[x19, #0x88]
02c6f060  cbz x8,0x02c6f198
02c6f064  ldr w9,[x8, #0x18]
02c6f068  cmp w20,w9
02c6f06c  b.cs 0x02c6f19c
02c6f070  ldr x0,[x19, #0x78]
02c6f074  cbz x0,0x02c6f198
02c6f078  add x8,x8,x22, LSL #0x4
02c6f07c  b 0x02c6f160
02c6f080  cbz w27,0x02c6ee2c
02c6f084  ldr x0,[x19, #0x48]
02c6f088  cbz x0,0x02c6f198
02c6f08c  adrp x20,0x5e5a000
02c6f090  ldr x20,[x20, #0xcc0]
02c6f094  ldr x8,[x0]
02c6f098  ldr x1,[x20]
02c6f09c  ldr x9,[x8, #0x558]
02c6f0a0  ldr x2,[x8, #0x560]
02c6f0a4  blr x9
02c6f0a8  ldr x0,[x19, #0x50]
02c6f0ac  cbz x0,0x02c6f198
02c6f0b0  ldr x8,[x0]
02c6f0b4  ldr x1,[x20]
02c6f0b8  ldr x9,[x8, #0x558]
02c6f0bc  ldr x2,[x8, #0x560]
02c6f0c0  blr x9
02c6f0c4  ldr x0,[x19, #0x58]
02c6f0c8  cbz x0,0x02c6f198
02c6f0cc  ldr x8,[x0]
02c6f0d0  ldr x1,[x20]
02c6f0d4  ldr x9,[x8, #0x558]
02c6f0d8  ldr x2,[x8, #0x560]
02c6f0dc  blr x9
02c6f0e0  ldr x0,[x19, #0x60]
02c6f0e4  cbz x0,0x02c6f198
02c6f0e8  ldr x8,[x0]
02c6f0ec  ldr x1,[x20]
02c6f0f0  ldr x9,[x8, #0x558]
02c6f0f4  ldr x2,[x8, #0x560]
02c6f0f8  blr x9
02c6f0fc  ldr x0,[x19, #0x68]
02c6f100  cbz x0,0x02c6f198
02c6f104  ldr x8,[x0]
02c6f108  ldr x1,[x20]
02c6f10c  ldr x9,[x8, #0x558]
02c6f110  ldr x2,[x8, #0x560]
02c6f114  blr x9
02c6f118  ldr x8,[x19, #0x90]
02c6f11c  cbz x8,0x02c6f198
02c6f120  ldr w9,[x8, #0x18]
02c6f124  cbz w9,0x02c6f19c
02c6f128  ldr x0,[x19, #0x68]
02c6f12c  cbz x0,0x02c6f198
02c6f130  ldr x9,[x0]
02c6f134  ldp s2,s3,[x8, #0x28]
02c6f138  ldp s0,s1,[x8, #0x20]
02c6f13c  ldr x8,[x9, #0x2a8]
02c6f140  ldr x1,[x9, #0x2b0]
02c6f144  blr x8
02c6f148  ldr x8,[x19, #0x88]
02c6f14c  cbz x8,0x02c6f198
02c6f150  ldr w9,[x8, #0x18]
02c6f154  cbz w9,0x02c6f19c
02c6f158  ldr x0,[x19, #0x78]
02c6f15c  cbz x0,0x02c6f198
02c6f160  ldr x9,[x0]
02c6f164  ldp s2,s3,[x8, #0x28]
02c6f168  ldp s0,s1,[x8, #0x20]
02c6f16c  ldr x8,[x9, #0x2a8]
02c6f170  ldr x1,[x9, #0x2b0]
02c6f174  blr x8
02c6f178  ldp x20,x19,[sp, #0x140]
02c6f17c  ldp x22,x21,[sp, #0x130]
02c6f180  ldp x24,x23,[sp, #0x120]
02c6f184  ldp x26,x25,[sp, #0x110]
02c6f188  ldp x28,x27,[sp, #0x100]
02c6f18c  ldp x29,x30,[sp, #0xf0]
02c6f190  add sp,sp,#0x150
02c6f194  ret
02c6f198  bl 0x029f5cfc
02c6f19c  bl 0x029f5d04
