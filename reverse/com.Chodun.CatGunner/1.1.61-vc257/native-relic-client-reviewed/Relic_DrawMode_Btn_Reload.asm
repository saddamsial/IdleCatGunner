02c30320  str x30,[sp, #-0x20]!
02c30324  stp x20,x19,[sp, #0x10]
02c30328  mov x20,x0
02c3032c  ldr x0,[x0, #0x30]
02c30330  cbz x0,0x02c30364
02c30334  mov w19,w1
02c30338  and w1,w1,#0x1
02c3033c  mov x2,xzr
02c30340  bl 0x057dff3c
02c30344  ldr x0,[x20, #0x38]
02c30348  cbz x0,0x02c30364
02c3034c  mov w8,#0x1
02c30350  mov x2,xzr
02c30354  bic w1,w8,w19
02c30358  ldp x20,x19,[sp, #0x10]
02c3035c  ldr x30,[sp], #0x20
02c30360  b 0x057dff3c
02c30364  bl 0x029f5cfc
