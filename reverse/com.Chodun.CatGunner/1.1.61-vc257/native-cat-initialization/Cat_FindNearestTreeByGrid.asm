02c3ecd8  sub sp,sp,#0xa0
02c3ecdc  stp d13,d12,[sp, #0x10]
02c3ece0  stp d11,d10,[sp, #0x20]
02c3ece4  stp d9,d8,[sp, #0x30]
02c3ece8  stp x29,x30,[sp, #0x40]
02c3ecec  stp x28,x27,[sp, #0x50]
02c3ecf0  stp x26,x25,[sp, #0x60]
02c3ecf4  stp x24,x23,[sp, #0x70]
02c3ecf8  stp x22,x21,[sp, #0x80]
02c3ecfc  stp x20,x19,[sp, #0x90]
02c3ed00  adrp x19,0x625c000
02c3ed04  adrp x21,0x5e5d000
02c3ed08  mov x29,x0
02c3ed0c  ldrb w8,[x19, #0x93]
02c3ed10  ldr x21,[x21, #0xc20]
02c3ed14  tbnz w8,#0x0,0x02c3ed50
02c3ed18  adrp x0,0x5e5d000
02c3ed1c  ldr x0,[x0, #0x790]
02c3ed20  bl 0x029f5a50
02c3ed24  adrp x0,0x5e59000
02c3ed28  ldr x0,[x0, #0x1c0]
02c3ed2c  bl 0x029f5a50
02c3ed30  adrp x0,0x5e5d000
02c3ed34  ldr x0,[x0, #0x5e8]
02c3ed38  bl 0x029f5a50
02c3ed3c  adrp x0,0x5e5d000
02c3ed40  ldr x0,[x0, #0xc20]
02c3ed44  bl 0x029f5a50
02c3ed48  mov w8,#0x1
02c3ed4c  strb w8,[x19, #0x93]
02c3ed50  ldr x0,[x21]
02c3ed54  adrp x27,0x5e59000
02c3ed58  ldr w8,[x0, #0xe4]
02c3ed5c  ldr x27,[x27, #0x1c0]
02c3ed60  cbnz w8,0x02c3ed6c
02c3ed64  bl 0x029f5bd0
02c3ed68  ldr x0,[x21]
02c3ed6c  ldr x8,[x27]
02c3ed70  ldr x9,[x0, #0xb8]
02c3ed74  ldr w10,[x8, #0xe4]
02c3ed78  ldr x20,[x9, #0x10]
02c3ed7c  cbnz w10,0x02c3ed88
02c3ed80  mov x0,x8
02c3ed84  bl 0x029f5bd0
02c3ed88  mov x0,x20
02c3ed8c  mov x1,xzr
02c3ed90  mov x2,xzr
02c3ed94  bl 0x057e14b4
02c3ed98  mov x8,xzr
02c3ed9c  tbnz w0,#0x0,0x02c3f278
02c3eda0  ldr x0,[x21]
02c3eda4  ldr w8,[x0, #0xe4]
02c3eda8  cbnz w8,0x02c3edb4
02c3edac  bl 0x029f5bd0
02c3edb0  ldr x0,[x21]
02c3edb4  ldr x8,[x0, #0xb8]
02c3edb8  ldr x8,[x8, #0x10]
02c3edbc  cbz x8,0x02c3f3d0
02c3edc0  ldr x28,[x8, #0xf8]
02c3edc4  cbz x28,0x02c3f274
02c3edc8  ldr x8,[x28, #0x18]
02c3edcc  cbz x8,0x02c3f278
02c3edd0  mov x0,x29
02c3edd4  mov x1,xzr
02c3edd8  bl 0x057dc0f8
02c3eddc  cbz x0,0x02c3f3d0
02c3ede0  mov x1,xzr
02c3ede4  bl 0x057eed98
02c3ede8  ldr x8,[x28, #0x18]
02c3edec  cmp w8,#0x1
02c3edf0  b.lt 0x02c3f274
02c3edf4  fmov s9,s0
02c3edf8  fmov s8,s2
02c3edfc  mov x19,xzr
02c3ee00  mov w20,wzr
02c3ee04  and x8,x8,#0xffffffff
02c3ee08  add x22,x28,#0x20
02c3ee0c  cmp x19,w8, UXTW 
02c3ee10  b.cs 0x02c3f3cc
02c3ee14  ldr x0,[x27]
02c3ee18  ldr x21,[x22, x19, LSL #0x3]
02c3ee1c  ldr w8,[x0, #0xe4]
02c3ee20  cbnz w8,0x02c3ee28
02c3ee24  bl 0x029f5bd0
02c3ee28  mov x0,x21
02c3ee2c  mov x1,xzr
02c3ee30  mov x2,xzr
02c3ee34  bl 0x057dfa70
02c3ee38  tbz w0,#0x0,0x02c3ee6c
02c3ee3c  ldr w8,[x28, #0x18]
02c3ee40  cmp x19,x8
02c3ee44  b.cs 0x02c3f3cc
02c3ee48  ldr x0,[x22, x19, LSL #0x3]
02c3ee4c  cbz x0,0x02c3f3d0
02c3ee50  mov x1,xzr
02c3ee54  bl 0x057dc1c8
02c3ee58  cbz x0,0x02c3f3d0
02c3ee5c  mov x1,xzr
02c3ee60  bl 0x057e00b4
02c3ee64  and w8,w0,#0x1
02c3ee68  add w20,w20,w8
02c3ee6c  ldr w8,[x28, #0x18]
02c3ee70  add x19,x19,#0x1
02c3ee74  cmp x19,w8, SXTW 
02c3ee78  b.lt 0x02c3ee0c
02c3ee7c  cbz w20,0x02c3f274
02c3ee80  adrp x8,0x5e5d000
02c3ee84  mov w1,w20
02c3ee88  ldr x8,[x8, #0x790]
02c3ee8c  ldr x0,[x8]
02c3ee90  bl 0x029f5b40
02c3ee94  adrp x8,0x5e5d000
02c3ee98  mov x21,x0
02c3ee9c  mov w1,w20
02c3eea0  ldr x8,[x8, #0x5e8]
02c3eea4  ldr x8,[x8]
02c3eea8  mov x0,x8
02c3eeac  bl 0x029f5b40
02c3eeb0  ldr x8,[x28, #0x18]
02c3eeb4  mov x22,x0
02c3eeb8  cmp w8,#0x1
02c3eebc  b.lt 0x02c3efc8
02c3eec0  mov x19,xzr
02c3eec4  mov w24,wzr
02c3eec8  and x8,x8,#0xffffffff
02c3eecc  add x25,x28,#0x20
02c3eed0  mov w26,#0x42340000
02c3eed4  cmp x19,w8, UXTW 
02c3eed8  b.cs 0x02c3f3cc
02c3eedc  ldr x0,[x27]
02c3eee0  ldr x23,[x25, x19, LSL #0x3]
02c3eee4  ldr w8,[x0, #0xe4]
02c3eee8  cbnz w8,0x02c3eef0
02c3eeec  bl 0x029f5bd0
02c3eef0  mov x0,x23
02c3eef4  mov x1,xzr
02c3eef8  mov x2,xzr
02c3eefc  bl 0x057e14b4
02c3ef00  tbnz w0,#0x0,0x02c3efb8
02c3ef04  ldr w8,[x28, #0x18]
02c3ef08  cmp x19,x8
02c3ef0c  b.cs 0x02c3f3cc
02c3ef10  ldr x0,[x25, x19, LSL #0x3]
02c3ef14  cbz x0,0x02c3f3d0
02c3ef18  mov x1,xzr
02c3ef1c  bl 0x057dc1c8
02c3ef20  cbz x0,0x02c3f3d0
02c3ef24  mov x1,xzr
02c3ef28  bl 0x057e00b4
02c3ef2c  tbz w0,#0x0,0x02c3efb8
02c3ef30  cbz x21,0x02c3f3d0
02c3ef34  ldr w8,[x21, #0x18]
02c3ef38  cmp w24,w8
02c3ef3c  b.cs 0x02c3f3cc
02c3ef40  sxtw x23,w24
02c3ef44  ldr w8,[x28, #0x18]
02c3ef48  add x9,x21,x23, LSL #0x2
02c3ef4c  cmp x19,x8
02c3ef50  str w19,[x9, #0x20]
02c3ef54  b.cs 0x02c3f3cc
02c3ef58  ldr x0,[x25, x19, LSL #0x3]
02c3ef5c  cbz x0,0x02c3f3d0
02c3ef60  mov x1,xzr
02c3ef64  bl 0x057dc0f8
02c3ef68  cbz x0,0x02c3f3d0
02c3ef6c  mov x1,xzr
02c3ef70  bl 0x057eed98
02c3ef74  fcmp s8,s2
02c3ef78  b.pl 0x02c3ef84
02c3ef7c  fsub s0,s2,s8
02c3ef80  b 0x02c3ef9c
02c3ef84  fmov s0,w26
02c3ef88  fadd s1,s2,s0
02c3ef8c  movi d0,#0x0
02c3ef90  fcmp s8,s1
02c3ef94  b.le 0x02c3ef9c
02c3ef98  fsub s0,s8,s1
02c3ef9c  cbz x22,0x02c3f3d0
02c3efa0  ldr w8,[x22, #0x18]
02c3efa4  cmp w24,w8
02c3efa8  b.cs 0x02c3f3cc
02c3efac  add x8,x22,x23, LSL #0x2
02c3efb0  add w24,w24,#0x1
02c3efb4  str s0,[x8, #0x20]
02c3efb8  ldr w8,[x28, #0x18]
02c3efbc  add x19,x19,#0x1
02c3efc0  cmp x19,w8, SXTW 
02c3efc4  b.lt 0x02c3eed4
02c3efc8  subs w8,w20,#0x1
02c3efcc  b.le 0x02c3f098
02c3efd0  cbz x22,0x02c3f3d0
02c3efd4  ldr w10,[x22, #0x18]
02c3efd8  mov x9,xzr
02c3efdc  add x12,x22,#0x24
02c3efe0  add x13,x21,#0x24
02c3efe4  mov w14,#0x1
02c3efe8  cmp w10,#0x1
02c3efec  csinc w11,w10,wzr,hi
02c3eff0  sub w11,w11,#0x1
02c3eff4  cmp x9,x11
02c3eff8  b.eq 0x02c3f3cc
02c3effc  cbz x21,0x02c3f3d0
02c3f000  ldr x16,[x21, #0x18]
02c3f004  cmp x14,w16, UXTW 
02c3f008  b.cs 0x02c3f3cc
02c3f00c  add x15,x22,x14, LSL #0x2
02c3f010  add x17,x21,x14, LSL #0x2
02c3f014  mov x0,x13
02c3f018  mov x1,x12
02c3f01c  ldr s0,[x15, #0x20]
02c3f020  ldr w15,[x17, #0x20]
02c3f024  mov x17,x14
02c3f028  ldur s1,[x1, #-0x4]
02c3f02c  fcmp s1,s0
02c3f030  b.le 0x02c3f05c
02c3f034  mov x2,x0
02c3f038  sub x17,x17,#0x1
02c3f03c  ldr w3,[x2, #-0x4]!
02c3f040  cmp x17,#0x1
02c3f044  str s1,[x1], #-0x4
02c3f048  str w3,[x0]
02c3f04c  mov x0,x2
02c3f050  b.ge 0x02c3f028
02c3f054  mov w17,wzr
02c3f058  b 0x02c3f05c
02c3f05c  cmp w17,w10
02c3f060  b.cs 0x02c3f3cc
02c3f064  sxtw x17,w17
02c3f068  add x0,x22,x17, LSL #0x2
02c3f06c  cmp w17,w16
02c3f070  str s0,[x0, #0x20]
02c3f074  b.cs 0x02c3f3cc
02c3f078  add x16,x21,x17, LSL #0x2
02c3f07c  add x9,x9,#0x1
02c3f080  add x14,x14,#0x1
02c3f084  cmp x9,x8
02c3f088  add x12,x12,#0x4
02c3f08c  add x13,x13,#0x4
02c3f090  str w15,[x16, #0x20]
02c3f094  b.ne 0x02c3eff4
02c3f098  ldr s0,[x29, #0x170]
02c3f09c  cmp w20,#0x1
02c3f0a0  str x29,[sp, #0x8]
02c3f0a4  fmul s11,s0,s0
02c3f0a8  b.lt 0x02c3f2a8
02c3f0ac  cbz x22,0x02c3f3d0
02c3f0b0  movi d12,#0x0
02c3f0b4  mov w9,#0x7f7fffff
02c3f0b8  mov w8,wzr
02c3f0bc  fmov s10,w9
02c3f0c0  str xzr,[sp]
02c3f0c4  ldr w9,[x22, #0x18]
02c3f0c8  cmp w8,w9
02c3f0cc  b.cs 0x02c3f3cc
02c3f0d0  mov w29,w8
02c3f0d4  add x8,x22,x29, LSL #0x2
02c3f0d8  ldr s0,[x8, #0x20]
02c3f0dc  fcmp s0,s10
02c3f0e0  b.gt 0x02c3f2b4
02c3f0e4  cbz x21,0x02c3f3d0
02c3f0e8  ldr w8,[x21, #0x18]
02c3f0ec  cmp w29,w8
02c3f0f0  b.cs 0x02c3f3cc
02c3f0f4  add x8,x21,x29, LSL #0x2
02c3f0f8  ldr w9,[x28, #0x18]
02c3f0fc  ldrsw x8,[x8, #0x20]
02c3f100  cmp w8,w9
02c3f104  b.cs 0x02c3f3cc
02c3f108  add x8,x28,x8, LSL #0x3
02c3f10c  ldr x8,[x8, #0x20]
02c3f110  cbz x8,0x02c3f3d0
02c3f114  ldr x19,[x8, #0x20]
02c3f118  cbz x19,0x02c3f264
02c3f11c  ldr x8,[x19, #0x18]
02c3f120  cmp w8,#0x1
02c3f124  b.lt 0x02c3f264
02c3f128  mov x26,xzr
02c3f12c  and x8,x8,#0xffffffff
02c3f130  add x23,x19,#0x20
02c3f134  cmp x26,w8, UXTW 
02c3f138  b.cs 0x02c3f3cc
02c3f13c  ldr x0,[x27]
02c3f140  ldr x24,[x23, x26, LSL #0x3]
02c3f144  ldr w8,[x0, #0xe4]
02c3f148  cbnz w8,0x02c3f150
02c3f14c  bl 0x029f5bd0
02c3f150  mov x0,x24
02c3f154  mov x1,xzr
02c3f158  mov x2,xzr
02c3f15c  bl 0x057e14b4
02c3f160  tbnz w0,#0x0,0x02c3f254
02c3f164  cbz x24,0x02c3f3d0
02c3f168  mov x0,x24
02c3f16c  mov x1,xzr
02c3f170  bl 0x057dc1c8
02c3f174  cbz x0,0x02c3f3d0
02c3f178  mov x1,xzr
02c3f17c  bl 0x057e00b4
02c3f180  tbz w0,#0x0,0x02c3f254
02c3f184  ldr x0,[x27]
02c3f188  ldr x25,[x24, #0x20]
02c3f18c  ldr w8,[x0, #0xe4]
02c3f190  cbnz w8,0x02c3f198
02c3f194  bl 0x029f5bd0
02c3f198  mov x0,x25
02c3f19c  mov x1,xzr
02c3f1a0  mov x2,xzr
02c3f1a4  bl 0x057e14b4
02c3f1a8  tbnz w0,#0x0,0x02c3f254
02c3f1ac  ldr x0,[x24, #0x20]
02c3f1b0  cbz x0,0x02c3f3d0
02c3f1b4  mov x1,xzr
02c3f1b8  bl 0x057dc1c8
02c3f1bc  cbz x0,0x02c3f3d0
02c3f1c0  mov x1,xzr
02c3f1c4  bl 0x057e00b4
02c3f1c8  tbz w0,#0x0,0x02c3f254
02c3f1cc  mov x0,x24
02c3f1d0  mov x1,xzr
02c3f1d4  bl 0x057dc0f8
02c3f1d8  cbz x0,0x02c3f3d0
02c3f1dc  mov x1,xzr
02c3f1e0  bl 0x057eed98
02c3f1e4  fsub s0,s0,s9
02c3f1e8  fsub s1,s2,s8
02c3f1ec  fmul s0,s0,s0
02c3f1f0  fmul s1,s1,s1
02c3f1f4  fadd s0,s0,s1
02c3f1f8  fsqrt s13,s0
02c3f1fc  fcmp s0,s11
02c3f200  b.ls 0x02c3f238
02c3f204  mov x0,x24
02c3f208  mov x1,xzr
02c3f20c  bl 0x057dc0f8
02c3f210  cbz x0,0x02c3f3d0
02c3f214  mov x1,xzr
02c3f218  bl 0x057eed98
02c3f21c  fsub s0,s2,s8
02c3f220  ldr x8,[sp, #0x8]
02c3f224  ldr s1,[x8, #0x16c]
02c3f228  fcmp s0,#0.0
02c3f22c  fcsel s0,s12,s0,mi
02c3f230  fmul s0,s1,s0
02c3f234  fadd s13,s13,s0
02c3f238  fcmp s13,s10
02c3f23c  b.pl 0x02c3f254
02c3f240  mov x0,x24
02c3f244  mov x1,xzr
02c3f248  bl 0x057dc0f8
02c3f24c  fmov s10,s13
02c3f250  str x0,[sp]
02c3f254  ldr w8,[x19, #0x18]
02c3f258  add x26,x26,#0x1
02c3f25c  cmp x26,w8, SXTW 
02c3f260  b.lt 0x02c3f134
02c3f264  add w8,w29,#0x1
02c3f268  cmp w8,w20
02c3f26c  b.ne 0x02c3f0c4
02c3f270  b 0x02c3f2b4
02c3f274  mov x8,xzr
02c3f278  ldp x20,x19,[sp, #0x90]
02c3f27c  mov x0,x8
02c3f280  ldp x22,x21,[sp, #0x80]
02c3f284  ldp x24,x23,[sp, #0x70]
02c3f288  ldp x26,x25,[sp, #0x60]
02c3f28c  ldp x28,x27,[sp, #0x50]
02c3f290  ldp x29,x30,[sp, #0x40]
02c3f294  ldp d9,d8,[sp, #0x30]
02c3f298  ldp d11,d10,[sp, #0x20]
02c3f29c  ldp d13,d12,[sp, #0x10]
02c3f2a0  add sp,sp,#0xa0
02c3f2a4  ret
02c3f2a8  mov w8,#0x7f7fffff
02c3f2ac  str xzr,[sp]
02c3f2b0  fmov s10,w8
02c3f2b4  adrp x19,0x5e5d000
02c3f2b8  ldr x19,[x19, #0xc20]
02c3f2bc  ldr x0,[x19]
02c3f2c0  ldr w8,[x0, #0xe4]
02c3f2c4  cbnz w8,0x02c3f2d0
02c3f2c8  bl 0x029f5bd0
02c3f2cc  ldr x0,[x19]
02c3f2d0  ldr x8,[x0, #0xb8]
02c3f2d4  ldr x20,[sp, #0x8]
02c3f2d8  ldr x19,[x8, #0x10]
02c3f2dc  cbz x19,0x02c3f3d0
02c3f2e0  ldr w8,[x19, #0x2c]
02c3f2e4  cmp w8,#0x4
02c3f2e8  b.ne 0x02c3f3c4
02c3f2ec  ldr x0,[x19, #0x100]
02c3f2f0  cbz x0,0x02c3f3d0
02c3f2f4  mov x1,xzr
02c3f2f8  bl 0x057dc1c8
02c3f2fc  cbz x0,0x02c3f3d0
02c3f300  mov x1,xzr
02c3f304  bl 0x057e00b4
02c3f308  tbz w0,#0x0,0x02c3f3c4
02c3f30c  ldr x0,[x19, #0x100]
02c3f310  cbz x0,0x02c3f3d0
02c3f314  mov x1,xzr
02c3f318  bl 0x057dc0f8
02c3f31c  cbz x0,0x02c3f3d0
02c3f320  mov x1,xzr
02c3f324  bl 0x057eed98
02c3f328  fsub s0,s0,s9
02c3f32c  fsub s1,s2,s8
02c3f330  fmul s0,s0,s0
02c3f334  fmul s1,s1,s1
02c3f338  fadd s0,s0,s1
02c3f33c  fsqrt s9,s0
02c3f340  fcmp s0,s11
02c3f344  b.ls 0x02c3f380
02c3f348  ldr x0,[x19, #0x100]
02c3f34c  cbz x0,0x02c3f3d0
02c3f350  mov x1,xzr
02c3f354  bl 0x057dc0f8
02c3f358  cbz x0,0x02c3f3d0
02c3f35c  mov x1,xzr
02c3f360  bl 0x057eed98
02c3f364  fsub s0,s2,s8
02c3f368  movi d1,#0x0
02c3f36c  fcmp s0,#0.0
02c3f370  fcsel s0,s1,s0,mi
02c3f374  ldr s1,[x20, #0x16c]
02c3f378  fmul s0,s1,s0
02c3f37c  fadd s9,s9,s0
02c3f380  fcmp s9,s10
02c3f384  ldr x8,[sp]
02c3f388  b.pl 0x02c3f278
02c3f38c  ldr x0,[x19, #0x100]
02c3f390  cbz x0,0x02c3f3d0
02c3f394  ldp x20,x19,[sp, #0x90]
02c3f398  mov x1,xzr
02c3f39c  ldp x22,x21,[sp, #0x80]
02c3f3a0  ldp x24,x23,[sp, #0x70]
02c3f3a4  ldp x26,x25,[sp, #0x60]
02c3f3a8  ldp x28,x27,[sp, #0x50]
02c3f3ac  ldp x29,x30,[sp, #0x40]
02c3f3b0  ldp d9,d8,[sp, #0x30]
02c3f3b4  ldp d11,d10,[sp, #0x20]
02c3f3b8  ldp d13,d12,[sp, #0x10]
02c3f3bc  add sp,sp,#0xa0
02c3f3c0  b 0x057dc0f8
02c3f3c4  ldr x8,[sp]
02c3f3c8  b 0x02c3f278
02c3f3cc  bl 0x029f5d04
02c3f3d0  bl 0x029f5cfc
