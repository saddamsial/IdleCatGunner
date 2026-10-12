02c3aa78  sub sp,sp,#0x70
02c3aa7c  stp d15,d14,[sp, #0x10]
02c3aa80  stp d13,d12,[sp, #0x20]
02c3aa84  stp d11,d10,[sp, #0x30]
02c3aa88  stp d9,d8,[sp, #0x40]
02c3aa8c  stp x30,x21,[sp, #0x50]
02c3aa90  stp x20,x19,[sp, #0x60]
02c3aa94  adrp x20,0x625c000
02c3aa98  mov x19,x0
02c3aa9c  ldrb w8,[x20, #0xa9]
02c3aaa0  tbnz w8,#0x0,0x02c3aad0
02c3aaa4  adrp x0,0x5e63000
02c3aaa8  ldr x0,[x0, #0x1d8]
02c3aaac  bl 0x029f5a50
02c3aab0  adrp x0,0x5e59000
02c3aab4  ldr x0,[x0, #0x1c0]
02c3aab8  bl 0x029f5a50
02c3aabc  adrp x0,0x5e61000
02c3aac0  ldr x0,[x0, #0x878]
02c3aac4  bl 0x029f5a50
02c3aac8  mov w8,#0x1
02c3aacc  strb w8,[x20, #0xa9]
02c3aad0  ldr x0,[x19, #0x28]
02c3aad4  cbz x0,0x02c3aeb0
02c3aad8  mov x1,xzr
02c3aadc  bl 0x02b87424
02c3aae0  ldr x0,[x19, #0x38]
02c3aae4  cbz x0,0x02c3aeb0
02c3aae8  fmov s8,s0
02c3aaec  fmov s9,s1
02c3aaf0  fmul s0,s0,s0
02c3aaf4  fmul s1,s1,s1
02c3aaf8  adrp x8,0x116c000
02c3aafc  mov x3,xzr
02c3ab00  ldr s11,[x8, #0x200]
02c3ab04  adrp x8,0x5e61000
02c3ab08  ldr x8,[x8, #0x878]
02c3ab0c  fadd s10,s0,s1
02c3ab10  ldr x1,[x8]
02c3ab14  fcmp s10,s11
02c3ab18  cset w2,gt
02c3ab1c  bl 0x05784a20
02c3ab20  fcmp s10,s11
02c3ab24  b.le 0x02c3abf4
02c3ab28  adrp x8,0x5e59000
02c3ab2c  ldr x8,[x8, #0x1c0]
02c3ab30  ldr x20,[x19, #0x1e0]
02c3ab34  ldr x0,[x8]
02c3ab38  ldr w8,[x0, #0xe4]
02c3ab3c  cbnz w8,0x02c3ab44
02c3ab40  bl 0x029f5bd0
02c3ab44  mov x0,x20
02c3ab48  mov x1,xzr
02c3ab4c  mov x2,xzr
02c3ab50  bl 0x057dfa70
02c3ab54  tbz w0,#0x0,0x02c3ad18
02c3ab58  adrp x20,0x5e63000
02c3ab5c  ldr x20,[x20, #0x1d8]
02c3ab60  ldr x0,[x20]
02c3ab64  ldr w8,[x0, #0xe4]
02c3ab68  cbnz w8,0x02c3ab74
02c3ab6c  bl 0x029f5bd0
02c3ab70  ldr x0,[x20]
02c3ab74  ldr x8,[x19, #0x1e0]
02c3ab78  cbz x8,0x02c3aeb0
02c3ab7c  ldr x9,[x0, #0xb8]
02c3ab80  mov x0,x8
02c3ab84  mov x1,xzr
02c3ab88  ldp s0,s11,[x9, #0x44]
02c3ab8c  ldp s12,s13,[x9, #0x4c]
02c3ab90  str s0,[sp, #0xc]
02c3ab94  bl 0x057dc0f8
02c3ab98  cbz x0,0x02c3aeb0
02c3ab9c  mov x1,xzr
02c3aba0  bl 0x057eed98
02c3aba4  mov x0,x19
02c3aba8  mov x1,xzr
02c3abac  fmov s14,s0
02c3abb0  fmov s15,s1
02c3abb4  fmov s10,s2
02c3abb8  bl 0x057dc0f8
02c3abbc  cbz x0,0x02c3aeb0
02c3abc0  mov x1,xzr
02c3abc4  bl 0x057eed98
02c3abc8  fsub s4,s14,s0
02c3abcc  fsub s5,s15,s1
02c3abd0  ldr s0,[sp, #0xc]
02c3abd4  fsub s6,s10,s2
02c3abd8  fmov s1,s11
02c3abdc  mov x0,xzr
02c3abe0  fmov s2,s12
02c3abe4  fmov s3,s13
02c3abe8  bl 0x057cdb04
02c3abec  fcmp s0,#0.0
02c3abf0  b 0x02c3ad1c
02c3abf4  ldr x20,[x19, #0x30]
02c3abf8  cbz x20,0x02c3aeb0
02c3abfc  mov x0,x20
02c3ac00  mov x1,xzr
02c3ac04  bl 0x0586b268
02c3ac08  movi d0,#0x0
02c3ac0c  movi d2,#0x0
02c3ac10  mov x0,x20
02c3ac14  mov x1,xzr
02c3ac18  bl 0x0586b344
02c3ac1c  adrp x8,0x5e59000
02c3ac20  ldr x8,[x8, #0x1c0]
02c3ac24  ldr x20,[x19, #0x1e0]
02c3ac28  ldr x0,[x8]
02c3ac2c  ldr w8,[x0, #0xe4]
02c3ac30  cbnz w8,0x02c3ac38
02c3ac34  bl 0x029f5bd0
02c3ac38  mov x0,x20
02c3ac3c  mov x1,xzr
02c3ac40  mov x2,xzr
02c3ac44  bl 0x057dfa70
02c3ac48  tbz w0,#0x0,0x02c3ad60
02c3ac4c  adrp x21,0x5e63000
02c3ac50  ldr x21,[x21, #0x1d8]
02c3ac54  ldr x0,[x21]
02c3ac58  ldr w8,[x0, #0xe4]
02c3ac5c  cbnz w8,0x02c3ac68
02c3ac60  bl 0x029f5bd0
02c3ac64  ldr x0,[x21]
02c3ac68  ldr x8,[x19, #0x1e0]
02c3ac6c  cbz x8,0x02c3aeb0
02c3ac70  ldr x9,[x0, #0xb8]
02c3ac74  mov x0,x8
02c3ac78  mov x1,xzr
02c3ac7c  ldp s8,s9,[x9, #0x44]
02c3ac80  ldp s10,s11,[x9, #0x4c]
02c3ac84  bl 0x057dc0f8
02c3ac88  cbz x0,0x02c3aeb0
02c3ac8c  mov x1,xzr
02c3ac90  bl 0x057eed98
02c3ac94  mov x0,x19
02c3ac98  mov x1,xzr
02c3ac9c  fmov s12,s0
02c3aca0  fmov s13,s1
02c3aca4  fmov s14,s2
02c3aca8  bl 0x057dc0f8
02c3acac  cbz x0,0x02c3aeb0
02c3acb0  mov x1,xzr
02c3acb4  bl 0x057eed98
02c3acb8  fsub s4,s12,s0
02c3acbc  fsub s5,s13,s1
02c3acc0  mov x0,xzr
02c3acc4  fsub s6,s14,s2
02c3acc8  fmov s0,s8
02c3accc  fmov s1,s9
02c3acd0  fmov s2,s10
02c3acd4  fmov s3,s11
02c3acd8  bl 0x057cdb04
02c3acdc  fcmp s0,#0.0
02c3ace0  ldr x0,[x21]
02c3ace4  ldr x20,[x19, #0xb8]
02c3ace8  ldr w8,[x0, #0xe4]
02c3acec  cset w9,ls
02c3acf0  strb w9,[x19, #0x1f8]
02c3acf4  b.hi 0x02c3ae5c
02c3acf8  cbnz w8,0x02c3ad04
02c3acfc  bl 0x029f5bd0
02c3ad00  ldr x0,[x21]
02c3ad04  ldr x10,[x0, #0xb8]
02c3ad08  add x8,x10,#0x20
02c3ad0c  add x9,x10,#0x24
02c3ad10  add x10,x10,#0x28
02c3ad14  b 0x02c3ae78
02c3ad18  fcmp s8,#0.0
02c3ad1c  cset w8,ls
02c3ad20  adrp x21,0x5e63000
02c3ad24  strb w8,[x19, #0x1f8]
02c3ad28  ldr x21,[x21, #0x1d8]
02c3ad2c  ldr x20,[x19, #0xb8]
02c3ad30  ldr x0,[x21]
02c3ad34  ldr w9,[x0, #0xe4]
02c3ad38  cbz w8,0x02c3ad80
02c3ad3c  cbnz w9,0x02c3ad48
02c3ad40  bl 0x029f5bd0
02c3ad44  ldr x0,[x21]
02c3ad48  ldr x10,[x0, #0xb8]
02c3ad4c  add x8,x10,#0x20
02c3ad50  add x9,x10,#0x24
02c3ad54  add x10,x10,#0x28
02c3ad58  cbnz x20,0x02c3ada0
02c3ad5c  b 0x02c3aeb0
02c3ad60  ldp x20,x19,[sp, #0x60]
02c3ad64  ldp x30,x21,[sp, #0x50]
02c3ad68  ldp d9,d8,[sp, #0x40]
02c3ad6c  ldp d11,d10,[sp, #0x30]
02c3ad70  ldp d13,d12,[sp, #0x20]
02c3ad74  ldp d15,d14,[sp, #0x10]
02c3ad78  add sp,sp,#0x70
02c3ad7c  ret
02c3ad80  cbnz w9,0x02c3ad8c
02c3ad84  bl 0x029f5bd0
02c3ad88  ldr x0,[x21]
02c3ad8c  ldr x10,[x0, #0xb8]
02c3ad90  add x8,x10,#0x2c
02c3ad94  add x9,x10,#0x30
02c3ad98  add x10,x10,#0x34
02c3ad9c  cbz x20,0x02c3aeb0
02c3ada0  ldr s2,[x10]
02c3ada4  ldr s1,[x9]
02c3ada8  mov x0,x20
02c3adac  ldr s0,[x8]
02c3adb0  mov x1,xzr
02c3adb4  bl 0x057ef218
02c3adb8  ldr x0,[x21]
02c3adbc  ldr w8,[x0, #0xe4]
02c3adc0  cbnz w8,0x02c3adcc
02c3adc4  bl 0x029f5bd0
02c3adc8  ldr x0,[x21]
02c3adcc  ldr x8,[x0, #0xb8]
02c3add0  movi d2,#0x0
02c3add4  mov x0,xzr
02c3add8  ldr s0,[x8, #0x60]
02c3addc  adrp x8,0x116c000
02c3ade0  ldr s1,[x8, #0xe0]
02c3ade4  fdiv s8,s8,s0
02c3ade8  fmul s9,s9,s0
02c3adec  movi d0,#0x0
02c3adf0  bl 0x057cd67c
02c3adf4  movi d5,#0x0
02c3adf8  fmov s4,s8
02c3adfc  mov x0,xzr
02c3ae00  fmov s6,s9
02c3ae04  bl 0x057cdb04
02c3ae08  ldr x20,[x19, #0x30]
02c3ae0c  cbz x20,0x02c3aeb0
02c3ae10  ldr s10,[x19, #0x20]
02c3ae14  mov x0,x20
02c3ae18  mov x1,xzr
02c3ae1c  fmov s8,s0
02c3ae20  fmov s9,s2
02c3ae24  bl 0x0586b268
02c3ae28  ldr s2,[x19, #0x20]
02c3ae2c  fmul s0,s8,s10
02c3ae30  mov x0,x20
02c3ae34  ldp x20,x19,[sp, #0x60]
02c3ae38  mov x1,xzr
02c3ae3c  fmul s2,s9,s2
02c3ae40  ldp x30,x21,[sp, #0x50]
02c3ae44  ldp d9,d8,[sp, #0x40]
02c3ae48  ldp d11,d10,[sp, #0x30]
02c3ae4c  ldp d13,d12,[sp, #0x20]
02c3ae50  ldp d15,d14,[sp, #0x10]
02c3ae54  add sp,sp,#0x70
02c3ae58  b 0x0586b344
02c3ae5c  cbnz w8,0x02c3ae68
02c3ae60  bl 0x029f5bd0
02c3ae64  ldr x0,[x21]
02c3ae68  ldr x10,[x0, #0xb8]
02c3ae6c  add x8,x10,#0x2c
02c3ae70  add x9,x10,#0x30
02c3ae74  add x10,x10,#0x34
02c3ae78  cbz x20,0x02c3aeb0
02c3ae7c  mov x0,x20
02c3ae80  ldp x20,x19,[sp, #0x60]
02c3ae84  ldp x30,x21,[sp, #0x50]
02c3ae88  mov x1,xzr
02c3ae8c  ldp d9,d8,[sp, #0x40]
02c3ae90  ldr s0,[x8]
02c3ae94  ldp d11,d10,[sp, #0x30]
02c3ae98  ldr s2,[x10]
02c3ae9c  ldr s1,[x9]
02c3aea0  ldp d13,d12,[sp, #0x20]
02c3aea4  ldp d15,d14,[sp, #0x10]
02c3aea8  add sp,sp,#0x70
02c3aeac  b 0x057ef218
02c3aeb0  bl 0x029f5cfc
