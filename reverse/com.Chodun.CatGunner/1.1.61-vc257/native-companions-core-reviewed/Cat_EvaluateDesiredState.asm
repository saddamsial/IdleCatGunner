02c3fad0  str d14,[sp, #-0x60]!
02c3fad4  stp d13,d12,[sp, #0x8]
02c3fad8  stp d11,d10,[sp, #0x18]
02c3fadc  stp d9,d8,[sp, #0x28]
02c3fae0  str x30,[sp, #0x38]
02c3fae4  stp x22,x21,[sp, #0x40]
02c3fae8  stp x20,x19,[sp, #0x50]
02c3faec  fmov s8,s0
02c3faf0  adrp x21,0x625c000
02c3faf4  mov x20,x1
02c3faf8  ldrb w8,[x21, #0x9d]
02c3fafc  mov x19,x0
02c3fb00  tbnz w8,#0x0,0x02c3fb18
02c3fb04  adrp x0,0x5e59000
02c3fb08  ldr x0,[x0, #0x1c0]
02c3fb0c  bl 0x029f5a50
02c3fb10  mov w8,#0x1
02c3fb14  strb w8,[x21, #0x9d]
02c3fb18  ldr s0,[x19, #0x1c0]
02c3fb1c  fcmp s0,s8
02c3fb20  b.pl 0x02c3fb2c
02c3fb24  mov w0,wzr
02c3fb28  b 0x02c3fd4c
02c3fb2c  adrp x22,0x5e59000
02c3fb30  ldr x22,[x22, #0x1c0]
02c3fb34  ldr s11,[x19, #0x218]
02c3fb38  ldr x21,[x19, #0x1e0]
02c3fb3c  ldr x0,[x22]
02c3fb40  ldr w8,[x0, #0xe4]
02c3fb44  cbnz w8,0x02c3fb4c
02c3fb48  bl 0x029f5bd0
02c3fb4c  mov x0,x21
02c3fb50  mov x1,xzr
02c3fb54  mov x2,xzr
02c3fb58  bl 0x057dfa70
02c3fb5c  tbz w0,#0x0,0x02c3fc18
02c3fb60  mov x0,x19
02c3fb64  mov x1,xzr
02c3fb68  bl 0x057dc0f8
02c3fb6c  cbz x0,0x02c3fd6c
02c3fb70  mov x1,xzr
02c3fb74  bl 0x057eed98
02c3fb78  fmov s8,s0
02c3fb7c  fmov s9,s1
02c3fb80  adrp x21,0x625c000
02c3fb84  fmov s10,s2
02c3fb88  ldrb w8,[x21, #0xbe]
02c3fb8c  ldr s12,[x19, #0x1e8]
02c3fb90  ldr s14,[x19, #0x1ec]
02c3fb94  ldr s13,[x19, #0x1f0]
02c3fb98  cbnz w8,0x02c3fbb0
02c3fb9c  adrp x0,0x5e59000
02c3fba0  ldr x0,[x0]
02c3fba4  bl 0x029f5a50
02c3fba8  mov w8,#0x1
02c3fbac  strb w8,[x21, #0xbe]
02c3fbb0  adrp x22,0x5e59000
02c3fbb4  ldr x22,[x22]
02c3fbb8  ldr x0,[x22]
02c3fbbc  ldr w8,[x0, #0xe4]
02c3fbc0  cbnz w8,0x02c3fbc8
02c3fbc4  bl 0x029f5bd0
02c3fbc8  fsub s0,s9,s14
02c3fbcc  fsub s1,s8,s12
02c3fbd0  ldr w8,[x19, #0x208]
02c3fbd4  fsub s2,s10,s13
02c3fbd8  ldr s3,[x19, #0x1b8]
02c3fbdc  cmp w8,#0x3
02c3fbe0  fmul s1,s1,s1
02c3fbe4  fmul s0,s0,s0
02c3fbe8  fadd s0,s1,s0
02c3fbec  fmul s1,s2,s2
02c3fbf0  fadd s0,s1,s0
02c3fbf4  fmov s1,0x3f800000
02c3fbf8  fadd s2,s11,s1
02c3fbfc  ldr s1,[x19, #0x150]
02c3fc00  fsqrt s0,s0
02c3fc04  b.ne 0x02c3fc50
02c3fc08  fmul s2,s2,s3
02c3fc0c  fcmp s0,s2
02c3fc10  b.mi 0x02c3fc70
02c3fc14  b 0x02c3fc78
02c3fc18  cbz x20,0x02c3fd6c
02c3fc1c  ldr x0,[x22]
02c3fc20  ldr x19,[x20, #0x1e0]
02c3fc24  ldr w8,[x0, #0xe4]
02c3fc28  cbnz w8,0x02c3fc30
02c3fc2c  bl 0x029f5bd0
02c3fc30  mov x0,x19
02c3fc34  mov x1,xzr
02c3fc38  mov x2,xzr
02c3fc3c  bl 0x057dfa70
02c3fc40  mov w8,#0x4
02c3fc44  tst w0,#0x1
02c3fc48  csel w0,w8,wzr,ne
02c3fc4c  b 0x02c3fd4c
02c3fc50  fcmp s0,s3
02c3fc54  b.mi 0x02c3fc70
02c3fc58  cmp w8,#0x2
02c3fc5c  b.ne 0x02c3fc78
02c3fc60  fmul s1,s2,s1
02c3fc64  fcmp s0,s1
02c3fc68  csinc w0,w8,wzr,ls
02c3fc6c  b 0x02c3fd4c
02c3fc70  mov w0,#0x3
02c3fc74  b 0x02c3fd4c
02c3fc78  fcmp s0,s1
02c3fc7c  b.ls 0x02c3fd48
02c3fc80  ldr x0,[x19, #0x1e0]
02c3fc84  cbz x0,0x02c3fd6c
02c3fc88  mov x1,xzr
02c3fc8c  bl 0x057dc0f8
02c3fc90  cbz x0,0x02c3fd6c
02c3fc94  mov x1,xzr
02c3fc98  bl 0x057eed98
02c3fc9c  adrp x8,0x116b000
02c3fca0  ldr s3,[x19, #0xa4]
02c3fca4  mov x0,x19
02c3fca8  ldr s4,[x8, #0xf90]
02c3fcac  fmul s3,s3,s4
02c3fcb0  bl 0x02c4091c
02c3fcb4  cbz x20,0x02c3fd6c
02c3fcb8  mov x0,x20
02c3fcbc  mov x1,xzr
02c3fcc0  fmov s8,s0
02c3fcc4  fmov s10,s1
02c3fcc8  fmov s9,s2
02c3fccc  bl 0x057dc0f8
02c3fcd0  cbz x0,0x02c3fd6c
02c3fcd4  mov x1,xzr
02c3fcd8  bl 0x057eed98
02c3fcdc  fmov s11,s0
02c3fce0  fmov s12,s1
02c3fce4  ldrb w8,[x21, #0xbe]
02c3fce8  fmov s13,s2
02c3fcec  cbnz w8,0x02c3fd04
02c3fcf0  adrp x0,0x5e59000
02c3fcf4  ldr x0,[x0]
02c3fcf8  bl 0x029f5a50
02c3fcfc  mov w8,#0x1
02c3fd00  strb w8,[x21, #0xbe]
02c3fd04  ldr x0,[x22]
02c3fd08  ldr w8,[x0, #0xe4]
02c3fd0c  cbnz w8,0x02c3fd14
02c3fd10  bl 0x029f5bd0
02c3fd14  fsub s0,s10,s12
02c3fd18  fsub s1,s8,s11
02c3fd1c  fsub s2,s9,s13
02c3fd20  fmul s1,s1,s1
02c3fd24  fmul s0,s0,s0
02c3fd28  fadd s0,s1,s0
02c3fd2c  fmul s1,s2,s2
02c3fd30  fadd s0,s1,s0
02c3fd34  ldr s1,[x19, #0x1c0]
02c3fd38  fsqrt s0,s0
02c3fd3c  fcmp s0,s1
02c3fd40  cset w0,le
02c3fd44  b 0x02c3fd4c
02c3fd48  mov w0,#0x2
02c3fd4c  ldp x20,x19,[sp, #0x50]
02c3fd50  ldr x30,[sp, #0x38]
02c3fd54  ldp x22,x21,[sp, #0x40]
02c3fd58  ldp d9,d8,[sp, #0x28]
02c3fd5c  ldp d11,d10,[sp, #0x18]
02c3fd60  ldp d13,d12,[sp, #0x8]
02c3fd64  ldr d14,[sp], #0x60
02c3fd68  ret
02c3fd6c  bl 0x029f5cfc
