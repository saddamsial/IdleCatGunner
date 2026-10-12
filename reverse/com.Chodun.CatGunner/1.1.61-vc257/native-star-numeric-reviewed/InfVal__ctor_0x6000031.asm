04655c7c  sub sp,sp,#0x40
04655c80  stp x30,x23,[sp, #0x10]
04655c84  stp x22,x21,[sp, #0x20]
04655c88  stp x20,x19,[sp, #0x30]
04655c8c  adrp x23,0x6260000
04655c90  adrp x22,0x5e58000
04655c94  mov x19,x2
04655c98  ldrb w8,[x23, #0x9e3]
04655c9c  ldr x22,[x22, #0xfe0]
04655ca0  mov x21,x1
04655ca4  mov x20,x0
04655ca8  tbnz w8,#0x0,0x04655cc0
04655cac  adrp x0,0x5e58000
04655cb0  ldr x0,[x0, #0xfe0]
04655cb4  bl 0x029f5a50
04655cb8  mov w8,#0x1
04655cbc  strb w8,[x23, #0x9e3]
04655cc0  ldr x0,[x22]
04655cc4  stp xzr,xzr,[sp]
04655cc8  ldr w8,[x0, #0xe4]
04655ccc  cbnz w8,0x04655cd4
04655cd0  bl 0x029f5bd0
04655cd4  mov x0,x21
04655cd8  mov x1,xzr
04655cdc  bl 0x04d90a00
04655ce0  stp x0,x1,[sp]
04655ce4  mov x1,sp
04655ce8  mov x0,x20
04655cec  mov x2,x19
04655cf0  bl 0x04655028
04655cf4  ldp x20,x19,[sp, #0x30]
04655cf8  ldp x22,x21,[sp, #0x20]
04655cfc  ldp x30,x23,[sp, #0x10]
04655d00  add sp,sp,#0x40
04655d04  ret
