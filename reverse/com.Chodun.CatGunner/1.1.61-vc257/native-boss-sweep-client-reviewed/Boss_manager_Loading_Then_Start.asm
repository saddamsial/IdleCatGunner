02c46ab0  stp x30,x21,[sp, #-0x20]!
02c46ab4  stp x20,x19,[sp, #0x10]
02c46ab8  adrp x20,0x625c000
02c46abc  adrp x21,0x5e63000
02c46ac0  mov x19,x0
02c46ac4  ldrb w8,[x20, #0xe4]
02c46ac8  ldr x21,[x21, #0x330]
02c46acc  tbnz w8,#0x0,0x02c46ae4
02c46ad0  adrp x0,0x5e63000
02c46ad4  ldr x0,[x0, #0x330]
02c46ad8  bl 0x029f5a50
02c46adc  mov w8,#0x1
02c46ae0  strb w8,[x20, #0xe4]
02c46ae4  ldr x0,[x21]
02c46ae8  bl 0x029f5cec
02c46aec  mov x1,xzr
02c46af0  mov x20,x0
02c46af4  bl 0x04893238
02c46af8  mov x0,x20
02c46afc  mov x1,x19
02c46b00  str wzr,[x20, #0x10]
02c46b04  str x19,[x0, #0x20]!
02c46b08  bl 0x029f59f4
02c46b0c  mov x0,x20
02c46b10  ldp x20,x19,[sp, #0x10]
02c46b14  ldp x30,x21,[sp], #0x20
02c46b18  ret
