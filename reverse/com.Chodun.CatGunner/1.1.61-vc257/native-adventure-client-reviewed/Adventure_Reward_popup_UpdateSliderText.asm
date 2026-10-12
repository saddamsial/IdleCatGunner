02c362b0  sub sp,sp,#0x50
02c362b4  str x30,[sp, #0x10]
02c362b8  stp x24,x23,[sp, #0x20]
02c362bc  stp x22,x21,[sp, #0x30]
02c362c0  stp x20,x19,[sp, #0x40]
02c362c4  adrp x22,0x625c000
02c362c8  adrp x23,0x5e59000
02c362cc  mov w20,w2
02c362d0  ldrb w8,[x22, #0x70]
02c362d4  ldr x23,[x23, #0x1c0]
02c362d8  mov w19,w1
02c362dc  mov x21,x0
02c362e0  tbnz w8,#0x0,0x02c36310
02c362e4  adrp x0,0x5e59000
02c362e8  ldr x0,[x0, #0x1c0]
02c362ec  bl 0x029f5a50
02c362f0  adrp x0,0x5e61000
02c362f4  ldr x0,[x0, #0xf18]
02c362f8  bl 0x029f5a50
02c362fc  adrp x0,0x5e61000
02c36300  ldr x0,[x0, #0xf28]
02c36304  bl 0x029f5a50
02c36308  mov w8,#0x1
02c3630c  strb w8,[x22, #0x70]
02c36310  ldr x0,[x23]
02c36314  ldr x22,[x21, #0x50]
02c36318  ldr w8,[x0, #0xe4]
02c3631c  cbnz w8,0x02c36324
02c36320  bl 0x029f5bd0
02c36324  mov x0,x22
02c36328  mov x1,xzr
02c3632c  mov x2,xzr
02c36330  bl 0x057dfa70
02c36334  tbz w0,#0x0,0x02c36390
02c36338  adrp x8,0x5e58000
02c3633c  adrp x24,0x5e61000
02c36340  add w9,w19,#0x1
02c36344  ldr x8,[x8, #0xa10]
02c36348  ldr x24,[x24, #0xf18]
02c3634c  ldr x22,[x21, #0x50]
02c36350  add x1,sp,#0x1c
02c36354  str w9,[sp, #0x1c]
02c36358  ldr x0,[x8, #0x48]
02c3635c  bl 0x029f5bd8
02c36360  ldr x8,[x24]
02c36364  mov x1,x0
02c36368  mov x2,xzr
02c3636c  mov x0,x8
02c36370  bl 0x046b6c0c
02c36374  cbz x22,0x02c36448
02c36378  ldr x8,[x22]
02c3637c  mov x1,x0
02c36380  mov x0,x22
02c36384  ldr x9,[x8, #0x558]
02c36388  ldr x2,[x8, #0x560]
02c3638c  blr x9
02c36390  ldr x0,[x23]
02c36394  ldr x22,[x21, #0x58]
02c36398  ldr w8,[x0, #0xe4]
02c3639c  cbnz w8,0x02c363a4
02c363a0  bl 0x029f5bd0
02c363a4  mov x0,x22
02c363a8  mov x1,xzr
02c363ac  mov x2,xzr
02c363b0  bl 0x057dfa70
02c363b4  tbz w0,#0x0,0x02c36430
02c363b8  adrp x22,0x5e58000
02c363bc  add x1,sp,#0x18
02c363c0  ldr x22,[x22, #0xa10]
02c363c4  ldr x21,[x21, #0x58]
02c363c8  str w20,[sp, #0x18]
02c363cc  ldr x0,[x22, #0x48]
02c363d0  bl 0x029f5bd8
02c363d4  mov w1,w19
02c363d8  mov x20,x0
02c363dc  bl 0x02c3621c
02c363e0  ldr x8,[x22, #0x48]
02c363e4  str w0,[sp, #0xc]
02c363e8  add x1,sp,#0xc
02c363ec  mov x0,x8
02c363f0  bl 0x029f5bd8
02c363f4  adrp x8,0x5e61000
02c363f8  mov x2,x0
02c363fc  mov x1,x20
02c36400  ldr x8,[x8, #0xf28]
02c36404  mov x3,xzr
02c36408  ldr x8,[x8]
02c3640c  mov x0,x8
02c36410  bl 0x046c1d14
02c36414  cbz x21,0x02c36448
02c36418  ldr x8,[x21]
02c3641c  mov x1,x0
02c36420  mov x0,x21
02c36424  ldr x9,[x8, #0x558]
02c36428  ldr x2,[x8, #0x560]
02c3642c  blr x9
02c36430  ldp x20,x19,[sp, #0x40]
02c36434  ldr x30,[sp, #0x10]
02c36438  ldp x22,x21,[sp, #0x30]
02c3643c  ldp x24,x23,[sp, #0x20]
02c36440  add sp,sp,#0x50
02c36444  ret
02c36448  bl 0x029f5cfc
