02c5c164  str x30,[sp, #-0x20]!
02c5c168  stp x20,x19,[sp, #0x10]
02c5c16c  adrp x20,0x625c000
02c5c170  mov w19,w0
02c5c174  ldrb w8,[x20, #0x27b]
02c5c178  tbnz w8,#0x0,0x02c5c190
02c5c17c  adrp x0,0x5e59000
02c5c180  ldr x0,[x0, #0x50]
02c5c184  bl 0x029f5a50
02c5c188  mov w8,#0x1
02c5c18c  strb w8,[x20, #0x27b]
02c5c190  cmp w19,#0x2
02c5c194  b.le 0x02c5c1c0
02c5c198  cmp w19,#0x4
02c5c19c  b.gt 0x02c5c1e4
02c5c1a0  cmp w19,#0x3
02c5c1a4  b.eq 0x02c5c22c
02c5c1a8  cmp w19,#0x4
02c5c1ac  b.ne 0x02c5c214
02c5c1b0  ldp x20,x19,[sp, #0x10]
02c5c1b4  mov x0,xzr
02c5c1b8  ldr x30,[sp], #0x20
02c5c1bc  b 0x02be0478
02c5c1c0  cbz w19,0x02c5c204
02c5c1c4  cmp w19,#0x1
02c5c1c8  b.eq 0x02c5c24c
02c5c1cc  cmp w19,#0x2
02c5c1d0  b.ne 0x02c5c214
02c5c1d4  ldp x20,x19,[sp, #0x10]
02c5c1d8  mov x0,xzr
02c5c1dc  ldr x30,[sp], #0x20
02c5c1e0  b 0x02be07d8
02c5c1e4  cmp w19,#0x5
02c5c1e8  b.eq 0x02c5c23c
02c5c1ec  cmp w19,#0x6
02c5c1f0  b.ne 0x02c5c214
02c5c1f4  ldp x20,x19,[sp, #0x10]
02c5c1f8  mov x0,xzr
02c5c1fc  ldr x30,[sp], #0x20
02c5c200  b 0x02be0358
02c5c204  ldp x20,x19,[sp, #0x10]
02c5c208  mov x0,xzr
02c5c20c  ldr x30,[sp], #0x20
02c5c210  b 0x02be0a18
02c5c214  adrp x8,0x5e59000
02c5c218  ldr x8,[x8, #0x50]
02c5c21c  ldp x20,x19,[sp, #0x10]
02c5c220  ldr x0,[x8]
02c5c224  ldr x30,[sp], #0x20
02c5c228  ret
02c5c22c  ldp x20,x19,[sp, #0x10]
02c5c230  mov x0,xzr
02c5c234  ldr x30,[sp], #0x20
02c5c238  b 0x02be08f8
02c5c23c  ldp x20,x19,[sp, #0x10]
02c5c240  mov x0,xzr
02c5c244  ldr x30,[sp], #0x20
02c5c248  b 0x02be06b8
02c5c24c  ldp x20,x19,[sp, #0x10]
02c5c250  mov x0,xzr
02c5c254  ldr x30,[sp], #0x20
02c5c258  b 0x02be0598
