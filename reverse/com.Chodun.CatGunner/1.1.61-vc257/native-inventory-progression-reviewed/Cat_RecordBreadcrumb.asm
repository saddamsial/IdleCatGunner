02c3a678  stp d13,d12,[sp, #-0x50]!
02c3a67c  stp d11,d10,[sp, #0x10]
02c3a680  stp d9,d8,[sp, #0x20]
02c3a684  stp x30,x21,[sp, #0x30]
02c3a688  stp x20,x19,[sp, #0x40]
02c3a68c  adrp x20,0x625c000
02c3a690  mov x19,x0
02c3a694  ldrb w8,[x20, #0x99]
02c3a698  tbnz w8,#0x0,0x02c3a6d4
02c3a69c  adrp x0,0x5e63000
02c3a6a0  ldr x0,[x0, #0x1d8]
02c3a6a4  bl 0x029f5a50
02c3a6a8  adrp x0,0x5e63000
02c3a6ac  ldr x0,[x0, #0x1f0]
02c3a6b0  bl 0x029f5a50
02c3a6b4  adrp x0,0x5e63000
02c3a6b8  ldr x0,[x0, #0x1f8]
02c3a6bc  bl 0x029f5a50
02c3a6c0  adrp x0,0x5e63000
02c3a6c4  ldr x0,[x0, #0x200]
02c3a6c8  bl 0x029f5a50
02c3a6cc  mov w8,#0x1
02c3a6d0  strb w8,[x20, #0x99]
02c3a6d4  mov x0,x19
02c3a6d8  mov x1,xzr
02c3a6dc  bl 0x057dc0f8
02c3a6e0  cbz x0,0x02c3a8cc
02c3a6e4  adrp x21,0x5e63000
02c3a6e8  mov x1,xzr
02c3a6ec  ldr x21,[x21, #0x1d8]
02c3a6f0  bl 0x057eed98
02c3a6f4  fmov s8,s0
02c3a6f8  fmov s9,s1
02c3a6fc  ldr x0,[x21]
02c3a700  fmov s10,s2
02c3a704  ldr w8,[x0, #0xe4]
02c3a708  cbnz w8,0x02c3a714
02c3a70c  bl 0x029f5bd0
02c3a710  ldr x0,[x21]
02c3a714  ldr x8,[x0, #0xb8]
02c3a718  adrp x20,0x625c000
02c3a71c  ldrb w9,[x20, #0xbe]
02c3a720  ldp s11,s13,[x8, #0x8]
02c3a724  ldr s12,[x8, #0x10]
02c3a728  cbnz w9,0x02c3a740
02c3a72c  adrp x0,0x5e59000
02c3a730  ldr x0,[x0]
02c3a734  bl 0x029f5a50
02c3a738  mov w8,#0x1
02c3a73c  strb w8,[x20, #0xbe]
02c3a740  adrp x8,0x5e59000
02c3a744  ldr x8,[x8]
02c3a748  ldr x0,[x8]
02c3a74c  ldr w8,[x0, #0xe4]
02c3a750  cbnz w8,0x02c3a758
02c3a754  bl 0x029f5bd0
02c3a758  fsub s0,s9,s13
02c3a75c  fsub s1,s8,s11
02c3a760  fsub s2,s10,s12
02c3a764  fmul s1,s1,s1
02c3a768  fmul s0,s0,s0
02c3a76c  fadd s0,s1,s0
02c3a770  fmul s1,s2,s2
02c3a774  fadd s0,s1,s0
02c3a778  fmov s1,0x3f000000
02c3a77c  fsqrt s0,s0
02c3a780  fcmp s0,s1
02c3a784  b.mi 0x02c3a8b4
02c3a788  ldr x0,[x21]
02c3a78c  ldr w8,[x0, #0xe4]
02c3a790  cbnz w8,0x02c3a79c
02c3a794  bl 0x029f5bd0
02c3a798  ldr x0,[x21]
02c3a79c  ldr x8,[x0, #0xb8]
02c3a7a0  mov x0,x19
02c3a7a4  mov x1,xzr
02c3a7a8  ldr x20,[x8]
02c3a7ac  bl 0x057dc0f8
02c3a7b0  cbz x0,0x02c3a8cc
02c3a7b4  mov x1,xzr
02c3a7b8  bl 0x057eed98
02c3a7bc  cbz x20,0x02c3a8cc
02c3a7c0  adrp x9,0x5e63000
02c3a7c4  ldr x9,[x9, #0x1f0]
02c3a7c8  ldr w10,[x20, #0x1c]
02c3a7cc  ldr x8,[x20, #0x10]
02c3a7d0  ldr x9,[x9]
02c3a7d4  add w10,w10,#0x1
02c3a7d8  str w10,[x20, #0x1c]
02c3a7dc  cbz x8,0x02c3a8cc
02c3a7e0  ldrsw x10,[x20, #0x18]
02c3a7e4  ldr w11,[x8, #0x18]
02c3a7e8  cmp w10,w11
02c3a7ec  b.cs 0x02c3a80c
02c3a7f0  mov w9,#0xc
02c3a7f4  smaddl x8,w10,w9,x8
02c3a7f8  add w9,w10,#0x1
02c3a7fc  str w9,[x20, #0x18]
02c3a800  stp s0,s1,[x8, #0x20]
02c3a804  str s2,[x8, #0x28]
02c3a808  b 0x02c3a820
02c3a80c  ldr x8,[x9, #0x20]
02c3a810  mov x0,x20
02c3a814  ldr x8,[x8, #0xc0]
02c3a818  ldr x1,[x8, #0x70]
02c3a81c  bl 0x045a72a8
02c3a820  ldr x8,[x21]
02c3a824  ldr x9,[x8, #0xb8]
02c3a828  ldr x0,[x9]
02c3a82c  cbz x0,0x02c3a8cc
02c3a830  ldr w9,[x0, #0x18]
02c3a834  cmp w9,#0x65
02c3a838  b.lt 0x02c3a870
02c3a83c  ldr w9,[x8, #0xe4]
02c3a840  cbnz w9,0x02c3a85c
02c3a844  mov x0,x8
02c3a848  bl 0x029f5bd0
02c3a84c  ldr x8,[x21]
02c3a850  ldr x8,[x8, #0xb8]
02c3a854  ldr x0,[x8]
02c3a858  cbz x0,0x02c3a8cc
02c3a85c  adrp x8,0x5e63000
02c3a860  mov w1,wzr
02c3a864  ldr x8,[x8, #0x1f8]
02c3a868  ldr x2,[x8]
02c3a86c  bl 0x045a8b00
02c3a870  mov x0,x19
02c3a874  mov x1,xzr
02c3a878  bl 0x057dc0f8
02c3a87c  cbz x0,0x02c3a8cc
02c3a880  mov x1,xzr
02c3a884  bl 0x057eed98
02c3a888  fmov s8,s0
02c3a88c  fmov s9,s1
02c3a890  ldr x0,[x21]
02c3a894  fmov s10,s2
02c3a898  ldr w8,[x0, #0xe4]
02c3a89c  cbnz w8,0x02c3a8a8
02c3a8a0  bl 0x029f5bd0
02c3a8a4  ldr x0,[x21]
02c3a8a8  ldr x8,[x0, #0xb8]
02c3a8ac  stp s8,s9,[x8, #0x8]
02c3a8b0  str s10,[x8, #0x10]
02c3a8b4  ldp x20,x19,[sp, #0x40]
02c3a8b8  ldp x30,x21,[sp, #0x30]
02c3a8bc  ldp d9,d8,[sp, #0x20]
02c3a8c0  ldp d11,d10,[sp, #0x10]
02c3a8c4  ldp d13,d12,[sp], #0x50
02c3a8c8  ret
02c3a8cc  bl 0x029f5cfc
