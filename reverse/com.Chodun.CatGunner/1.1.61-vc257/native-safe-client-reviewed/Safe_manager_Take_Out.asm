02c6c118  stp x30,x25,[sp, #-0x40]!
02c6c11c  stp x24,x23,[sp, #0x10]
02c6c120  stp x22,x21,[sp, #0x20]
02c6c124  stp x20,x19,[sp, #0x30]
02c6c128  adrp x19,0x625c000
02c6c12c  adrp x20,0x5e5d000
02c6c130  adrp x23,0x5e59000
02c6c134  ldrb w8,[x19, #0x293]
02c6c138  ldr x20,[x20, #0xd40]
02c6c13c  ldr x23,[x23, #0x1c0]
02c6c140  mov w21,w1
02c6c144  mov x22,x0
02c6c148  tbnz w8,#0x0,0x02c6c178
02c6c14c  adrp x0,0x5e5d000
02c6c150  ldr x0,[x0, #0xd40]
02c6c154  bl 0x029f5a50
02c6c158  adrp x0,0x5e59000
02c6c15c  ldr x0,[x0, #0x1c0]
02c6c160  bl 0x029f5a50
02c6c164  adrp x0,0x5e63000
02c6c168  ldr x0,[x0, #0xa78]
02c6c16c  bl 0x029f5a50
02c6c170  mov w8,#0x1
02c6c174  strb w8,[x19, #0x293]
02c6c178  ldr x8,[x20]
02c6c17c  ldr x0,[x23]
02c6c180  ldr x8,[x8, #0xb8]
02c6c184  ldr w9,[x0, #0xe4]
02c6c188  ldr x19,[x8]
02c6c18c  cbnz w9,0x02c6c194
02c6c190  bl 0x029f5bd0
02c6c194  mov x0,x19
02c6c198  mov x1,xzr
02c6c19c  mov x2,xzr
02c6c1a0  bl 0x057e14b4
02c6c1a4  cmp w21,#0xf
02c6c1a8  mov w20,#0xffffffff
02c6c1ac  b.hi 0x02c6c33c
02c6c1b0  tbnz w0,#0x0,0x02c6c33c
02c6c1b4  ldr x8,[x22, #0x20]
02c6c1b8  cbz x8,0x02c6c354
02c6c1bc  ldr w9,[x8, #0x18]
02c6c1c0  cmp w9,w21
02c6c1c4  b.ls 0x02c6c358
02c6c1c8  mov w24,w21
02c6c1cc  add x8,x8,x24, LSL #0x2
02c6c1d0  ldr w25,[x8, #0x20]
02c6c1d4  cmn w25,#0x1
02c6c1d8  b.eq 0x02c6c33c
02c6c1dc  cbz x19,0x02c6c354
02c6c1e0  mov x0,x19
02c6c1e4  bl 0x02c67de0
02c6c1e8  cmn w0,#0x1
02c6c1ec  b.eq 0x02c6c2d4
02c6c1f0  ldr x8,[x19, #0x40]
02c6c1f4  cbz x8,0x02c6c354
02c6c1f8  ldr w9,[x8, #0x18]
02c6c1fc  mov w20,w0
02c6c200  cmp w0,w9
02c6c204  b.cs 0x02c6c358
02c6c208  add x8,x8,w20, SXTW  #0x2
02c6c20c  mov x0,x19
02c6c210  mov w1,w20
02c6c214  mov w2,#0x1
02c6c218  str w25,[x8, #0x20]
02c6c21c  bl 0x02c6802c
02c6c220  ldr x8,[x22, #0x20]
02c6c224  cbz x8,0x02c6c354
02c6c228  ldr w9,[x8, #0x18]
02c6c22c  cmp w9,w21
02c6c230  b.ls 0x02c6c358
02c6c234  adrp x21,0x625b000
02c6c238  add x8,x8,x24, LSL #0x2
02c6c23c  mov w10,#0xffffffff
02c6c240  ldrb w9,[x21, #0xa57]
02c6c244  str w10,[x8, #0x20]
02c6c248  cbnz w9,0x02c6c260
02c6c24c  adrp x0,0x5e5d000
02c6c250  ldr x0,[x0, #0xd70]
02c6c254  bl 0x029f5a50
02c6c258  mov w8,#0x1
02c6c25c  strb w8,[x21, #0xa57]
02c6c260  adrp x8,0x5e5d000
02c6c264  ldr x8,[x8, #0xd70]
02c6c268  ldr x8,[x8]
02c6c26c  ldr x8,[x8, #0xb8]
02c6c270  ldr x0,[x8]
02c6c274  cbz x0,0x02c6c354
02c6c278  fmov s0,0x3f800000
02c6c27c  mov w1,#0xd
02c6c280  mov x2,xzr
02c6c284  mov x3,xzr
02c6c288  bl 0x02c1f10c
02c6c28c  mov x0,x19
02c6c290  bl 0x02c6841c
02c6c294  ldr x0,[x23]
02c6c298  ldr x21,[x19, #0x58]
02c6c29c  ldr w8,[x0, #0xe4]
02c6c2a0  cbnz w8,0x02c6c2a8
02c6c2a4  bl 0x029f5bd0
02c6c2a8  mov x0,x21
02c6c2ac  mov x1,xzr
02c6c2b0  mov x2,xzr
02c6c2b4  bl 0x057dfa70
02c6c2b8  tbz w0,#0x0,0x02c6c33c
02c6c2bc  ldr x0,[x19, #0x58]
02c6c2c0  cbz x0,0x02c6c354
02c6c2c4  mov w1,w20
02c6c2c8  mov x2,xzr
02c6c2cc  bl 0x02c761fc
02c6c2d0  b 0x02c6c33c
02c6c2d4  adrp x8,0x5e63000
02c6c2d8  ldr x8,[x8, #0xa78]
02c6c2dc  ldr x0,[x8]
02c6c2e0  bl 0x02c68dbc
02c6c2e4  mov x1,xzr
02c6c2e8  bl 0x02c1dd54
02c6c2ec  adrp x19,0x625b000
02c6c2f0  ldrb w8,[x19, #0xa57]
02c6c2f4  cbnz w8,0x02c6c30c
02c6c2f8  adrp x0,0x5e5d000
02c6c2fc  ldr x0,[x0, #0xd70]
02c6c300  bl 0x029f5a50
02c6c304  mov w8,#0x1
02c6c308  strb w8,[x19, #0xa57]
02c6c30c  adrp x8,0x5e5d000
02c6c310  ldr x8,[x8, #0xd70]
02c6c314  ldr x8,[x8]
02c6c318  ldr x8,[x8, #0xb8]
02c6c31c  ldr x0,[x8]
02c6c320  cbz x0,0x02c6c354
02c6c324  fmov s0,0x3f800000
02c6c328  mov w1,#0x5
02c6c32c  mov x2,xzr
02c6c330  mov x3,xzr
02c6c334  bl 0x02c1f10c
02c6c338  mov w20,#0xffffffff
02c6c33c  mov w0,w20
02c6c340  ldp x20,x19,[sp, #0x30]
02c6c344  ldp x22,x21,[sp, #0x20]
02c6c348  ldp x24,x23,[sp, #0x10]
02c6c34c  ldp x30,x25,[sp], #0x40
02c6c350  ret
02c6c354  bl 0x029f5cfc
02c6c358  bl 0x029f5d04
