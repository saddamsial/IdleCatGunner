02c5e88c  str x30,[sp, #-0x30]!
02c5e890  stp x22,x21,[sp, #0x10]
02c5e894  stp x20,x19,[sp, #0x20]
02c5e898  adrp x22,0x625c000
02c5e89c  adrp x21,0x5e59000
02c5e8a0  mov w20,w1
02c5e8a4  ldrb w8,[x22, #0x235]
02c5e8a8  ldr x21,[x21, #0x1c0]
02c5e8ac  mov x19,x0
02c5e8b0  tbnz w8,#0x0,0x02c5e8ec
02c5e8b4  adrp x0,0x5e5d000
02c5e8b8  ldr x0,[x0, #0xd38]
02c5e8bc  bl 0x029f5a50
02c5e8c0  adrp x0,0x5e62000
02c5e8c4  ldr x0,[x0, #0xfe8]
02c5e8c8  bl 0x029f5a50
02c5e8cc  adrp x0,0x5e59000
02c5e8d0  ldr x0,[x0, #0x1c0]
02c5e8d4  bl 0x029f5a50
02c5e8d8  adrp x0,0x5e63000
02c5e8dc  ldr x0,[x0, #0x838]
02c5e8e0  bl 0x029f5a50
02c5e8e4  mov w8,#0x1
02c5e8e8  strb w8,[x22, #0x235]
02c5e8ec  mov x0,x19
02c5e8f0  bl 0x02c63668
02c5e8f4  ldr x8,[x21]
02c5e8f8  mov x21,x0
02c5e8fc  ldr w9,[x8, #0xe4]
02c5e900  cbnz w9,0x02c5e90c
02c5e904  mov x0,x8
02c5e908  bl 0x029f5bd0
02c5e90c  mov x0,x21
02c5e910  mov x1,xzr
02c5e914  mov x2,xzr
02c5e918  bl 0x057e14b4
02c5e91c  tbnz w0,#0x0,0x02c5ea00
02c5e920  adrp x22,0x5e5d000
02c5e924  ldr x22,[x22, #0xd38]
02c5e928  ldr x8,[x22]
02c5e92c  ldr x8,[x8, #0xb8]
02c5e930  ldr x8,[x8]
02c5e934  cbz x8,0x02c5ea10
02c5e938  ldr x8,[x8, #0x90]
02c5e93c  cbz x8,0x02c5ea10
02c5e940  cbz x21,0x02c5ea10
02c5e944  ldr w8,[x8, #0x18]
02c5e948  mov x0,x21
02c5e94c  mov w1,w20
02c5e950  sub w2,w8,#0x1
02c5e954  bl 0x02c61164
02c5e958  mov x0,x19
02c5e95c  mov x1,x21
02c5e960  bl 0x02c63258
02c5e964  mov x0,x21
02c5e968  bl 0x02c6298c
02c5e96c  mov x0,x19
02c5e970  bl 0x02c633b4
02c5e974  ldr x8,[x22]
02c5e978  ldr x8,[x8, #0xb8]
02c5e97c  ldr x8,[x8]
02c5e980  cbz x8,0x02c5ea10
02c5e984  ldr x8,[x8, #0x90]
02c5e988  cbz x8,0x02c5ea10
02c5e98c  adrp x21,0x5e58000
02c5e990  add x1,sp,#0xc
02c5e994  ldr x21,[x21, #0xa10]
02c5e998  ldr w8,[x8, #0x18]
02c5e99c  ldr x19,[x19, #0x48]
02c5e9a0  ldr x0,[x21, #0x48]
02c5e9a4  str w8,[sp, #0xc]
02c5e9a8  bl 0x029f5bd8
02c5e9ac  mov x20,x0
02c5e9b0  ldr x0,[x21, #0x48]
02c5e9b4  mov w8,#0x14
02c5e9b8  add x1,sp,#0x8
02c5e9bc  str w8,[sp, #0x8]
02c5e9c0  bl 0x029f5bd8
02c5e9c4  adrp x8,0x5e63000
02c5e9c8  mov x2,x0
02c5e9cc  mov x1,x20
02c5e9d0  ldr x8,[x8, #0x838]
02c5e9d4  mov x3,xzr
02c5e9d8  ldr x8,[x8]
02c5e9dc  mov x0,x8
02c5e9e0  bl 0x046c1d14
02c5e9e4  cbz x19,0x02c5ea10
02c5e9e8  ldr x8,[x19]
02c5e9ec  mov x1,x0
02c5e9f0  mov x0,x19
02c5e9f4  ldr x9,[x8, #0x558]
02c5e9f8  ldr x2,[x8, #0x560]
02c5e9fc  blr x9
02c5ea00  ldp x20,x19,[sp, #0x20]
02c5ea04  ldp x22,x21,[sp, #0x10]
02c5ea08  ldr x30,[sp], #0x30
02c5ea0c  ret
02c5ea10  bl 0x029f5cfc
