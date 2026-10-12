02c32fb4  str x30,[sp, #-0x60]!
02c32fb8  stp x28,x27,[sp, #0x10]
02c32fbc  stp x26,x25,[sp, #0x20]
02c32fc0  stp x24,x23,[sp, #0x30]
02c32fc4  stp x22,x21,[sp, #0x40]
02c32fc8  stp x20,x19,[sp, #0x50]
02c32fcc  adrp x22,0x625c000
02c32fd0  mov w21,w2
02c32fd4  mov w20,w1
02c32fd8  ldrb w8,[x22, #0x49]
02c32fdc  mov x19,x0
02c32fe0  tbnz w8,#0x0,0x02c3301c
02c32fe4  adrp x0,0x5e5d000
02c32fe8  ldr x0,[x0, #0xd28]
02c32fec  bl 0x029f5a50
02c32ff0  adrp x0,0x5e59000
02c32ff4  ldr x0,[x0, #0x1c0]
02c32ff8  bl 0x029f5a50
02c32ffc  adrp x0,0x5e63000
02c33000  ldr x0,[x0, #0xd0]
02c33004  bl 0x029f5a50
02c33008  adrp x0,0x5e63000
02c3300c  ldr x0,[x0, #0xd8]
02c33010  bl 0x029f5a50
02c33014  mov w8,#0x1
02c33018  strb w8,[x22, #0x49]
02c3301c  mov x0,x19
02c33020  mov x1,xzr
02c33024  stp w20,w21,[x19, #0x20]
02c33028  bl 0x057dc1c8
02c3302c  cbz x0,0x02c33210
02c33030  mov w1,#0x1
02c33034  mov x2,xzr
02c33038  bl 0x057dff3c
02c3303c  ldr x8,[x19, #0x28]
02c33040  cbz x8,0x02c33210
02c33044  adrp x28,0x5e63000
02c33048  adrp x26,0x5e5d000
02c3304c  adrp x25,0x5e63000
02c33050  adrp x23,0x5e59000
02c33054  ldr x28,[x28, #0xd0]
02c33058  ldr x26,[x26, #0xd28]
02c3305c  ldr x25,[x25, #0xd8]
02c33060  ldr x23,[x23, #0x1c0]
02c33064  mov x22,xzr
02c33068  mov w24,w20
02c3306c  ldr w9,[x8, #0x18]
02c33070  cmp w22,w9
02c33074  b.ge 0x02c330ac
02c33078  cmp w22,w9
02c3307c  b.cs 0x02c3327c
02c33080  add x8,x8,x22, LSL #0x3
02c33084  ldr x0,[x8, #0x20]
02c33088  cbz x0,0x02c33210
02c3308c  cmp w24,w22
02c33090  mov x2,xzr
02c33094  cset w1,eq
02c33098  bl 0x057dff3c
02c3309c  ldr x8,[x19, #0x28]
02c330a0  add x22,x22,#0x1
02c330a4  cbnz x8,0x02c3306c
02c330a8  b 0x02c33210
02c330ac  adrp x27,0x5e58000
02c330b0  add w8,w21,#0x1
02c330b4  add x1,sp,#0xc
02c330b8  ldr x27,[x27, #0xa10]
02c330bc  ldr x22,[x19, #0x30]
02c330c0  str w8,[sp, #0xc]
02c330c4  ldr x0,[x27, #0x48]
02c330c8  bl 0x029f5bd8
02c330cc  ldr x8,[x28]
02c330d0  mov x1,x0
02c330d4  mov x2,xzr
02c330d8  mov x0,x8
02c330dc  bl 0x046b6c0c
02c330e0  cbz x22,0x02c33210
02c330e4  ldr x8,[x22]
02c330e8  mov x1,x0
02c330ec  mov x0,x22
02c330f0  ldr x9,[x8, #0x558]
02c330f4  ldr x2,[x8, #0x560]
02c330f8  blr x9
02c330fc  ldr x0,[x26]
02c33100  ldr w8,[x0, #0xe4]
02c33104  cbnz w8,0x02c33110
02c33108  bl 0x029f5bd0
02c3310c  ldr x0,[x26]
02c33110  ldr x8,[x0, #0xb8]
02c33114  ldr x0,[x8, #0x10]
02c33118  cbz x0,0x02c33210
02c3311c  mov w1,w21
02c33120  mov x2,xzr
02c33124  bl 0x02c2d080
02c33128  ldr x8,[x27, #0x48]
02c3312c  ldr x21,[x19, #0x38]
02c33130  add x1,sp,#0x8
02c33134  str w0,[sp, #0x8]
02c33138  mov x0,x8
02c3313c  bl 0x029f5bd8
02c33140  ldr x8,[x25]
02c33144  mov x1,x0
02c33148  mov x2,xzr
02c3314c  mov x0,x8
02c33150  bl 0x046b6c0c
02c33154  cbz x21,0x02c33210
02c33158  ldr x8,[x21]
02c3315c  mov x1,x0
02c33160  mov x0,x21
02c33164  ldr x9,[x8, #0x558]
02c33168  ldr x2,[x8, #0x560]
02c3316c  blr x9
02c33170  ldr x21,[x19, #0x58]
02c33174  mov w0,w20
02c33178  mov x1,xzr
02c3317c  bl 0x02c2ce84
02c33180  cbz x21,0x02c33210
02c33184  mov x1,x0
02c33188  mov x0,x21
02c3318c  mov x2,xzr
02c33190  bl 0x058d34cc
02c33194  ldr x8,[x19, #0x78]
02c33198  cbz x8,0x02c33210
02c3319c  ldr w9,[x8, #0x18]
02c331a0  cmp w9,w24
02c331a4  b.ls 0x02c3327c
02c331a8  ldr x0,[x19, #0x60]
02c331ac  cbz x0,0x02c33210
02c331b0  add x8,x8,w20, SXTW  #0x4
02c331b4  ldr x9,[x0]
02c331b8  ldp s2,s3,[x8, #0x28]
02c331bc  ldr x1,[x9, #0x2b0]
02c331c0  ldp s0,s1,[x8, #0x20]
02c331c4  ldr x8,[x9, #0x2a8]
02c331c8  blr x8
02c331cc  ldr x8,[x19, #0xc0]
02c331d0  cbz x8,0x02c33210
02c331d4  mov x20,xzr
02c331d8  ldr w9,[x8, #0x18]
02c331dc  cmp w20,w9
02c331e0  b.ge 0x02c33214
02c331e4  cmp w20,w9
02c331e8  b.cs 0x02c3327c
02c331ec  add x8,x8,x20, LSL #0x3
02c331f0  ldr x0,[x8, #0x20]
02c331f4  cbz x0,0x02c33210
02c331f8  mov x1,x19
02c331fc  str x19,[x0, #0x48]!
02c33200  bl 0x029f59f4
02c33204  ldr x8,[x19, #0xc0]
02c33208  add x20,x20,#0x1
02c3320c  cbnz x8,0x02c331d8
02c33210  bl 0x029f5cfc
02c33214  ldr x0,[x23]
02c33218  ldr x20,[x19, #0x50]
02c3321c  ldr w8,[x0, #0xe4]
02c33220  cbnz w8,0x02c33228
02c33224  bl 0x029f5bd0
02c33228  mov x0,x20
02c3322c  mov x1,xzr
02c33230  mov x2,xzr
02c33234  bl 0x057dfa70
02c33238  tbz w0,#0x0,0x02c33250
02c3323c  ldr x0,[x19, #0x50]
02c33240  cbz x0,0x02c33210
02c33244  mov x1,x19
02c33248  str x19,[x0, #0x28]!
02c3324c  bl 0x029f59f4
02c33250  mov x0,x19
02c33254  bl 0x02c33280
02c33258  mov x0,x19
02c3325c  bl 0x02c33604
02c33260  ldp x20,x19,[sp, #0x50]
02c33264  ldp x22,x21,[sp, #0x40]
02c33268  ldp x24,x23,[sp, #0x30]
02c3326c  ldp x26,x25,[sp, #0x20]
02c33270  ldp x28,x27,[sp, #0x10]
02c33274  ldr x30,[sp], #0x60
02c33278  ret
02c3327c  bl 0x029f5d04
