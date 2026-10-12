02c5bed0  sub sp,sp,#0x40
02c5bed4  str x30,[sp, #0x10]
02c5bed8  stp x22,x21,[sp, #0x20]
02c5bedc  stp x20,x19,[sp, #0x30]
02c5bee0  adrp x21,0x625c000
02c5bee4  adrp x20,0x5e5e000
02c5bee8  mov x19,x0
02c5beec  ldrb w8,[x21, #0x1e4]
02c5bef0  ldr x20,[x20, #0x70]
02c5bef4  tbnz w8,#0x0,0x02c5bf30
02c5bef8  adrp x0,0x5e59000
02c5befc  ldr x0,[x0, #0x768]
02c5bf00  bl 0x029f5a50
02c5bf04  adrp x0,0x5e5e000
02c5bf08  ldr x0,[x0, #0x70]
02c5bf0c  bl 0x029f5a50
02c5bf10  adrp x0,0x5e5a000
02c5bf14  ldr x0,[x0, #0x180]
02c5bf18  bl 0x029f5a50
02c5bf1c  adrp x0,0x5e63000
02c5bf20  ldr x0,[x0, #0x630]
02c5bf24  bl 0x029f5a50
02c5bf28  mov w8,#0x1
02c5bf2c  strb w8,[x21, #0x1e4]
02c5bf30  ldr x0,[x20]
02c5bf34  adrp x21,0x5e59000
02c5bf38  adrp x20,0x5e5a000
02c5bf3c  ldr x21,[x21, #0x768]
02c5bf40  ldr w8,[x0, #0xe4]
02c5bf44  ldr x20,[x20, #0x180]
02c5bf48  str xzr,[sp, #0x18]
02c5bf4c  cbnz w8,0x02c5bf54
02c5bf50  bl 0x029f5bd0
02c5bf54  mov x0,xzr
02c5bf58  bl 0x02c5477c
02c5bf5c  ldr x8,[x21]
02c5bf60  ldr x19,[x19, #0x58]
02c5bf64  mov w1,#0x4
02c5bf68  str x0,[sp, #0x18]
02c5bf6c  mov x0,x8
02c5bf70  bl 0x029f5b40
02c5bf74  ldr x8,[x20]
02c5bf78  mov x20,x0
02c5bf7c  ldr w9,[x8, #0xe4]
02c5bf80  cbnz w9,0x02c5bf8c
02c5bf84  mov x0,x8
02c5bf88  bl 0x029f5bd0
02c5bf8c  add x0,sp,#0x18
02c5bf90  mov x1,xzr
02c5bf94  bl 0x048681e0
02c5bf98  mov x8,#0x7ff0000000000000
02c5bf9c  fcvtzs w9,d0
02c5bfa0  adrp x22,0x5e58000
02c5bfa4  fmov d1,x8
02c5bfa8  ldr x22,[x22, #0xa10]
02c5bfac  mov w8,#0x80000000
02c5bfb0  add x1,sp,#0xc
02c5bfb4  ldr x0,[x22, #0x48]
02c5bfb8  fcmp d0,d1
02c5bfbc  csel w8,w8,w9,eq
02c5bfc0  str w8,[sp, #0xc]
02c5bfc4  bl 0x029f5bd8
02c5bfc8  cbz x20,0x02c5c160
02c5bfcc  mov x21,x0
02c5bfd0  cbz x0,0x02c5bfe8
02c5bfd4  ldr x8,[x20]
02c5bfd8  mov x0,x21
02c5bfdc  ldr x1,[x8, #0x40]
02c5bfe0  bl 0x029f5bd4
02c5bfe4  cbz x0,0x02c5c154
02c5bfe8  ldr w8,[x20, #0x18]
02c5bfec  cbz w8,0x02c5c150
02c5bff0  mov x0,x20
02c5bff4  mov x1,x21
02c5bff8  str x21,[x0, #0x20]!
02c5bffc  bl 0x029f59f4
02c5c000  add x0,sp,#0x18
02c5c004  mov x1,xzr
02c5c008  bl 0x04868108
02c5c00c  ldr x8,[x22, #0x48]
02c5c010  str w0,[sp, #0x8]
02c5c014  add x1,sp,#0x8
02c5c018  mov x0,x8
02c5c01c  bl 0x029f5bd8
02c5c020  mov x21,x0
02c5c024  cbz x0,0x02c5c03c
02c5c028  ldr x8,[x20]
02c5c02c  mov x0,x21
02c5c030  ldr x1,[x8, #0x40]
02c5c034  bl 0x029f5bd4
02c5c038  cbz x0,0x02c5c154
02c5c03c  ldr w8,[x20, #0x18]
02c5c040  tst w8,#0xfffffffe
02c5c044  b.eq 0x02c5c150
02c5c048  mov x0,x20
02c5c04c  mov x1,x21
02c5c050  str x21,[x0, #0x28]!
02c5c054  bl 0x029f59f4
02c5c058  add x0,sp,#0x18
02c5c05c  mov x1,xzr
02c5c060  bl 0x0486814c
02c5c064  ldr x8,[x22, #0x48]
02c5c068  str w0,[sp, #0x4]
02c5c06c  add x1,sp,#0x4
02c5c070  mov x0,x8
02c5c074  bl 0x029f5bd8
02c5c078  mov x21,x0
02c5c07c  cbz x0,0x02c5c094
02c5c080  ldr x8,[x20]
02c5c084  mov x0,x21
02c5c088  ldr x1,[x8, #0x40]
02c5c08c  bl 0x029f5bd4
02c5c090  cbz x0,0x02c5c154
02c5c094  ldr w8,[x20, #0x18]
02c5c098  cmp w8,#0x2
02c5c09c  b.ls 0x02c5c150
02c5c0a0  mov x0,x20
02c5c0a4  mov x1,x21
02c5c0a8  str x21,[x0, #0x30]!
02c5c0ac  bl 0x029f59f4
02c5c0b0  add x0,sp,#0x18
02c5c0b4  mov x1,xzr
02c5c0b8  bl 0x04868194
02c5c0bc  ldr x8,[x22, #0x48]
02c5c0c0  str w0,[sp]
02c5c0c4  mov x1,sp
02c5c0c8  mov x0,x8
02c5c0cc  bl 0x029f5bd8
02c5c0d0  mov x21,x0
02c5c0d4  cbz x0,0x02c5c0ec
02c5c0d8  ldr x8,[x20]
02c5c0dc  mov x0,x21
02c5c0e0  ldr x1,[x8, #0x40]
02c5c0e4  bl 0x029f5bd4
02c5c0e8  cbz x0,0x02c5c154
02c5c0ec  ldr w8,[x20, #0x18]
02c5c0f0  tst w8,#0xfffffffc
02c5c0f4  b.eq 0x02c5c150
02c5c0f8  adrp x22,0x5e63000
02c5c0fc  mov x0,x20
02c5c100  mov x1,x21
02c5c104  ldr x22,[x22, #0x630]
02c5c108  str x21,[x0, #0x38]!
02c5c10c  bl 0x029f59f4
02c5c110  ldr x0,[x22]
02c5c114  mov x1,x20
02c5c118  mov x2,xzr
02c5c11c  bl 0x046c1d9c
02c5c120  cbz x19,0x02c5c160
02c5c124  ldr x8,[x19]
02c5c128  mov x1,x0
02c5c12c  mov x0,x19
02c5c130  ldr x9,[x8, #0x558]
02c5c134  ldr x2,[x8, #0x560]
02c5c138  blr x9
02c5c13c  ldp x20,x19,[sp, #0x30]
02c5c140  ldr x30,[sp, #0x10]
02c5c144  ldp x22,x21,[sp, #0x20]
02c5c148  add sp,sp,#0x40
02c5c14c  ret
02c5c150  bl 0x029f5d04
02c5c154  bl 0x029f5d20
02c5c158  mov x1,xzr
02c5c15c  bl 0x029f5bc0
02c5c160  bl 0x029f5cfc
