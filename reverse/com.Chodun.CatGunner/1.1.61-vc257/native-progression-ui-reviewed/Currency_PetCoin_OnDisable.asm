02c26938  stp x30,x23,[sp, #-0x30]!
02c2693c  stp x22,x21,[sp, #0x10]
02c26940  stp x20,x19,[sp, #0x20]
02c26944  adrp x22,0x625b000
02c26948  adrp x23,0x5e59000
02c2694c  adrp x20,0x5e62000
02c26950  adrp x21,0x5e5d000
02c26954  ldr x23,[x23, #0x288]
02c26958  ldrb w8,[x22, #0xfaf]
02c2695c  ldr x20,[x20, #0xd20]
02c26960  ldr x21,[x21, #0x338]
02c26964  mov x19,x0
02c26968  tbnz w8,#0x0,0x02c26998
02c2696c  adrp x0,0x5e59000
02c26970  ldr x0,[x0, #0x288]
02c26974  bl 0x029f5a50
02c26978  adrp x0,0x5e62000
02c2697c  ldr x0,[x0, #0xd20]
02c26980  bl 0x029f5a50
02c26984  adrp x0,0x5e5d000
02c26988  ldr x0,[x0, #0x338]
02c2698c  bl 0x029f5a50
02c26990  mov w8,#0x1
02c26994  strb w8,[x22, #0xfaf]
02c26998  ldr x0,[x23]
02c2699c  bl 0x029f5cec
02c269a0  ldr x2,[x20]
02c269a4  mov x1,x19
02c269a8  mov x3,xzr
02c269ac  mov x20,x0
02c269b0  bl 0x047b3618
02c269b4  ldr x0,[x21]
02c269b8  ldr w8,[x0, #0xe4]
02c269bc  cbnz w8,0x02c269c4
02c269c0  bl 0x029f5bd0
02c269c4  mov x0,x20
02c269c8  ldp x20,x19,[sp, #0x20]
02c269cc  ldp x22,x21,[sp, #0x10]
02c269d0  mov x1,xzr
02c269d4  ldp x30,x23,[sp], #0x30
02c269d8  b 0x02b7b300
