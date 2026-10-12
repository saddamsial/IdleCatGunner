02c7b268  sub sp,sp,#0xc0
02c7b26c  stp d15,d14,[sp, #0x20]
02c7b270  stp d13,d12,[sp, #0x30]
02c7b274  stp d11,d10,[sp, #0x40]
02c7b278  stp d9,d8,[sp, #0x50]
02c7b27c  stp x29,x30,[sp, #0x60]
02c7b280  stp x28,x27,[sp, #0x70]
02c7b284  stp x26,x25,[sp, #0x80]
02c7b288  stp x24,x23,[sp, #0x90]
02c7b28c  stp x22,x21,[sp, #0xa0]
02c7b290  stp x20,x19,[sp, #0xb0]
02c7b294  adrp x20,0x625c000
02c7b298  adrp x21,0x5e5d000
02c7b29c  mov x19,x0
02c7b2a0  ldrb w8,[x20, #0x318]
02c7b2a4  ldr x21,[x21, #0x5b0]
02c7b2a8  tbnz w8,#0x0,0x02c7b2cc
02c7b2ac  adrp x0,0x5e5d000
02c7b2b0  ldr x0,[x0, #0x5b0]
02c7b2b4  bl 0x029f5a50
02c7b2b8  adrp x0,0x5e59000
02c7b2bc  ldr x0,[x0, #0x1c0]
02c7b2c0  bl 0x029f5a50
02c7b2c4  mov w8,#0x1
02c7b2c8  strb w8,[x20, #0x318]
02c7b2cc  ldr x8,[x21]
02c7b2d0  ldr x8,[x8, #0xb8]
02c7b2d4  ldr x8,[x8, #0x8]
02c7b2d8  cbz x8,0x02c7b5a0
02c7b2dc  ldr x24,[x8, #0x20]
02c7b2e0  cbz x24,0x02c7b5a0
02c7b2e4  ldr x8,[x19, #0x20]
02c7b2e8  cbz x8,0x02c7b59c
02c7b2ec  adrp x26,0x5e59000
02c7b2f0  adrp x21,0x5e59000
02c7b2f4  adrp x9,0x116c000
02c7b2f8  adrp x10,0x116c000
02c7b2fc  ldr x26,[x26, #0x1c0]
02c7b300  ldr x21,[x21]
02c7b304  ldr s13,[x9, #0x268]
02c7b308  ldr s14,[x10, #0x240]
02c7b30c  mov x25,xzr
02c7b310  add x27,x24,#0x20
02c7b314  fmov s12,0x3f800000
02c7b318  mov w29,#0x1
02c7b31c  adrp x20,0x625b000
02c7b320  ldr w9,[x8, #0x18]
02c7b324  cmp x25,w9, SXTW 
02c7b328  b.ge 0x02c7b5a0
02c7b32c  cmp x25,x9
02c7b330  b.cs 0x02c7b5d0
02c7b334  ldr x0,[x26]
02c7b338  add x8,x8,x25, LSL #0x3
02c7b33c  ldr w9,[x0, #0xe4]
02c7b340  ldr x22,[x8, #0x20]
02c7b344  cbnz w9,0x02c7b34c
02c7b348  bl 0x029f5bd0
02c7b34c  mov x0,x22
02c7b350  mov x1,xzr
02c7b354  mov x2,xzr
02c7b358  bl 0x057e14b4
02c7b35c  tbnz w0,#0x0,0x02c7b590
02c7b360  cbz x22,0x02c7b59c
02c7b364  mov x0,x22
02c7b368  mov x1,xzr
02c7b36c  bl 0x057dc1c8
02c7b370  cbz x0,0x02c7b59c
02c7b374  mov x1,xzr
02c7b378  bl 0x057e0000
02c7b37c  tbz w0,#0x0,0x02c7b590
02c7b380  adrp x8,0x625b000
02c7b384  ldrb w8,[x8, #0x26f]
02c7b388  cbnz w8,0x02c7b3a0
02c7b38c  adrp x0,0x5e58000
02c7b390  ldr x0,[x0, #0xbf8]
02c7b394  bl 0x029f5a50
02c7b398  adrp x8,0x625b000
02c7b39c  strb w29,[x8, #0x26f]
02c7b3a0  adrp x8,0x5e58000
02c7b3a4  ldr x8,[x8, #0xbf8]
02c7b3a8  ldr x8,[x8]
02c7b3ac  ldr x8,[x8, #0xb8]
02c7b3b0  ldr d0,[x8]
02c7b3b4  ldr s1,[x8, #0x8]
02c7b3b8  stur d0,[x22, #0x4c]
02c7b3bc  str s1,[x22, #0x54]
02c7b3c0  ldr x8,[x24, #0x18]
02c7b3c4  cmp w8,#0x1
02c7b3c8  b.lt 0x02c7b590
02c7b3cc  mov x28,xzr
02c7b3d0  and x8,x8,#0xffffffff
02c7b3d4  cmp x28,w8, UXTW 
02c7b3d8  b.cs 0x02c7b5d0
02c7b3dc  ldr x0,[x26]
02c7b3e0  ldr x23,[x27, x28, LSL #0x3]
02c7b3e4  ldr w8,[x0, #0xe4]
02c7b3e8  cbnz w8,0x02c7b3f0
02c7b3ec  bl 0x029f5bd0
02c7b3f0  mov x0,x23
02c7b3f4  mov x1,xzr
02c7b3f8  mov x2,xzr
02c7b3fc  bl 0x057e14b4
02c7b400  tbnz w0,#0x0,0x02c7b580
02c7b404  cbz x23,0x02c7b59c
02c7b408  mov x0,x23
02c7b40c  mov x1,xzr
02c7b410  bl 0x057dc1c8
02c7b414  cbz x0,0x02c7b59c
02c7b418  mov x1,xzr
02c7b41c  bl 0x057e0000
02c7b420  tbz w0,#0x0,0x02c7b580
02c7b424  mov x0,x22
02c7b428  mov x1,xzr
02c7b42c  bl 0x057dc0f8
02c7b430  cbz x0,0x02c7b59c
02c7b434  mov x1,xzr
02c7b438  bl 0x057eed98
02c7b43c  mov x0,x23
02c7b440  mov x1,xzr
02c7b444  fmov s8,s0
02c7b448  fmov s9,s2
02c7b44c  bl 0x057dc0f8
02c7b450  cbz x0,0x02c7b59c
02c7b454  mov x1,xzr
02c7b458  bl 0x057eed98
02c7b45c  fmov s10,s0
02c7b460  fmov s11,s2
02c7b464  ldrb w8,[x20, #0xae8]
02c7b468  cbnz w8,0x02c7b478
02c7b46c  mov x0,x21
02c7b470  bl 0x029f5a50
02c7b474  strb w29,[x20, #0xae8]
02c7b478  ldr x0,[x21]
02c7b47c  ldr w8,[x0, #0xe4]
02c7b480  cbnz w8,0x02c7b488
02c7b484  bl 0x029f5bd0
02c7b488  fsub s3,s8,s10
02c7b48c  fsub s15,s9,s11
02c7b490  ldr s8,[x19, #0x50]
02c7b494  fmul s0,s3,s3
02c7b498  fmul s1,s15,s15
02c7b49c  fadd s0,s0,s1
02c7b4a0  fsqrt s2,s0
02c7b4a4  fcmp s2,s13
02c7b4a8  fccmp s2,s8,#0x0,pl
02c7b4ac  b.gt 0x02c7b580
02c7b4b0  adrp x8,0x625b000
02c7b4b4  ldr s11,[x19, #0x54]
02c7b4b8  ldur d9,[x22, #0x4c]
02c7b4bc  ldrb w8,[x8, #0x52e]
02c7b4c0  ldr s10,[x22, #0x54]
02c7b4c4  str q2,[sp, #0x10]
02c7b4c8  cbnz w8,0x02c7b4e4
02c7b4cc  mov x0,x21
02c7b4d0  str q3,[sp]
02c7b4d4  bl 0x029f5a50
02c7b4d8  ldp q3,q2,[sp]
02c7b4dc  adrp x8,0x625b000
02c7b4e0  strb w29,[x8, #0x52e]
02c7b4e4  ldr x0,[x21]
02c7b4e8  ldr w8,[x0, #0xe4]
02c7b4ec  cbnz w8,0x02c7b4fc
02c7b4f0  str q3,[sp]
02c7b4f4  bl 0x029f5bd0
02c7b4f8  ldp q3,q2,[sp]
02c7b4fc  fcmp s2,s14
02c7b500  b.le 0x02c7b51c
02c7b504  movi d0,#0x0
02c7b508  dup v1.2S,v2.S[0x0]
02c7b50c  mov v0.S[0x0],v3.S[0x0]
02c7b510  fdiv v0.2S,v0.2S,v1.2S
02c7b514  fdiv s1,s15,s2
02c7b518  b 0x02c7b558
02c7b51c  adrp x8,0x625b000
02c7b520  ldrb w8,[x8, #0x26f]
02c7b524  cbnz w8,0x02c7b540
02c7b528  adrp x0,0x5e58000
02c7b52c  ldr x0,[x0, #0xbf8]
02c7b530  bl 0x029f5a50
02c7b534  ldr q2,[sp, #0x10]
02c7b538  adrp x8,0x625b000
02c7b53c  strb w29,[x8, #0x26f]
02c7b540  adrp x8,0x5e58000
02c7b544  ldr x8,[x8, #0xbf8]
02c7b548  ldr x8,[x8]
02c7b54c  ldr x8,[x8, #0xb8]
02c7b550  ldr d0,[x8]
02c7b554  ldr s1,[x8, #0x8]
02c7b558  fdiv s2,s2,s8
02c7b55c  fsub s2,s12,s2
02c7b560  fmul s2,s2,s2
02c7b564  fmul s2,s2,s11
02c7b568  fmul v0.2S,v0.2S,v2.S[0x0]
02c7b56c  fmul s1,s2,s1
02c7b570  fadd v0.2S,v9.2S,v0.2S
02c7b574  fadd s1,s10,s1
02c7b578  stur d0,[x22, #0x4c]
02c7b57c  str s1,[x22, #0x54]
02c7b580  ldr w8,[x24, #0x18]
02c7b584  add x28,x28,#0x1
02c7b588  cmp x28,w8, SXTW 
02c7b58c  b.lt 0x02c7b3d4
02c7b590  ldr x8,[x19, #0x20]
02c7b594  add x25,x25,#0x1
02c7b598  cbnz x8,0x02c7b320
02c7b59c  bl 0x029f5cfc
02c7b5a0  ldp x20,x19,[sp, #0xb0]
02c7b5a4  ldp x22,x21,[sp, #0xa0]
02c7b5a8  ldp x24,x23,[sp, #0x90]
02c7b5ac  ldp x26,x25,[sp, #0x80]
02c7b5b0  ldp x28,x27,[sp, #0x70]
02c7b5b4  ldp x29,x30,[sp, #0x60]
02c7b5b8  ldp d9,d8,[sp, #0x50]
02c7b5bc  ldp d11,d10,[sp, #0x40]
02c7b5c0  ldp d13,d12,[sp, #0x30]
02c7b5c4  ldp d15,d14,[sp, #0x20]
02c7b5c8  add sp,sp,#0xc0
02c7b5cc  ret
02c7b5d0  bl 0x029f5d04
