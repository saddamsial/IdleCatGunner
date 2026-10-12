04656a18  str x30,[sp, #-0x30]!
04656a1c  stp x22,x21,[sp, #0x10]
04656a20  stp x20,x19,[sp, #0x20]
04656a24  adrp x22,0x6260000
04656a28  adrp x21,0x5e5a000
04656a2c  mov x19,x0
04656a30  ldrb w9,[x22, #0x9ef]
04656a34  ldr x21,[x21, #0x290]
04656a38  mov x20,x8
04656a3c  tbnz w9,#0x0,0x04656a54
04656a40  adrp x0,0x5e5a000
04656a44  ldr x0,[x0, #0x290]
04656a48  bl 0x029f5a50
04656a4c  mov w8,#0x1
04656a50  strb w8,[x22, #0x9ef]
04656a54  ldr x2,[x21]
04656a58  lsr x1,x19,#0x20
04656a5c  add x0,sp,#0x8
04656a60  str xzr,[sp, #0x8]
04656a64  bl 0x035f6d90
04656a68  movi v0.2D,#0x0
04656a6c  ldr x2,[sp, #0x8]
04656a70  mov x0,x20
04656a74  mov w1,w19
04656a78  stp q0,q0,[x20]
04656a7c  bl 0x04655ad8
04656a80  ldp x20,x19,[sp, #0x20]
04656a84  ldp x22,x21,[sp, #0x10]
04656a88  ldr x30,[sp], #0x30
04656a8c  ret
