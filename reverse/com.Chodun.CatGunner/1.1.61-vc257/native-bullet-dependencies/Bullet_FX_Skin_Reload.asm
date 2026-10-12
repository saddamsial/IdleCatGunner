02c6723c  str x30,[sp, #-0x30]!
02c67240  stp x22,x21,[sp, #0x10]
02c67244  stp x20,x19,[sp, #0x20]
02c67248  adrp x21,0x625c000
02c6724c  mov w20,w1
02c67250  mov x19,x0
02c67254  ldrb w8,[x21, #0x257]
02c67258  tbnz w8,#0x0,0x02c67270
02c6725c  adrp x0,0x5e59000
02c67260  ldr x0,[x0, #0x1c0]
02c67264  bl 0x029f5a50
02c67268  mov w8,#0x1
02c6726c  strb w8,[x21, #0x257]
02c67270  ldr w8,[x19, #0x30]
02c67274  adrp x22,0x5e59000
02c67278  ldr x22,[x22, #0x1c0]
02c6727c  cmp w8,w20
02c67280  b.ne 0x02c672e0
02c67284  ldr x0,[x22]
02c67288  ldr x21,[x19, #0x20]
02c6728c  ldr w8,[x0, #0xe4]
02c67290  cbnz w8,0x02c67298
02c67294  bl 0x029f5bd0
02c67298  mov x0,x21
02c6729c  mov x1,xzr
02c672a0  mov x2,xzr
02c672a4  bl 0x057dfa70
02c672a8  tbz w0,#0x0,0x02c672e0
02c672ac  ldr x0,[x19, #0x20]
02c672b0  cbz x0,0x02c673c8
02c672b4  mov w1,#0x1
02c672b8  mov x2,xzr
02c672bc  bl 0x058618a8
02c672c0  ldr x0,[x19, #0x20]
02c672c4  cbz x0,0x02c673c8
02c672c8  ldp x20,x19,[sp, #0x20]
02c672cc  mov w1,#0x1
02c672d0  ldp x22,x21,[sp, #0x10]
02c672d4  mov x2,xzr
02c672d8  ldr x30,[sp], #0x30
02c672dc  b 0x058616e4
02c672e0  ldr x0,[x22]
02c672e4  mov x21,x19
02c672e8  ldr x22,[x21, #0x20]!
02c672ec  ldr w8,[x0, #0xe4]
02c672f0  cbnz w8,0x02c672f8
02c672f4  bl 0x029f5bd0
02c672f8  mov x0,x22
02c672fc  mov x1,xzr
02c67300  mov x2,xzr
02c67304  bl 0x057dfa70
02c67308  tbz w0,#0x0,0x02c67344
02c6730c  ldr x0,[x21]
02c67310  cbz x0,0x02c673c8
02c67314  mov w1,#0x1
02c67318  mov w2,wzr
02c6731c  mov x3,xzr
02c67320  bl 0x058617b0
02c67324  ldr x0,[x21]
02c67328  cbz x0,0x02c673c8
02c6732c  mov x1,xzr
02c67330  bl 0x057dc1c8
02c67334  cbz x0,0x02c673c8
02c67338  mov w1,wzr
02c6733c  mov x2,xzr
02c67340  bl 0x057dff3c
02c67344  ldr x8,[x19, #0x28]
02c67348  cbz x8,0x02c673c8
02c6734c  ldr w9,[x8, #0x18]
02c67350  cmp w9,w20
02c67354  b.ls 0x02c673cc
02c67358  add x8,x8,w20, SXTW  #0x3
02c6735c  mov x0,x21
02c67360  ldr x1,[x8, #0x20]
02c67364  str x1,[x21]
02c67368  bl 0x029f59f4
02c6736c  ldr x0,[x21]
02c67370  cbz x0,0x02c673c8
02c67374  mov x1,xzr
02c67378  bl 0x057dc1c8
02c6737c  cbz x0,0x02c673c8
02c67380  mov w1,#0x1
02c67384  mov x2,xzr
02c67388  bl 0x057dff3c
02c6738c  ldr x0,[x21]
02c67390  cbz x0,0x02c673c8
02c67394  mov w1,#0x1
02c67398  mov x2,xzr
02c6739c  bl 0x058618a8
02c673a0  ldr x0,[x21]
02c673a4  cbz x0,0x02c673c8
02c673a8  mov w1,#0x1
02c673ac  mov x2,xzr
02c673b0  bl 0x058616e4
02c673b4  str w20,[x19, #0x30]
02c673b8  ldp x20,x19,[sp, #0x20]
02c673bc  ldp x22,x21,[sp, #0x10]
02c673c0  ldr x30,[sp], #0x30
02c673c4  ret
02c673c8  bl 0x029f5cfc
02c673cc  bl 0x029f5d04
