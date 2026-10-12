04655d08  sub sp,sp,#0x40
04655d0c  stp x30,x23,[sp, #0x10]
04655d10  stp x22,x21,[sp, #0x20]
04655d14  stp x20,x19,[sp, #0x30]
04655d18  adrp x23,0x6260000
04655d1c  adrp x22,0x5e58000
04655d20  mov x19,x2
04655d24  ldrb w8,[x23, #0x9e4]
04655d28  ldr x22,[x22, #0xfe0]
04655d2c  mov x21,x1
04655d30  mov x20,x0
04655d34  tbnz w8,#0x0,0x04655d4c
04655d38  adrp x0,0x5e58000
04655d3c  ldr x0,[x0, #0xfe0]
04655d40  bl 0x029f5a50
04655d44  mov w8,#0x1
04655d48  strb w8,[x23, #0x9e4]
04655d4c  ldr x0,[x22]
04655d50  stp xzr,xzr,[sp]
04655d54  ldr w8,[x0, #0xe4]
04655d58  cbnz w8,0x04655d60
04655d5c  bl 0x029f5bd0
04655d60  mov x0,x21
04655d64  mov x1,xzr
04655d68  bl 0x04d8d310
04655d6c  stp x0,x1,[sp]
04655d70  mov x1,sp
04655d74  mov x0,x20
04655d78  mov x2,x19
04655d7c  bl 0x04655028
04655d80  ldp x20,x19,[sp, #0x30]
04655d84  ldp x22,x21,[sp, #0x20]
04655d88  ldp x30,x23,[sp, #0x10]
04655d8c  add sp,sp,#0x40
04655d90  ret
