02c89590  stp x30,x21,[sp, #-0x20]!
02c89594  stp x20,x19,[sp, #0x10]
02c89598  adrp x20,0x625c000
02c8959c  adrp x21,0x5e63000
02c895a0  mov x19,x0
02c895a4  ldrb w8,[x20, #0x399]
02c895a8  ldr x21,[x21, #0xec8]
02c895ac  tbnz w8,#0x0,0x02c895c4
02c895b0  adrp x0,0x5e63000
02c895b4  ldr x0,[x0, #0xec8]
02c895b8  bl 0x029f5a50
02c895bc  mov w8,#0x1
02c895c0  strb w8,[x20, #0x399]
02c895c4  ldr x0,[x21]
02c895c8  bl 0x029f5cec
02c895cc  mov x1,xzr
02c895d0  mov x20,x0
02c895d4  bl 0x04893238
02c895d8  mov x0,x20
02c895dc  mov x1,x19
02c895e0  str wzr,[x20, #0x10]
02c895e4  str x19,[x0, #0x20]!
02c895e8  bl 0x029f59f4
02c895ec  mov x0,x20
02c895f0  ldp x20,x19,[sp, #0x10]
02c895f4  ldp x30,x21,[sp], #0x20
02c895f8  ret
