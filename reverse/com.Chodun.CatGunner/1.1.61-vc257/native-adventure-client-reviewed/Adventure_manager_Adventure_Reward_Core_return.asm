02c2e128  sub sp,sp,#0x70
02c2e12c  str d10,[sp, #0x30]
02c2e130  stp d9,d8,[sp, #0x38]
02c2e134  str x30,[sp, #0x48]
02c2e138  stp x22,x21,[sp, #0x50]
02c2e13c  stp x20,x19,[sp, #0x60]
02c2e140  adrp x22,0x625c000
02c2e144  mov w19,w2
02c2e148  mov x21,x1
02c2e14c  ldrb w8,[x22, #0x10]
02c2e150  mov x20,x0
02c2e154  tbnz w8,#0x0,0x02c2e19c
02c2e158  adrp x0,0x5e62000
02c2e15c  ldr x0,[x0, #0xff8]
02c2e160  bl 0x029f5a50
02c2e164  adrp x0,0x5e63000
02c2e168  ldr x0,[x0]
02c2e16c  bl 0x029f5a50
02c2e170  adrp x0,0x5e63000
02c2e174  ldr x0,[x0, #0x8]
02c2e178  bl 0x029f5a50
02c2e17c  adrp x0,0x5e63000
02c2e180  ldr x0,[x0, #0x10]
02c2e184  bl 0x029f5a50
02c2e188  adrp x0,0x5e62000
02c2e18c  ldr x0,[x0, #0xfe8]
02c2e190  bl 0x029f5a50
02c2e194  mov w8,#0x1
02c2e198  strb w8,[x22, #0x10]
02c2e19c  stp xzr,xzr,[sp, #0x18]
02c2e1a0  str xzr,[sp, #0x28]
02c2e1a4  cbz x21,0x02c2e210
02c2e1a8  ldr w8,[x21, #0x18]
02c2e1ac  cbz w8,0x02c2e210
02c2e1b0  adrp x8,0x5e63000
02c2e1b4  mov x0,x21
02c2e1b8  add x22,sp,#0x18
02c2e1bc  ldr x8,[x8, #0x10]
02c2e1c0  ldr x1,[x8]
02c2e1c4  add x8,sp,#0x18
02c2e1c8  bl 0x044f84d0
02c2e1cc  adrp x21,0x5e63000
02c2e1d0  adrp x8,0x116c000
02c2e1d4  movi d8,#0x0
02c2e1d8  ldr x21,[x21]
02c2e1dc  ldr s10,[x8, #0x174]
02c2e1e0  fmov s9,0x3f800000
02c2e1e4  stp xzr,x22,[sp, #0x8]
02c2e1e8  ldr x1,[x21]
02c2e1ec  add x0,sp,#0x18
02c2e1f0  bl 0x03f9a744
02c2e1f4  tbz w0,#0x0,0x02c2e218
02c2e1f8  ldr s0,[sp, #0x28]
02c2e1fc  scvtf s0,s0
02c2e200  fmul s0,s0,s10
02c2e204  fadd s0,s0,s9
02c2e208  fadd s8,s8,s0
02c2e20c  b 0x02c2e1e8
02c2e210  mov w0,wzr
02c2e214  b 0x02c2e270
02c2e218  adrp x8,0x5e62000
02c2e21c  add x0,sp,#0x18
02c2e220  ldr x8,[x8, #0xff8]
02c2e224  ldr x1,[x8]
02c2e228  bl 0x03f9a740
02c2e22c  ldr x8,[x20, #0x68]
02c2e230  cbz x8,0x02c2e28c
02c2e234  ldr w9,[x8, #0x18]
02c2e238  cmp w9,w19
02c2e23c  b.ls 0x02c2e290
02c2e240  add x8,x8,w19, SXTW  #0x2
02c2e244  fmov s0,0x41a00000
02c2e248  ldr s1,[x8, #0x20]
02c2e24c  mov w8,#0x7f800000
02c2e250  fmul s0,s8,s0
02c2e254  scvtf s1,s1
02c2e258  fmul s0,s0,s1
02c2e25c  fmov s1,w8
02c2e260  mov w8,#0x80000000
02c2e264  fcvtzs w9,s0
02c2e268  fcmp s0,s1
02c2e26c  csel w0,w8,w9,eq
02c2e270  ldp x20,x19,[sp, #0x60]
02c2e274  ldr x30,[sp, #0x48]
02c2e278  ldp x22,x21,[sp, #0x50]
02c2e27c  ldr d10,[sp, #0x30]
02c2e280  ldp d9,d8,[sp, #0x38]
02c2e284  add sp,sp,#0x70
02c2e288  ret
02c2e28c  bl 0x029f5cfc
02c2e290  bl 0x029f5d04
