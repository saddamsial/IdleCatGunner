04656d58  str d8,[sp, #-0x40]!
04656d5c  stp x30,x23,[sp, #0x10]
04656d60  stp x22,x21,[sp, #0x20]
04656d64  stp x20,x19,[sp, #0x30]
04656d68  adrp x23,0x6260000
04656d6c  adrp x22,0x5e5a000
04656d70  mov x20,x1
04656d74  ldrb w9,[x23, #0x9f5]
04656d78  ldr x22,[x22, #0x290]
04656d7c  mov x21,x0
04656d80  mov x19,x8
04656d84  tbnz w9,#0x0,0x04656d9c
04656d88  adrp x0,0x5e5a000
04656d8c  ldr x0,[x0, #0x290]
04656d90  bl 0x029f5a50
04656d94  mov w8,#0x1
04656d98  strb w8,[x23, #0x9f5]
04656d9c  ldr x2,[x22]
04656da0  add x0,sp,#0x8
04656da4  mov w1,w20
04656da8  fmov d8,x21
04656dac  str xzr,[sp, #0x8]
04656db0  bl 0x035f6d90
04656db4  movi v0.2D,#0x0
04656db8  ldr x1,[sp, #0x8]
04656dbc  mov x0,x19
04656dc0  stp q0,q0,[x19]
04656dc4  fmov d0,d8
04656dc8  bl 0x04656060
04656dcc  ldp x20,x19,[sp, #0x30]
04656dd0  ldp x22,x21,[sp, #0x20]
04656dd4  ldp x30,x23,[sp, #0x10]
04656dd8  ldr d8,[sp], #0x40
04656ddc  ret
