04656b08  str x30,[sp, #-0x30]!
04656b0c  stp x22,x21,[sp, #0x10]
04656b10  stp x20,x19,[sp, #0x20]
04656b14  adrp x22,0x6260000
04656b18  adrp x21,0x5e5a000
04656b1c  mov x19,x0
04656b20  ldrb w9,[x22, #0x9f1]
04656b24  ldr x21,[x21, #0x290]
04656b28  mov x20,x8
04656b2c  tbnz w9,#0x0,0x04656b44
04656b30  adrp x0,0x5e5a000
04656b34  ldr x0,[x0, #0x290]
04656b38  bl 0x029f5a50
04656b3c  mov w8,#0x1
04656b40  strb w8,[x22, #0x9f1]
04656b44  ldr x2,[x21]
04656b48  lsr x1,x19,#0x20
04656b4c  add x0,sp,#0x8
04656b50  str xzr,[sp, #0x8]
04656b54  bl 0x035f6d90
04656b58  movi v0.2D,#0x0
04656b5c  ldr x2,[sp, #0x8]
04656b60  mov x0,x20
04656b64  mov w1,w19
04656b68  stp q0,q0,[x20]
04656b6c  bl 0x04655bf0
04656b70  ldp x20,x19,[sp, #0x20]
04656b74  ldp x22,x21,[sp, #0x10]
04656b78  ldr x30,[sp], #0x30
04656b7c  ret
