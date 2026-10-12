02c4091c  str d14,[sp, #-0x50]!
02c40920  stp d13,d12,[sp, #0x8]
02c40924  stp d11,d10,[sp, #0x18]
02c40928  stp d9,d8,[sp, #0x28]
02c4092c  str x30,[sp, #0x38]
02c40930  stp x20,x19,[sp, #0x40]
02c40934  mov x1,xzr
02c40938  fmov s10,s3
02c4093c  fmov s8,s2
02c40940  fmov s9,s1
02c40944  fmov s11,s0
02c40948  bl 0x057dc0f8
02c4094c  cbz x0,0x02c40a8c
02c40950  mov x1,xzr
02c40954  bl 0x057eed98
02c40958  fsub s12,s0,s11
02c4095c  fsub s13,s2,s8
02c40960  adrp x8,0x116c000
02c40964  movi d14,#0x0
02c40968  adrp x19,0x5e58000
02c4096c  ldr x19,[x19, #0xbf8]
02c40970  fmul s0,s12,s12
02c40974  fmul s1,s13,s13
02c40978  fadd s0,s0,s1
02c4097c  ldr s1,[x8, #0x268]
02c40980  fcmp s0,s1
02c40984  b.pl 0x02c409b8
02c40988  adrp x20,0x625b000
02c4098c  ldrb w8,[x20, #0x95b]
02c40990  cbnz w8,0x02c409a8
02c40994  adrp x0,0x5e58000
02c40998  ldr x0,[x0, #0xbf8]
02c4099c  bl 0x029f5a50
02c409a0  mov w8,#0x1
02c409a4  strb w8,[x20, #0x95b]
02c409a8  ldr x8,[x19]
02c409ac  ldr x8,[x8, #0xb8]
02c409b0  ldp s12,s14,[x8, #0x3c]
02c409b4  ldr s13,[x8, #0x44]
02c409b8  adrp x20,0x625b000
02c409bc  ldrb w8,[x20, #0x52e]
02c409c0  cbnz w8,0x02c409d8
02c409c4  adrp x0,0x5e59000
02c409c8  ldr x0,[x0]
02c409cc  bl 0x029f5a50
02c409d0  mov w8,#0x1
02c409d4  strb w8,[x20, #0x52e]
02c409d8  adrp x8,0x5e59000
02c409dc  ldr x8,[x8]
02c409e0  ldr x0,[x8]
02c409e4  ldr w8,[x0, #0xe4]
02c409e8  cbnz w8,0x02c409f0
02c409ec  bl 0x029f5bd0
02c409f0  fmul s0,s12,s12
02c409f4  fmul s1,s14,s14
02c409f8  adrp x8,0x116c000
02c409fc  fadd s0,s0,s1
02c40a00  fmul s1,s13,s13
02c40a04  fadd s0,s1,s0
02c40a08  fsqrt s2,s0
02c40a0c  ldr s0,[x8, #0x240]
02c40a10  fcmp s2,s0
02c40a14  b.le 0x02c40a28
02c40a18  fdiv s0,s12,s2
02c40a1c  fdiv s1,s14,s2
02c40a20  fdiv s2,s13,s2
02c40a24  b 0x02c40a58
02c40a28  adrp x20,0x625b000
02c40a2c  ldrb w8,[x20, #0x26f]
02c40a30  cbnz w8,0x02c40a48
02c40a34  adrp x0,0x5e58000
02c40a38  ldr x0,[x0, #0xbf8]
02c40a3c  bl 0x029f5a50
02c40a40  mov w8,#0x1
02c40a44  strb w8,[x20, #0x26f]
02c40a48  ldr x8,[x19]
02c40a4c  ldr x8,[x8, #0xb8]
02c40a50  ldp s0,s1,[x8]
02c40a54  ldr s2,[x8, #0x8]
02c40a58  fmul s0,s0,s10
02c40a5c  fmul s1,s1,s10
02c40a60  ldr x30,[sp, #0x38]
02c40a64  fmul s2,s2,s10
02c40a68  ldp x20,x19,[sp, #0x40]
02c40a6c  ldp d13,d12,[sp, #0x8]
02c40a70  fadd s0,s11,s0
02c40a74  fadd s1,s9,s1
02c40a78  fadd s2,s8,s2
02c40a7c  ldp d9,d8,[sp, #0x28]
02c40a80  ldp d11,d10,[sp, #0x18]
02c40a84  ldr d14,[sp], #0x50
02c40a88  ret
02c40a8c  bl 0x029f5cfc
