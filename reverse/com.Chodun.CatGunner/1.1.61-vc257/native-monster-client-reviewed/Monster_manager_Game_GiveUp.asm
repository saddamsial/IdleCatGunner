02c4e924  sub sp,sp,#0x60
02c4e928  stp x30,x23,[sp, #0x30]
02c4e92c  stp x22,x21,[sp, #0x40]
02c4e930  stp x20,x19,[sp, #0x50]
02c4e934  adrp x21,0x625c000
02c4e938  adrp x20,0x5e5d000
02c4e93c  mov x19,x0
02c4e940  ldrb w8,[x21, #0x141]
02c4e944  ldr x20,[x20, #0x338]
02c4e948  tbnz w8,#0x0,0x02c4e99c
02c4e94c  adrp x0,0x5e63000
02c4e950  ldr x0,[x0, #0x4f8]
02c4e954  bl 0x029f5a50
02c4e958  adrp x0,0x5e63000
02c4e95c  ldr x0,[x0, #0x500]
02c4e960  bl 0x029f5a50
02c4e964  adrp x0,0x5e63000
02c4e968  ldr x0,[x0, #0x508]
02c4e96c  bl 0x029f5a50
02c4e970  adrp x0,0x5e5d000
02c4e974  ldr x0,[x0, #0x338]
02c4e978  bl 0x029f5a50
02c4e97c  adrp x0,0x5e63000
02c4e980  ldr x0,[x0, #0x518]
02c4e984  bl 0x029f5a50
02c4e988  adrp x0,0x5e59000
02c4e98c  ldr x0,[x0, #0x1c0]
02c4e990  bl 0x029f5a50
02c4e994  mov w8,#0x1
02c4e998  strb w8,[x21, #0x141]
02c4e99c  ldr x0,[x20]
02c4e9a0  stp xzr,xzr,[sp, #0x18]
02c4e9a4  str xzr,[sp, #0x28]
02c4e9a8  ldr w8,[x0, #0xe4]
02c4e9ac  cbnz w8,0x02c4e9b8
02c4e9b0  bl 0x029f5bd0
02c4e9b4  ldr x0,[x20]
02c4e9b8  ldr x8,[x0, #0xb8]
02c4e9bc  ldrb w9,[x8]
02c4e9c0  cbz w9,0x02c4eaa4
02c4e9c4  ldr w9,[x0, #0xe4]
02c4e9c8  cbnz w9,0x02c4e9d8
02c4e9cc  bl 0x029f5bd0
02c4e9d0  ldr x8,[x20]
02c4e9d4  ldr x8,[x8, #0xb8]
02c4e9d8  mov x0,x19
02c4e9dc  mov w1,#0x2
02c4e9e0  strb wzr,[x8]
02c4e9e4  bl 0x02c4d578
02c4e9e8  mov x0,x19
02c4e9ec  bl 0x02c4e0f0
02c4e9f0  ldr x0,[x19, #0x178]
02c4e9f4  cbz x0,0x02c4eabc
02c4e9f8  adrp x8,0x5e63000
02c4e9fc  adrp x22,0x5e63000
02c4ea00  adrp x23,0x5e59000
02c4ea04  ldr x8,[x8, #0x518]
02c4ea08  adrp x21,0x5e63000
02c4ea0c  ldr x22,[x22, #0x500]
02c4ea10  ldr x23,[x23, #0x1c0]
02c4ea14  ldr x21,[x21, #0x4f8]
02c4ea18  add x20,sp,#0x18
02c4ea1c  ldr x1,[x8]
02c4ea20  add x8,sp,#0x18
02c4ea24  bl 0x0452d690
02c4ea28  stp xzr,x20,[sp, #0x8]
02c4ea2c  ldr x1,[x22]
02c4ea30  add x0,sp,#0x18
02c4ea34  bl 0x03fa4e10
02c4ea38  tbz w0,#0x0,0x02c4ea74
02c4ea3c  ldr x0,[x23]
02c4ea40  ldr x20,[sp, #0x28]
02c4ea44  ldr w8,[x0, #0xe4]
02c4ea48  cbnz w8,0x02c4ea50
02c4ea4c  bl 0x029f5bd0
02c4ea50  mov x0,x20
02c4ea54  mov x1,xzr
02c4ea58  mov x2,xzr
02c4ea5c  bl 0x057dfa70
02c4ea60  tbz w0,#0x0,0x02c4ea2c
02c4ea64  cbz x20,0x02c4eab8
02c4ea68  mov x0,x20
02c4ea6c  bl 0x02c4cdb8
02c4ea70  b 0x02c4ea2c
02c4ea74  ldr x1,[x21]
02c4ea78  add x0,sp,#0x18
02c4ea7c  bl 0x03fa4e0c
02c4ea80  mov x0,x19
02c4ea84  bl 0x02c4e810
02c4ea88  ldr x0,[x19, #0x28]
02c4ea8c  mov w8,#0x1
02c4ea90  strb w8,[x19, #0xb9]
02c4ea94  cbz x0,0x02c4eabc
02c4ea98  mov w1,#0x1
02c4ea9c  mov x2,xzr
02c4eaa0  bl 0x057dff3c
02c4eaa4  ldp x20,x19,[sp, #0x50]
02c4eaa8  ldp x22,x21,[sp, #0x40]
02c4eaac  ldp x30,x23,[sp, #0x30]
02c4eab0  add sp,sp,#0x60
02c4eab4  ret
02c4eab8  bl 0x029f5cfc
02c4eabc  bl 0x029f5cfc
