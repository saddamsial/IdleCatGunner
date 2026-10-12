02c6b0a4  stp x30,x21,[sp, #-0x20]!
02c6b0a8  stp x20,x19,[sp, #0x10]
02c6b0ac  adrp x21,0x625c000
02c6b0b0  adrp x20,0x5e59000
02c6b0b4  mov x19,x0
02c6b0b8  ldrb w8,[x21, #0x288]
02c6b0bc  ldr x20,[x20, #0x1c0]
02c6b0c0  tbnz w8,#0x0,0x02c6b0d8
02c6b0c4  adrp x0,0x5e59000
02c6b0c8  ldr x0,[x0, #0x1c0]
02c6b0cc  bl 0x029f5a50
02c6b0d0  mov w8,#0x1
02c6b0d4  strb w8,[x21, #0x288]
02c6b0d8  ldr x0,[x20]
02c6b0dc  ldr x20,[x19, #0x20]
02c6b0e0  ldr w8,[x0, #0xe4]
02c6b0e4  cbnz w8,0x02c6b0ec
02c6b0e8  bl 0x029f5bd0
02c6b0ec  mov x0,x20
02c6b0f0  mov x1,xzr
02c6b0f4  mov x2,xzr
02c6b0f8  bl 0x057e14b4
02c6b0fc  tbz w0,#0x0,0x02c6b10c
02c6b100  ldp x20,x19,[sp, #0x10]
02c6b104  ldp x30,x21,[sp], #0x20
02c6b108  ret
02c6b10c  ldr x0,[x19, #0x20]
02c6b110  cbz x0,0x02c6b14c
02c6b114  mov x1,xzr
02c6b118  mov x2,xzr
02c6b11c  mov x3,xzr
02c6b120  bl 0x02cae70c
02c6b124  ldr x0,[x19, #0x20]
02c6b128  cbz x0,0x02c6b14c
02c6b12c  mov x1,xzr
02c6b130  bl 0x057dc1c8
02c6b134  cbz x0,0x02c6b14c
02c6b138  ldp x20,x19,[sp, #0x10]
02c6b13c  mov w1,wzr
02c6b140  mov x2,xzr
02c6b144  ldp x30,x21,[sp], #0x20
02c6b148  b 0x057dff3c
02c6b14c  bl 0x029f5cfc
