02c8b2d0  str x30,[sp, #-0x30]!
02c8b2d4  stp x22,x21,[sp, #0x10]
02c8b2d8  stp x20,x19,[sp, #0x20]
02c8b2dc  adrp x21,0x625c000
02c8b2e0  adrp x20,0x5e5d000
02c8b2e4  mov x19,x0
02c8b2e8  ldrb w8,[x21, #0x3aa]
02c8b2ec  ldr x20,[x20, #0x3c0]
02c8b2f0  tbnz w8,#0x0,0x02c8b32c
02c8b2f4  adrp x0,0x5e62000
02c8b2f8  ldr x0,[x0, #0x660]
02c8b2fc  bl 0x029f5a50
02c8b300  adrp x0,0x5e59000
02c8b304  ldr x0,[x0, #0x7d0]
02c8b308  bl 0x029f5a50
02c8b30c  adrp x0,0x5e5d000
02c8b310  ldr x0,[x0, #0x3c0]
02c8b314  bl 0x029f5a50
02c8b318  adrp x0,0x5e5d000
02c8b31c  ldr x0,[x0, #0x3e0]
02c8b320  bl 0x029f5a50
02c8b324  mov w8,#0x1
02c8b328  strb w8,[x21, #0x3aa]
02c8b32c  ldr x0,[x20]
02c8b330  adrp x20,0x5e62000
02c8b334  ldr w8,[x0, #0xe4]
02c8b338  ldr x20,[x20, #0x660]
02c8b33c  str xzr,[sp, #0x8]
02c8b340  cbnz w8,0x02c8b348
02c8b344  bl 0x029f5bd0
02c8b348  adrp x21,0x5e59000
02c8b34c  mov x0,xzr
02c8b350  ldr x21,[x21, #0x7d0]
02c8b354  bl 0x02c25b48
02c8b358  ldr x8,[x20]
02c8b35c  mov x20,x0
02c8b360  ldr w9,[x8, #0xe4]
02c8b364  cbnz w9,0x02c8b370
02c8b368  mov x0,x8
02c8b36c  bl 0x029f5bd0
02c8b370  adrp x22,0x5e5d000
02c8b374  mov x0,x20
02c8b378  ldr x22,[x22, #0x3e0]
02c8b37c  bl 0x02c8ab78
02c8b380  ldr x8,[x21]
02c8b384  str x0,[sp, #0x8]
02c8b388  ldr w9,[x8, #0xe4]
02c8b38c  cbnz w9,0x02c8b398
02c8b390  mov x0,x8
02c8b394  bl 0x029f5bd0
02c8b398  ldr x1,[x22]
02c8b39c  add x0,sp,#0x8
02c8b3a0  mov x2,xzr
02c8b3a4  bl 0x04832368
02c8b3a8  mov x20,x19
02c8b3ac  mov x21,x0
02c8b3b0  mov x2,xzr
02c8b3b4  ldr x8,[x20, #0x28]!
02c8b3b8  mov x1,x21
02c8b3bc  mov x0,x8
02c8b3c0  bl 0x046b2ddc
02c8b3c4  tbnz w0,#0x0,0x02c8b414
02c8b3c8  mov x0,x20
02c8b3cc  mov x1,x21
02c8b3d0  str x21,[x19, #0x28]
02c8b3d4  bl 0x029f59f4
02c8b3d8  ldr x10,[x19, #0x20]
02c8b3dc  cbz x10,0x02c8b428
02c8b3e0  ldr x9,[x10, #0x18]
02c8b3e4  cmp w9,#0x1
02c8b3e8  b.lt 0x02c8b40c
02c8b3ec  bic w8,w9,w9, ASR #0x1f
02c8b3f0  and x9,x9,#0xffffffff
02c8b3f4  add x10,x10,#0x20
02c8b3f8  cbz x9,0x02c8b424
02c8b3fc  sub x8,x8,#0x1
02c8b400  sub x9,x9,#0x1
02c8b404  str wzr,[x10], #0x4
02c8b408  cbnz x8,0x02c8b3f8
02c8b40c  mov x0,xzr
02c8b410  bl 0x02c0faf8
02c8b414  ldp x20,x19,[sp, #0x20]
02c8b418  ldp x22,x21,[sp, #0x10]
02c8b41c  ldr x30,[sp], #0x30
02c8b420  ret
02c8b424  bl 0x029f5d04
02c8b428  bl 0x029f5cfc
