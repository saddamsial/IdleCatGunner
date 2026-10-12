0465b244  str x30,[sp, #-0x40]!
0465b248  stp x24,x23,[sp, #0x10]
0465b24c  stp x22,x21,[sp, #0x20]
0465b250  stp x20,x19,[sp, #0x30]
0465b254  adrp x23,0x6260000
0465b258  adrp x24,0x5e71000
0465b25c  mov x19,x3
0465b260  ldrb w8,[x23, #0xa2a]
0465b264  ldr x24,[x24, #0x8d8]
0465b268  mov w20,w2
0465b26c  mov x21,x1
0465b270  mov x22,x0
0465b274  tbnz w8,#0x0,0x0465b28c
0465b278  adrp x0,0x5e71000
0465b27c  ldr x0,[x0, #0x8d8]
0465b280  bl 0x029f5a50
0465b284  mov w8,#0x1
0465b288  strb w8,[x23, #0xa2a]
0465b28c  ldr x0,[x24]
0465b290  ldr w8,[x0, #0xe4]
0465b294  cbnz w8,0x0465b29c
0465b298  bl 0x029f5bd0
0465b29c  bl 0x046530c0
0465b2a0  mov w1,w0
0465b2a4  mov x0,x22
0465b2a8  mov x2,x21
0465b2ac  mov w3,w20
0465b2b0  mov x4,x19
0465b2b4  ldp x20,x19,[sp, #0x30]
0465b2b8  ldp x22,x21,[sp, #0x20]
0465b2bc  ldp x24,x23,[sp, #0x10]
0465b2c0  ldr x30,[sp], #0x40
0465b2c4  b 0x04653178
