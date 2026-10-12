04656c04  sub sp,sp,#0x40
04656c08  stp x30,x23,[sp, #0x10]
04656c0c  stp x22,x21,[sp, #0x20]
04656c10  stp x20,x19,[sp, #0x30]
04656c14  adrp x23,0x6260000
04656c18  adrp x22,0x5e5a000
04656c1c  mov x21,x1
04656c20  ldrb w9,[x23, #0x9f3]
04656c24  ldr x22,[x22, #0x290]
04656c28  mov x19,x0
04656c2c  mov x20,x8
04656c30  tbnz w9,#0x0,0x04656c48
04656c34  adrp x0,0x5e5a000
04656c38  ldr x0,[x0, #0x290]
04656c3c  bl 0x029f5a50
04656c40  mov w8,#0x1
04656c44  strb w8,[x23, #0x9f3]
04656c48  ldr x2,[x22]
04656c4c  add x0,sp,#0x8
04656c50  mov w1,w21
04656c54  str xzr,[sp, #0x8]
04656c58  bl 0x035f6d90
04656c5c  movi v0.2D,#0x0
04656c60  ldr x2,[sp, #0x8]
04656c64  mov x0,x20
04656c68  mov x1,x19
04656c6c  stp q0,q0,[x20]
04656c70  bl 0x04655d08
04656c74  ldp x20,x19,[sp, #0x30]
04656c78  ldp x22,x21,[sp, #0x20]
04656c7c  ldp x30,x23,[sp, #0x10]
04656c80  add sp,sp,#0x40
04656c84  ret
