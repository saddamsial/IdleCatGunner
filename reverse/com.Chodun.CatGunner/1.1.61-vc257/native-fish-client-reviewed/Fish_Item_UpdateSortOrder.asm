02c613e4  sub sp,sp,#0x40
02c613e8  stp d9,d8,[sp, #0x10]
02c613ec  stp x30,x21,[sp, #0x20]
02c613f0  stp x20,x19,[sp, #0x30]
02c613f4  adrp x21,0x625c000
02c613f8  adrp x20,0x5e59000
02c613fc  mov x19,x0
02c61400  ldrb w8,[x21, #0x224]
02c61404  ldr x20,[x20, #0x1c0]
02c61408  tbnz w8,#0x0,0x02c61420
02c6140c  adrp x0,0x5e59000
02c61410  ldr x0,[x0, #0x1c0]
02c61414  bl 0x029f5a50
02c61418  mov w8,#0x1
02c6141c  strb w8,[x21, #0x224]
02c61420  ldr x0,[x20]
02c61424  ldr x20,[x19, #0x60]
02c61428  ldr w8,[x0, #0xe4]
02c6142c  cbnz w8,0x02c61434
02c61430  bl 0x029f5bd0
02c61434  mov x0,x20
02c61438  mov x1,xzr
02c6143c  mov x2,xzr
02c61440  bl 0x057e14b4
02c61444  tbz w0,#0x0,0x02c6145c
02c61448  ldp x20,x19,[sp, #0x30]
02c6144c  ldp x30,x21,[sp, #0x20]
02c61450  ldp d9,d8,[sp, #0x10]
02c61454  add sp,sp,#0x40
02c61458  ret
02c6145c  ldr x0,[x19, #0x50]
02c61460  cbz x0,0x02c615a8
02c61464  mov x1,xzr
02c61468  bl 0x057eddfc
02c6146c  fmov s8,s1
02c61470  mov w9,#0x43960000
02c61474  adrp x20,0x625b000
02c61478  fmov s9,w9
02c6147c  ldrb w8,[x20, #0x95a]
02c61480  cbnz w8,0x02c61498
02c61484  adrp x0,0x5e59000
02c61488  ldr x0,[x0]
02c6148c  bl 0x029f5a50
02c61490  mov w8,#0x1
02c61494  strb w8,[x20, #0x95a]
02c61498  adrp x8,0x5e59000
02c6149c  fsub s9,s9,s8
02c614a0  ldr x8,[x8]
02c614a4  ldr x0,[x8]
02c614a8  ldr w8,[x0, #0xe4]
02c614ac  cbnz w8,0x02c614b4
02c614b0  bl 0x029f5bd0
02c614b4  fcvt d8,s9
02c614b8  add x0,sp,#0x8
02c614bc  fmov d0,d8
02c614c0  bl 0x05afb230
02c614c4  fcmp s9,#0.0
02c614c8  b.ge 0x02c614e4
02c614cc  fmov d1,-0x4020000000000000
02c614d0  fcmp d0,d1
02c614d4  b.ne 0x02c6150c
02c614d8  ldr d0,[sp, #0x8]
02c614dc  fmov d1,-0x4010000000000000
02c614e0  b 0x02c614f8
02c614e4  fmov d1,0x3fe0000000000000
02c614e8  fcmp d0,d1
02c614ec  b.ne 0x02c61518
02c614f0  fmov d1,0x3ff0000000000000
02c614f4  ldr d0,[sp, #0x8]
02c614f8  fcvtzs x8,d0
02c614fc  fadd d1,d0,d1
02c61500  tst x8,#0x1
02c61504  fcsel d0,d0,d1,eq
02c61508  b 0x02c61520
02c6150c  fadd d0,d8,d1
02c61510  frintp d0,d0
02c61514  b 0x02c61520
02c61518  fadd d0,d8,d1
02c6151c  frintm d0,d0
02c61520  mov x8,#0x7ff0000000000000
02c61524  ldr w9,[x19, #0x40]
02c61528  fcvtzs w10,d0
02c6152c  fmov d1,x8
02c61530  mov w11,#0x80000000
02c61534  bic w8,w9,w9, ASR #0x1f
02c61538  mov w9,#0xc
02c6153c  fcmp d0,d1
02c61540  sub w8,w9,w8
02c61544  mov w9,#0xa
02c61548  csel w10,w11,w10,eq
02c6154c  madd w8,w8,w9,w10
02c61550  ldrb w9,[x19, #0x84]
02c61554  mov w10,#0x7d0
02c61558  cmp w8,#0x7d0
02c6155c  csel w8,w8,w10,lt
02c61560  cbz w9,0x02c6156c
02c61564  mov w1,#0x270f
02c61568  b 0x02c61588
02c6156c  ldrb w9,[x19, #0x86]
02c61570  bic w1,w8,w8, ASR #0x1f
02c61574  cbz w9,0x02c61588
02c61578  ldrb w8,[x19, #0x87]
02c6157c  cmp w8,#0x0
02c61580  mov w8,#0x270e
02c61584  csel w1,w1,w8,eq
02c61588  ldr x0,[x19, #0x60]
02c6158c  cbz x0,0x02c615a8
02c61590  ldp x20,x19,[sp, #0x30]
02c61594  mov x2,xzr
02c61598  ldp x30,x21,[sp, #0x20]
02c6159c  ldp d9,d8,[sp, #0x10]
02c615a0  add sp,sp,#0x40
02c615a4  b 0x05aa29d0
02c615a8  bl 0x029f5cfc
