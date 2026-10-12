04656de0  sub sp,sp,#0x40
04656de4  stp x30,x23,[sp, #0x10]
04656de8  stp x22,x21,[sp, #0x20]
04656dec  stp x20,x19,[sp, #0x30]
04656df0  adrp x21,0x6260000
04656df4  adrp x23,0x5e5a000
04656df8  mov x20,x0
04656dfc  ldrb w9,[x21, #0x9f6]
04656e00  ldr x23,[x23, #0x290]
04656e04  mov x19,x8
04656e08  tbnz w9,#0x0,0x04656e20
04656e0c  adrp x0,0x5e5a000
04656e10  ldr x0,[x0, #0x290]
04656e14  bl 0x029f5a50
04656e18  mov w8,#0x1
04656e1c  strb w8,[x21, #0x9f6]
04656e20  ldp x21,x22,[x20]
04656e24  add x0,sp,#0x8
04656e28  ldr w1,[x20, #0x10]
04656e2c  ldr x2,[x23]
04656e30  str xzr,[sp, #0x8]
04656e34  bl 0x035f6d90
04656e38  movi v0.2D,#0x0
04656e3c  ldr x3,[sp, #0x8]
04656e40  mov x0,x19
04656e44  mov x1,x21
04656e48  mov x2,x22
04656e4c  stp q0,q0,[x19]
04656e50  bl 0x0465632c
04656e54  ldp x20,x19,[sp, #0x30]
04656e58  ldp x22,x21,[sp, #0x20]
04656e5c  ldp x30,x23,[sp, #0x10]
04656e60  add sp,sp,#0x40
04656e64  ret
