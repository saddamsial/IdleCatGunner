02c35930  stp x30,x21,[sp, #-0x20]!
02c35934  stp x20,x19,[sp, #0x10]
02c35938  adrp x21,0x625c000
02c3593c  adrp x20,0x5e5d000
02c35940  mov x19,x0
02c35944  ldrb w8,[x21, #0x63]
02c35948  ldr x20,[x20, #0xd28]
02c3594c  tbnz w8,#0x0,0x02c35964
02c35950  adrp x0,0x5e5d000
02c35954  ldr x0,[x0, #0xd28]
02c35958  bl 0x029f5a50
02c3595c  mov w8,#0x1
02c35960  strb w8,[x21, #0x63]
02c35964  ldr x0,[x20]
02c35968  ldr w8,[x0, #0xe4]
02c3596c  cbnz w8,0x02c35978
02c35970  bl 0x029f5bd0
02c35974  ldr x0,[x20]
02c35978  ldr x8,[x0, #0xb8]
02c3597c  ldr x20,[x8, #0x10]
02c35980  cbz x20,0x02c35a14
02c35984  ldr x10,[x20, #0x28]
02c35988  cbz x10,0x02c35a14
02c3598c  ldr w8,[x10, #0x18]
02c35990  cmp w8,#0x1
02c35994  b.lt 0x02c359c8
02c35998  bic w11,w8,w8, ASR #0x1f
02c3599c  mov w9,wzr
02c359a0  cmp w8,w9
02c359a4  b.eq 0x02c35a10
02c359a8  add x12,x10,w9, SXTW  #0x2
02c359ac  ldr w12,[x12, #0x20]
02c359b0  cmp w12,#0x13
02c359b4  b.gt 0x02c359cc
02c359b8  add w9,w9,#0x1
02c359bc  cmp w11,w9
02c359c0  b.ne 0x02c359a0
02c359c4  b 0x02c359cc
02c359c8  mov w9,wzr
02c359cc  ldr x0,[x19, #0x88]
02c359d0  cbz x0,0x02c35a14
02c359d4  cmp w9,w8
02c359d8  mov x2,xzr
02c359dc  cset w1,lt
02c359e0  bl 0x057dff3c
02c359e4  ldr x19,[x19, #0x80]
02c359e8  mov x0,x20
02c359ec  mov x1,xzr
02c359f0  bl 0x02c2e86c
02c359f4  cbz x19,0x02c35a14
02c359f8  and w1,w0,#0x1
02c359fc  mov x0,x19
02c35a00  mov x2,xzr
02c35a04  ldp x20,x19,[sp, #0x10]
02c35a08  ldp x30,x21,[sp], #0x20
02c35a0c  b 0x057dff3c
02c35a10  bl 0x029f5d04
02c35a14  bl 0x029f5cfc
