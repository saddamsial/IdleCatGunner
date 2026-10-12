02c4f944  str x30,[sp, #-0x20]!
02c4f948  stp x20,x19,[sp, #0x10]
02c4f94c  adrp x19,0x625c000
02c4f950  adrp x20,0x5e5d000
02c4f954  ldrb w8,[x19, #0x147]
02c4f958  ldr x20,[x20, #0x910]
02c4f95c  tbnz w8,#0x0,0x02c4f974
02c4f960  adrp x0,0x5e5d000
02c4f964  ldr x0,[x0, #0x910]
02c4f968  bl 0x029f5a50
02c4f96c  mov w8,#0x1
02c4f970  strb w8,[x19, #0x147]
02c4f974  ldr x8,[x20]
02c4f978  ldr x8,[x8, #0xb8]
02c4f97c  ldr x0,[x8]
02c4f980  cbz x0,0x02c4f998
02c4f984  ldp x20,x19,[sp, #0x10]
02c4f988  mov w1,#0x5
02c4f98c  mov x2,xzr
02c4f990  ldr x30,[sp], #0x20
02c4f994  b 0x02b89ab0
02c4f998  bl 0x029f5cfc
