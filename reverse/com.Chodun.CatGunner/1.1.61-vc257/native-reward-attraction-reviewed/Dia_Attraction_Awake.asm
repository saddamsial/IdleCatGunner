02c26ac0  stp x30,x21,[sp, #-0x20]!
02c26ac4  stp x20,x19,[sp, #0x10]
02c26ac8  adrp x21,0x625b000
02c26acc  adrp x20,0x5e5e000
02c26ad0  mov x19,x0
02c26ad4  ldrb w8,[x21, #0xfb1]
02c26ad8  ldr x20,[x20, #0x520]
02c26adc  tbnz w8,#0x0,0x02c26af4
02c26ae0  adrp x0,0x5e5e000
02c26ae4  ldr x0,[x0, #0x520]
02c26ae8  bl 0x029f5a50
02c26aec  mov w8,#0x1
02c26af0  strb w8,[x21, #0xfb1]
02c26af4  ldr x8,[x20]
02c26af8  mov x1,x19
02c26afc  ldr x8,[x8, #0xb8]
02c26b00  str x19,[x8]
02c26b04  ldr x8,[x20]
02c26b08  ldp x20,x19,[sp, #0x10]
02c26b0c  ldr x0,[x8, #0xb8]
02c26b10  ldp x30,x21,[sp], #0x20
02c26b14  b 0x029f59f4
