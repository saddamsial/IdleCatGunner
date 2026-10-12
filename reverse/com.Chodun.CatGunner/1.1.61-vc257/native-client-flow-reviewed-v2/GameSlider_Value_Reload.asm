02c7a4f0  sub sp,sp,#0x30
02c7a4f4  str d8,[sp, #0x10]
02c7a4f8  str x30,[sp, #0x18]
02c7a4fc  stp x20,x19,[sp, #0x20]
02c7a500  fmov s8,s0
02c7a504  adrp x20,0x625c000
02c7a508  mov x19,x0
02c7a50c  ldrb w8,[x20, #0x311]
02c7a510  tbnz w8,#0x0,0x02c7a528
02c7a514  adrp x0,0x5e63000
02c7a518  ldr x0,[x0, #0x338]
02c7a51c  bl 0x029f5a50
02c7a520  mov w8,#0x1
02c7a524  strb w8,[x20, #0x311]
02c7a528  ldr x0,[x19, #0x28]
02c7a52c  cbz x0,0x02c7a5c8
02c7a530  fmov s0,s8
02c7a534  adrp x20,0x5e63000
02c7a538  mov x1,xzr
02c7a53c  ldr x20,[x20, #0x338]
02c7a540  bl 0x02c28290
02c7a544  mov w8,#0x42c80000
02c7a548  mov w10,#0x80000000
02c7a54c  add x1,sp,#0xc
02c7a550  fmov s0,w8
02c7a554  mov w8,#0x7f800000
02c7a558  fmov s1,w8
02c7a55c  adrp x8,0x5e58000
02c7a560  ldr x8,[x8, #0xa10]
02c7a564  ldr x19,[x19, #0x40]
02c7a568  fmul s0,s8,s0
02c7a56c  ldr x0,[x8, #0x48]
02c7a570  fcvtzs w9,s0
02c7a574  fcmp s0,s1
02c7a578  csel w9,w10,w9,eq
02c7a57c  str w9,[sp, #0xc]
02c7a580  bl 0x029f5bd8
02c7a584  ldr x8,[x20]
02c7a588  mov x1,x0
02c7a58c  mov x2,xzr
02c7a590  mov x0,x8
02c7a594  bl 0x046b6c0c
02c7a598  cbz x19,0x02c7a5c8
02c7a59c  ldr x8,[x19]
02c7a5a0  mov x1,x0
02c7a5a4  mov x0,x19
02c7a5a8  ldr x9,[x8, #0x558]
02c7a5ac  ldr x2,[x8, #0x560]
02c7a5b0  blr x9
02c7a5b4  ldp x20,x19,[sp, #0x20]
02c7a5b8  ldr x30,[sp, #0x18]
02c7a5bc  ldr d8,[sp, #0x10]
02c7a5c0  add sp,sp,#0x30
02c7a5c4  ret
02c7a5c8  bl 0x029f5cfc
