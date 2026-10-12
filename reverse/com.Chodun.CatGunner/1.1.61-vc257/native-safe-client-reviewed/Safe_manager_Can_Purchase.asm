02c6c35c  stp x30,x21,[sp, #-0x20]!
02c6c360  stp x20,x19,[sp, #0x10]
02c6c364  adrp x21,0x625c000
02c6c368  mov w20,w1
02c6c36c  mov x19,x0
02c6c370  ldrb w8,[x21, #0x294]
02c6c374  tbnz w8,#0x0,0x02c6c38c
02c6c378  adrp x0,0x5e5d000
02c6c37c  ldr x0,[x0, #0x338]
02c6c380  bl 0x029f5a50
02c6c384  mov w8,#0x1
02c6c388  strb w8,[x21, #0x294]
02c6c38c  ldr w8,[x19, #0x28]
02c6c390  mov w9,#0x10
02c6c394  mov w0,wzr
02c6c398  add w8,w8,#0x6
02c6c39c  cmp w8,#0x10
02c6c3a0  csel w8,w8,w9,lt
02c6c3a4  cmp w20,#0xf
02c6c3a8  b.gt 0x02c6c3fc
02c6c3ac  bic w8,w8,w8, ASR #0x1f
02c6c3b0  cmp w8,w20
02c6c3b4  b.ne 0x02c6c3fc
02c6c3b8  adrp x20,0x5e5d000
02c6c3bc  ldr x20,[x20, #0x338]
02c6c3c0  ldr x0,[x20]
02c6c3c4  ldr w8,[x0, #0xe4]
02c6c3c8  cbnz w8,0x02c6c3d4
02c6c3cc  bl 0x029f5bd0
02c6c3d0  ldr x0,[x20]
02c6c3d4  ldr x8,[x0, #0xb8]
02c6c3d8  mov x2,xzr
02c6c3dc  ldp x0,x1,[x8, #0x90]
02c6c3e0  bl 0x02b1e644
02c6c3e4  ldr w8,[x19, #0x28]
02c6c3e8  mov w9,#0x32
02c6c3ec  mov w10,#0x32
02c6c3f0  madd w8,w8,w9,w10
02c6c3f4  cmp w0,w8
02c6c3f8  cset w0,ge
02c6c3fc  ldp x20,x19,[sp, #0x10]
02c6c400  ldp x30,x21,[sp], #0x20
02c6c404  ret
