04656a90  str x30,[sp, #-0x30]!
04656a94  stp x22,x21,[sp, #0x10]
04656a98  stp x20,x19,[sp, #0x20]
04656a9c  adrp x22,0x6260000
04656aa0  adrp x21,0x5e5a000
04656aa4  mov x19,x0
04656aa8  ldrb w9,[x22, #0x9f0]
04656aac  ldr x21,[x21, #0x290]
04656ab0  mov x20,x8
04656ab4  tbnz w9,#0x0,0x04656acc
04656ab8  adrp x0,0x5e5a000
04656abc  ldr x0,[x0, #0x290]
04656ac0  bl 0x029f5a50
04656ac4  mov w8,#0x1
04656ac8  strb w8,[x22, #0x9f0]
04656acc  ldr x2,[x21]
04656ad0  lsr x1,x19,#0x20
04656ad4  add x0,sp,#0x8
04656ad8  str xzr,[sp, #0x8]
04656adc  bl 0x035f6d90
04656ae0  movi v0.2D,#0x0
04656ae4  ldr x2,[sp, #0x8]
04656ae8  mov x0,x20
04656aec  mov w1,w19
04656af0  stp q0,q0,[x20]
04656af4  bl 0x04655b64
04656af8  ldp x20,x19,[sp, #0x20]
04656afc  ldp x22,x21,[sp, #0x10]
04656b00  ldr x30,[sp], #0x30
04656b04  ret
