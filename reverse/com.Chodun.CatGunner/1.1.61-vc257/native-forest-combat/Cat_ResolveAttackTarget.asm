02c3bad0  stp d13,d12,[sp, #-0x50]!
02c3bad4  stp d11,d10,[sp, #0x10]
02c3bad8  stp d9,d8,[sp, #0x20]
02c3badc  stp x30,x21,[sp, #0x30]
02c3bae0  stp x20,x19,[sp, #0x40]
02c3bae4  adrp x20,0x625c000
02c3bae8  adrp x21,0x5e59000
02c3baec  mov x19,x0
02c3baf0  ldrb w8,[x20, #0xac]
02c3baf4  ldr x21,[x21, #0x1c0]
02c3baf8  tbnz w8,#0x0,0x02c3bb28
02c3bafc  adrp x0,0x5e63000
02c3bb00  ldr x0,[x0, #0x228]
02c3bb04  bl 0x029f5a50
02c3bb08  adrp x0,0x5e61000
02c3bb0c  ldr x0,[x0, #0x3d0]
02c3bb10  bl 0x029f5a50
02c3bb14  adrp x0,0x5e59000
02c3bb18  ldr x0,[x0, #0x1c0]
02c3bb1c  bl 0x029f5a50
02c3bb20  mov w8,#0x1
02c3bb24  strb w8,[x20, #0xac]
02c3bb28  ldr x0,[x21]
02c3bb2c  ldr x20,[x19, #0x28]
02c3bb30  ldr w8,[x0, #0xe4]
02c3bb34  cbnz w8,0x02c3bb3c
02c3bb38  bl 0x029f5bd0
02c3bb3c  mov x0,x20
02c3bb40  mov x1,xzr
02c3bb44  mov x2,xzr
02c3bb48  bl 0x057dfa70
02c3bb4c  tbz w0,#0x0,0x02c3bb64
02c3bb50  ldr x0,[x19, #0x28]
02c3bb54  cbz x0,0x02c3bf34
02c3bb58  mov x1,xzr
02c3bb5c  bl 0x02b87424
02c3bb60  b 0x02c3bb98
02c3bb64  adrp x20,0x625b000
02c3bb68  ldrb w8,[x20, #0x271]
02c3bb6c  cbnz w8,0x02c3bb84
02c3bb70  adrp x0,0x5e59000
02c3bb74  ldr x0,[x0, #0x608]
02c3bb78  bl 0x029f5a50
02c3bb7c  mov w8,#0x1
02c3bb80  strb w8,[x20, #0x271]
02c3bb84  adrp x8,0x5e59000
02c3bb88  ldr x8,[x8, #0x608]
02c3bb8c  ldr x8,[x8]
02c3bb90  ldr x8,[x8, #0xb8]
02c3bb94  ldp s0,s1,[x8]
02c3bb98  fmul s0,s0,s0
02c3bb9c  fmul s1,s1,s1
02c3bba0  adrp x8,0x116c000
02c3bba4  fadd s0,s0,s1
02c3bba8  ldr s1,[x8, #0x200]
02c3bbac  fcmp s0,s1
02c3bbb0  b.gt 0x02c3be50
02c3bbb4  ldrb w8,[x19, #0x14c]
02c3bbb8  cbz w8,0x02c3bd6c
02c3bbbc  ldr x0,[x21]
02c3bbc0  ldr x20,[x19, #0x178]
02c3bbc4  ldr w8,[x0, #0xe4]
02c3bbc8  cbnz w8,0x02c3bbd0
02c3bbcc  bl 0x029f5bd0
02c3bbd0  mov x0,x20
02c3bbd4  mov x1,xzr
02c3bbd8  mov x2,xzr
02c3bbdc  bl 0x057e14b4
02c3bbe0  tbnz w0,#0x0,0x02c3bd6c
02c3bbe4  ldr x0,[x19, #0x178]
02c3bbe8  cbz x0,0x02c3bf34
02c3bbec  adrp x8,0x5e61000
02c3bbf0  ldr x8,[x8, #0x3d0]
02c3bbf4  ldr x1,[x8]
02c3bbf8  bl 0x02fe5f2c
02c3bbfc  ldr x8,[x21]
02c3bc00  mov x20,x0
02c3bc04  ldr w9,[x8, #0xe4]
02c3bc08  cbnz w9,0x02c3bc14
02c3bc0c  mov x0,x8
02c3bc10  bl 0x029f5bd0
02c3bc14  mov x0,x20
02c3bc18  mov x1,xzr
02c3bc1c  mov x2,xzr
02c3bc20  bl 0x057e14b4
02c3bc24  tbz w0,#0x0,0x02c3bc44
02c3bc28  ldr x0,[x19, #0x178]
02c3bc2c  cbz x0,0x02c3bf34
02c3bc30  adrp x8,0x5e63000
02c3bc34  ldr x8,[x8, #0x228]
02c3bc38  ldr x1,[x8]
02c3bc3c  bl 0x02fe6108
02c3bc40  mov x20,x0
02c3bc44  ldr x0,[x21]
02c3bc48  ldr w8,[x0, #0xe4]
02c3bc4c  cbnz w8,0x02c3bc54
02c3bc50  bl 0x029f5bd0
02c3bc54  mov x0,x20
02c3bc58  mov x1,xzr
02c3bc5c  mov x2,xzr
02c3bc60  bl 0x057dfa70
02c3bc64  tbz w0,#0x0,0x02c3bd6c
02c3bc68  mov x0,x19
02c3bc6c  mov x1,x20
02c3bc70  bl 0x02c4171c
02c3bc74  tbz w0,#0x0,0x02c3bd6c
02c3bc78  ldr x0,[x19, #0xe8]
02c3bc7c  cbz x0,0x02c3bf34
02c3bc80  mov x1,xzr
02c3bc84  bl 0x057eed98
02c3bc88  cbz x20,0x02c3bf34
02c3bc8c  mov x0,x20
02c3bc90  mov x1,xzr
02c3bc94  fmov s8,s0
02c3bc98  fmov s10,s1
02c3bc9c  fmov s9,s2
02c3bca0  bl 0x057dc0f8
02c3bca4  cbz x0,0x02c3bf34
02c3bca8  mov x1,xzr
02c3bcac  bl 0x057eed98
02c3bcb0  fmov s11,s0
02c3bcb4  fmov s12,s1
02c3bcb8  adrp x21,0x625c000
02c3bcbc  fmov s13,s2
02c3bcc0  ldrb w8,[x21, #0xbe]
02c3bcc4  cbnz w8,0x02c3bcdc
02c3bcc8  adrp x0,0x5e59000
02c3bccc  ldr x0,[x0]
02c3bcd0  bl 0x029f5a50
02c3bcd4  mov w8,#0x1
02c3bcd8  strb w8,[x21, #0xbe]
02c3bcdc  adrp x8,0x5e59000
02c3bce0  ldr x8,[x8]
02c3bce4  ldr x0,[x8]
02c3bce8  ldr w8,[x0, #0xe4]
02c3bcec  cbnz w8,0x02c3bcf4
02c3bcf0  bl 0x029f5bd0
02c3bcf4  fsub s0,s10,s12
02c3bcf8  fsub s1,s8,s11
02c3bcfc  fsub s2,s9,s13
02c3bd00  fmul s1,s1,s1
02c3bd04  fmul s0,s0,s0
02c3bd08  fadd s0,s1,s0
02c3bd0c  fmul s1,s2,s2
02c3bd10  fadd s0,s1,s0
02c3bd14  ldr s1,[x19, #0xa4]
02c3bd18  fsqrt s0,s0
02c3bd1c  fcmp s0,s1
02c3bd20  b.ls 0x02c3bee8
02c3bd24  ldr x0,[x19, #0xe8]
02c3bd28  cbz x0,0x02c3bf34
02c3bd2c  mov x1,xzr
02c3bd30  bl 0x057eed98
02c3bd34  mov x0,x20
02c3bd38  mov x1,xzr
02c3bd3c  bl 0x05866b18
02c3bd40  add x0,x19,#0x1e0
02c3bd44  mov x1,xzr
02c3bd48  str s0,[x19, #0x1e8]
02c3bd4c  str s1,[x19, #0x1ec]
02c3bd50  str s2,[x19, #0x1f0]
02c3bd54  str xzr,[x19, #0x1e0]
02c3bd58  bl 0x029f59f4
02c3bd5c  add x0,x19,#0x180
02c3bd60  mov x1,xzr
02c3bd64  str xzr,[x19, #0x180]
02c3bd68  b 0x02c3bf2c
02c3bd6c  ldr x0,[x21]
02c3bd70  ldr x20,[x19, #0x180]
02c3bd74  ldr w8,[x0, #0xe4]
02c3bd78  cbnz w8,0x02c3bd80
02c3bd7c  bl 0x029f5bd0
02c3bd80  mov x0,x20
02c3bd84  mov x1,xzr
02c3bd88  mov x2,xzr
02c3bd8c  bl 0x057dfa70
02c3bd90  tbz w0,#0x0,0x02c3be50
02c3bd94  ldr x1,[x19, #0x180]
02c3bd98  mov x0,x19
02c3bd9c  bl 0x02c4171c
02c3bda0  tbz w0,#0x0,0x02c3be50
02c3bda4  ldr x0,[x19, #0xe8]
02c3bda8  cbz x0,0x02c3bf34
02c3bdac  mov x1,xzr
02c3bdb0  bl 0x057eed98
02c3bdb4  ldr x0,[x19, #0x180]
02c3bdb8  cbz x0,0x02c3bf34
02c3bdbc  mov x1,xzr
02c3bdc0  fmov s8,s0
02c3bdc4  fmov s9,s1
02c3bdc8  fmov s10,s2
02c3bdcc  bl 0x057dc0f8
02c3bdd0  cbz x0,0x02c3bf34
02c3bdd4  mov x1,xzr
02c3bdd8  bl 0x057eed98
02c3bddc  fmov s11,s0
02c3bde0  fmov s12,s1
02c3bde4  adrp x20,0x625c000
02c3bde8  fmov s13,s2
02c3bdec  ldrb w8,[x20, #0xbe]
02c3bdf0  cbnz w8,0x02c3be08
02c3bdf4  adrp x0,0x5e59000
02c3bdf8  ldr x0,[x0]
02c3bdfc  bl 0x029f5a50
02c3be00  mov w8,#0x1
02c3be04  strb w8,[x20, #0xbe]
02c3be08  adrp x8,0x5e59000
02c3be0c  ldr x8,[x8]
02c3be10  ldr x0,[x8]
02c3be14  ldr w8,[x0, #0xe4]
02c3be18  cbnz w8,0x02c3be20
02c3be1c  bl 0x029f5bd0
02c3be20  fsub s0,s9,s12
02c3be24  fsub s1,s8,s11
02c3be28  fsub s2,s10,s13
02c3be2c  fmul s1,s1,s1
02c3be30  fmul s0,s0,s0
02c3be34  fadd s0,s1,s0
02c3be38  fmul s1,s2,s2
02c3be3c  fadd s0,s1,s0
02c3be40  ldr s1,[x19, #0xa4]
02c3be44  fsqrt s0,s0
02c3be48  fcmp s0,s1
02c3be4c  b.ls 0x02c3becc
02c3be50  ldr x1,[x19, #0x1e0]
02c3be54  add x0,x19,#0x180
02c3be58  str x1,[x19, #0x180]
02c3be5c  bl 0x029f59f4
02c3be60  ldr x0,[x21]
02c3be64  ldr x20,[x19, #0x1e0]
02c3be68  ldr w8,[x0, #0xe4]
02c3be6c  cbnz w8,0x02c3be74
02c3be70  bl 0x029f5bd0
02c3be74  mov x0,x20
02c3be78  mov x1,xzr
02c3be7c  mov x2,xzr
02c3be80  bl 0x057dfa70
02c3be84  tbz w0,#0x0,0x02c3beb0
02c3be88  ldr x0,[x19, #0x1e0]
02c3be8c  cbz x0,0x02c3bf34
02c3be90  mov x1,xzr
02c3be94  bl 0x057dc0f8
02c3be98  cbz x0,0x02c3bf34
02c3be9c  mov x1,xzr
02c3bea0  bl 0x057eed98
02c3bea4  str s0,[x19, #0x1e8]
02c3bea8  str s1,[x19, #0x1ec]
02c3beac  str s2,[x19, #0x1f0]
02c3beb0  mov x0,x19
02c3beb4  ldp x20,x19,[sp, #0x40]
02c3beb8  ldp x30,x21,[sp, #0x30]
02c3bebc  ldp d9,d8,[sp, #0x20]
02c3bec0  ldp d11,d10,[sp, #0x10]
02c3bec4  ldp d13,d12,[sp], #0x50
02c3bec8  b 0x02c415f0
02c3becc  ldr x1,[x19, #0x180]
02c3bed0  add x0,x19,#0x1e0
02c3bed4  str x1,[x19, #0x1e0]
02c3bed8  bl 0x029f59f4
02c3bedc  ldr x0,[x19, #0x180]
02c3bee0  cbnz x0,0x02c3be90
02c3bee4  b 0x02c3bf34
02c3bee8  add x0,x19,#0x1e0
02c3beec  mov x1,x20
02c3bef0  str x20,[x19, #0x1e0]
02c3bef4  bl 0x029f59f4
02c3bef8  ldr x0,[x19, #0xe8]
02c3befc  cbz x0,0x02c3bf34
02c3bf00  mov x1,xzr
02c3bf04  bl 0x057eed98
02c3bf08  mov x0,x20
02c3bf0c  mov x1,xzr
02c3bf10  bl 0x05866b18
02c3bf14  add x0,x19,#0x180
02c3bf18  mov x1,x20
02c3bf1c  str s0,[x19, #0x1e8]
02c3bf20  str s1,[x19, #0x1ec]
02c3bf24  str s2,[x19, #0x1f0]
02c3bf28  str x20,[x19, #0x180]
02c3bf2c  bl 0x029f59f4
02c3bf30  b 0x02c3beb0
02c3bf34  bl 0x029f5cfc
