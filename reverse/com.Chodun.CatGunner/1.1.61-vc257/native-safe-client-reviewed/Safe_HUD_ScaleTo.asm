02c6b748  stp d11,d10,[sp, #-0x40]!
02c6b74c  stp d9,d8,[sp, #0x10]
02c6b750  stp x30,x21,[sp, #0x20]
02c6b754  stp x20,x19,[sp, #0x30]
02c6b758  fmov s8,s3
02c6b75c  fmov s9,s2
02c6b760  adrp x20,0x625c000
02c6b764  fmov s11,s1
02c6b768  fmov s10,s0
02c6b76c  adrp x21,0x5e63000
02c6b770  ldrb w8,[x20, #0x28d]
02c6b774  ldr x21,[x21, #0xae0]
02c6b778  mov x19,x0
02c6b77c  tbnz w8,#0x0,0x02c6b794
02c6b780  adrp x0,0x5e63000
02c6b784  ldr x0,[x0, #0xae0]
02c6b788  bl 0x029f5a50
02c6b78c  mov w8,#0x1
02c6b790  strb w8,[x20, #0x28d]
02c6b794  ldr x0,[x21]
02c6b798  bl 0x029f5cec
02c6b79c  mov x1,xzr
02c6b7a0  mov x20,x0
02c6b7a4  bl 0x04893238
02c6b7a8  mov x0,x20
02c6b7ac  mov x1,x19
02c6b7b0  str wzr,[x20, #0x10]
02c6b7b4  str x19,[x0, #0x20]!
02c6b7b8  bl 0x029f59f4
02c6b7bc  stp s11,s9,[x20, #0x30]
02c6b7c0  mov x0,x20
02c6b7c4  stp s8,s10,[x20, #0x28]
02c6b7c8  ldp x20,x19,[sp, #0x30]
02c6b7cc  ldp x30,x21,[sp, #0x20]
02c6b7d0  ldp d9,d8,[sp, #0x10]
02c6b7d4  ldp d11,d10,[sp], #0x40
02c6b7d8  ret
