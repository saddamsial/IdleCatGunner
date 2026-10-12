02c4cf4c  sub sp,sp,#0x60
02c4cf50  str d10,[sp, #0x20]
02c4cf54  stp d9,d8,[sp, #0x30]
02c4cf58  stp x30,x21,[sp, #0x40]
02c4cf5c  stp x20,x19,[sp, #0x50]
02c4cf60  adrp x20,0x625c000
02c4cf64  mov x19,x0
02c4cf68  ldrb w8,[x20, #0x133]
02c4cf6c  tbnz w8,#0x0,0x02c4cf84
02c4cf70  adrp x0,0x5e63000
02c4cf74  ldr x0,[x0, #0x488]
02c4cf78  bl 0x029f5a50
02c4cf7c  mov w8,#0x1
02c4cf80  strb w8,[x20, #0x133]
02c4cf84  ldr w8,[x19, #0x10]
02c4cf88  ldr x20,[x19, #0x20]
02c4cf8c  cmp w8,#0x1
02c4cf90  b.eq 0x02c4d070
02c4cf94  cbnz w8,0x02c4d1c8
02c4cf98  mov w8,#0xffffffff
02c4cf9c  str w8,[x19, #0x10]
02c4cfa0  cbz x20,0x02c4d1e4
02c4cfa4  mov x0,x20
02c4cfa8  mov x1,xzr
02c4cfac  bl 0x057dc0f8
02c4cfb0  cbz x0,0x02c4d1e4
02c4cfb4  mov x1,xzr
02c4cfb8  bl 0x057eed98
02c4cfbc  adrp x21,0x5e63000
02c4cfc0  fmov s8,s2
02c4cfc4  ldr x21,[x21, #0x488]
02c4cfc8  ldr x0,[x21]
02c4cfcc  ldr w8,[x0, #0xe4]
02c4cfd0  cbnz w8,0x02c4cfe4
02c4cfd4  stp q1,q0,[sp]
02c4cfd8  bl 0x029f5bd0
02c4cfdc  ldp q1,q0,[sp]
02c4cfe0  ldr x0,[x21]
02c4cfe4  ldr x8,[x0, #0xb8]
02c4cfe8  mov v0.S[0x1],v1.S[0x0]
02c4cfec  adrp x21,0x625b000
02c4cff0  ldrb w9,[x21, #0x52e]
02c4cff4  ldr d9,[x8]
02c4cff8  ldr s10,[x8, #0x8]
02c4cffc  cbnz w9,0x02c4d01c
02c4d000  adrp x0,0x5e59000
02c4d004  ldr x0,[x0]
02c4d008  str q0,[sp, #0x10]
02c4d00c  bl 0x029f5a50
02c4d010  ldr q0,[sp, #0x10]
02c4d014  mov w8,#0x1
02c4d018  strb w8,[x21, #0x52e]
02c4d01c  adrp x8,0x5e59000
02c4d020  fsub v9.2S,v0.2S,v9.2S
02c4d024  fsub s8,s8,s10
02c4d028  ldr x8,[x8]
02c4d02c  ldr x0,[x8]
02c4d030  ldr w8,[x0, #0xe4]
02c4d034  cbnz w8,0x02c4d03c
02c4d038  bl 0x029f5bd0
02c4d03c  fmul v0.2S,v9.2S,v9.2S
02c4d040  fmul s1,s8,s8
02c4d044  adrp x8,0x116c000
02c4d048  faddp s0,v0.2S
02c4d04c  fadd s0,s1,s0
02c4d050  ldr s1,[x8, #0x240]
02c4d054  fsqrt s0,s0
02c4d058  fcmp s0,s1
02c4d05c  b.le 0x02c4d080
02c4d060  dup v1.2S,v0.S[0x0]
02c4d064  fdiv s0,s8,s0
02c4d068  fdiv v1.2S,v9.2S,v1.2S
02c4d06c  b 0x02c4d0b8
02c4d070  ldp s1,s8,[x19, #0x3c]
02c4d074  mov w8,#0xffffffff
02c4d078  str w8,[x19, #0x10]
02c4d07c  b 0x02c4d100
02c4d080  adrp x21,0x625b000
02c4d084  ldrb w8,[x21, #0x26f]
02c4d088  cbnz w8,0x02c4d0a0
02c4d08c  adrp x0,0x5e58000
02c4d090  ldr x0,[x0, #0xbf8]
02c4d094  bl 0x029f5a50
02c4d098  mov w8,#0x1
02c4d09c  strb w8,[x21, #0x26f]
02c4d0a0  adrp x8,0x5e58000
02c4d0a4  ldr x8,[x8, #0xbf8]
02c4d0a8  ldr x8,[x8]
02c4d0ac  ldr x8,[x8, #0xb8]
02c4d0b0  ldr d1,[x8]
02c4d0b4  ldr s0,[x8, #0x8]
02c4d0b8  fmov s2,0x3f800000
02c4d0bc  ldr s3,[x19, #0x28]
02c4d0c0  movi d8,#0x0
02c4d0c4  adrp x8,0x116f000
02c4d0c8  stur d1,[x19, #0x2c]
02c4d0cc  str s0,[x19, #0x34]
02c4d0d0  fcmp s3,s2
02c4d0d4  str wzr,[x19, #0x40]
02c4d0d8  fcsel s2,s2,s3,gt
02c4d0dc  fcmp s3,#0.0
02c4d0e0  ldr d3,[x8, #0x9e8]
02c4d0e4  adrp x8,0x1170000
02c4d0e8  fcsel s2,s8,s2,mi
02c4d0ec  fmul v2.2S,v3.2S,v2.S[0x0]
02c4d0f0  ldr d3,[x8, #0x538]
02c4d0f4  fadd v2.2S,v2.2S,v3.2S
02c4d0f8  dup s1,v2.S[0x1]
02c4d0fc  str d2,[x19, #0x38]
02c4d100  fcmp s8,s1
02c4d104  b.pl 0x02c4d19c
02c4d108  mov x0,xzr
02c4d10c  bl 0x057ebabc
02c4d110  fadd s0,s8,s0
02c4d114  str s0,[x19, #0x40]
02c4d118  cbz x20,0x02c4d1e4
02c4d11c  ldr x0,[x20, #0x28]
02c4d120  cbz x0,0x02c4d1e4
02c4d124  ldp s2,s1,[x19, #0x38]
02c4d128  movi d4,#0x0
02c4d12c  ldr d3,[x19, #0x30]
02c4d130  ldr s5,[x19, #0x2c]
02c4d134  mov x1,xzr
02c4d138  fdiv s0,s0,s1
02c4d13c  fmov s1,0x3f800000
02c4d140  fmul v3.2S,v3.2S,v2.S[0x0]
02c4d144  fmul s2,s2,s5
02c4d148  fcmp s0,s1
02c4d14c  fcsel s1,s1,s0,gt
02c4d150  fcmp s0,#0.0
02c4d154  ldur d0,[x20, #0x64]
02c4d158  fsub v0.2S,v0.2S,v3.2S
02c4d15c  fcsel s4,s4,s1,mi
02c4d160  ldr s1,[x20, #0x60]
02c4d164  fsub s5,s1,s2
02c4d168  fmul v0.2S,v0.2S,v4.S[0x0]
02c4d16c  fadd v1.2S,v3.2S,v0.2S
02c4d170  fmul s0,s4,s5
02c4d174  fadd s0,s2,s0
02c4d178  dup s2,v1.S[0x1]
02c4d17c  bl 0x0586b344
02c4d180  str xzr,[x19, #0x18]!
02c4d184  mov x0,x19
02c4d188  mov x1,xzr
02c4d18c  bl 0x029f59f4
02c4d190  mov w0,#0x1
02c4d194  stur w0,[x19, #-0x8]
02c4d198  b 0x02c4d1cc
02c4d19c  cbz x20,0x02c4d1e4
02c4d1a0  ldr x0,[x20, #0x28]
02c4d1a4  cbz x0,0x02c4d1e4
02c4d1a8  ldp s1,s2,[x20, #0x64]
02c4d1ac  mov x1,xzr
02c4d1b0  ldr s0,[x20, #0x60]
02c4d1b4  bl 0x0586b344
02c4d1b8  str xzr,[x20, #0x70]!
02c4d1bc  mov x0,x20
02c4d1c0  mov x1,xzr
02c4d1c4  bl 0x029f59f4
02c4d1c8  mov w0,wzr
02c4d1cc  ldp x20,x19,[sp, #0x50]
02c4d1d0  ldr d10,[sp, #0x20]
02c4d1d4  ldp x30,x21,[sp, #0x40]
02c4d1d8  ldp d9,d8,[sp, #0x30]
02c4d1dc  add sp,sp,#0x60
02c4d1e0  ret
02c4d1e4  bl 0x029f5cfc
