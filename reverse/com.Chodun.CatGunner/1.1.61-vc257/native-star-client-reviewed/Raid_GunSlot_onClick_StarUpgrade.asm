02c5b328  stp x30,x21,[sp, #-0x20]!
02c5b32c  stp x20,x19,[sp, #0x10]
02c5b330  adrp x20,0x625c000
02c5b334  adrp x21,0x5e5e000
02c5b338  mov x19,x0
02c5b33c  ldrb w8,[x20, #0x1da]
02c5b340  ldr x21,[x21, #0x58]
02c5b344  tbnz w8,#0x0,0x02c5b368
02c5b348  adrp x0,0x5e59000
02c5b34c  ldr x0,[x0, #0x1c0]
02c5b350  bl 0x029f5a50
02c5b354  adrp x0,0x5e5e000
02c5b358  ldr x0,[x0, #0x58]
02c5b35c  bl 0x029f5a50
02c5b360  mov w8,#0x1
02c5b364  strb w8,[x20, #0x1da]
02c5b368  ldr x0,[x21]
02c5b36c  adrp x20,0x5e59000
02c5b370  ldr w8,[x0, #0xe4]
02c5b374  ldr x20,[x20, #0x1c0]
02c5b378  cbnz w8,0x02c5b384
02c5b37c  bl 0x029f5bd0
02c5b380  ldr x0,[x21]
02c5b384  ldr x8,[x20]
02c5b388  ldr x9,[x0, #0xb8]
02c5b38c  ldr w10,[x8, #0xe4]
02c5b390  ldr x20,[x9]
02c5b394  cbnz w10,0x02c5b3a0
02c5b398  mov x0,x8
02c5b39c  bl 0x029f5bd0
02c5b3a0  mov x0,x20
02c5b3a4  mov x1,xzr
02c5b3a8  mov x2,xzr
02c5b3ac  bl 0x057e14b4
02c5b3b0  tbnz w0,#0x0,0x02c5b464
02c5b3b4  ldr x0,[x21]
02c5b3b8  ldr w8,[x0, #0xe4]
02c5b3bc  cbnz w8,0x02c5b3c8
02c5b3c0  bl 0x029f5bd0
02c5b3c4  ldr x0,[x21]
02c5b3c8  ldr x8,[x0, #0xb8]
02c5b3cc  ldr x0,[x8]
02c5b3d0  cbz x0,0x02c5b470
02c5b3d4  mov x1,xzr
02c5b3d8  bl 0x02c6d80c
02c5b3dc  tbz w0,#0x0,0x02c5b464
02c5b3e0  adrp x20,0x625b000
02c5b3e4  ldrb w8,[x20, #0xa57]
02c5b3e8  cbnz w8,0x02c5b400
02c5b3ec  adrp x0,0x5e5d000
02c5b3f0  ldr x0,[x0, #0xd70]
02c5b3f4  bl 0x029f5a50
02c5b3f8  mov w8,#0x1
02c5b3fc  strb w8,[x20, #0xa57]
02c5b400  adrp x8,0x5e5d000
02c5b404  ldr x8,[x8, #0xd70]
02c5b408  ldr x8,[x8]
02c5b40c  ldr x8,[x8, #0xb8]
02c5b410  ldr x0,[x8]
02c5b414  cbz x0,0x02c5b470
02c5b418  fmov s0,0x3f800000
02c5b41c  mov w1,#0x1
02c5b420  mov x2,xzr
02c5b424  mov x3,xzr
02c5b428  bl 0x02c1f10c
02c5b42c  ldr x0,[x21]
02c5b430  ldr w8,[x0, #0xe4]
02c5b434  cbnz w8,0x02c5b440
02c5b438  bl 0x029f5bd0
02c5b43c  ldr x0,[x21]
02c5b440  ldr x8,[x0, #0xb8]
02c5b444  ldr x0,[x8]
02c5b448  cbz x0,0x02c5b470
02c5b44c  ldr w1,[x19, #0x20]
02c5b450  ldp x20,x19,[sp, #0x10]
02c5b454  mov w2,#0x1
02c5b458  mov x3,xzr
02c5b45c  ldp x30,x21,[sp], #0x20
02c5b460  b 0x02c6e578
02c5b464  ldp x20,x19,[sp, #0x10]
02c5b468  ldp x30,x21,[sp], #0x20
02c5b46c  ret
02c5b470  bl 0x029f5cfc
