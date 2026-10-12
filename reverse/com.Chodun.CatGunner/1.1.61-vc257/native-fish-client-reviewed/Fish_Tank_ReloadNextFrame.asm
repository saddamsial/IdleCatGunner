02c63180  stp x30,x21,[sp, #-0x20]!
02c63184  stp x20,x19,[sp, #0x10]
02c63188  adrp x20,0x625c000
02c6318c  adrp x21,0x5e63000
02c63190  mov x19,x0
02c63194  ldrb w8,[x20, #0x233]
02c63198  ldr x21,[x21, #0x8a0]
02c6319c  tbnz w8,#0x0,0x02c631b4
02c631a0  adrp x0,0x5e63000
02c631a4  ldr x0,[x0, #0x8a0]
02c631a8  bl 0x029f5a50
02c631ac  mov w8,#0x1
02c631b0  strb w8,[x20, #0x233]
02c631b4  ldr x0,[x21]
02c631b8  bl 0x029f5cec
02c631bc  mov x1,xzr
02c631c0  mov x20,x0
02c631c4  bl 0x04893238
02c631c8  mov x0,x20
02c631cc  mov x1,x19
02c631d0  str wzr,[x20, #0x10]
02c631d4  str x19,[x0, #0x20]!
02c631d8  bl 0x029f59f4
02c631dc  mov x0,x20
02c631e0  ldp x20,x19,[sp, #0x10]
02c631e4  ldp x30,x21,[sp], #0x20
02c631e8  ret
