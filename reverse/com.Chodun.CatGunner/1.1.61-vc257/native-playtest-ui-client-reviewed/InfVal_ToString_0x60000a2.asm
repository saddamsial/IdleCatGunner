0465b1c4  stp x30,x23,[sp, #-0x30]!
0465b1c8  stp x22,x21,[sp, #0x10]
0465b1cc  stp x20,x19,[sp, #0x20]
0465b1d0  adrp x22,0x6260000
0465b1d4  adrp x23,0x5e71000
0465b1d8  mov x19,x2
0465b1dc  ldrb w8,[x22, #0xa29]
0465b1e0  ldr x23,[x23, #0x8d8]
0465b1e4  mov x20,x1
0465b1e8  mov x21,x0
0465b1ec  tbnz w8,#0x0,0x0465b204
0465b1f0  adrp x0,0x5e71000
0465b1f4  ldr x0,[x0, #0x8d8]
0465b1f8  bl 0x029f5a50
0465b1fc  mov w8,#0x1
0465b200  strb w8,[x22, #0xa29]
0465b204  ldr x0,[x23]
0465b208  ldr w8,[x0, #0xe4]
0465b20c  cbnz w8,0x0465b214
0465b210  bl 0x029f5bd0
0465b214  bl 0x046530c0
0465b218  mov w22,w0
0465b21c  bl 0x0465311c
0465b220  mov w3,w0
0465b224  mov x0,x21
0465b228  mov w1,w22
0465b22c  mov x2,x20
0465b230  mov x4,x19
0465b234  ldp x20,x19,[sp, #0x20]
0465b238  ldp x22,x21,[sp, #0x10]
0465b23c  ldp x30,x23,[sp], #0x30
0465b240  b 0x04653178
