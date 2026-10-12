02c7ae48  sub sp,sp,#0xc0
02c7ae4c  str d14,[sp, #0x20]
02c7ae50  stp d13,d12,[sp, #0x30]
02c7ae54  stp d11,d10,[sp, #0x40]
02c7ae58  stp d9,d8,[sp, #0x50]
02c7ae5c  stp x29,x30,[sp, #0x60]
02c7ae60  stp x28,x27,[sp, #0x70]
02c7ae64  stp x26,x25,[sp, #0x80]
02c7ae68  stp x24,x23,[sp, #0x90]
02c7ae6c  stp x22,x21,[sp, #0xa0]
02c7ae70  stp x20,x19,[sp, #0xb0]
02c7ae74  adrp x20,0x625c000
02c7ae78  mov x19,x0
02c7ae7c  ldrb w8,[x20, #0x317]
02c7ae80  tbnz w8,#0x0,0x02c7ae98
02c7ae84  adrp x0,0x5e59000
02c7ae88  ldr x0,[x0, #0x1c0]
02c7ae8c  bl 0x029f5a50
02c7ae90  mov w8,#0x1
02c7ae94  strb w8,[x20, #0x317]
02c7ae98  ldr x8,[x19, #0x20]
02c7ae9c  cbz x8,0x02c7b230
02c7aea0  adrp x24,0x5e59000
02c7aea4  mov w20,#0x4
02c7aea8  mov w22,#0x1
02c7aeac  ldr x24,[x24, #0x1c0]
02c7aeb0  ldr w9,[x8, #0x18]
02c7aeb4  sub x23,x20,#0x4
02c7aeb8  cmp x23,w9, SXTW 
02c7aebc  b.ge 0x02c7af90
02c7aec0  cmp x23,x9
02c7aec4  b.cs 0x02c7b264
02c7aec8  ldr x0,[x24]
02c7aecc  ldr x21,[x8, x20, LSL #0x3]
02c7aed0  ldr w9,[x0, #0xe4]
02c7aed4  cbnz w9,0x02c7aedc
02c7aed8  bl 0x029f5bd0
02c7aedc  mov x0,x21
02c7aee0  mov x1,xzr
02c7aee4  mov x2,xzr
02c7aee8  bl 0x057dfa70
02c7aeec  tbz w0,#0x0,0x02c7af80
02c7aef0  ldr x8,[x19, #0x20]
02c7aef4  cbz x8,0x02c7b230
02c7aef8  ldr w9,[x8, #0x18]
02c7aefc  cmp x23,x9
02c7af00  b.cs 0x02c7b264
02c7af04  ldr x0,[x8, x20, LSL #0x3]
02c7af08  cbz x0,0x02c7b230
02c7af0c  mov x1,xzr
02c7af10  bl 0x057dc1c8
02c7af14  cbz x0,0x02c7b230
02c7af18  mov x1,xzr
02c7af1c  bl 0x057e0000
02c7af20  tbz w0,#0x0,0x02c7af80
02c7af24  ldr x8,[x19, #0x20]
02c7af28  cbz x8,0x02c7b230
02c7af2c  ldr w9,[x8, #0x18]
02c7af30  cmp x23,x9
02c7af34  b.cs 0x02c7b264
02c7af38  adrp x9,0x625b000
02c7af3c  ldr x21,[x8, x20, LSL #0x3]
02c7af40  ldrb w9,[x9, #0x26f]
02c7af44  cbnz w9,0x02c7af5c
02c7af48  adrp x0,0x5e58000
02c7af4c  ldr x0,[x0, #0xbf8]
02c7af50  bl 0x029f5a50
02c7af54  adrp x8,0x625b000
02c7af58  strb w22,[x8, #0x26f]
02c7af5c  cbz x21,0x02c7b230
02c7af60  adrp x8,0x5e58000
02c7af64  ldr x8,[x8, #0xbf8]
02c7af68  ldr x8,[x8]
02c7af6c  ldr x8,[x8, #0xb8]
02c7af70  ldr d0,[x8]
02c7af74  ldr s1,[x8, #0x8]
02c7af78  str d0,[x21, #0x40]
02c7af7c  str s1,[x21, #0x48]
02c7af80  ldr x8,[x19, #0x20]
02c7af84  add x20,x20,#0x1
02c7af88  cbnz x8,0x02c7aeb0
02c7af8c  b 0x02c7b230
02c7af90  adrp x21,0x5e59000
02c7af94  adrp x9,0x116c000
02c7af98  adrp x10,0x116c000
02c7af9c  ldr x21,[x21]
02c7afa0  ldr s13,[x9, #0x268]
02c7afa4  ldr s14,[x10, #0x240]
02c7afa8  mov x26,xzr
02c7afac  fmov s12,0x3f800000
02c7afb0  adrp x28,0x625b000
02c7afb4  adrp x29,0x625b000
02c7afb8  mov w25,#0x1
02c7afbc  ldr w9,[x8, #0x18]
02c7afc0  cmp x26,w9, SXTW 
02c7afc4  b.ge 0x02c7b234
02c7afc8  cmp x26,x9
02c7afcc  b.cs 0x02c7b264
02c7afd0  ldr x0,[x24]
02c7afd4  add x8,x8,x26, LSL #0x3
02c7afd8  ldr w9,[x0, #0xe4]
02c7afdc  ldr x22,[x8, #0x20]
02c7afe0  cbnz w9,0x02c7afe8
02c7afe4  bl 0x029f5bd0
02c7afe8  mov x0,x22
02c7afec  mov x1,xzr
02c7aff0  mov x2,xzr
02c7aff4  bl 0x057e14b4
02c7aff8  tbz w0,#0x0,0x02c7b004
02c7affc  ldr x8,[x19, #0x20]
02c7b000  b 0x02c7b224
02c7b004  cbz x22,0x02c7b230
02c7b008  mov x0,x22
02c7b00c  mov x1,xzr
02c7b010  bl 0x057dc1c8
02c7b014  cbz x0,0x02c7b230
02c7b018  mov x1,xzr
02c7b01c  bl 0x057e0000
02c7b020  ldr x8,[x19, #0x20]
02c7b024  tbz w0,#0x0,0x02c7b224
02c7b028  cbz x8,0x02c7b230
02c7b02c  sbfiz x20,x25,#0x3,#0x20
02c7b030  mov w27,#0x4
02c7b034  add x10,x26,x27
02c7b038  ldr w9,[x8, #0x18]
02c7b03c  sub x10,x10,#0x3
02c7b040  cmp w10,w9
02c7b044  b.ge 0x02c7b224
02c7b048  cmp w10,w9
02c7b04c  b.cs 0x02c7b264
02c7b050  ldr x0,[x24]
02c7b054  add x8,x8,x20
02c7b058  ldr x23,[x8, x27, LSL #0x3]
02c7b05c  ldr w9,[x0, #0xe4]
02c7b060  cbnz w9,0x02c7b068
02c7b064  bl 0x029f5bd0
02c7b068  mov x0,x23
02c7b06c  mov x1,xzr
02c7b070  mov x2,xzr
02c7b074  bl 0x057e14b4
02c7b078  tbnz w0,#0x0,0x02c7b214
02c7b07c  cbz x23,0x02c7b230
02c7b080  mov x0,x23
02c7b084  mov x1,xzr
02c7b088  bl 0x057dc1c8
02c7b08c  cbz x0,0x02c7b230
02c7b090  mov x1,xzr
02c7b094  bl 0x057e0000
02c7b098  tbz w0,#0x0,0x02c7b214
02c7b09c  mov x0,x22
02c7b0a0  mov x1,xzr
02c7b0a4  bl 0x057dc0f8
02c7b0a8  cbz x0,0x02c7b230
02c7b0ac  mov x1,xzr
02c7b0b0  bl 0x057eed98
02c7b0b4  mov x0,x23
02c7b0b8  mov x1,xzr
02c7b0bc  fmov s8,s0
02c7b0c0  fmov s9,s2
02c7b0c4  bl 0x057dc0f8
02c7b0c8  cbz x0,0x02c7b230
02c7b0cc  mov x1,xzr
02c7b0d0  bl 0x057eed98
02c7b0d4  fmov s10,s0
02c7b0d8  fmov s11,s2
02c7b0dc  ldrb w8,[x28, #0xae8]
02c7b0e0  cbnz w8,0x02c7b0f4
02c7b0e4  mov x0,x21
02c7b0e8  bl 0x029f5a50
02c7b0ec  mov w8,#0x1
02c7b0f0  strb w8,[x28, #0xae8]
02c7b0f4  ldr x0,[x21]
02c7b0f8  ldr w8,[x0, #0xe4]
02c7b0fc  cbnz w8,0x02c7b104
02c7b100  bl 0x029f5bd0
02c7b104  fsub s3,s8,s10
02c7b108  fsub s10,s9,s11
02c7b10c  ldr s8,[x19, #0x48]
02c7b110  fmul s0,s3,s3
02c7b114  fmul s1,s10,s10
02c7b118  fadd s0,s0,s1
02c7b11c  fsqrt s2,s0
02c7b120  fcmp s2,s13
02c7b124  fccmp s2,s8,#0x0,pl
02c7b128  b.gt 0x02c7b214
02c7b12c  ldrb w8,[x29, #0x52e]
02c7b130  ldr s9,[x19, #0x4c]
02c7b134  str q2,[sp, #0x10]
02c7b138  cbnz w8,0x02c7b154
02c7b13c  mov x0,x21
02c7b140  str q3,[sp]
02c7b144  bl 0x029f5a50
02c7b148  ldp q3,q2,[sp]
02c7b14c  mov w8,#0x1
02c7b150  strb w8,[x29, #0x52e]
02c7b154  ldr x0,[x21]
02c7b158  ldr w8,[x0, #0xe4]
02c7b15c  cbnz w8,0x02c7b16c
02c7b160  str q3,[sp]
02c7b164  bl 0x029f5bd0
02c7b168  ldp q3,q2,[sp]
02c7b16c  fcmp s2,s14
02c7b170  b.le 0x02c7b18c
02c7b174  movi d0,#0x0
02c7b178  dup v1.2S,v2.S[0x0]
02c7b17c  mov v0.S[0x0],v3.S[0x0]
02c7b180  fdiv v0.2S,v0.2S,v1.2S
02c7b184  fdiv s1,s10,s2
02c7b188  b 0x02c7b1cc
02c7b18c  adrp x8,0x625b000
02c7b190  ldrb w8,[x8, #0x26f]
02c7b194  cbnz w8,0x02c7b1b4
02c7b198  adrp x0,0x5e58000
02c7b19c  ldr x0,[x0, #0xbf8]
02c7b1a0  bl 0x029f5a50
02c7b1a4  ldr q2,[sp, #0x10]
02c7b1a8  adrp x8,0x625b000
02c7b1ac  mov w9,#0x1
02c7b1b0  strb w9,[x8, #0x26f]
02c7b1b4  adrp x8,0x5e58000
02c7b1b8  ldr x8,[x8, #0xbf8]
02c7b1bc  ldr x8,[x8]
02c7b1c0  ldr x8,[x8, #0xb8]
02c7b1c4  ldr d0,[x8]
02c7b1c8  ldr s1,[x8, #0x8]
02c7b1cc  fdiv s2,s2,s8
02c7b1d0  ldr s3,[x22, #0x48]
02c7b1d4  fsub s2,s12,s2
02c7b1d8  fmul s2,s2,s2
02c7b1dc  fmul s2,s2,s9
02c7b1e0  fmul v0.2S,v0.2S,v2.S[0x0]
02c7b1e4  fmul s1,s2,s1
02c7b1e8  ldr d2,[x22, #0x40]
02c7b1ec  fadd v2.2S,v0.2S,v2.2S
02c7b1f0  fadd s3,s1,s3
02c7b1f4  str d2,[x22, #0x40]
02c7b1f8  str s3,[x22, #0x48]
02c7b1fc  ldr d2,[x23, #0x40]
02c7b200  ldr s3,[x23, #0x48]
02c7b204  fsub v0.2S,v2.2S,v0.2S
02c7b208  fsub s1,s3,s1
02c7b20c  str d0,[x23, #0x40]
02c7b210  str s1,[x23, #0x48]
02c7b214  ldr x8,[x19, #0x20]
02c7b218  add x27,x27,#0x1
02c7b21c  cbnz x8,0x02c7b034
02c7b220  b 0x02c7b230
02c7b224  add x26,x26,#0x1
02c7b228  add w25,w25,#0x1
02c7b22c  cbnz x8,0x02c7afbc
02c7b230  bl 0x029f5cfc
02c7b234  ldp x20,x19,[sp, #0xb0]
02c7b238  ldr d14,[sp, #0x20]
02c7b23c  ldp x22,x21,[sp, #0xa0]
02c7b240  ldp x24,x23,[sp, #0x90]
02c7b244  ldp x26,x25,[sp, #0x80]
02c7b248  ldp x28,x27,[sp, #0x70]
02c7b24c  ldp x29,x30,[sp, #0x60]
02c7b250  ldp d9,d8,[sp, #0x50]
02c7b254  ldp d11,d10,[sp, #0x40]
02c7b258  ldp d13,d12,[sp, #0x30]
02c7b25c  add sp,sp,#0xc0
02c7b260  ret
02c7b264  bl 0x029f5d04
