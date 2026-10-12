02c6a6d8  sub sp,sp,#0x30
02c6a6dc  stp x30,x21,[sp, #0x10]
02c6a6e0  stp x20,x19,[sp, #0x20]
02c6a6e4  adrp x20,0x625c000
02c6a6e8  mov x19,x0
02c6a6ec  ldrb w8,[x20, #0x27f]
02c6a6f0  tbnz w8,#0x0,0x02c6a714
02c6a6f4  adrp x0,0x5e59000
02c6a6f8  ldr x0,[x0, #0x7d0]
02c6a6fc  bl 0x029f5a50
02c6a700  adrp x0,0x5e5a000
02c6a704  ldr x0,[x0, #0x180]
02c6a708  bl 0x029f5a50
02c6a70c  mov w8,#0x1
02c6a710  strb w8,[x20, #0x27f]
02c6a714  ldr w8,[x19, #0xc0]
02c6a718  str xzr,[sp, #0x8]
02c6a71c  cmn w8,#0x1
02c6a720  b.eq 0x02c6a7a0
02c6a724  adrp x21,0x5e59000
02c6a728  adrp x20,0x5e5a000
02c6a72c  mov x0,sp
02c6a730  ldr x21,[x21, #0x7d0]
02c6a734  ldr x20,[x20, #0x180]
02c6a738  ldr x1,[x19, #0xc8]
02c6a73c  mov w2,#0x1
02c6a740  mov x3,xzr
02c6a744  str xzr,[sp]
02c6a748  bl 0x0482e708
02c6a74c  ldr x0,[x21]
02c6a750  ldr w8,[x0, #0xe4]
02c6a754  cbnz w8,0x02c6a75c
02c6a758  bl 0x029f5bd0
02c6a75c  mov x0,xzr
02c6a760  bl 0x048312a4
02c6a764  ldr x8,[sp]
02c6a768  mov x1,x0
02c6a76c  mov x2,xzr
02c6a770  mov x0,x8
02c6a774  bl 0x048330d0
02c6a778  ldr x8,[x20]
02c6a77c  str x0,[sp, #0x8]
02c6a780  ldr w9,[x8, #0xe4]
02c6a784  cbnz w9,0x02c6a790
02c6a788  mov x0,x8
02c6a78c  bl 0x029f5bd0
02c6a790  add x0,sp,#0x8
02c6a794  mov x1,xzr
02c6a798  bl 0x04868260
02c6a79c  b 0x02c6a7a4
02c6a7a0  movi d0,#0x0
02c6a7a4  ldp x20,x19,[sp, #0x20]
02c6a7a8  ldp x30,x21,[sp, #0x10]
02c6a7ac  add sp,sp,#0x30
02c6a7b0  ret
