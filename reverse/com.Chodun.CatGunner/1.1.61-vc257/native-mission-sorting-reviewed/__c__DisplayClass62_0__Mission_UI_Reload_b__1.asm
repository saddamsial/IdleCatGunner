02c032fc  sub sp,sp,#0x50
02c03300  str x30,[sp, #0x10]
02c03304  stp x24,x23,[sp, #0x20]
02c03308  stp x22,x21,[sp, #0x30]
02c0330c  stp x20,x19,[sp, #0x40]
02c03310  adrp x22,0x625b000
02c03314  mov w19,w2
02c03318  mov w20,w1
02c0331c  ldrb w8,[x22, #0xe55]
02c03320  mov x21,x0
02c03324  str w1,[sp, #0x1c]
02c03328  tbnz w8,#0x0,0x02c03340
02c0332c  adrp x0,0x5e5d000
02c03330  ldr x0,[x0, #0xd50]
02c03334  bl 0x029f5a50
02c03338  mov w8,#0x1
02c0333c  strb w8,[x22, #0xe55]
02c03340  ldr x8,[x21, #0x10]
02c03344  str wzr,[sp, #0x18]
02c03348  str wzr,[sp, #0xc]
02c0334c  cbz x8,0x02c0349c
02c03350  ldr w9,[x8, #0x18]
02c03354  cmp w9,w20
02c03358  b.ls 0x02c034a0
02c0335c  ldr x9,[x21, #0x18]
02c03360  cbz x9,0x02c0349c
02c03364  ldr x9,[x9, #0x20]
02c03368  cbz x9,0x02c0349c
02c0336c  ldr w10,[x9, #0x18]
02c03370  cmp w10,w20
02c03374  b.ls 0x02c034a0
02c03378  adrp x10,0x5e5d000
02c0337c  sxtw x24,w20
02c03380  ldr x10,[x10, #0xd50]
02c03384  add x8,x8,x24, LSL #0x2
02c03388  add x9,x9,x24, LSL #0x3
02c0338c  ldr x0,[x10]
02c03390  ldr w22,[x8, #0x20]
02c03394  ldr x23,[x9, #0x20]
02c03398  ldr w10,[x0, #0xe4]
02c0339c  cbnz w10,0x02c033a4
02c033a0  bl 0x029f5bd0
02c033a4  mov w0,w22
02c033a8  mov x1,x23
02c033ac  mov x2,xzr
02c033b0  bl 0x02ba6c64
02c033b4  ldr x8,[x21, #0x10]
02c033b8  str w0,[sp, #0x18]
02c033bc  cbz x8,0x02c0349c
02c033c0  ldr w9,[x8, #0x18]
02c033c4  cmp w9,w19
02c033c8  b.ls 0x02c034a0
02c033cc  ldr x9,[x21, #0x18]
02c033d0  cbz x9,0x02c0349c
02c033d4  ldr x9,[x9, #0x20]
02c033d8  cbz x9,0x02c0349c
02c033dc  ldr w10,[x9, #0x18]
02c033e0  cmp w10,w19
02c033e4  b.ls 0x02c034a0
02c033e8  sxtw x23,w19
02c033ec  mov w22,w0
02c033f0  mov x2,xzr
02c033f4  add x8,x8,x23, LSL #0x2
02c033f8  add x9,x9,x23, LSL #0x3
02c033fc  ldr w0,[x8, #0x20]
02c03400  ldr x1,[x9, #0x20]
02c03404  bl 0x02ba6c64
02c03408  cmp w22,w0
02c0340c  b.ne 0x02c0346c
02c03410  ldr x8,[x21, #0x18]
02c03414  cbz x8,0x02c0349c
02c03418  ldr x8,[x8, #0x20]
02c0341c  cbz x8,0x02c0349c
02c03420  ldr w10,[x8, #0x18]
02c03424  cmp w10,w20
02c03428  b.ls 0x02c034a0
02c0342c  add x9,x8,x24, LSL #0x3
02c03430  ldr x9,[x9, #0x20]
02c03434  cbz x9,0x02c0349c
02c03438  ldr w9,[x9, #0x18]
02c0343c  cmp w10,w19
02c03440  str w9,[sp, #0xc]
02c03444  b.ls 0x02c034a0
02c03448  add x8,x8,x23, LSL #0x3
02c0344c  ldr x8,[x8, #0x20]
02c03450  cbz x8,0x02c0349c
02c03454  ldr w1,[x8, #0x18]
02c03458  cmp w9,w1
02c0345c  b.ne 0x02c03478
02c03460  add x0,sp,#0x1c
02c03464  mov w1,w19
02c03468  b 0x02c0347c
02c0346c  mov w1,w0
02c03470  add x0,sp,#0x18
02c03474  b 0x02c0347c
02c03478  add x0,sp,#0xc
02c0347c  mov x2,xzr
02c03480  bl 0x0484e630
02c03484  ldp x20,x19,[sp, #0x40]
02c03488  ldr x30,[sp, #0x10]
02c0348c  ldp x22,x21,[sp, #0x30]
02c03490  ldp x24,x23,[sp, #0x20]
02c03494  add sp,sp,#0x50
02c03498  ret
02c0349c  bl 0x029f5cfc
02c034a0  bl 0x029f5d04
