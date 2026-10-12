02c60334  stp x30,x21,[sp, #-0x20]!
02c60338  stp x20,x19,[sp, #0x10]
02c6033c  adrp x21,0x625c000
02c60340  adrp x20,0x5e5d000
02c60344  mov x19,x0
02c60348  ldrb w8,[x21, #0x21b]
02c6034c  ldr x20,[x20, #0x338]
02c60350  tbnz w8,#0x0,0x02c60368
02c60354  adrp x0,0x5e5d000
02c60358  ldr x0,[x0, #0x338]
02c6035c  bl 0x029f5a50
02c60360  mov w8,#0x1
02c60364  strb w8,[x21, #0x21b]
02c60368  ldr x0,[x20]
02c6036c  ldr w8,[x0, #0xe4]
02c60370  cbnz w8,0x02c6037c
02c60374  bl 0x029f5bd0
02c60378  ldr x0,[x20]
02c6037c  ldr x8,[x0, #0xb8]
02c60380  mov x2,xzr
02c60384  ldp x0,x1,[x8, #0x90]
02c60388  bl 0x02b1e644
02c6038c  ldr x8,[x20]
02c60390  ldr w21,[x19, #0x20]
02c60394  mov w20,w0
02c60398  mov x2,xzr
02c6039c  ldr x9,[x8, #0xb8]
02c603a0  ldp x8,x1,[x9, #0x90]
02c603a4  mov x0,x8
02c603a8  bl 0x02b1e644
02c603ac  ldr x8,[x19, #0x28]
02c603b0  cbz x8,0x02c60410
02c603b4  ldr s0,[x19, #0x20]
02c603b8  scvtf s1,w0
02c603bc  mov x0,x8
02c603c0  mov x1,xzr
02c603c4  scvtf s0,s0
02c603c8  fdiv s0,s1,s0
02c603cc  bl 0x02c28290
02c603d0  fmov s3,0x3f800000
02c603d4  fmov s2,0x3f800000
02c603d8  ldr x0,[x19, #0x30]
02c603dc  fmov s1,0x3f800000
02c603e0  fmov s0,0x3f800000
02c603e4  cmp w20,w21
02c603e8  b.ge 0x02c603f4
02c603ec  ldp s0,s1,[x19, #0x38]
02c603f0  ldp s2,s3,[x19, #0x40]
02c603f4  cbz x0,0x02c60410
02c603f8  ldr x8,[x0]
02c603fc  ldp x20,x19,[sp, #0x10]
02c60400  ldr x2,[x8, #0x2a8]
02c60404  ldr x1,[x8, #0x2b0]
02c60408  ldp x30,x21,[sp], #0x20
02c6040c  br x2
02c60410  bl 0x029f5cfc
