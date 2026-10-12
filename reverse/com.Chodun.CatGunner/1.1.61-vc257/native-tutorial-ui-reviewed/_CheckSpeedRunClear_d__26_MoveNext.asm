02cb034c  str x30,[sp, #-0x30]!
02cb0350  stp x22,x21,[sp, #0x10]
02cb0354  stp x20,x19,[sp, #0x20]
02cb0358  adrp x20,0x625c000
02cb035c  mov x19,x0
02cb0360  ldrb w8,[x20, #0x543]
02cb0364  tbnz w8,#0x0,0x02cb03a0
02cb0368  adrp x0,0x5e59000
02cb036c  ldr x0,[x0, #0x1c0]
02cb0370  bl 0x029f5a50
02cb0374  adrp x0,0x5e5d000
02cb0378  ldr x0,[x0, #0xd68]
02cb037c  bl 0x029f5a50
02cb0380  adrp x0,0x5e5d000
02cb0384  ldr x0,[x0, #0x4e8]
02cb0388  bl 0x029f5a50
02cb038c  adrp x0,0x5e5a000
02cb0390  ldr x0,[x0, #0x710]
02cb0394  bl 0x029f5a50
02cb0398  mov w8,#0x1
02cb039c  strb w8,[x20, #0x543]
02cb03a0  ldr w8,[x19, #0x10]
02cb03a4  ldr x20,[x19, #0x20]
02cb03a8  cmp w8,#0x2
02cb03ac  b.cs 0x02cb0430
02cb03b0  mov w8,#0xffffffff
02cb03b4  str w8,[x19, #0x10]
02cb03b8  cbz x20,0x02cb0548
02cb03bc  ldr w8,[x20, #0x60]
02cb03c0  cmp w8,#0x1
02cb03c4  b.ne 0x02cb0458
02cb03c8  adrp x8,0x5e5d000
02cb03cc  ldr x8,[x8, #0x4e8]
02cb03d0  ldr x0,[x8]
02cb03d4  ldr w8,[x0, #0xe4]
02cb03d8  cbnz w8,0x02cb03e0
02cb03dc  bl 0x029f5bd0
02cb03e0  mov w0,wzr
02cb03e4  bl 0x02caf208
02cb03e8  cmp w0,#0x3
02cb03ec  b.ge 0x02cb0444
02cb03f0  adrp x8,0x5e5a000
02cb03f4  ldr x8,[x8, #0x710]
02cb03f8  ldr x0,[x8]
02cb03fc  bl 0x029f5cec
02cb0400  adrp x8,0x116c000
02cb0404  mov x1,xzr
02cb0408  mov x20,x0
02cb040c  ldr s0,[x8, #0x60]
02cb0410  bl 0x057e84e0
02cb0414  str x20,[x19, #0x18]!
02cb0418  mov x0,x19
02cb041c  mov x1,x20
02cb0420  bl 0x029f59f4
02cb0424  mov w0,#0x1
02cb0428  stur w0,[x19, #-0x8]
02cb042c  b 0x02cb0538
02cb0430  b.ne 0x02cb04f0
02cb0434  mov w8,#0xffffffff
02cb0438  str w8,[x19, #0x10]
02cb043c  cbnz x20,0x02cb0458
02cb0440  b 0x02cb0548
02cb0444  ldr x0,[x20, #0x48]
02cb0448  cbz x0,0x02cb0548
02cb044c  mov w1,#0x1
02cb0450  mov x2,xzr
02cb0454  bl 0x057dff3c
02cb0458  ldr w8,[x20, #0x60]
02cb045c  cmp w8,#0x1
02cb0460  b.ne 0x02cb04f0
02cb0464  adrp x22,0x5e5d000
02cb0468  ldr x22,[x22, #0xd68]
02cb046c  ldr x0,[x22]
02cb0470  ldr w8,[x0, #0xe4]
02cb0474  cbnz w8,0x02cb0480
02cb0478  bl 0x029f5bd0
02cb047c  ldr x0,[x22]
02cb0480  adrp x8,0x5e59000
02cb0484  ldr x8,[x8, #0x1c0]
02cb0488  ldr x9,[x0, #0xb8]
02cb048c  ldr x8,[x8]
02cb0490  ldr x21,[x9, #0x8]
02cb0494  ldr w10,[x8, #0xe4]
02cb0498  cbnz w10,0x02cb04a4
02cb049c  mov x0,x8
02cb04a0  bl 0x029f5bd0
02cb04a4  mov x0,x21
02cb04a8  mov x1,xzr
02cb04ac  mov x2,xzr
02cb04b0  bl 0x057dfa70
02cb04b4  tbz w0,#0x0,0x02cb04f8
02cb04b8  ldr x0,[x22]
02cb04bc  ldr w8,[x0, #0xe4]
02cb04c0  cbnz w8,0x02cb04cc
02cb04c4  bl 0x029f5bd0
02cb04c8  ldr x0,[x22]
02cb04cc  ldr x8,[x0, #0xb8]
02cb04d0  ldr x8,[x8, #0x8]
02cb04d4  cbz x8,0x02cb0548
02cb04d8  ldr w8,[x8, #0x30]
02cb04dc  cmp w8,#0x1
02cb04e0  b.lt 0x02cb04f8
02cb04e4  mov x0,x20
02cb04e8  mov w1,#0x2
02cb04ec  bl 0x02caf65c
02cb04f0  mov w0,wzr
02cb04f4  b 0x02cb0538
02cb04f8  adrp x8,0x5e5a000
02cb04fc  ldr x8,[x8, #0x710]
02cb0500  ldr x0,[x8]
02cb0504  bl 0x029f5cec
02cb0508  adrp x8,0x116c000
02cb050c  mov x1,xzr
02cb0510  mov x20,x0
02cb0514  ldr s0,[x8, #0x60]
02cb0518  bl 0x057e84e0
02cb051c  str x20,[x19, #0x18]!
02cb0520  mov x0,x19
02cb0524  mov x1,x20
02cb0528  bl 0x029f59f4
02cb052c  mov w8,#0x2
02cb0530  mov w0,#0x1
02cb0534  stur w8,[x19, #-0x8]
02cb0538  ldp x20,x19,[sp, #0x20]
02cb053c  ldp x22,x21,[sp, #0x10]
02cb0540  ldr x30,[sp], #0x30
02cb0544  ret
02cb0548  bl 0x029f5cfc
