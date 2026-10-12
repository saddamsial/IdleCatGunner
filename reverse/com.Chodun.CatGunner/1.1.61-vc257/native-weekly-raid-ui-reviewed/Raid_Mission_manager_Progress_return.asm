02c52fb8  str x30,[sp, #-0x30]!
02c52fbc  stp x22,x21,[sp, #0x10]
02c52fc0  stp x20,x19,[sp, #0x20]
02c52fc4  mov w8,#0x1
02c52fc8  cmp w1,#0x7
02c52fcc  str wzr,[x2]
02c52fd0  str w8,[x3]
02c52fd4  b.hi 0x02c53060
02c52fd8  mov x20,x3
02c52fdc  mov x19,x2
02c52fe0  mov w21,w1
02c52fe4  mov x22,x0
02c52fe8  bl 0x02c53fc0
02c52fec  ldr x8,[x22, #0x20]
02c52ff0  cbz x8,0x02c53070
02c52ff4  ldr w9,[x8, #0x18]
02c52ff8  cmp w9,w21
02c52ffc  b.ls 0x02c53074
02c53000  mov w9,w21
02c53004  add x8,x8,x9, LSL #0x3
02c53008  ldr x8,[x8, #0x20]
02c5300c  cbz x8,0x02c53070
02c53010  ldr w10,[x8, #0x14]
02c53014  ldr x11,[x22, #0x30]
02c53018  cmp w10,#0x1
02c5301c  csinc w10,w10,wzr,gt
02c53020  str w10,[x20]
02c53024  cbz x11,0x02c53070
02c53028  ldr w12,[x11, #0x18]
02c5302c  cmp w12,w21
02c53030  b.ls 0x02c53074
02c53034  add x9,x11,x9
02c53038  ldrb w9,[x9, #0x20]
02c5303c  cbnz w9,0x02c5305c
02c53040  ldr w0,[x8, #0x10]
02c53044  bl 0x02c547cc
02c53048  ldr w8,[x20]
02c5304c  cmp w0,w8
02c53050  csel w8,w0,w8,lt
02c53054  cmp w0,#0x0
02c53058  csel w10,wzr,w8,lt
02c5305c  str w10,[x19]
02c53060  ldp x20,x19,[sp, #0x20]
02c53064  ldp x22,x21,[sp, #0x10]
02c53068  ldr x30,[sp], #0x30
02c5306c  ret
02c53070  bl 0x029f5cfc
02c53074  bl 0x029f5d04
