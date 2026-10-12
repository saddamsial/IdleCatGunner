04655ad8  sub sp,sp,#0x40
04655adc  stp x30,x23,[sp, #0x10]
04655ae0  stp x22,x21,[sp, #0x20]
04655ae4  stp x20,x19,[sp, #0x30]
04655ae8  adrp x23,0x6260000
04655aec  adrp x22,0x5e58000
04655af0  mov x19,x2
04655af4  ldrb w8,[x23, #0x9e0]
04655af8  ldr x22,[x22, #0xfe0]
04655afc  mov w21,w1
04655b00  mov x20,x0
04655b04  tbnz w8,#0x0,0x04655b1c
04655b08  adrp x0,0x5e58000
04655b0c  ldr x0,[x0, #0xfe0]
04655b10  bl 0x029f5a50
04655b14  mov w8,#0x1
04655b18  strb w8,[x23, #0x9e0]
04655b1c  ldr x0,[x22]
04655b20  stp xzr,xzr,[sp]
04655b24  ldr w8,[x0, #0xe4]
04655b28  cbnz w8,0x04655b30
04655b2c  bl 0x029f5bd0
04655b30  mov w0,w21
04655b34  mov x1,xzr
04655b38  bl 0x04d9105c
04655b3c  stp x0,x1,[sp]
04655b40  mov x1,sp
04655b44  mov x0,x20
04655b48  mov x2,x19
04655b4c  bl 0x04655028
04655b50  ldp x20,x19,[sp, #0x30]
04655b54  ldp x22,x21,[sp, #0x20]
04655b58  ldp x30,x23,[sp, #0x10]
04655b5c  add sp,sp,#0x40
04655b60  ret
