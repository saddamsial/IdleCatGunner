02b83914  str x30,[sp, #-0x10]!
02b83918  orr w8,w2,w3
02b8391c  tbnz w8,#0x0,0x02b83924
02b83920  tbz w1,#0x0,0x02b83b54
02b83924  ldr x10,[x0, #0x48]
02b83928  cbz x10,0x02b83b54
02b8392c  ldr x9,[x0, #0x78]
02b83930  cbz x9,0x02b83b54
02b83934  adrp x11,0x116c000
02b83938  ldp s16,s7,[x0, #0x34]
02b8393c  ldr s6,[x11, #0x1b0]
02b83940  ldp s17,s20,[x0, #0x3c]
02b83944  ldp s21,s22,[x0, #0x2c]
02b83948  mov w16,#0xc
02b8394c  fmul s7,s7,s6
02b83950  ldr x11,[x10, #0x20]
02b83954  ldr x12,[x10, #0x10]
02b83958  fmul s17,s17,s6
02b8395c  fmul s20,s20,s6
02b83960  ldrb w13,[x0, #0x44]
02b83964  orr w10,w1,w3
02b83968  add x14,x12,#0x20
02b8396c  add x15,x11,#0x23
02b83970  fmul s18,s0,s7
02b83974  fmul s19,s1,s7
02b83978  fmul s7,s2,s7
02b8397c  fmul s0,s0,s20
02b83980  fmul s1,s1,s20
02b83984  fmul s2,s2,s20
02b83988  fadd s6,s21,s18
02b8398c  fmul s18,s3,s17
02b83990  fadd s19,s19,s22
02b83994  fmul s21,s4,s17
02b83998  fadd s16,s7,s16
02b8399c  fmul s17,s5,s17
02b839a0  fmul s3,s3,s20
02b839a4  fmul s4,s4,s20
02b839a8  fmul s5,s5,s20
02b839ac  fadd s6,s6,s18
02b839b0  fadd s7,s21,s19
02b839b4  fadd s16,s17,s16
02b839b8  ldrsw x17,[x9, #0x40]
02b839bc  tbz w10,#0x0,0x02b83ab8
02b839c0  cbz x12,0x02b83b60
02b839c4  ldr w1,[x12, #0x18]
02b839c8  cmp w17,w1
02b839cc  b.cs 0x02b83b5c
02b839d0  ldp s17,s21,[x9, #0x38]
02b839d4  nop
02b839d8  smaddl x3,w17,w16,x14
02b839dc  ldp s20,s22,[x9, #0x30]
02b839e0  add w2,w17,#0x1
02b839e4  cmp w2,w1
02b839e8  scvtf s17,s17
02b839ec  fmul s18,s3,s22
02b839f0  fadd s17,s20,s17
02b839f4  fmul s19,s0,s17
02b839f8  fmul s23,s1,s17
02b839fc  fmul s26,s2,s17
02b83a00  fmul s17,s4,s22
02b83a04  fadd s24,s6,s19
02b83a08  fadd s25,s7,s23
02b83a0c  fmul s19,s5,s22
02b83a10  fadd s26,s16,s26
02b83a14  fadd s23,s18,s24
02b83a18  fadd s27,s17,s25
02b83a1c  fadd s28,s19,s26
02b83a20  stp s23,s27,[x3]
02b83a24  str s28,[x3, #0x8]
02b83a28  b.cs 0x02b83b5c
02b83a2c  scvtf s21,s21
02b83a30  smaddl x3,w2,w16,x14
02b83a34  add w2,w17,#0x2
02b83a38  cmp w2,w1
02b83a3c  fadd s22,s22,s21
02b83a40  fmul s23,s3,s22
02b83a44  fmul s21,s4,s22
02b83a48  fmul s22,s5,s22
02b83a4c  fadd s24,s24,s23
02b83a50  fadd s25,s25,s21
02b83a54  fadd s26,s26,s22
02b83a58  stp s24,s25,[x3]
02b83a5c  str s26,[x3, #0x8]
02b83a60  b.cs 0x02b83b5c
02b83a64  fmul s24,s0,s20
02b83a68  fmul s25,s1,s20
02b83a6c  smaddl x3,w2,w16,x14
02b83a70  fmul s26,s2,s20
02b83a74  add w2,w17,#0x3
02b83a78  cmp w2,w1
02b83a7c  fadd s20,s6,s24
02b83a80  fadd s24,s7,s25
02b83a84  fadd s25,s16,s26
02b83a88  fadd s23,s20,s23
02b83a8c  fadd s21,s24,s21
02b83a90  fadd s22,s25,s22
02b83a94  stp s23,s21,[x3]
02b83a98  str s22,[x3, #0x8]
02b83a9c  b.cs 0x02b83b5c
02b83aa0  fadd s18,s20,s18
02b83aa4  fadd s17,s24,s17
02b83aa8  smaddl x1,w2,w16,x14
02b83aac  fadd s19,s25,s19
02b83ab0  stp s18,s17,[x1]
02b83ab4  str s19,[x1, #0x8]
02b83ab8  tbz w8,#0x0,0x02b83b1c
02b83abc  cbz x11,0x02b83b60
02b83ac0  ldr w1,[x11, #0x18]
02b83ac4  cmp w17,w1
02b83ac8  b.cs 0x02b83b5c
02b83acc  lsl x1,x17,#0x2
02b83ad0  strb w13,[x15, x1, LSL ]
02b83ad4  add w1,w17,#0x1
02b83ad8  ldr w2,[x11, #0x18]
02b83adc  cmp w1,w2
02b83ae0  b.cs 0x02b83b5c
02b83ae4  sbfiz x1,x1,#0x2,#0x20
02b83ae8  strb w13,[x15, x1, LSL ]
02b83aec  add w1,w17,#0x2
02b83af0  ldr w2,[x11, #0x18]
02b83af4  cmp w1,w2
02b83af8  b.cs 0x02b83b5c
02b83afc  sbfiz x1,x1,#0x2,#0x20
02b83b00  add w17,w17,#0x3
02b83b04  strb w13,[x15, x1, LSL ]
02b83b08  ldr w1,[x11, #0x18]
02b83b0c  cmp w17,w1
02b83b10  b.cs 0x02b83b5c
02b83b14  sbfiz x17,x17,#0x2,#0x20
02b83b18  strb w13,[x15, x17, LSL ]
02b83b1c  ldr x9,[x9, #0x10]
02b83b20  cbnz x9,0x02b839b8
02b83b24  ldr x9,[x0, #0x48]
02b83b28  cbz x9,0x02b83b60
02b83b2c  ldrb w11,[x9, #0x5d]
02b83b30  ldrb w13,[x9, #0x5e]
02b83b34  and w10,w10,#0x1
02b83b38  and w8,w8,#0x1
02b83b3c  mov w12,#0x1
02b83b40  orr w10,w11,w10
02b83b44  orr w8,w13,w8
02b83b48  strb w12,[x9, #0x5c]
02b83b4c  strb w10,[x9, #0x5d]
02b83b50  strb w8,[x9, #0x5e]
02b83b54  ldr x30,[sp], #0x10
02b83b58  ret
02b83b5c  bl 0x029f5d04
02b83b60  bl 0x029f5cfc
