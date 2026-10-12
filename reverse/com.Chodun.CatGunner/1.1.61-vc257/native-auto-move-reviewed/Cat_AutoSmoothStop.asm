02c3f3d4  sub sp,sp,#0x50
02c3f3d8  stp d11,d10,[sp, #0x10]
02c3f3dc  stp d9,d8,[sp, #0x20]
02c3f3e0  stp x30,x21,[sp, #0x30]
02c3f3e4  stp x20,x19,[sp, #0x40]
02c3f3e8  adrp x20,0x625b000
02c3f3ec  ldr d9,[x0, #0x188]
02c3f3f0  ldr s8,[x0, #0x190]
02c3f3f4  ldrb w8,[x20, #0x26f]
02c3f3f8  mov x19,x0
02c3f3fc  cbnz w8,0x02c3f414
02c3f400  adrp x0,0x5e58000
02c3f404  ldr x0,[x0, #0xbf8]
02c3f408  bl 0x029f5a50
02c3f40c  mov w8,#0x1
02c3f410  strb w8,[x20, #0x26f]
02c3f414  adrp x21,0x5e58000
02c3f418  mov x0,xzr
02c3f41c  ldr x21,[x21, #0xbf8]
02c3f420  ldr x8,[x21]
02c3f424  ldr x8,[x8, #0xb8]
02c3f428  ldr s0,[x8, #0x8]
02c3f42c  ldr d11,[x8]
02c3f430  fsub s10,s0,s8
02c3f434  bl 0x057ebabc
02c3f438  fmov s1,0x41000000
02c3f43c  movi d2,#0x0
02c3f440  adrp x8,0x116c000
02c3f444  fmul s0,s0,s1
02c3f448  fmov s1,0x3f800000
02c3f44c  fcmp s0,s1
02c3f450  fcsel s1,s1,s0,gt
02c3f454  fcmp s0,#0.0
02c3f458  fcsel s0,s2,s1,mi
02c3f45c  fsub v1.2S,v11.2S,v9.2S
02c3f460  fmul v1.2S,v1.2S,v0.S[0x0]
02c3f464  fmul s0,s10,s0
02c3f468  fadd v3.2S,v9.2S,v1.2S
02c3f46c  fadd s0,s8,s0
02c3f470  fmul v1.2S,v3.2S,v3.2S
02c3f474  fmul s2,s0,s0
02c3f478  str d3,[x19, #0x188]
02c3f47c  str s0,[x19, #0x190]
02c3f480  faddp s1,v1.2S
02c3f484  fadd s1,s2,s1
02c3f488  ldr s2,[x8, #0x88]
02c3f48c  fcmp s1,s2
02c3f490  b.pl 0x02c3f4ec
02c3f494  ldrb w8,[x20, #0x26f]
02c3f498  cbnz w8,0x02c3f4b0
02c3f49c  adrp x0,0x5e58000
02c3f4a0  ldr x0,[x0, #0xbf8]
02c3f4a4  bl 0x029f5a50
02c3f4a8  mov w8,#0x1
02c3f4ac  strb w8,[x20, #0x26f]
02c3f4b0  ldr x8,[x21]
02c3f4b4  ldr x20,[x19, #0x30]
02c3f4b8  ldr x8,[x8, #0xb8]
02c3f4bc  ldr d0,[x8]
02c3f4c0  ldr s1,[x8, #0x8]
02c3f4c4  str d0,[x19, #0x188]
02c3f4c8  str s1,[x19, #0x190]
02c3f4cc  cbz x20,0x02c3f52c
02c3f4d0  mov x0,x20
02c3f4d4  mov x1,xzr
02c3f4d8  bl 0x0586b268
02c3f4dc  movi d0,#0x0
02c3f4e0  movi d2,#0x0
02c3f4e4  mov x0,x20
02c3f4e8  b 0x02c3f510
02c3f4ec  ldr x20,[x19, #0x30]
02c3f4f0  str q3,[sp]
02c3f4f4  cbz x20,0x02c3f52c
02c3f4f8  mov x0,x20
02c3f4fc  mov x1,xzr
02c3f500  bl 0x0586b268
02c3f504  ldr s2,[x19, #0x190]
02c3f508  ldr q0,[sp]
02c3f50c  mov x0,x20
02c3f510  ldp x20,x19,[sp, #0x40]
02c3f514  mov x1,xzr
02c3f518  ldp x30,x21,[sp, #0x30]
02c3f51c  ldp d9,d8,[sp, #0x20]
02c3f520  ldp d11,d10,[sp, #0x10]
02c3f524  add sp,sp,#0x50
02c3f528  b 0x0586b344
02c3f52c  bl 0x029f5cfc
