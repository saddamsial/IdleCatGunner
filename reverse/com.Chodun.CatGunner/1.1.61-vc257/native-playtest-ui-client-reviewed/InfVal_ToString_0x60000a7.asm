0465bd64  stp x30,x21,[sp, #-0x20]!
0465bd68  stp x20,x19,[sp, #0x10]
0465bd6c  adrp x20,0x6260000
0465bd70  adrp x21,0x5e71000
0465bd74  mov x19,x0
0465bd78  ldrb w8,[x20, #0xa2d]
0465bd7c  ldr x21,[x21, #0x8d8]
0465bd80  tbnz w8,#0x0,0x0465bd98
0465bd84  adrp x0,0x5e71000
0465bd88  ldr x0,[x0, #0x8d8]
0465bd8c  bl 0x029f5a50
0465bd90  mov w8,#0x1
0465bd94  strb w8,[x20, #0xa2d]
0465bd98  ldr x0,[x21]
0465bd9c  ldr w8,[x0, #0xe4]
0465bda0  cbnz w8,0x0465bda8
0465bda4  bl 0x029f5bd0
0465bda8  bl 0x046530c0
0465bdac  mov w20,w0
0465bdb0  bl 0x04652ff8
0465bdb4  mov x21,x0
0465bdb8  bl 0x0465311c
0465bdbc  mov w3,w0
0465bdc0  mov x0,x19
0465bdc4  mov w1,w20
0465bdc8  ldp x20,x19,[sp, #0x10]
0465bdcc  mov x2,x21
0465bdd0  mov x4,xzr
0465bdd4  ldp x30,x21,[sp], #0x20
0465bdd8  b 0x04653178
