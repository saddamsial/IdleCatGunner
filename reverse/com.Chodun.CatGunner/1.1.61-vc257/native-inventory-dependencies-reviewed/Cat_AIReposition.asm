02c40400  sub sp,sp,#0x40
02c40404  str d8,[sp, #0x10]
02c40408  stp x30,x21,[sp, #0x20]
02c4040c  stp x20,x19,[sp, #0x30]
02c40410  adrp x21,0x625c000
02c40414  adrp x20,0x5e59000
02c40418  mov x19,x0
02c4041c  ldrb w8,[x21, #0xa1]
02c40420  ldr x20,[x20, #0x1c0]
02c40424  tbnz w8,#0x0,0x02c4043c
02c40428  adrp x0,0x5e59000
02c4042c  ldr x0,[x0, #0x1c0]
02c40430  bl 0x029f5a50
02c40434  mov w8,#0x1
02c40438  strb w8,[x21, #0xa1]
02c4043c  ldr x0,[x20]
02c40440  ldr x20,[x19, #0x1e0]
02c40444  ldr w8,[x0, #0xe4]
02c40448  cbnz w8,0x02c40450
02c4044c  bl 0x029f5bd0
02c40450  mov x0,x20
02c40454  mov x1,xzr
02c40458  mov x2,xzr
02c4045c  bl 0x057e14b4
02c40460  tbz w0,#0x0,0x02c40478
02c40464  ldp x20,x19,[sp, #0x30]
02c40468  ldr d8,[sp, #0x10]
02c4046c  ldp x30,x21,[sp, #0x20]
02c40470  add sp,sp,#0x40
02c40474  ret
02c40478  mov x0,x19
02c4047c  mov x1,xzr
02c40480  bl 0x057dc0f8
02c40484  cbz x0,0x02c405ec
02c40488  mov x1,xzr
02c4048c  bl 0x057eed98
02c40490  ldr s1,[x19, #0x1e8]
02c40494  ldr s3,[x19, #0x1f0]
02c40498  adrp x8,0x116c000
02c4049c  adrp x20,0x5e58000
02c404a0  fsub s0,s0,s1
02c404a4  fsub s8,s2,s3
02c404a8  ldr x20,[x20, #0xbf8]
02c404ac  fmul s1,s0,s0
02c404b0  fmul s2,s8,s8
02c404b4  fadd s1,s1,s2
02c404b8  ldr s2,[x8, #0x268]
02c404bc  fcmp s1,s2
02c404c0  b.pl 0x02c404f8
02c404c4  adrp x21,0x625b000
02c404c8  ldrb w8,[x21, #0x95b]
02c404cc  cbnz w8,0x02c404e4
02c404d0  adrp x0,0x5e58000
02c404d4  ldr x0,[x0, #0xbf8]
02c404d8  bl 0x029f5a50
02c404dc  mov w8,#0x1
02c404e0  strb w8,[x21, #0x95b]
02c404e4  ldr x8,[x20]
02c404e8  ldr x8,[x8, #0xb8]
02c404ec  ldur d2,[x8, #0x3c]
02c404f0  ldr s8,[x8, #0x44]
02c404f4  b 0x02c40500
02c404f8  movi d2,#0x0
02c404fc  mov v2.S[0x0],v0.S[0x0]
02c40500  adrp x21,0x625b000
02c40504  ldrb w8,[x21, #0x52e]
02c40508  cbnz w8,0x02c40528
02c4050c  adrp x0,0x5e59000
02c40510  ldr x0,[x0]
02c40514  str q2,[sp]
02c40518  bl 0x029f5a50
02c4051c  ldr q2,[sp]
02c40520  mov w8,#0x1
02c40524  strb w8,[x21, #0x52e]
02c40528  adrp x8,0x5e59000
02c4052c  ldr x8,[x8]
02c40530  ldr x0,[x8]
02c40534  ldr w8,[x0, #0xe4]
02c40538  cbnz w8,0x02c40548
02c4053c  str q2,[sp]
02c40540  bl 0x029f5bd0
02c40544  ldr q2,[sp]
02c40548  fmul v0.2S,v2.2S,v2.2S
02c4054c  fmul s1,s8,s8
02c40550  adrp x8,0x116c000
02c40554  faddp s0,v0.2S
02c40558  fadd s0,s1,s0
02c4055c  ldr s1,[x8, #0x240]
02c40560  fsqrt s0,s0
02c40564  fcmp s0,s1
02c40568  b.le 0x02c4057c
02c4056c  dup v1.2S,v0.S[0x0]
02c40570  fdiv s0,s8,s0
02c40574  fdiv v1.2S,v2.2S,v1.2S
02c40578  b 0x02c405ac
02c4057c  adrp x21,0x625b000
02c40580  ldrb w8,[x21, #0x26f]
02c40584  cbnz w8,0x02c4059c
02c40588  adrp x0,0x5e58000
02c4058c  ldr x0,[x0, #0xbf8]
02c40590  bl 0x029f5a50
02c40594  mov w8,#0x1
02c40598  strb w8,[x21, #0x26f]
02c4059c  ldr x8,[x20]
02c405a0  ldr x8,[x8, #0xb8]
02c405a4  ldr d1,[x8]
02c405a8  ldr s0,[x8, #0x8]
02c405ac  fmov s2,0x3f000000
02c405b0  ldr s3,[x19, #0x1b8]
02c405b4  mov x0,x19
02c405b8  ldp x30,x21,[sp, #0x20]
02c405bc  ldr d8,[sp, #0x10]
02c405c0  fadd s2,s3,s2
02c405c4  ldr d3,[x19, #0x1e8]
02c405c8  fmul v1.2S,v1.2S,v2.S[0x0]
02c405cc  fmul s2,s0,s2
02c405d0  fadd v0.2S,v3.2S,v1.2S
02c405d4  ldr s1,[x19, #0x1f0]
02c405d8  ldp x20,x19,[sp, #0x30]
02c405dc  fadd s2,s1,s2
02c405e0  dup s1,v0.S[0x1]
02c405e4  add sp,sp,#0x40
02c405e8  b 0x02c3e32c
02c405ec  bl 0x029f5cfc
