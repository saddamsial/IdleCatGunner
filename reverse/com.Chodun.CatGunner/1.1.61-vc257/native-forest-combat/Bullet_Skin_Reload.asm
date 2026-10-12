02c652f8  str x30,[sp, #-0x30]!
02c652fc  stp x22,x21,[sp, #0x10]
02c65300  stp x20,x19,[sp, #0x20]
02c65304  mov x21,x0
02c65308  mov x20,x0
02c6530c  ldr x0,[x21, #0x60]!
02c65310  stur w1,[x21, #-0x40]
02c65314  cbz x0,0x02c653a4
02c65318  mov w19,w1
02c6531c  mov x1,xzr
02c65320  bl 0x057dc1c8
02c65324  cbz x0,0x02c653a4
02c65328  mov w1,wzr
02c6532c  mov x2,xzr
02c65330  bl 0x057dff3c
02c65334  ldr x8,[x20, #0x78]
02c65338  cbz x8,0x02c653a4
02c6533c  ldr w9,[x8, #0x18]
02c65340  cmp w9,w19
02c65344  b.ls 0x02c653a8
02c65348  sxtw x22,w19
02c6534c  mov x0,x21
02c65350  add x8,x8,x22, LSL #0x3
02c65354  ldr x1,[x8, #0x20]
02c65358  str x1,[x20, #0x60]
02c6535c  bl 0x029f59f4
02c65360  ldr x8,[x20, #0x78]
02c65364  cbz x8,0x02c653a4
02c65368  ldr w9,[x8, #0x18]
02c6536c  cmp w9,w19
02c65370  b.ls 0x02c653a8
02c65374  add x8,x8,x22, LSL #0x3
02c65378  ldr x0,[x8, #0x20]
02c6537c  cbz x0,0x02c653a4
02c65380  mov x1,xzr
02c65384  bl 0x057dc1c8
02c65388  cbz x0,0x02c653a4
02c6538c  ldp x20,x19,[sp, #0x20]
02c65390  mov w1,#0x1
02c65394  ldp x22,x21,[sp, #0x10]
02c65398  mov x2,xzr
02c6539c  ldr x30,[sp], #0x30
02c653a0  b 0x057dff3c
02c653a4  bl 0x029f5cfc
02c653a8  bl 0x029f5d04
