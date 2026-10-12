02c7b9d8  stp d13,d12,[sp, #-0x80]!
02c7b9dc  stp d11,d10,[sp, #0x10]
02c7b9e0  stp d9,d8,[sp, #0x20]
02c7b9e4  str x30,[sp, #0x30]
02c7b9e8  stp x26,x25,[sp, #0x40]
02c7b9ec  stp x24,x23,[sp, #0x50]
02c7b9f0  stp x22,x21,[sp, #0x60]
02c7b9f4  stp x20,x19,[sp, #0x70]
02c7b9f8  adrp x21,0x625c000
02c7b9fc  adrp x22,0x5e63000
02c7ba00  adrp x20,0x5e63000
02c7ba04  ldrb w8,[x21, #0x31a]
02c7ba08  ldr x22,[x22, #0xd28]
02c7ba0c  ldr x20,[x20, #0xd30]
02c7ba10  mov x19,x0
02c7ba14  tbnz w8,#0x0,0x02c7ba68
02c7ba18  adrp x0,0x5e63000
02c7ba1c  ldr x0,[x0, #0xd38]
02c7ba20  bl 0x029f5a50
02c7ba24  adrp x0,0x5e63000
02c7ba28  ldr x0,[x0, #0xd30]
02c7ba2c  bl 0x029f5a50
02c7ba30  adrp x0,0x5e63000
02c7ba34  ldr x0,[x0, #0xd40]
02c7ba38  bl 0x029f5a50
02c7ba3c  adrp x0,0x5e63000
02c7ba40  ldr x0,[x0, #0xd48]
02c7ba44  bl 0x029f5a50
02c7ba48  adrp x0,0x5e63000
02c7ba4c  ldr x0,[x0, #0xd28]
02c7ba50  bl 0x029f5a50
02c7ba54  adrp x0,0x5e59000
02c7ba58  ldr x0,[x0, #0x1c0]
02c7ba5c  bl 0x029f5a50
02c7ba60  mov w8,#0x1
02c7ba64  strb w8,[x21, #0x31a]
02c7ba68  ldr x0,[x22]
02c7ba6c  bl 0x029f5cec
02c7ba70  ldr x1,[x20]
02c7ba74  mov x20,x0
02c7ba78  bl 0x0452c340
02c7ba7c  ldr x8,[x19, #0x20]
02c7ba80  cbz x8,0x02c7bb90
02c7ba84  adrp x22,0x5e59000
02c7ba88  adrp x24,0x5e63000
02c7ba8c  adrp x23,0x5e63000
02c7ba90  ldr x22,[x22, #0x1c0]
02c7ba94  ldr x24,[x24, #0xd38]
02c7ba98  ldr x23,[x23, #0xd48]
02c7ba9c  mov w25,#0x4
02c7baa0  ldr w9,[x8, #0x18]
02c7baa4  sub x26,x25,#0x4
02c7baa8  cmp x26,w9, SXTW 
02c7baac  b.ge 0x02c7bb94
02c7bab0  cmp x26,x9
02c7bab4  b.cs 0x02c7bc78
02c7bab8  ldr x0,[x22]
02c7babc  ldr x21,[x8, x25, LSL #0x3]
02c7bac0  ldr w9,[x0, #0xe4]
02c7bac4  cbnz w9,0x02c7bacc
02c7bac8  bl 0x029f5bd0
02c7bacc  mov x0,x21
02c7bad0  mov x1,xzr
02c7bad4  mov x2,xzr
02c7bad8  bl 0x057dfa70
02c7badc  tbz w0,#0x0,0x02c7bb84
02c7bae0  ldr x8,[x19, #0x20]
02c7bae4  cbz x8,0x02c7bb90
02c7bae8  ldr w9,[x8, #0x18]
02c7baec  cmp x26,x9
02c7baf0  b.cs 0x02c7bc78
02c7baf4  ldr x0,[x8, x25, LSL #0x3]
02c7baf8  cbz x0,0x02c7bb90
02c7bafc  mov x1,xzr
02c7bb00  bl 0x057dc1c8
02c7bb04  cbz x0,0x02c7bb90
02c7bb08  mov x1,xzr
02c7bb0c  bl 0x057e0000
02c7bb10  tbz w0,#0x0,0x02c7bb84
02c7bb14  ldr x8,[x19, #0x20]
02c7bb18  cbz x8,0x02c7bb90
02c7bb1c  ldr w9,[x8, #0x18]
02c7bb20  cmp x26,x9
02c7bb24  b.cs 0x02c7bc78
02c7bb28  cbz x20,0x02c7bb90
02c7bb2c  ldr w10,[x20, #0x1c]
02c7bb30  ldr x9,[x20, #0x10]
02c7bb34  ldr x1,[x8, x25, LSL #0x3]
02c7bb38  ldr x8,[x24]
02c7bb3c  add w10,w10,#0x1
02c7bb40  str w10,[x20, #0x1c]
02c7bb44  cbz x9,0x02c7bb90
02c7bb48  ldrsw x10,[x20, #0x18]
02c7bb4c  ldr w11,[x9, #0x18]
02c7bb50  cmp w10,w11
02c7bb54  b.cs 0x02c7bb70
02c7bb58  add x0,x9,x10, LSL #0x3
02c7bb5c  add w8,w10,#0x1
02c7bb60  str w8,[x20, #0x18]
02c7bb64  str x1,[x0, #0x20]!
02c7bb68  bl 0x029f59f4
02c7bb6c  b 0x02c7bb84
02c7bb70  ldr x8,[x8, #0x20]
02c7bb74  mov x0,x20
02c7bb78  ldr x8,[x8, #0xc0]
02c7bb7c  ldr x2,[x8, #0x70]
02c7bb80  bl 0x0452cba8
02c7bb84  ldr x8,[x19, #0x20]
02c7bb88  add x25,x25,#0x1
02c7bb8c  cbnz x8,0x02c7baa0
02c7bb90  bl 0x029f5cfc
02c7bb94  cbz x20,0x02c7bb90
02c7bb98  ldr w8,[x20, #0x18]
02c7bb9c  cmp w8,#0x1
02c7bba0  b.lt 0x02c7bc54
02c7bba4  movi d8,#0x0
02c7bba8  adrp x9,0x116c000
02c7bbac  fmov s9,0xbf000000
02c7bbb0  fmov s10,0x3f000000
02c7bbb4  fmov s11,0x3f800000
02c7bbb8  ldr s12,[x9, #0x26c]
02c7bbbc  mov w21,wzr
02c7bbc0  movi d13,#0x0
02c7bbc4  subs w8,w8,#0x1
02c7bbc8  b.eq 0x02c7bc00
02c7bbcc  scvtf s0,w21
02c7bbd0  scvtf s1,w8
02c7bbd4  fdiv s0,s0,s1
02c7bbd8  ldr s1,[x19, #0x2c]
02c7bbdc  fmul s2,s1,s9
02c7bbe0  fmul s1,s1,s10
02c7bbe4  fsub s1,s1,s2
02c7bbe8  fcmp s0,s11
02c7bbec  fcsel s3,s11,s0,gt
02c7bbf0  fcmp s0,#0.0
02c7bbf4  fcsel s0,s8,s3,mi
02c7bbf8  fmul s0,s0,s1
02c7bbfc  fadd s13,s2,s0
02c7bc00  ldr x2,[x23]
02c7bc04  mov x0,x20
02c7bc08  mov w1,w21
02c7bc0c  bl 0x0452c8d8
02c7bc10  cbz x0,0x02c7bb90
02c7bc14  fmul s0,s13,s12
02c7bc18  mov x22,x0
02c7bc1c  add x0,sp,#0x3c
02c7bc20  add x1,sp,#0x38
02c7bc24  bl 0x05afb270
02c7bc28  ldp s2,s0,[sp, #0x38]
02c7bc2c  add w21,w21,#0x1
02c7bc30  ldr s1,[x19, #0x28]
02c7bc34  str wzr,[x22, #0x5c]
02c7bc38  fmul s0,s0,s1
02c7bc3c  fnmul s1,s2,s1
02c7bc40  str s0,[x22, #0x58]
02c7bc44  str s1,[x22, #0x60]
02c7bc48  ldr w8,[x20, #0x18]
02c7bc4c  cmp w21,w8
02c7bc50  b.lt 0x02c7bbc0
02c7bc54  ldp x20,x19,[sp, #0x70]
02c7bc58  ldr x30,[sp, #0x30]
02c7bc5c  ldp x22,x21,[sp, #0x60]
02c7bc60  ldp x24,x23,[sp, #0x50]
02c7bc64  ldp x26,x25,[sp, #0x40]
02c7bc68  ldp d9,d8,[sp, #0x20]
02c7bc6c  ldp d11,d10,[sp, #0x10]
02c7bc70  ldp d13,d12,[sp], #0x80
02c7bc74  ret
02c7bc78  bl 0x029f5d04
