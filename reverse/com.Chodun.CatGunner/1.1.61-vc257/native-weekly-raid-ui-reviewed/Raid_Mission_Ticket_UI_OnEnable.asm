02c55268  str x30,[sp, #-0x30]!
02c5526c  stp x22,x21,[sp, #0x10]
02c55270  stp x20,x19,[sp, #0x20]
02c55274  adrp x21,0x625c000
02c55278  adrp x22,0x5e59000
02c5527c  adrp x20,0x5e63000
02c55280  ldrb w8,[x21, #0x186]
02c55284  ldr x22,[x22, #0x288]
02c55288  ldr x20,[x20, #0x618]
02c5528c  mov x19,x0
02c55290  tbnz w8,#0x0,0x02c552b4
02c55294  adrp x0,0x5e59000
02c55298  ldr x0,[x0, #0x288]
02c5529c  bl 0x029f5a50
02c552a0  adrp x0,0x5e63000
02c552a4  ldr x0,[x0, #0x618]
02c552a8  bl 0x029f5a50
02c552ac  mov w8,#0x1
02c552b0  strb w8,[x21, #0x186]
02c552b4  ldr x0,[x22]
02c552b8  bl 0x029f5cec
02c552bc  ldr x2,[x20]
02c552c0  mov x1,x19
02c552c4  mov x3,xzr
02c552c8  mov x20,x0
02c552cc  bl 0x047b3618
02c552d0  mov x0,x20
02c552d4  bl 0x02c5254c
02c552d8  mov x0,x19
02c552dc  ldp x20,x19,[sp, #0x20]
02c552e0  ldp x22,x21,[sp, #0x10]
02c552e4  ldr x30,[sp], #0x30
02c552e8  b 0x02c552ec
