02c8bf38  sub sp,sp,#0x30
02c8bf3c  stp x30,x21,[sp, #0x10]
02c8bf40  stp x20,x19,[sp, #0x20]
02c8bf44  adrp x20,0x625c000
02c8bf48  adrp x21,0x5e62000
02c8bf4c  mov x19,x0
02c8bf50  ldrb w8,[x20, #0x3b3]
02c8bf54  ldr x21,[x21, #0x660]
02c8bf58  tbnz w8,#0x0,0x02c8bfb8
02c8bf5c  adrp x0,0x5e62000
02c8bf60  ldr x0,[x0, #0x660]
02c8bf64  bl 0x029f5a50
02c8bf68  adrp x0,0x5e5d000
02c8bf6c  ldr x0,[x0, #0xd40]
02c8bf70  bl 0x029f5a50
02c8bf74  adrp x0,0x5e5e000
02c8bf78  ldr x0,[x0, #0x528]
02c8bf7c  bl 0x029f5a50
02c8bf80  adrp x0,0x5e59000
02c8bf84  ldr x0,[x0, #0x1c0]
02c8bf88  bl 0x029f5a50
02c8bf8c  adrp x0,0x5e5d000
02c8bf90  ldr x0,[x0, #0x920]
02c8bf94  bl 0x029f5a50
02c8bf98  adrp x0,0x5e5e000
02c8bf9c  ldr x0,[x0, #0x7a0]
02c8bfa0  bl 0x029f5a50
02c8bfa4  adrp x0,0x5e5d000
02c8bfa8  ldr x0,[x0, #0x958]
02c8bfac  bl 0x029f5a50
02c8bfb0  mov w8,#0x1
02c8bfb4  strb w8,[x20, #0x3b3]
02c8bfb8  ldr x0,[x21]
02c8bfbc  adrp x20,0x5e59000
02c8bfc0  ldr w8,[x0, #0xe4]
02c8bfc4  ldr x20,[x20, #0x1c0]
02c8bfc8  cbnz w8,0x02c8bfd4
02c8bfcc  bl 0x029f5bd0
02c8bfd0  ldr x0,[x21]
02c8bfd4  ldr x8,[x20]
02c8bfd8  ldr x9,[x0, #0xb8]
02c8bfdc  ldr w10,[x8, #0xe4]
02c8bfe0  ldr x20,[x9]
02c8bfe4  cbnz w10,0x02c8bff0
02c8bfe8  mov x0,x8
02c8bfec  bl 0x029f5bd0
02c8bff0  mov x0,x20
02c8bff4  mov x1,xzr
02c8bff8  mov x2,xzr
02c8bffc  bl 0x057e14b4
02c8c000  tbz w0,#0x0,0x02c8c014
02c8c004  ldp x20,x19,[sp, #0x20]
02c8c008  ldp x30,x21,[sp, #0x10]
02c8c00c  add sp,sp,#0x30
02c8c010  ret
02c8c014  ldr x0,[x21]
02c8c018  ldr w8,[x0, #0xe4]
02c8c01c  cbnz w8,0x02c8c028
02c8c020  bl 0x029f5bd0
02c8c024  ldr x0,[x21]
02c8c028  ldr x8,[x0, #0xb8]
02c8c02c  ldr x0,[x8]
02c8c030  cbz x0,0x02c8c1e4
02c8c034  ldr w1,[x19, #0x20]
02c8c038  bl 0x02c8b4e4
02c8c03c  tbz w0,#0x0,0x02c8c0dc
02c8c040  adrp x8,0x5e5d000
02c8c044  ldr x8,[x8, #0xd40]
02c8c048  ldr x8,[x8]
02c8c04c  ldr x8,[x8, #0xb8]
02c8c050  ldr x0,[x8]
02c8c054  cbz x0,0x02c8c1e4
02c8c058  mov x1,xzr
02c8c05c  bl 0x02c6a234
02c8c060  tbz w0,#0x0,0x02c8c13c
02c8c064  adrp x20,0x5e5d000
02c8c068  ldr x20,[x20, #0x920]
02c8c06c  ldr x0,[x20]
02c8c070  ldr w8,[x0, #0xe4]
02c8c074  cbnz w8,0x02c8c07c
02c8c078  bl 0x029f5bd0
02c8c07c  adrp x21,0x625b000
02c8c080  ldrb w8,[x21, #0x960]
02c8c084  cbnz w8,0x02c8c09c
02c8c088  adrp x0,0x5e5d000
02c8c08c  ldr x0,[x0, #0x920]
02c8c090  bl 0x029f5a50
02c8c094  mov w8,#0x1
02c8c098  strb w8,[x21, #0x960]
02c8c09c  ldr x0,[x20]
02c8c0a0  ldr w8,[x0, #0xe4]
02c8c0a4  cbnz w8,0x02c8c0b0
02c8c0a8  bl 0x029f5bd0
02c8c0ac  ldr x0,[x20]
02c8c0b0  ldr x8,[x0, #0xb8]
02c8c0b4  ldr x0,[x8]
02c8c0b8  cbz x0,0x02c8c1e4
02c8c0bc  adrp x8,0x5e5d000
02c8c0c0  ldr x8,[x8, #0x958]
02c8c0c4  ldr w1,[x19, #0x20]
02c8c0c8  ldp x20,x19,[sp, #0x20]
02c8c0cc  ldp x30,x21,[sp, #0x10]
02c8c0d0  ldr x2,[x8]
02c8c0d4  add sp,sp,#0x30
02c8c0d8  b 0x02c8c1e8
02c8c0dc  adrp x20,0x625b000
02c8c0e0  ldrb w8,[x20, #0xa57]
02c8c0e4  cbnz w8,0x02c8c0fc
02c8c0e8  adrp x0,0x5e5d000
02c8c0ec  ldr x0,[x0, #0xd70]
02c8c0f0  bl 0x029f5a50
02c8c0f4  mov w8,#0x1
02c8c0f8  strb w8,[x20, #0xa57]
02c8c0fc  adrp x8,0x5e5d000
02c8c100  ldr x8,[x8, #0xd70]
02c8c104  ldr x8,[x8]
02c8c108  ldr x8,[x8, #0xb8]
02c8c10c  ldr x0,[x8]
02c8c110  cbz x0,0x02c8c1e4
02c8c114  fmov s0,0x3f800000
02c8c118  mov w1,#0x5
02c8c11c  mov x2,xzr
02c8c120  mov x3,xzr
02c8c124  bl 0x02c1f10c
02c8c128  mov x0,x19
02c8c12c  ldp x20,x19,[sp, #0x20]
02c8c130  ldp x30,x21,[sp, #0x10]
02c8c134  add sp,sp,#0x30
02c8c138  b 0x02c8bcd4
02c8c13c  adrp x8,0x5e5e000
02c8c140  ldr x8,[x8, #0x528]
02c8c144  ldr x0,[x8]
02c8c148  ldr w8,[x0, #0xe4]
02c8c14c  cbnz w8,0x02c8c154
02c8c150  bl 0x029f5bd0
02c8c154  adrp x8,0x5e5e000
02c8c158  mov w2,wzr
02c8c15c  mov w4,wzr
02c8c160  ldr x8,[x8, #0x7a0]
02c8c164  mov x5,xzr
02c8c168  mov x6,xzr
02c8c16c  mov w1,#0x1
02c8c170  mov w3,#0x1
02c8c174  mov w7,#0x1
02c8c178  ldr x0,[x8]
02c8c17c  str xzr,[sp]
02c8c180  mov w19,#0x1
02c8c184  bl 0x02bccb00
02c8c188  mov x1,xzr
02c8c18c  bl 0x02c1dd54
02c8c190  adrp x20,0x625b000
02c8c194  ldrb w8,[x20, #0xa57]
02c8c198  cbnz w8,0x02c8c1ac
02c8c19c  adrp x0,0x5e5d000
02c8c1a0  ldr x0,[x0, #0xd70]
02c8c1a4  bl 0x029f5a50
02c8c1a8  strb w19,[x20, #0xa57]
02c8c1ac  adrp x8,0x5e5d000
02c8c1b0  ldr x8,[x8, #0xd70]
02c8c1b4  ldr x8,[x8]
02c8c1b8  ldr x8,[x8, #0xb8]
02c8c1bc  ldr x0,[x8]
02c8c1c0  cbz x0,0x02c8c1e4
02c8c1c4  ldp x20,x19,[sp, #0x20]
02c8c1c8  fmov s0,0x3f800000
02c8c1cc  ldp x30,x21,[sp, #0x10]
02c8c1d0  mov w1,#0x5
02c8c1d4  mov x2,xzr
02c8c1d8  mov x3,xzr
02c8c1dc  add sp,sp,#0x30
02c8c1e0  b 0x02c1f10c
02c8c1e4  bl 0x029f5cfc
