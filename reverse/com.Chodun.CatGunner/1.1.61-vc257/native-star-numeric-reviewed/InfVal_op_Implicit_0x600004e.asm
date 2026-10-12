04656ccc  sub sp,sp,#0x40
04656cd0  str d8,[sp, #0x10]
04656cd4  str x30,[sp, #0x18]
04656cd8  stp x22,x21,[sp, #0x20]
04656cdc  stp x20,x19,[sp, #0x30]
04656ce0  adrp x22,0x6260000
04656ce4  adrp x21,0x5e5a000
04656ce8  mov x20,x0
04656cec  ldrb w9,[x22, #0x9f4]
04656cf0  ldr x21,[x21, #0x290]
04656cf4  mov x19,x8
04656cf8  tbnz w9,#0x0,0x04656d10
04656cfc  adrp x0,0x5e5a000
04656d00  ldr x0,[x0, #0x290]
04656d04  bl 0x029f5a50
04656d08  mov w8,#0x1
04656d0c  strb w8,[x22, #0x9f4]
04656d10  ldr x2,[x21]
04656d14  lsr x1,x20,#0x20
04656d18  add x0,sp,#0x8
04656d1c  fmov s8,w20
04656d20  str xzr,[sp, #0x8]
04656d24  bl 0x035f6d90
04656d28  movi v0.2D,#0x0
04656d2c  ldr x1,[sp, #0x8]
04656d30  mov x0,x19
04656d34  stp q0,q0,[x19]
04656d38  fmov s0,s8
04656d3c  bl 0x04655d94
04656d40  ldp x20,x19,[sp, #0x30]
04656d44  ldr x30,[sp, #0x18]
04656d48  ldp x22,x21,[sp, #0x20]
04656d4c  ldr d8,[sp, #0x10]
04656d50  add sp,sp,#0x40
04656d54  ret
