02c7a184  stp x30,x23,[sp, #-0x30]!
02c7a188  stp x22,x21,[sp, #0x10]
02c7a18c  stp x20,x19,[sp, #0x20]
02c7a190  adrp x21,0x625c000
02c7a194  mov w20,w1
02c7a198  mov x19,x0
02c7a19c  ldrb w8,[x21, #0x30f]
02c7a1a0  tbnz w8,#0x0,0x02c7a1b8
02c7a1a4  adrp x0,0x5e5d000
02c7a1a8  ldr x0,[x0, #0xd40]
02c7a1ac  bl 0x029f5a50
02c7a1b0  mov w8,#0x1
02c7a1b4  strb w8,[x21, #0x30f]
02c7a1b8  mov x0,x19
02c7a1bc  mov x1,xzr
02c7a1c0  bl 0x057dc1c8
02c7a1c4  cbz x0,0x02c7a2d4
02c7a1c8  adrp x21,0x5e5d000
02c7a1cc  mov w1,wzr
02c7a1d0  mov x2,xzr
02c7a1d4  ldr x21,[x21, #0xd40]
02c7a1d8  bl 0x057dff3c
02c7a1dc  ldr x8,[x21]
02c7a1e0  ldr x8,[x8, #0xb8]
02c7a1e4  ldr x8,[x8]
02c7a1e8  cbz x8,0x02c7a2d4
02c7a1ec  ldr x9,[x8, #0x20]
02c7a1f0  cbz x9,0x02c7a2d4
02c7a1f4  ldr w9,[x9, #0x18]
02c7a1f8  cmp w9,w20
02c7a1fc  b.ls 0x02c7a32c
02c7a200  ldr x8,[x8, #0x48]
02c7a204  cbz x8,0x02c7a2d4
02c7a208  ldr w9,[x8, #0x18]
02c7a20c  cmp w9,w20
02c7a210  b.ls 0x02c7a32c
02c7a214  ldr x0,[x19, #0x20]
02c7a218  cbz x0,0x02c7a2d4
02c7a21c  sxtw x9,w20
02c7a220  ldr x23,[x19, #0x28]
02c7a224  mov x2,xzr
02c7a228  add x8,x8,x9, LSL #0x3
02c7a22c  ldr x22,[x8, #0x20]
02c7a230  mov x1,x22
02c7a234  bl 0x058d34cc
02c7a238  cbz x23,0x02c7a2d4
02c7a23c  mov w8,#0x6667
02c7a240  mov x0,x23
02c7a244  mov x1,x22
02c7a248  movk w8,#0x6666, LSL #16
02c7a24c  mov x2,xzr
02c7a250  smull x8,w20,w8
02c7a254  lsr x9,x8,#0x20
02c7a258  lsr x8,x8,#0x3f
02c7a25c  add w21,w8,w9, ASR #0x1
02c7a260  bl 0x058d34cc
02c7a264  ldr x22,[x19, #0x30]
02c7a268  mov w0,w21
02c7a26c  mov x1,xzr
02c7a270  bl 0x02c5b234
02c7a274  cbz x22,0x02c7a2d4
02c7a278  ldr x8,[x22]
02c7a27c  mov x0,x22
02c7a280  ldr x9,[x8, #0x2a8]
02c7a284  ldr x1,[x8, #0x2b0]
02c7a288  blr x9
02c7a28c  ldr x8,[x19, #0x38]
02c7a290  cbz x8,0x02c7a2d4
02c7a294  mov x22,xzr
02c7a298  ldr w9,[x8, #0x18]
02c7a29c  cmp w22,w9
02c7a2a0  b.ge 0x02c7a2d8
02c7a2a4  cmp w22,w9
02c7a2a8  b.cs 0x02c7a32c
02c7a2ac  add x8,x8,x22, LSL #0x3
02c7a2b0  ldr x0,[x8, #0x20]
02c7a2b4  cbz x0,0x02c7a2d4
02c7a2b8  cmp w21,w22
02c7a2bc  mov x2,xzr
02c7a2c0  cset w1,eq
02c7a2c4  bl 0x057dff3c
02c7a2c8  ldr x8,[x19, #0x38]
02c7a2cc  add x22,x22,#0x1
02c7a2d0  cbnz x8,0x02c7a298
02c7a2d4  bl 0x029f5cfc
02c7a2d8  ldr x21,[x19, #0x40]
02c7a2dc  mov w0,w20
02c7a2e0  mov x1,xzr
02c7a2e4  bl 0x02c5b2ac
02c7a2e8  cbz x21,0x02c7a2d4
02c7a2ec  ldr x8,[x21]
02c7a2f0  mov x1,x0
02c7a2f4  mov x0,x21
02c7a2f8  ldr x9,[x8, #0x558]
02c7a2fc  ldr x2,[x8, #0x560]
02c7a300  blr x9
02c7a304  mov x0,x19
02c7a308  mov x1,xzr
02c7a30c  bl 0x057dc1c8
02c7a310  cbz x0,0x02c7a2d4
02c7a314  ldp x20,x19,[sp, #0x20]
02c7a318  mov w1,#0x1
02c7a31c  ldp x22,x21,[sp, #0x10]
02c7a320  mov x2,xzr
02c7a324  ldp x30,x23,[sp], #0x30
02c7a328  b 0x057dff3c
02c7a32c  bl 0x029f5d04
