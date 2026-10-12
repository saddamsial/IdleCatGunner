0465b0bc  str x30,[sp, #-0x40]!
0465b0c0  stp x24,x23,[sp, #0x10]
0465b0c4  stp x22,x21,[sp, #0x20]
0465b0c8  stp x20,x19,[sp, #0x30]
0465b0cc  adrp x23,0x6260000
0465b0d0  adrp x24,0x5e71000
0465b0d4  mov x19,x3
0465b0d8  ldrb w8,[x23, #0xa27]
0465b0dc  ldr x24,[x24, #0x8d8]
0465b0e0  mov x20,x2
0465b0e4  mov w21,w1
0465b0e8  mov x22,x0
0465b0ec  tbnz w8,#0x0,0x0465b104
0465b0f0  adrp x0,0x5e71000
0465b0f4  ldr x0,[x0, #0x8d8]
0465b0f8  bl 0x029f5a50
0465b0fc  mov w8,#0x1
0465b100  strb w8,[x23, #0xa27]
0465b104  ldr x0,[x24]
0465b108  ldr w8,[x0, #0xe4]
0465b10c  cbnz w8,0x0465b114
0465b110  bl 0x029f5bd0
0465b114  bl 0x0465311c
0465b118  mov w3,w0
0465b11c  mov x0,x22
0465b120  mov w1,w21
0465b124  mov x2,x20
0465b128  mov x4,x19
0465b12c  ldp x20,x19,[sp, #0x30]
0465b130  ldp x22,x21,[sp, #0x20]
0465b134  ldp x24,x23,[sp, #0x10]
0465b138  ldr x30,[sp], #0x40
0465b13c  b 0x04653178
