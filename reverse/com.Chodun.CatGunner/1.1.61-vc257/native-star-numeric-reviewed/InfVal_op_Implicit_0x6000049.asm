04656b80  sub sp,sp,#0x40
04656b84  stp x30,x23,[sp, #0x10]
04656b88  stp x22,x21,[sp, #0x20]
04656b8c  stp x20,x19,[sp, #0x30]
04656b90  adrp x23,0x6260000
04656b94  adrp x22,0x5e5a000
04656b98  mov x21,x1
04656b9c  ldrb w9,[x23, #0x9f2]
04656ba0  ldr x22,[x22, #0x290]
04656ba4  mov x19,x0
04656ba8  mov x20,x8
04656bac  tbnz w9,#0x0,0x04656bc4
04656bb0  adrp x0,0x5e5a000
04656bb4  ldr x0,[x0, #0x290]
04656bb8  bl 0x029f5a50
04656bbc  mov w8,#0x1
04656bc0  strb w8,[x23, #0x9f2]
04656bc4  ldr x2,[x22]
04656bc8  add x0,sp,#0x8
04656bcc  mov w1,w21
04656bd0  str xzr,[sp, #0x8]
04656bd4  bl 0x035f6d90
04656bd8  movi v0.2D,#0x0
04656bdc  ldr x2,[sp, #0x8]
04656be0  mov x0,x20
04656be4  mov x1,x19
04656be8  stp q0,q0,[x20]
04656bec  bl 0x04655c7c
04656bf0  ldp x20,x19,[sp, #0x30]
04656bf4  ldp x22,x21,[sp, #0x20]
04656bf8  ldp x30,x23,[sp, #0x10]
04656bfc  add sp,sp,#0x40
04656c00  ret
