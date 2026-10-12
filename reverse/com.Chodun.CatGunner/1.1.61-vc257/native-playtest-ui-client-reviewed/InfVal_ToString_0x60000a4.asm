0465b2c8  stp x30,x23,[sp, #-0x30]!
0465b2cc  stp x22,x21,[sp, #0x10]
0465b2d0  stp x20,x19,[sp, #0x20]
0465b2d4  adrp x22,0x6260000
0465b2d8  adrp x23,0x5e71000
0465b2dc  mov x19,x2
0465b2e0  ldrb w8,[x22, #0xa2b]
0465b2e4  ldr x23,[x23, #0x8d8]
0465b2e8  mov w20,w1
0465b2ec  mov x21,x0
0465b2f0  tbnz w8,#0x0,0x0465b308
0465b2f4  adrp x0,0x5e71000
0465b2f8  ldr x0,[x0, #0x8d8]
0465b2fc  bl 0x029f5a50
0465b300  mov w8,#0x1
0465b304  strb w8,[x22, #0xa2b]
0465b308  ldr x0,[x23]
0465b30c  ldr w8,[x0, #0xe4]
0465b310  cbnz w8,0x0465b318
0465b314  bl 0x029f5bd0
0465b318  bl 0x046530c0
0465b31c  mov w22,w0
0465b320  bl 0x04652ff8
0465b324  mov x2,x0
0465b328  mov x0,x21
0465b32c  mov w1,w22
0465b330  mov w3,w20
0465b334  mov x4,x19
0465b338  ldp x20,x19,[sp, #0x20]
0465b33c  ldp x22,x21,[sp, #0x10]
0465b340  ldp x30,x23,[sp], #0x30
0465b344  b 0x04653178
