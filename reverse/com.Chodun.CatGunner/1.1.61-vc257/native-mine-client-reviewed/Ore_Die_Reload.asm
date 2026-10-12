02c4c1b0  str d10,[sp, #-0x50]!
02c4c1b4  stp d9,d8,[sp, #0x10]
02c4c1b8  stp x30,x23,[sp, #0x20]
02c4c1bc  stp x22,x21,[sp, #0x30]
02c4c1c0  stp x20,x19,[sp, #0x40]
02c4c1c4  adrp x20,0x625c000
02c4c1c8  adrp x21,0x5e5d000
02c4c1cc  mov x19,x0
02c4c1d0  ldrb w8,[x20, #0x12b]
02c4c1d4  ldr x21,[x21, #0x338]
02c4c1d8  tbnz w8,#0x0,0x02c4c220
02c4c1dc  adrp x0,0x5e5d000
02c4c1e0  ldr x0,[x0, #0x338]
02c4c1e4  bl 0x029f5a50
02c4c1e8  adrp x0,0x5e5d000
02c4c1ec  ldr x0,[x0, #0xd48]
02c4c1f0  bl 0x029f5a50
02c4c1f4  adrp x0,0x5e62000
02c4c1f8  ldr x0,[x0, #0x148]
02c4c1fc  bl 0x029f5a50
02c4c200  adrp x0,0x5e63000
02c4c204  ldr x0,[x0, #0x470]
02c4c208  bl 0x029f5a50
02c4c20c  adrp x0,0x5e63000
02c4c210  ldr x0,[x0, #0x478]
02c4c214  bl 0x029f5a50
02c4c218  mov w8,#0x1
02c4c21c  strb w8,[x20, #0x12b]
02c4c220  ldr x0,[x21]
02c4c224  ldr w8,[x0, #0xe4]
02c4c228  cbnz w8,0x02c4c234
02c4c22c  bl 0x029f5bd0
02c4c230  ldr x0,[x21]
02c4c234  ldr x8,[x0, #0xb8]
02c4c238  ldrb w8,[x8]
02c4c23c  cbz w8,0x02c4c32c
02c4c240  ldr x0,[x19, #0x30]
02c4c244  cbz x0,0x02c4c344
02c4c248  adrp x8,0x5e62000
02c4c24c  mov x1,xzr
02c4c250  ldr x8,[x8, #0x148]
02c4c254  ldr x8,[x8]
02c4c258  ldr x8,[x8, #0xb8]
02c4c25c  ldr x20,[x8, #0x8]
02c4c260  bl 0x057eed98
02c4c264  cbz x20,0x02c4c344
02c4c268  adrp x22,0x5e63000
02c4c26c  adrp x23,0x5e63000
02c4c270  mov x0,x20
02c4c274  ldr x22,[x22, #0x478]
02c4c278  ldr x23,[x23, #0x470]
02c4c27c  mov w1,#0x5
02c4c280  mov x2,xzr
02c4c284  bl 0x02c0b844
02c4c288  ldr w8,[x19, #0x20]
02c4c28c  ldr x0,[x19, #0x30]
02c4c290  cmp w8,#0x1
02c4c294  csel x8,x22,x23,eq
02c4c298  cbz x0,0x02c4c344
02c4c29c  adrp x22,0x5e5d000
02c4c2a0  mov x1,xzr
02c4c2a4  ldr x22,[x22, #0xd48]
02c4c2a8  ldr x20,[x8]
02c4c2ac  bl 0x057eed98
02c4c2b0  fmov s8,s0
02c4c2b4  fmov s9,s1
02c4c2b8  ldr x0,[x21]
02c4c2bc  fmov s10,s2
02c4c2c0  ldr w8,[x0, #0xe4]
02c4c2c4  cbnz w8,0x02c4c2cc
02c4c2c8  bl 0x029f5bd0
02c4c2cc  fmov s0,s8
02c4c2d0  fmov s1,s9
02c4c2d4  mov x0,x20
02c4c2d8  fmov s2,s10
02c4c2dc  mov x1,xzr
02c4c2e0  bl 0x02b807fc
02c4c2e4  ldr x8,[x22]
02c4c2e8  ldr x8,[x8, #0xb8]
02c4c2ec  ldr x0,[x8]
02c4c2f0  cbz x0,0x02c4c344
02c4c2f4  mov x1,x19
02c4c2f8  bl 0x02c4a66c
02c4c2fc  mov x0,x19
02c4c300  mov x1,xzr
02c4c304  bl 0x057dc1c8
02c4c308  cbz x0,0x02c4c344
02c4c30c  ldp x20,x19,[sp, #0x40]
02c4c310  mov w1,wzr
02c4c314  ldp x22,x21,[sp, #0x30]
02c4c318  mov x2,xzr
02c4c31c  ldp x30,x23,[sp, #0x20]
02c4c320  ldp d9,d8,[sp, #0x10]
02c4c324  ldr d10,[sp], #0x50
02c4c328  b 0x057dff3c
02c4c32c  ldp x20,x19,[sp, #0x40]
02c4c330  ldp x22,x21,[sp, #0x30]
02c4c334  ldp x30,x23,[sp, #0x20]
02c4c338  ldp d9,d8,[sp, #0x10]
02c4c33c  ldr d10,[sp], #0x50
02c4c340  ret
02c4c344  bl 0x029f5cfc
