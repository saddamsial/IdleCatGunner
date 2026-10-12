02c38be8  str d10,[sp, #-0x30]!
02c38bec  stp d9,d8,[sp, #0x8]
02c38bf0  str x30,[sp, #0x18]
02c38bf4  stp x20,x19,[sp, #0x20]
02c38bf8  fmov s8,s2
02c38bfc  fmov s9,s1
02c38c00  adrp x20,0x625c000
02c38c04  fmov s10,s0
02c38c08  adrp x19,0x5e63000
02c38c0c  ldrb w8,[x20, #0x86]
02c38c10  ldr x19,[x19, #0x1d8]
02c38c14  tbnz w8,#0x0,0x02c38c2c
02c38c18  adrp x0,0x5e63000
02c38c1c  ldr x0,[x0, #0x1d8]
02c38c20  bl 0x029f5a50
02c38c24  mov w8,#0x1
02c38c28  strb w8,[x20, #0x86]
02c38c2c  ldr x0,[x19]
02c38c30  ldr w8,[x0, #0xe4]
02c38c34  cbnz w8,0x02c38c40
02c38c38  bl 0x029f5bd0
02c38c3c  ldr x0,[x19]
02c38c40  ldr x8,[x0, #0xb8]
02c38c44  fmov s4,s10
02c38c48  fmov s5,s9
02c38c4c  fmov s6,s8
02c38c50  mov x0,xzr
02c38c54  ldp s0,s1,[x8, #0x44]
02c38c58  ldp s2,s3,[x8, #0x4c]
02c38c5c  bl 0x057cdb04
02c38c60  fmul s1,s2,s2
02c38c64  adrp x8,0x116c000
02c38c68  fmul s0,s0,s0
02c38c6c  ldr s2,[x8, #0x1b8]
02c38c70  adrp x8,0x116c000
02c38c74  fmul s1,s1,s2
02c38c78  fmul s1,s1,s2
02c38c7c  fadd s0,s0,s1
02c38c80  fsqrt s8,s0
02c38c84  ldr s0,[x8, #0x200]
02c38c88  fcmp s8,s0
02c38c8c  fmov s0,0x3f800000
02c38c90  b.mi 0x02c38cbc
02c38c94  ldr x0,[x19]
02c38c98  ldr w8,[x0, #0xe4]
02c38c9c  cbnz w8,0x02c38ca8
02c38ca0  bl 0x029f5bd0
02c38ca4  ldr x0,[x19]
02c38ca8  ldr x8,[x0, #0xb8]
02c38cac  fmov s0,0x3f800000
02c38cb0  ldr s1,[x8, #0x60]
02c38cb4  fdiv s0,s0,s1
02c38cb8  fdiv s0,s0,s8
02c38cbc  ldp x20,x19,[sp, #0x20]
02c38cc0  ldr x30,[sp, #0x18]
02c38cc4  ldp d9,d8,[sp, #0x8]
02c38cc8  ldr d10,[sp], #0x30
02c38ccc  ret
