02c3065c  str x30,[sp, #-0x30]!
02c30660  stp x22,x21,[sp, #0x10]
02c30664  stp x20,x19,[sp, #0x20]
02c30668  adrp x21,0x625c000
02c3066c  adrp x22,0x5e63000
02c30670  mov x19,x1
02c30674  ldrb w8,[x21, #0x28]
02c30678  ldr x22,[x22, #0x60]
02c3067c  mov x20,x0
02c30680  tbnz w8,#0x0,0x02c30698
02c30684  adrp x0,0x5e63000
02c30688  ldr x0,[x0, #0x60]
02c3068c  bl 0x029f5a50
02c30690  mov w8,#0x1
02c30694  strb w8,[x21, #0x28]
02c30698  ldr x0,[x22]
02c3069c  bl 0x029f5cec
02c306a0  mov w1,wzr
02c306a4  mov x2,xzr
02c306a8  mov x21,x0
02c306ac  bl 0x02c30ddc
02c306b0  cbz x21,0x02c306e8
02c306b4  mov x0,x21
02c306b8  mov x1,x20
02c306bc  str x20,[x0, #0x20]!
02c306c0  bl 0x029f59f4
02c306c4  mov x0,x21
02c306c8  mov x1,x19
02c306cc  str x19,[x0, #0x28]!
02c306d0  bl 0x029f59f4
02c306d4  mov x0,x21
02c306d8  ldp x20,x19,[sp, #0x20]
02c306dc  ldp x22,x21,[sp, #0x10]
02c306e0  ldr x30,[sp], #0x30
02c306e4  ret
02c306e8  bl 0x029f5cfc
