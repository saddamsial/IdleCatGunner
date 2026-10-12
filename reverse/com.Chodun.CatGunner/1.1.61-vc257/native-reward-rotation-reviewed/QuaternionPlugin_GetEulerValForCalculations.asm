02cd3210  sub sp,sp,#0x60
02cd3214  stp d15,d14,[sp, #0x10]
02cd3218  stp d13,d12,[sp, #0x20]
02cd321c  stp d11,d10,[sp, #0x30]
02cd3220  stp d9,d8,[sp, #0x40]
02cd3224  stp x30,x19,[sp, #0x50]
02cd3228  cbz x1,0x02cd3458
02cd322c  fmov s9,s2
02cd3230  fmov s11,s1
02cd3234  ldrb w8,[x1, #0xb0]
02cd3238  fmov s13,s0
02cd323c  cbnz w8,0x02cd3424
02cd3240  ldr w8,[x1, #0x148]
02cd3244  and w8,w8,#0xfffffffe
02cd3248  cmp w8,#0x2
02cd324c  b.eq 0x02cd3424
02cd3250  mov w8,#0x43340000
02cd3254  fmov s15,s5
02cd3258  fmov s14,s4
02cd325c  fmov s0,w8
02cd3260  adrp x19,0x625b000
02cd3264  ldrb w8,[x19, #0x870]
02cd3268  fsub s8,s0,s13
02cd326c  fadd s10,s11,s0
02cd3270  fadd s12,s9,s0
02cd3274  cbnz w8,0x02cd3294
02cd3278  adrp x0,0x5e5a000
02cd327c  ldr x0,[x0, #0x218]
02cd3280  str s3,[sp, #0xc]
02cd3284  bl 0x029f5a50
02cd3288  ldr s3,[sp, #0xc]
02cd328c  mov w8,#0x1
02cd3290  strb w8,[x19, #0x870]
02cd3294  fabs s1,s3
02cd3298  fabs s0,s13
02cd329c  adrp x8,0x5e5a000
02cd32a0  ldr x8,[x8, #0x218]
02cd32a4  adrp x9,0x116c000
02cd32a8  fmov s2,0x41000000
02cd32ac  ldr s7,[x9, #0x1e4]
02cd32b0  fabs s5,s10
02cd32b4  fabs s16,s15
02cd32b8  ldr x8,[x8]
02cd32bc  fabs s6,s9
02cd32c0  fabs s18,s12
02cd32c4  fcmp s1,s0
02cd32c8  fabd s19,s12,s15
02cd32cc  ldr x8,[x8, #0xb8]
02cd32d0  fcsel s0,s1,s0,gt
02cd32d4  ldr s4,[x8]
02cd32d8  fmul s17,s4,s2
02cd32dc  fabs s2,s8
02cd32e0  fabs s4,s14
02cd32e4  fmul s0,s0,s7
02cd32e8  fcmp s0,s17
02cd32ec  fcsel s0,s0,s17,gt
02cd32f0  fcmp s1,s2
02cd32f4  fcsel s1,s1,s2,gt
02cd32f8  fabs s2,s11
02cd32fc  fmul s1,s1,s7
02cd3300  fcmp s1,s17
02cd3304  fcsel s20,s1,s17,gt
02cd3308  fcmp s4,s2
02cd330c  fcsel s1,s4,s2,gt
02cd3310  fmul s2,s1,s7
02cd3314  fabd s1,s11,s14
02cd3318  fcmp s2,s17
02cd331c  fcsel s2,s2,s17,gt
02cd3320  fcmp s1,s2
02cd3324  cset w8,mi
02cd3328  fcmp s4,s5
02cd332c  fcsel s4,s4,s5,gt
02cd3330  fmul s5,s4,s7
02cd3334  fabd s4,s10,s14
02cd3338  fcmp s5,s17
02cd333c  fcsel s5,s5,s17,gt
02cd3340  fcmp s4,s5
02cd3344  cset w9,mi
02cd3348  fcmp s16,s6
02cd334c  fcsel s6,s16,s6,gt
02cd3350  fmul s6,s6,s7
02cd3354  fcmp s6,s17
02cd3358  fcsel s6,s6,s17,gt
02cd335c  fcmp s16,s18
02cd3360  fcsel s16,s16,s18,gt
02cd3364  fmul s18,s16,s7
02cd3368  fabd s16,s9,s15
02cd336c  fabd s7,s13,s3
02cd3370  fcmp s18,s17
02cd3374  fcsel s18,s18,s17,gt
02cd3378  fcmp s16,s6
02cd337c  fabd s17,s8,s3
02cd3380  csinc w10,w8,wzr,pl
02cd3384  csel w8,wzr,w8,pl
02cd3388  fcmp s7,s0
02cd338c  csel w10,wzr,w10,pl
02cd3390  fcmp s19,s18
02cd3394  orr w8,w8,w10
02cd3398  eor w10,w8,#0x1
02cd339c  csinc w11,w9,wzr,pl
02cd33a0  csel w9,wzr,w9,pl
02cd33a4  fcmp s17,s20
02cd33a8  and w10,w11,w10
02cd33ac  csel w10,wzr,w10,pl
02cd33b0  tbnz w8,#0x0,0x02cd33bc
02cd33b4  tbnz w10,#0x0,0x02cd33bc
02cd33b8  cbz w9,0x02cd3424
02cd33bc  fcmp s1,s2
02cd33c0  mov w9,#0x2
02cd33c4  csinc w10,w9,wzr,mi
02cd33c8  fcmp s7,s0
02cd33cc  csel w10,w10,wzr,mi
02cd33d0  fcmp s4,s5
02cd33d4  csinc w9,w9,wzr,mi
02cd33d8  fcmp s17,s20
02cd33dc  csel w9,w9,wzr,mi
02cd33e0  cmp w8,#0x0
02cd33e4  csel w8,w10,w9,ne
02cd33e8  cbz w8,0x02cd3408
02cd33ec  cmp w8,#0x1
02cd33f0  b.ne 0x02cd3414
02cd33f4  fcmp s16,s6
02cd33f8  b.pl 0x02cd3430
02cd33fc  fcmp s7,s0
02cd3400  b.mi 0x02cd3424
02cd3404  b 0x02cd3430
02cd3408  fcmp s16,s6
02cd340c  b.mi 0x02cd341c
02cd3410  b 0x02cd3430
02cd3414  fcmp s7,s0
02cd3418  b.pl 0x02cd3430
02cd341c  fcmp s1,s2
02cd3420  b.pl 0x02cd3430
02cd3424  fmov s8,s13
02cd3428  fmov s10,s11
02cd342c  fmov s12,s9
02cd3430  fmov s0,s8
02cd3434  fmov s1,s10
02cd3438  fmov s2,s12
02cd343c  ldp x30,x19,[sp, #0x50]
02cd3440  ldp d9,d8,[sp, #0x40]
02cd3444  ldp d11,d10,[sp, #0x30]
02cd3448  ldp d13,d12,[sp, #0x20]
02cd344c  ldp d15,d14,[sp, #0x10]
02cd3450  add sp,sp,#0x60
02cd3454  ret
02cd3458  bl 0x029f5cfc
