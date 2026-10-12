02ca0470  stp x30,x21,[sp, #-0x20]!
02ca0474  stp x20,x19,[sp, #0x10]
02ca0478  adrp x21,0x625c000
02ca047c  mov x19,x1
02ca0480  mov x20,x0
02ca0484  ldrb w8,[x21, #0x477]
02ca0488  tbnz w8,#0x0,0x02ca04a0
02ca048c  adrp x0,0x5e64000
02ca0490  ldr x0,[x0, #0x440]
02ca0494  bl 0x029f5a50
02ca0498  mov w8,#0x1
02ca049c  strb w8,[x21, #0x477]
02ca04a0  mov w8,#0xffffffff
02ca04a4  mov x0,x20
02ca04a8  mov x1,xzr
02ca04ac  str w8,[x19]
02ca04b0  bl 0x046c0604
02ca04b4  tbnz w0,#0x0,0x02ca0514
02ca04b8  cbz x20,0x02ca0524
02ca04bc  adrp x21,0x5e64000
02ca04c0  mov x0,x20
02ca04c4  mov x2,xzr
02ca04c8  ldr x21,[x21, #0x440]
02ca04cc  ldr x1,[x21]
02ca04d0  bl 0x046bf554
02ca04d4  tbz w0,#0x0,0x02ca0514
02ca04d8  ldr x8,[x21]
02ca04dc  cbz x8,0x02ca0524
02ca04e0  ldr w1,[x8, #0x10]
02ca04e4  mov x0,x20
02ca04e8  mov x2,xzr
02ca04ec  bl 0x046c5474
02ca04f0  mov x1,x19
02ca04f4  mov x2,xzr
02ca04f8  bl 0x0484edb8
02ca04fc  tbz w0,#0x0,0x02ca0514
02ca0500  ldr w8,[x19]
02ca0504  sub w8,w8,#0x1
02ca0508  cmp w8,#0x3
02ca050c  cset w0,cc
02ca0510  b 0x02ca0518
02ca0514  mov w0,wzr
02ca0518  ldp x20,x19,[sp, #0x10]
02ca051c  ldp x30,x21,[sp], #0x20
02ca0520  ret
02ca0524  bl 0x029f5cfc
