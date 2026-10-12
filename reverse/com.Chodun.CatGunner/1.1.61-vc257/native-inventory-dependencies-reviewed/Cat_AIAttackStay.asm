02c40208  str d14,[sp, #-0x60]!
02c4020c  stp d13,d12,[sp, #0x10]
02c40210  stp d11,d10,[sp, #0x20]
02c40214  stp d9,d8,[sp, #0x30]
02c40218  stp x30,x21,[sp, #0x40]
02c4021c  stp x20,x19,[sp, #0x50]
02c40220  adrp x20,0x625c000
02c40224  mov x19,x0
02c40228  ldrb w8,[x20, #0xa0]
02c4022c  tbnz w8,#0x0,0x02c40250
02c40230  adrp x0,0x5e63000
02c40234  ldr x0,[x0, #0x1d8]
02c40238  bl 0x029f5a50
02c4023c  adrp x0,0x5e59000
02c40240  ldr x0,[x0, #0x1c0]
02c40244  bl 0x029f5a50
02c40248  mov w8,#0x1
02c4024c  strb w8,[x20, #0xa0]
02c40250  ldr d0,[x19, #0x1d0]
02c40254  ldr s1,[x19, #0x1d8]
02c40258  adrp x8,0x116c000
02c4025c  adrp x20,0x5e59000
02c40260  fmul v0.2S,v0.2S,v0.2S
02c40264  fmul s1,s1,s1
02c40268  ldr x20,[x20, #0x1c0]
02c4026c  faddp s0,v0.2S
02c40270  fadd s0,s0,s1
02c40274  ldr s1,[x8, #0x190]
02c40278  fcmp s0,s1
02c4027c  b.le 0x02c40294
02c40280  adrp x8,0x116c000
02c40284  mov x0,x19
02c40288  ldr s0,[x8, #0x21c]
02c4028c  bl 0x02c40a90
02c40290  b 0x02c4029c
02c40294  mov x0,x19
02c40298  bl 0x02c3d9a0
02c4029c  ldr x0,[x20]
02c402a0  ldr x20,[x19, #0x1e0]
02c402a4  ldr w8,[x0, #0xe4]
02c402a8  cbnz w8,0x02c402b0
02c402ac  bl 0x029f5bd0
02c402b0  mov x0,x20
02c402b4  mov x1,xzr
02c402b8  mov x2,xzr
02c402bc  bl 0x057e14b4
02c402c0  tbz w0,#0x0,0x02c402e0
02c402c4  ldp x20,x19,[sp, #0x50]
02c402c8  ldp x30,x21,[sp, #0x40]
02c402cc  ldp d9,d8,[sp, #0x30]
02c402d0  ldp d11,d10,[sp, #0x20]
02c402d4  ldp d13,d12,[sp, #0x10]
02c402d8  ldr d14,[sp], #0x60
02c402dc  ret
02c402e0  adrp x21,0x5e63000
02c402e4  ldr x21,[x21, #0x1d8]
02c402e8  ldr x0,[x21]
02c402ec  ldr w8,[x0, #0xe4]
02c402f0  cbnz w8,0x02c402fc
02c402f4  bl 0x029f5bd0
02c402f8  ldr x0,[x21]
02c402fc  ldr x8,[x19, #0x1e0]
02c40300  cbz x8,0x02c403fc
02c40304  ldr x9,[x0, #0xb8]
02c40308  mov x0,x8
02c4030c  mov x1,xzr
02c40310  ldp s8,s9,[x9, #0x44]
02c40314  ldp s10,s11,[x9, #0x4c]
02c40318  bl 0x057dc0f8
02c4031c  cbz x0,0x02c403fc
02c40320  mov x1,xzr
02c40324  bl 0x057eed98
02c40328  mov x0,x19
02c4032c  mov x1,xzr
02c40330  fmov s12,s0
02c40334  fmov s13,s1
02c40338  fmov s14,s2
02c4033c  bl 0x057dc0f8
02c40340  cbz x0,0x02c403fc
02c40344  mov x1,xzr
02c40348  bl 0x057eed98
02c4034c  fsub s4,s12,s0
02c40350  fsub s5,s13,s1
02c40354  mov x0,xzr
02c40358  fsub s6,s14,s2
02c4035c  fmov s0,s8
02c40360  fmov s1,s9
02c40364  fmov s2,s10
02c40368  fmov s3,s11
02c4036c  bl 0x057cdb04
02c40370  fcmp s0,#0.0
02c40374  ldr x0,[x21]
02c40378  ldr x20,[x19, #0xb8]
02c4037c  ldr w8,[x0, #0xe4]
02c40380  cset w9,ls
02c40384  strb w9,[x19, #0x1f8]
02c40388  b.hi 0x02c403ac
02c4038c  cbnz w8,0x02c40398
02c40390  bl 0x029f5bd0
02c40394  ldr x0,[x21]
02c40398  ldr x10,[x0, #0xb8]
02c4039c  add x8,x10,#0x20
02c403a0  add x9,x10,#0x24
02c403a4  add x10,x10,#0x28
02c403a8  b 0x02c403c8
02c403ac  cbnz w8,0x02c403b8
02c403b0  bl 0x029f5bd0
02c403b4  ldr x0,[x21]
02c403b8  ldr x10,[x0, #0xb8]
02c403bc  add x8,x10,#0x2c
02c403c0  add x9,x10,#0x30
02c403c4  add x10,x10,#0x34
02c403c8  cbz x20,0x02c403fc
02c403cc  mov x0,x20
02c403d0  ldp x20,x19,[sp, #0x50]
02c403d4  ldp x30,x21,[sp, #0x40]
02c403d8  mov x1,xzr
02c403dc  ldp d9,d8,[sp, #0x30]
02c403e0  ldr s0,[x8]
02c403e4  ldp d11,d10,[sp, #0x20]
02c403e8  ldr s2,[x10]
02c403ec  ldr s1,[x9]
02c403f0  ldp d13,d12,[sp, #0x10]
02c403f4  ldr d14,[sp], #0x60
02c403f8  b 0x057ef218
02c403fc  bl 0x029f5cfc
