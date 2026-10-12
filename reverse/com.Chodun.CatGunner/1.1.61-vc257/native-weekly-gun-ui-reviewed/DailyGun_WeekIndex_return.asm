02c8b074  str x30,[sp, #-0x30]!
02c8b078  stp x22,x21,[sp, #0x10]
02c8b07c  stp x20,x19,[sp, #0x20]
02c8b080  adrp x20,0x625c000
02c8b084  adrp x19,0x5e5d000
02c8b088  ldrb w8,[x20, #0x3a7]
02c8b08c  ldr x19,[x19, #0x3c0]
02c8b090  tbnz w8,#0x0,0x02c8b0cc
02c8b094  adrp x0,0x5e62000
02c8b098  ldr x0,[x0, #0x660]
02c8b09c  bl 0x029f5a50
02c8b0a0  adrp x0,0x5e59000
02c8b0a4  ldr x0,[x0, #0x7d0]
02c8b0a8  bl 0x029f5a50
02c8b0ac  adrp x0,0x5e5a000
02c8b0b0  ldr x0,[x0, #0x180]
02c8b0b4  bl 0x029f5a50
02c8b0b8  adrp x0,0x5e5d000
02c8b0bc  ldr x0,[x0, #0x3c0]
02c8b0c0  bl 0x029f5a50
02c8b0c4  mov w8,#0x1
02c8b0c8  strb w8,[x20, #0x3a7]
02c8b0cc  ldr x0,[x19]
02c8b0d0  adrp x20,0x5e62000
02c8b0d4  ldr w8,[x0, #0xe4]
02c8b0d8  ldr x20,[x20, #0x660]
02c8b0dc  str xzr,[sp, #0x8]
02c8b0e0  cbnz w8,0x02c8b0e8
02c8b0e4  bl 0x029f5bd0
02c8b0e8  adrp x22,0x5e59000
02c8b0ec  mov x0,xzr
02c8b0f0  ldr x22,[x22, #0x7d0]
02c8b0f4  bl 0x02c25b48
02c8b0f8  ldr x8,[x20]
02c8b0fc  mov x19,x0
02c8b100  ldr w9,[x8, #0xe4]
02c8b104  cbnz w9,0x02c8b110
02c8b108  mov x0,x8
02c8b10c  bl 0x029f5bd0
02c8b110  adrp x21,0x5e5a000
02c8b114  mov x0,x19
02c8b118  ldr x21,[x21, #0x180]
02c8b11c  bl 0x02c8ab78
02c8b120  ldr x9,[x20]
02c8b124  ldr x8,[x22]
02c8b128  mov x20,x0
02c8b12c  ldr x9,[x9, #0xb8]
02c8b130  ldr w10,[x8, #0xe4]
02c8b134  ldr x19,[x9, #0x20]
02c8b138  cbnz w10,0x02c8b144
02c8b13c  mov x0,x8
02c8b140  bl 0x029f5bd0
02c8b144  mov x0,x20
02c8b148  mov x1,x19
02c8b14c  mov x2,xzr
02c8b150  bl 0x048330d0
02c8b154  ldr x8,[x21]
02c8b158  str x0,[sp, #0x8]
02c8b15c  ldr w9,[x8, #0xe4]
02c8b160  cbnz w9,0x02c8b16c
02c8b164  mov x0,x8
02c8b168  bl 0x029f5bd0
02c8b16c  add x0,sp,#0x8
02c8b170  mov x1,xzr
02c8b174  bl 0x048681e0
02c8b178  fcvtzs w8,d0
02c8b17c  mov w9,#0x2493
02c8b180  movk w9,#0x9249, LSL #16
02c8b184  ldp x20,x19,[sp, #0x20]
02c8b188  ldp x22,x21,[sp, #0x10]
02c8b18c  smull x9,w8,w9
02c8b190  lsr x9,x9,#0x20
02c8b194  add w8,w9,w8
02c8b198  mov x9,#0x7ff0000000000000
02c8b19c  fmov d1,x9
02c8b1a0  asr w10,w8,#0x2
02c8b1a4  mov w9,#0xdb6e
02c8b1a8  movk w9,#0xedb6, LSL #16
02c8b1ac  add w8,w10,w8, LSR #0x1f
02c8b1b0  fcmp d0,d1
02c8b1b4  csel w0,w9,w8,eq
02c8b1b8  ldr x30,[sp], #0x30
02c8b1bc  ret
