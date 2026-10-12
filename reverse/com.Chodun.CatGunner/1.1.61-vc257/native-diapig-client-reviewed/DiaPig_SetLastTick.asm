02c8c9d0  str x30,[sp, #-0x30]!
02c8c9d4  stp x22,x21,[sp, #0x10]
02c8c9d8  stp x20,x19,[sp, #0x20]
02c8c9dc  adrp x22,0x625c000
02c8c9e0  adrp x21,0x5e5d000
02c8c9e4  mov x20,x1
02c8c9e8  ldrb w8,[x22, #0x3b9]
02c8c9ec  ldr x21,[x21, #0x3c0]
02c8c9f0  mov x19,x0
02c8c9f4  tbnz w8,#0x0,0x02c8ca0c
02c8c9f8  adrp x0,0x5e5d000
02c8c9fc  ldr x0,[x0, #0x3c0]
02c8ca00  bl 0x029f5a50
02c8ca04  mov w8,#0x1
02c8ca08  strb w8,[x22, #0x3b9]
02c8ca0c  ldr x0,[x21]
02c8ca10  str x20,[x19, #0x38]
02c8ca14  ldr w8,[x0, #0xe4]
02c8ca18  cbnz w8,0x02c8ca20
02c8ca1c  bl 0x029f5bd0
02c8ca20  mov x0,xzr
02c8ca24  bl 0x02c23cf8
02c8ca28  str d0,[x19, #0x40]
02c8ca2c  ldp x20,x19,[sp, #0x20]
02c8ca30  ldp x22,x21,[sp, #0x10]
02c8ca34  ldr x30,[sp], #0x30
02c8ca38  ret
