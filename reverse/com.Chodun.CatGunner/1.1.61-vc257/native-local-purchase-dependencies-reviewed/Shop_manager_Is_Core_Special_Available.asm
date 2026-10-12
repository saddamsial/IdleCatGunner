02c8a0dc  str x30,[sp, #-0x20]!
02c8a0e0  stp x20,x19,[sp, #0x10]
02c8a0e4  adrp x20,0x625c000
02c8a0e8  mov w19,w1
02c8a0ec  ldrb w8,[x20, #0x42b]
02c8a0f0  tbnz w8,#0x0,0x02c8a12c
02c8a0f4  adrp x0,0x5e59000
02c8a0f8  ldr x0,[x0, #0x7d0]
02c8a0fc  bl 0x029f5a50
02c8a100  adrp x0,0x5e5d000
02c8a104  ldr x0,[x0, #0x920]
02c8a108  bl 0x029f5a50
02c8a10c  adrp x0,0x5e5a000
02c8a110  ldr x0,[x0, #0x180]
02c8a114  bl 0x029f5a50
02c8a118  adrp x0,0x5e5d000
02c8a11c  ldr x0,[x0, #0x3c0]
02c8a120  bl 0x029f5a50
02c8a124  mov w8,#0x1
02c8a128  strb w8,[x20, #0x42b]
02c8a12c  cmp w19,#0x6
02c8a130  b.eq 0x02c8a244
02c8a134  cmp w19,#0x5
02c8a138  b.eq 0x02c8a1e8
02c8a13c  cmp w19,#0x4
02c8a140  b.ne 0x02c8a2fc
02c8a144  adrp x8,0x5e5d000
02c8a148  ldr x8,[x8, #0x3c0]
02c8a14c  ldr x0,[x8]
02c8a150  ldr w8,[x0, #0xe4]
02c8a154  cbnz w8,0x02c8a15c
02c8a158  bl 0x029f5bd0
02c8a15c  mov x0,xzr
02c8a160  bl 0x02c25b48
02c8a164  adrp x20,0x5e5d000
02c8a168  mov x19,x0
02c8a16c  ldr x20,[x20, #0x920]
02c8a170  ldr x8,[x20]
02c8a174  ldr w9,[x8, #0xe4]
02c8a178  cbnz w9,0x02c8a188
02c8a17c  mov x0,x8
02c8a180  bl 0x029f5bd0
02c8a184  ldr x8,[x20]
02c8a188  adrp x9,0x5e59000
02c8a18c  ldr x9,[x9, #0x7d0]
02c8a190  ldr x8,[x8, #0xb8]
02c8a194  ldr x0,[x9]
02c8a198  ldr x20,[x8, #0x10]
02c8a19c  ldr w9,[x0, #0xe4]
02c8a1a0  cbnz w9,0x02c8a1a8
02c8a1a4  bl 0x029f5bd0
02c8a1a8  mov x0,x19
02c8a1ac  mov x1,x20
02c8a1b0  mov x2,xzr
02c8a1b4  bl 0x048330d0
02c8a1b8  adrp x8,0x5e5a000
02c8a1bc  mov x19,x0
02c8a1c0  ldr x8,[x8, #0x180]
02c8a1c4  ldr x8,[x8]
02c8a1c8  ldr w9,[x8, #0xe4]
02c8a1cc  cbnz w9,0x02c8a1d8
02c8a1d0  mov x0,x8
02c8a1d4  bl 0x029f5bd0
02c8a1d8  fmov d0,0x4038000000000000
02c8a1dc  mov x0,xzr
02c8a1e0  bl 0x048685b4
02c8a1e4  b 0x02c8a2e4
02c8a1e8  adrp x8,0x5e5d000
02c8a1ec  ldr x8,[x8, #0x3c0]
02c8a1f0  ldr x0,[x8]
02c8a1f4  ldr w8,[x0, #0xe4]
02c8a1f8  cbnz w8,0x02c8a200
02c8a1fc  bl 0x029f5bd0
02c8a200  mov x0,xzr
02c8a204  bl 0x02c25b48
02c8a208  adrp x20,0x5e5d000
02c8a20c  mov x19,x0
02c8a210  ldr x20,[x20, #0x920]
02c8a214  ldr x8,[x20]
02c8a218  ldr w9,[x8, #0xe4]
02c8a21c  cbnz w9,0x02c8a22c
02c8a220  mov x0,x8
02c8a224  bl 0x029f5bd0
02c8a228  ldr x8,[x20]
02c8a22c  adrp x9,0x5e59000
02c8a230  ldr x9,[x9, #0x7d0]
02c8a234  ldr x8,[x8, #0xb8]
02c8a238  ldr x0,[x9]
02c8a23c  ldr x20,[x8, #0x18]
02c8a240  b 0x02c8a29c
02c8a244  adrp x8,0x5e5d000
02c8a248  ldr x8,[x8, #0x3c0]
02c8a24c  ldr x0,[x8]
02c8a250  ldr w8,[x0, #0xe4]
02c8a254  cbnz w8,0x02c8a25c
02c8a258  bl 0x029f5bd0
02c8a25c  mov x0,xzr
02c8a260  bl 0x02c25b48
02c8a264  adrp x20,0x5e5d000
02c8a268  mov x19,x0
02c8a26c  ldr x20,[x20, #0x920]
02c8a270  ldr x8,[x20]
02c8a274  ldr w9,[x8, #0xe4]
02c8a278  cbnz w9,0x02c8a288
02c8a27c  mov x0,x8
02c8a280  bl 0x029f5bd0
02c8a284  ldr x8,[x20]
02c8a288  adrp x9,0x5e59000
02c8a28c  ldr x9,[x9, #0x7d0]
02c8a290  ldr x8,[x8, #0xb8]
02c8a294  ldr x0,[x9]
02c8a298  ldr x20,[x8, #0x20]
02c8a29c  ldr w9,[x0, #0xe4]
02c8a2a0  cbnz w9,0x02c8a2a8
02c8a2a4  bl 0x029f5bd0
02c8a2a8  mov x0,x19
02c8a2ac  mov x1,x20
02c8a2b0  mov x2,xzr
02c8a2b4  bl 0x048330d0
02c8a2b8  adrp x8,0x5e5a000
02c8a2bc  mov x19,x0
02c8a2c0  ldr x8,[x8, #0x180]
02c8a2c4  ldr x8,[x8]
02c8a2c8  ldr w9,[x8, #0xe4]
02c8a2cc  cbnz w9,0x02c8a2d8
02c8a2d0  mov x0,x8
02c8a2d4  bl 0x029f5bd0
02c8a2d8  fmov d0,0x401c000000000000
02c8a2dc  mov x0,xzr
02c8a2e0  bl 0x048683c8
02c8a2e4  mov x1,x0
02c8a2e8  mov x0,x19
02c8a2ec  mov x2,xzr
02c8a2f0  ldp x20,x19,[sp, #0x10]
02c8a2f4  ldr x30,[sp], #0x20
02c8a2f8  b 0x04868df0
02c8a2fc  ldp x20,x19,[sp, #0x10]
02c8a300  mov w0,#0x1
02c8a304  ldr x30,[sp], #0x20
02c8a308  ret
