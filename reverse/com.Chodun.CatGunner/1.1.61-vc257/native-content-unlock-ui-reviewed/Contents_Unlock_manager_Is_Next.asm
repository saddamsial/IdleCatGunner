02b9e348  stp x30,x21,[sp, #-0x20]!
02b9e34c  stp x20,x19,[sp, #0x10]
02b9e350  adrp x21,0x625b000
02b9e354  adrp x20,0x5e5e000
02b9e358  mov w19,w0
02b9e35c  ldrb w8,[x21, #0x9e7]
02b9e360  ldr x20,[x20, #0x4d0]
02b9e364  tbnz w8,#0x0,0x02b9e37c
02b9e368  adrp x0,0x5e5e000
02b9e36c  ldr x0,[x0, #0x4d0]
02b9e370  bl 0x029f5a50
02b9e374  mov w8,#0x1
02b9e378  strb w8,[x21, #0x9e7]
02b9e37c  ldr x0,[x20]
02b9e380  ldr w8,[x0, #0xe4]
02b9e384  cbnz w8,0x02b9e38c
02b9e388  bl 0x029f5bd0
02b9e38c  mov w0,w19
02b9e390  bl 0x02b9e130
02b9e394  tbz w0,#0x0,0x02b9e3a0
02b9e398  mov w0,wzr
02b9e39c  b 0x02b9e3c8
02b9e3a0  ldr x0,[x20]
02b9e3a4  ldr w8,[x0, #0xe4]
02b9e3a8  cbnz w8,0x02b9e3b0
02b9e3ac  bl 0x029f5bd0
02b9e3b0  mov w0,w19
02b9e3b4  bl 0x02b9dfd4
02b9e3b8  mov w19,w0
02b9e3bc  bl 0x02b9e240
02b9e3c0  cmp w19,w0
02b9e3c4  cset w0,eq
02b9e3c8  ldp x20,x19,[sp, #0x10]
02b9e3cc  ldp x30,x21,[sp], #0x20
02b9e3d0  ret
