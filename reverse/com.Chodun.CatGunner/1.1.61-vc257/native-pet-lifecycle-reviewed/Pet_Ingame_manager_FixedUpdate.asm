02c7acb8  stp d13,d12,[sp, #-0x50]!
02c7acbc  stp d11,d10,[sp, #0x10]
02c7acc0  stp d9,d8,[sp, #0x20]
02c7acc4  stp x30,x21,[sp, #0x30]
02c7acc8  stp x20,x19,[sp, #0x40]
02c7accc  adrp x21,0x625c000
02c7acd0  adrp x20,0x5e59000
02c7acd4  mov x19,x0
02c7acd8  ldrb w8,[x21, #0x316]
02c7acdc  ldr x20,[x20, #0x1c0]
02c7ace0  tbnz w8,#0x0,0x02c7acf8
02c7ace4  adrp x0,0x5e59000
02c7ace8  ldr x0,[x0, #0x1c0]
02c7acec  bl 0x029f5a50
02c7acf0  mov w8,#0x1
02c7acf4  strb w8,[x21, #0x316]
02c7acf8  bl 0x02c7ac48
02c7acfc  ldr x8,[x20]
02c7ad00  mov x20,x0
02c7ad04  ldr w9,[x8, #0xe4]
02c7ad08  cbnz w9,0x02c7ad14
02c7ad0c  mov x0,x8
02c7ad10  bl 0x029f5bd0
02c7ad14  mov x0,x20
02c7ad18  mov x1,xzr
02c7ad1c  mov x2,xzr
02c7ad20  bl 0x057e14b4
02c7ad24  tbz w0,#0x0,0x02c7ad40
02c7ad28  ldp x20,x19,[sp, #0x40]
02c7ad2c  ldp x30,x21,[sp, #0x30]
02c7ad30  ldp d9,d8,[sp, #0x20]
02c7ad34  ldp d11,d10,[sp, #0x10]
02c7ad38  ldp d13,d12,[sp], #0x50
02c7ad3c  ret
02c7ad40  cbz x20,0x02c7ae44
02c7ad44  mov x0,x20
02c7ad48  mov x1,xzr
02c7ad4c  bl 0x057dc0f8
02c7ad50  cbz x0,0x02c7ae44
02c7ad54  mov x1,xzr
02c7ad58  bl 0x057eed98
02c7ad5c  fmov s8,s0
02c7ad60  fmov s9,s1
02c7ad64  adrp x21,0x625b000
02c7ad68  fmov s10,s2
02c7ad6c  ldp s11,s12,[x19, #0x58]
02c7ad70  ldrb w8,[x21, #0xae8]
02c7ad74  ldr s13,[x19, #0x60]
02c7ad78  cbnz w8,0x02c7ad90
02c7ad7c  adrp x0,0x5e59000
02c7ad80  ldr x0,[x0]
02c7ad84  bl 0x029f5a50
02c7ad88  mov w8,#0x1
02c7ad8c  strb w8,[x21, #0xae8]
02c7ad90  adrp x8,0x5e59000
02c7ad94  fsub s11,s8,s11
02c7ad98  fsub s9,s9,s12
02c7ad9c  ldr x8,[x8]
02c7ada0  fsub s8,s10,s13
02c7ada4  ldr x0,[x8]
02c7ada8  ldr w8,[x0, #0xe4]
02c7adac  cbnz w8,0x02c7adb4
02c7adb0  bl 0x029f5bd0
02c7adb4  fmul s0,s11,s11
02c7adb8  fmul s1,s9,s9
02c7adbc  mov x0,xzr
02c7adc0  fadd s0,s0,s1
02c7adc4  fmul s1,s8,s8
02c7adc8  fadd s0,s0,s1
02c7adcc  fsqrt s8,s0
02c7add0  bl 0x057ebb5c
02c7add4  fdiv s0,s8,s0
02c7add8  ldr s1,[x19, #0x64]
02c7addc  adrp x8,0x116b000
02c7ade0  ldr s2,[x8, #0xfbc]
02c7ade4  mov x0,x20
02c7ade8  mov x1,xzr
02c7adec  fsub s0,s0,s1
02c7adf0  fmul s0,s0,s2
02c7adf4  fadd s0,s1,s0
02c7adf8  str s0,[x19, #0x64]
02c7adfc  bl 0x057dc0f8
02c7ae00  cbz x0,0x02c7ae44
02c7ae04  mov x1,xzr
02c7ae08  bl 0x057eed98
02c7ae0c  mov x0,x19
02c7ae10  stp s0,s1,[x19, #0x58]
02c7ae14  str s2,[x19, #0x60]
02c7ae18  bl 0x02c7ae48
02c7ae1c  mov x0,x19
02c7ae20  bl 0x02c7b268
02c7ae24  mov x0,x19
02c7ae28  mov x1,x20
02c7ae2c  ldp x20,x19,[sp, #0x40]
02c7ae30  ldp x30,x21,[sp, #0x30]
02c7ae34  ldp d9,d8,[sp, #0x20]
02c7ae38  ldp d11,d10,[sp, #0x10]
02c7ae3c  ldp d13,d12,[sp], #0x50
02c7ae40  b 0x02c7b5d4
02c7ae44  bl 0x029f5cfc
