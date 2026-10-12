02c952dc  str x30,[sp, #-0x30]!
02c952e0  stp x22,x21,[sp, #0x10]
02c952e4  stp x20,x19,[sp, #0x20]
02c952e8  adrp x21,0x625c000
02c952ec  adrp x22,0x5e64000
02c952f0  mov w19,w1
02c952f4  ldrb w8,[x21, #0x426]
02c952f8  ldr x22,[x22, #0x330]
02c952fc  mov x20,x0
02c95300  tbnz w8,#0x0,0x02c95318
02c95304  adrp x0,0x5e64000
02c95308  ldr x0,[x0, #0x330]
02c9530c  bl 0x029f5a50
02c95310  mov w8,#0x1
02c95314  strb w8,[x21, #0x426]
02c95318  ldr x2,[x22]
02c9531c  mov x0,x20
02c95320  mov w1,w19
02c95324  ldp x20,x19,[sp, #0x20]
02c95328  ldp x22,x21,[sp, #0x10]
02c9532c  ldr x30,[sp], #0x30
02c95330  b 0x02c9498c
