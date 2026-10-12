02c6e94c  stp x30,x23,[sp, #-0x30]!
02c6e950  stp x22,x21,[sp, #0x10]
02c6e954  stp x20,x19,[sp, #0x20]
02c6e958  adrp x22,0x625c000
02c6e95c  adrp x23,0x5e59000
02c6e960  adrp x20,0x5e63000
02c6e964  adrp x21,0x5e5d000
02c6e968  ldr x23,[x23, #0x288]
02c6e96c  ldrb w8,[x22, #0x2b4]
02c6e970  ldr x20,[x20, #0xb48]
02c6e974  ldr x21,[x21, #0x338]
02c6e978  mov x19,x0
02c6e97c  tbnz w8,#0x0,0x02c6e9ac
02c6e980  adrp x0,0x5e59000
02c6e984  ldr x0,[x0, #0x288]
02c6e988  bl 0x029f5a50
02c6e98c  adrp x0,0x5e5d000
02c6e990  ldr x0,[x0, #0x338]
02c6e994  bl 0x029f5a50
02c6e998  adrp x0,0x5e63000
02c6e99c  ldr x0,[x0, #0xb48]
02c6e9a0  bl 0x029f5a50
02c6e9a4  mov w8,#0x1
02c6e9a8  strb w8,[x22, #0x2b4]
02c6e9ac  ldr x0,[x23]
02c6e9b0  bl 0x029f5cec
02c6e9b4  ldr x2,[x20]
02c6e9b8  mov x1,x19
02c6e9bc  mov x3,xzr
02c6e9c0  mov x20,x0
02c6e9c4  bl 0x047b3618
02c6e9c8  ldr x0,[x21]
02c6e9cc  ldr w8,[x0, #0xe4]
02c6e9d0  cbnz w8,0x02c6e9d8
02c6e9d4  bl 0x029f5bd0
02c6e9d8  mov x0,x20
02c6e9dc  mov x1,xzr
02c6e9e0  bl 0x02b7b3dc
02c6e9e4  ldr x0,[x19, #0x80]
02c6e9e8  cbz x0,0x02c6ea00
02c6e9ec  ldp x20,x19,[sp, #0x20]
02c6e9f0  mov x1,xzr
02c6e9f4  ldp x22,x21,[sp, #0x10]
02c6e9f8  ldp x30,x23,[sp], #0x30
02c6e9fc  b 0x049bcbd8
02c6ea00  bl 0x029f5cfc
