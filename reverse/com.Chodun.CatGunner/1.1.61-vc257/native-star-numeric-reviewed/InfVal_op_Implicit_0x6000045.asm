046569a0  str x30,[sp, #-0x30]!
046569a4  stp x22,x21,[sp, #0x10]
046569a8  stp x20,x19,[sp, #0x20]
046569ac  adrp x22,0x6260000
046569b0  adrp x21,0x5e5a000
046569b4  mov x19,x0
046569b8  ldrb w9,[x22, #0x9ee]
046569bc  ldr x21,[x21, #0x290]
046569c0  mov x20,x8
046569c4  tbnz w9,#0x0,0x046569dc
046569c8  adrp x0,0x5e5a000
046569cc  ldr x0,[x0, #0x290]
046569d0  bl 0x029f5a50
046569d4  mov w8,#0x1
046569d8  strb w8,[x22, #0x9ee]
046569dc  ldr x2,[x21]
046569e0  lsr x1,x19,#0x20
046569e4  add x0,sp,#0x8
046569e8  str xzr,[sp, #0x8]
046569ec  bl 0x035f6d90
046569f0  movi v0.2D,#0x0
046569f4  ldr x2,[sp, #0x8]
046569f8  mov x0,x20
046569fc  mov w1,w19
04656a00  stp q0,q0,[x20]
04656a04  bl 0x04655a4c
04656a08  ldp x20,x19,[sp, #0x20]
04656a0c  ldp x22,x21,[sp, #0x10]
04656a10  ldr x30,[sp], #0x30
04656a14  ret
