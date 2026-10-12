02b9e90c  str x30,[sp, #-0x20]!
02b9e910  stp x20,x19,[sp, #0x10]
02b9e914  adrp x19,0x625b000
02b9e918  adrp x20,0x5e5e000
02b9e91c  ldrb w8,[x19, #0x9ee]
02b9e920  ldr x20,[x20, #0x4d0]
02b9e924  tbnz w8,#0x0,0x02b9e948
02b9e928  adrp x0,0x5e5e000
02b9e92c  ldr x0,[x0, #0x4d0]
02b9e930  bl 0x029f5a50
02b9e934  adrp x0,0x5e5d000
02b9e938  ldr x0,[x0, #0x4d0]
02b9e93c  bl 0x029f5a50
02b9e940  mov w8,#0x1
02b9e944  strb w8,[x19, #0x9ee]
02b9e948  ldr x0,[x20]
02b9e94c  ldr w8,[x0, #0xe4]
02b9e950  cbnz w8,0x02b9e958
02b9e954  bl 0x029f5bd0
02b9e958  mov w0,#0x4
02b9e95c  bl 0x02b9e588
02b9e960  tbz w0,#0x0,0x02b9e99c
02b9e964  adrp x19,0x5e5d000
02b9e968  ldr x19,[x19, #0x4d0]
02b9e96c  ldr x0,[x19]
02b9e970  ldr w8,[x0, #0xe4]
02b9e974  cbnz w8,0x02b9e980
02b9e978  bl 0x029f5bd0
02b9e97c  ldr x0,[x19]
02b9e980  ldr x8,[x0, #0xb8]
02b9e984  ldr x0,[x8, #0x28]
02b9e988  cbz x0,0x02b9e9a8
02b9e98c  ldp x20,x19,[sp, #0x10]
02b9e990  mov x1,xzr
02b9e994  ldr x30,[sp], #0x20
02b9e998  b 0x02c7d6b8
02b9e99c  ldp x20,x19,[sp, #0x10]
02b9e9a0  ldr x30,[sp], #0x20
02b9e9a4  ret
02b9e9a8  bl 0x029f5cfc
