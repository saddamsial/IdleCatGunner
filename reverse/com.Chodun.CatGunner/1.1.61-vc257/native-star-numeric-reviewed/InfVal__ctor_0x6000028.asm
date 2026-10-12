04654dc0  str x30,[sp, #-0x30]!
04654dc4  stp x22,x21,[sp, #0x10]
04654dc8  stp x20,x19,[sp, #0x20]
04654dcc  adrp x22,0x6260000
04654dd0  mov x20,x2
04654dd4  mov x21,x1
04654dd8  ldrb w8,[x22, #0x9da]
04654ddc  mov x19,x0
04654de0  str x2,[sp, #0x8]
04654de4  tbnz w8,#0x0,0x04654e08
04654de8  adrp x0,0x5e5a000
04654dec  ldr x0,[x0, #0x298]
04654df0  bl 0x029f5a50
04654df4  adrp x0,0x5e66000
04654df8  ldr x0,[x0, #0x730]
04654dfc  bl 0x029f5a50
04654e00  mov w8,#0x1
04654e04  strb w8,[x22, #0x9da]
04654e08  movi v0.2D,#0x0
04654e0c  mov x0,x19
04654e10  stp q0,q0,[x19]
04654e14  ldp x1,x2,[x21, #0x10]
04654e18  bl 0x04654cd0
04654e1c  ldr w8,[x21, #0x8]
04654e20  tst x20,#0xff
04654e24  str w8,[x19, #0x8]
04654e28  b.eq 0x04654e74
04654e2c  adrp x20,0x5e66000
04654e30  add x0,sp,#0x8
04654e34  ldr x20,[x20, #0x730]
04654e38  ldr x1,[x20]
04654e3c  bl 0x035f6da8
04654e40  cmp w0,#0x0
04654e44  b.le 0x04654e84
04654e48  ldr w21,[x19, #0x8]
04654e4c  mov x0,x19
04654e50  bl 0x04654ee0
04654e54  ldr x1,[x20]
04654e58  mov w20,w0
04654e5c  add x0,sp,#0x8
04654e60  bl 0x035f6da8
04654e64  add w8,w20,w21
04654e68  sub w1,w8,w0
04654e6c  mov x0,x19
04654e70  bl 0x04654f68
04654e74  ldp x20,x19,[sp, #0x20]
04654e78  ldp x22,x21,[sp, #0x10]
04654e7c  ldr x30,[sp], #0x30
04654e80  ret
04654e84  adrp x0,0x5e65000
04654e88  ldr x0,[x0, #0xdc8]
04654e8c  bl 0x029f5a64
04654e90  bl 0x029f5cec
04654e94  mov x19,x0
04654e98  adrp x0,0x5e71000
04654e9c  ldr x0,[x0, #0x960]
04654ea0  bl 0x029f5a64
04654ea4  mov x20,x0
04654ea8  adrp x0,0x5e71000
04654eac  ldr x0,[x0, #0x968]
04654eb0  bl 0x029f5a64
04654eb4  mov x2,x0
04654eb8  mov x0,x19
04654ebc  mov x1,x20
04654ec0  mov x3,xzr
04654ec4  bl 0x047ad314
04654ec8  adrp x0,0x5e71000
04654ecc  ldr x0,[x0, #0x970]
04654ed0  bl 0x029f5a64
04654ed4  mov x1,x0
04654ed8  mov x0,x19
04654edc  bl 0x029f5bc0
