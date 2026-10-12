0465b140  str x30,[sp, #-0x40]!
0465b144  stp x24,x23,[sp, #0x10]
0465b148  stp x22,x21,[sp, #0x20]
0465b14c  stp x20,x19,[sp, #0x30]
0465b150  adrp x23,0x6260000
0465b154  adrp x24,0x5e71000
0465b158  mov x19,x3
0465b15c  ldrb w8,[x23, #0xa28]
0465b160  ldr x24,[x24, #0x8d8]
0465b164  mov w20,w2
0465b168  mov w21,w1
0465b16c  mov x22,x0
0465b170  tbnz w8,#0x0,0x0465b188
0465b174  adrp x0,0x5e71000
0465b178  ldr x0,[x0, #0x8d8]
0465b17c  bl 0x029f5a50
0465b180  mov w8,#0x1
0465b184  strb w8,[x23, #0xa28]
0465b188  ldr x0,[x24]
0465b18c  ldr w8,[x0, #0xe4]
0465b190  cbnz w8,0x0465b198
0465b194  bl 0x029f5bd0
0465b198  bl 0x04652ff8
0465b19c  mov x2,x0
0465b1a0  mov x0,x22
0465b1a4  mov w1,w21
0465b1a8  mov w3,w20
0465b1ac  mov x4,x19
0465b1b0  ldp x20,x19,[sp, #0x30]
0465b1b4  ldp x22,x21,[sp, #0x20]
0465b1b8  ldp x24,x23,[sp, #0x10]
0465b1bc  ldr x30,[sp], #0x40
0465b1c0  b 0x04653178
