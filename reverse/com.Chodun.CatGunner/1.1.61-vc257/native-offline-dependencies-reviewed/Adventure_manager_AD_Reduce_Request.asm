02c2f22c  str x30,[sp, #-0x30]!
02c2f230  stp x22,x21,[sp, #0x10]
02c2f234  stp x20,x19,[sp, #0x20]
02c2f238  adrp x22,0x625c000
02c2f23c  mov w19,w2
02c2f240  mov w20,w1
02c2f244  ldrb w8,[x22, #0x1a]
02c2f248  mov x21,x0
02c2f24c  tbnz w8,#0x0,0x02c2f264
02c2f250  adrp x0,0x5e5d000
02c2f254  ldr x0,[x0, #0x910]
02c2f258  bl 0x029f5a50
02c2f25c  mov w8,#0x1
02c2f260  strb w8,[x22, #0x1a]
02c2f264  mov x0,x21
02c2f268  mov w1,w20
02c2f26c  mov w2,w19
02c2f270  bl 0x02c2f174
02c2f274  tbz w0,#0x0,0x02c2f29c
02c2f278  adrp x22,0x5e5d000
02c2f27c  ldr x22,[x22, #0x910]
02c2f280  ldr x8,[x22]
02c2f284  ldr x8,[x8, #0xb8]
02c2f288  ldr x0,[x8]
02c2f28c  cbz x0,0x02c2f2d8
02c2f290  mov x1,xzr
02c2f294  bl 0x02b89a70
02c2f298  tbz w0,#0x0,0x02c2f2ac
02c2f29c  ldp x20,x19,[sp, #0x20]
02c2f2a0  ldp x22,x21,[sp, #0x10]
02c2f2a4  ldr x30,[sp], #0x30
02c2f2a8  ret
02c2f2ac  ldr x8,[x22]
02c2f2b0  stp w19,w20,[x21, #0x88]
02c2f2b4  ldr x8,[x8, #0xb8]
02c2f2b8  ldr x0,[x8]
02c2f2bc  cbz x0,0x02c2f2d8
02c2f2c0  ldp x20,x19,[sp, #0x20]
02c2f2c4  mov w1,#0xd
02c2f2c8  ldp x22,x21,[sp, #0x10]
02c2f2cc  mov x2,xzr
02c2f2d0  ldr x30,[sp], #0x30
02c2f2d4  b 0x02b89ab0
02c2f2d8  bl 0x029f5cfc
