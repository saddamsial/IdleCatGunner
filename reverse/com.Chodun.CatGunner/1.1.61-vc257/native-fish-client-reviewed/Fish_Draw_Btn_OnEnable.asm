02c60288  stp x30,x23,[sp, #-0x30]!
02c6028c  stp x22,x21,[sp, #0x10]
02c60290  stp x20,x19,[sp, #0x20]
02c60294  adrp x23,0x625c000
02c60298  adrp x22,0x5e59000
02c6029c  adrp x20,0x5e63000
02c602a0  adrp x21,0x5e5d000
02c602a4  ldr x22,[x22, #0x288]
02c602a8  ldrb w8,[x23, #0x219]
02c602ac  ldr x20,[x20, #0x868]
02c602b0  ldr x21,[x21, #0x338]
02c602b4  mov x19,x0
02c602b8  tbnz w8,#0x0,0x02c602e8
02c602bc  adrp x0,0x5e59000
02c602c0  ldr x0,[x0, #0x288]
02c602c4  bl 0x029f5a50
02c602c8  adrp x0,0x5e63000
02c602cc  ldr x0,[x0, #0x868]
02c602d0  bl 0x029f5a50
02c602d4  adrp x0,0x5e5d000
02c602d8  ldr x0,[x0, #0x338]
02c602dc  bl 0x029f5a50
02c602e0  mov w8,#0x1
02c602e4  strb w8,[x23, #0x219]
02c602e8  mov x0,x19
02c602ec  bl 0x02c60334
02c602f0  ldr x0,[x22]
02c602f4  bl 0x029f5cec
02c602f8  ldr x2,[x20]
02c602fc  mov x1,x19
02c60300  mov x3,xzr
02c60304  mov x20,x0
02c60308  bl 0x047b3618
02c6030c  ldr x0,[x21]
02c60310  ldr w8,[x0, #0xe4]
02c60314  cbnz w8,0x02c6031c
02c60318  bl 0x029f5bd0
02c6031c  mov x0,x20
02c60320  ldp x20,x19,[sp, #0x20]
02c60324  ldp x22,x21,[sp, #0x10]
02c60328  mov x1,xzr
02c6032c  ldp x30,x23,[sp], #0x30
02c60330  b 0x02b7aeb4
