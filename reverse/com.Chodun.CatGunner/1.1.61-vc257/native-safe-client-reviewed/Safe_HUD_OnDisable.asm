02c6b320  str x30,[sp, #-0x20]!
02c6b324  stp x20,x19,[sp, #0x10]
02c6b328  adrp x20,0x625c000
02c6b32c  mov x19,x0
02c6b330  ldrb w8,[x20, #0x289]
02c6b334  tbnz w8,#0x0,0x02c6b34c
02c6b338  adrp x0,0x5e59000
02c6b33c  ldr x0,[x0, #0x1c0]
02c6b340  bl 0x029f5a50
02c6b344  mov w8,#0x1
02c6b348  strb w8,[x20, #0x289]
02c6b34c  mov x20,x19
02c6b350  ldr x1,[x20, #0x48]!
02c6b354  cbz x1,0x02c6b374
02c6b358  mov x0,x19
02c6b35c  mov x2,xzr
02c6b360  bl 0x057e237c
02c6b364  mov x0,x20
02c6b368  mov x1,xzr
02c6b36c  str xzr,[x19, #0x48]
02c6b370  bl 0x029f59f4
02c6b374  mov x0,x19
02c6b378  mov x1,xzr
02c6b37c  bl 0x057dc0f8
02c6b380  cbz x0,0x02c6b3f0
02c6b384  adrp x20,0x5e59000
02c6b388  mov x1,xzr
02c6b38c  ldr x20,[x20, #0x1c0]
02c6b390  ldp s1,s2,[x19, #0x3c]
02c6b394  ldr s0,[x19, #0x38]
02c6b398  bl 0x057ef654
02c6b39c  ldr x0,[x20]
02c6b3a0  ldr x20,[x19, #0x20]
02c6b3a4  strb wzr,[x19, #0x50]
02c6b3a8  ldr w8,[x0, #0xe4]
02c6b3ac  cbnz w8,0x02c6b3b4
02c6b3b0  bl 0x029f5bd0
02c6b3b4  mov x0,x20
02c6b3b8  mov x1,xzr
02c6b3bc  mov x2,xzr
02c6b3c0  bl 0x057dfa70
02c6b3c4  tbz w0,#0x0,0x02c6b3e4
02c6b3c8  ldr x0,[x19, #0x20]
02c6b3cc  cbz x0,0x02c6b3f0
02c6b3d0  ldp x20,x19,[sp, #0x10]
02c6b3d4  mov w1,wzr
02c6b3d8  mov x2,xzr
02c6b3dc  ldr x30,[sp], #0x20
02c6b3e0  b 0x057dff3c
02c6b3e4  ldp x20,x19,[sp, #0x10]
02c6b3e8  ldr x30,[sp], #0x20
02c6b3ec  ret
02c6b3f0  bl 0x029f5cfc
