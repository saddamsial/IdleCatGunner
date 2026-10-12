02c682c4  cmp w1,w2
02c682c8  b.ne 0x02c682d0
02c682cc  ret
02c682d0  stp x30,x21,[sp, #-0x20]!
02c682d4  stp x20,x19,[sp, #0x10]
02c682d8  ldr x8,[x0, #0x68]
02c682dc  mov w19,w2
02c682e0  mov x20,x0
02c682e4  mov w21,wzr
02c682e8  tbnz w1,#0x1f,0x02c68314
02c682ec  cbz x8,0x02c68314
02c682f0  ldr w9,[x8, #0x18]
02c682f4  cmp w9,w1
02c682f8  b.le 0x02c68310
02c682fc  add x9,x8,w1, UXTW 
02c68300  ldrb w9,[x9, #0x20]
02c68304  cmp w9,#0x0
02c68308  cset w21,ne
02c6830c  b 0x02c68314
02c68310  mov w21,wzr
02c68314  mov w2,wzr
02c68318  tbnz w19,#0x1f,0x02c68344
02c6831c  cbz x8,0x02c68344
02c68320  ldr w9,[x8, #0x18]
02c68324  cmp w9,w19
02c68328  b.le 0x02c68340
02c6832c  add x8,x8,w19, UXTW 
02c68330  ldrb w8,[x8, #0x20]
02c68334  cmp w8,#0x0
02c68338  cset w2,ne
02c6833c  b 0x02c68344
02c68340  mov w2,wzr
02c68344  mov x0,x20
02c68348  bl 0x02c6809c
02c6834c  mov x0,x20
02c68350  mov w1,w19
02c68354  mov w2,w21
02c68358  ldp x20,x19,[sp, #0x10]
02c6835c  ldp x30,x21,[sp], #0x20
02c68360  b 0x02c6809c
