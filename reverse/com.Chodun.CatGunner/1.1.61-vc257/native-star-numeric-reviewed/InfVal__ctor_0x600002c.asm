046559c0  sub sp,sp,#0x40
046559c4  stp x30,x23,[sp, #0x10]
046559c8  stp x22,x21,[sp, #0x20]
046559cc  stp x20,x19,[sp, #0x30]
046559d0  adrp x23,0x6260000
046559d4  adrp x22,0x5e58000
046559d8  mov x19,x2
046559dc  ldrb w8,[x23, #0x9de]
046559e0  ldr x22,[x22, #0xfe0]
046559e4  mov w21,w1
046559e8  mov x20,x0
046559ec  tbnz w8,#0x0,0x04655a04
046559f0  adrp x0,0x5e58000
046559f4  ldr x0,[x0, #0xfe0]
046559f8  bl 0x029f5a50
046559fc  mov w8,#0x1
04655a00  strb w8,[x23, #0x9de]
04655a04  ldr x0,[x22]
04655a08  stp xzr,xzr,[sp]
04655a0c  ldr w8,[x0, #0xe4]
04655a10  cbnz w8,0x04655a18
04655a14  bl 0x029f5bd0
04655a18  mov w0,w21
04655a1c  mov x1,xzr
04655a20  bl 0x04d90fe0
04655a24  stp x0,x1,[sp]
04655a28  mov x1,sp
04655a2c  mov x0,x20
04655a30  mov x2,x19
04655a34  bl 0x04655028
04655a38  ldp x20,x19,[sp, #0x30]
04655a3c  ldp x22,x21,[sp, #0x20]
04655a40  ldp x30,x23,[sp, #0x10]
04655a44  add sp,sp,#0x40
04655a48  ret
