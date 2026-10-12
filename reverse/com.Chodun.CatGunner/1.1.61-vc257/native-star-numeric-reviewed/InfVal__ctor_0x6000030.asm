04655bf0  sub sp,sp,#0x40
04655bf4  stp x30,x23,[sp, #0x10]
04655bf8  stp x22,x21,[sp, #0x20]
04655bfc  stp x20,x19,[sp, #0x30]
04655c00  adrp x23,0x6260000
04655c04  adrp x22,0x5e58000
04655c08  mov x19,x2
04655c0c  ldrb w8,[x23, #0x9e2]
04655c10  ldr x22,[x22, #0xfe0]
04655c14  mov w21,w1
04655c18  mov x20,x0
04655c1c  tbnz w8,#0x0,0x04655c34
04655c20  adrp x0,0x5e58000
04655c24  ldr x0,[x0, #0xfe0]
04655c28  bl 0x029f5a50
04655c2c  mov w8,#0x1
04655c30  strb w8,[x23, #0x9e2]
04655c34  ldr x0,[x22]
04655c38  stp xzr,xzr,[sp]
04655c3c  ldr w8,[x0, #0xe4]
04655c40  cbnz w8,0x04655c48
04655c44  bl 0x029f5bd0
04655c48  mov w0,w21
04655c4c  mov x1,xzr
04655c50  bl 0x04d8ef78
04655c54  stp x0,x1,[sp]
04655c58  mov x1,sp
04655c5c  mov x0,x20
04655c60  mov x2,x19
04655c64  bl 0x04655028
04655c68  ldp x20,x19,[sp, #0x30]
04655c6c  ldp x22,x21,[sp, #0x20]
04655c70  ldp x30,x23,[sp, #0x10]
04655c74  add sp,sp,#0x40
04655c78  ret
