02c06384  stp x30,x21,[sp, #-0x20]!
02c06388  stp x20,x19,[sp, #0x10]
02c0638c  adrp x21,0x625b000
02c06390  adrp x20,0x5e61000
02c06394  mov x19,x0
02c06398  ldrb w8,[x21, #0xe75]
02c0639c  ldr x20,[x20, #0xf78]
02c063a0  tbnz w8,#0x0,0x02c063b8
02c063a4  adrp x0,0x5e61000
02c063a8  ldr x0,[x0, #0xf78]
02c063ac  bl 0x029f5a50
02c063b0  mov w8,#0x1
02c063b4  strb w8,[x21, #0xe75]
02c063b8  ldr x8,[x20]
02c063bc  mov x1,x19
02c063c0  ldr x8,[x8, #0xb8]
02c063c4  str x19,[x8]
02c063c8  ldr x8,[x20]
02c063cc  ldp x20,x19,[sp, #0x10]
02c063d0  ldr x0,[x8, #0xb8]
02c063d4  ldp x30,x21,[sp], #0x20
02c063d8  b 0x029f59f4
