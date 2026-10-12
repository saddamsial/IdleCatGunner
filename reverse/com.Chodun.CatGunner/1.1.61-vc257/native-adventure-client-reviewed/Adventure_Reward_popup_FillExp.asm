02c36598  str x30,[sp, #-0x40]!
02c3659c  stp x24,x23,[sp, #0x10]
02c365a0  stp x22,x21,[sp, #0x20]
02c365a4  stp x20,x19,[sp, #0x30]
02c365a8  adrp x23,0x625c000
02c365ac  adrp x24,0x5e63000
02c365b0  mov w19,w3
02c365b4  ldrb w8,[x23, #0x6d]
02c365b8  ldr x24,[x24, #0x160]
02c365bc  mov w20,w2
02c365c0  mov w21,w1
02c365c4  mov x22,x0
02c365c8  tbnz w8,#0x0,0x02c365e0
02c365cc  adrp x0,0x5e63000
02c365d0  ldr x0,[x0, #0x160]
02c365d4  bl 0x029f5a50
02c365d8  mov w8,#0x1
02c365dc  strb w8,[x23, #0x6d]
02c365e0  ldr x0,[x24]
02c365e4  bl 0x029f5cec
02c365e8  mov x1,xzr
02c365ec  mov x23,x0
02c365f0  bl 0x04893238
02c365f4  mov x0,x23
02c365f8  mov x1,x22
02c365fc  str wzr,[x23, #0x10]
02c36600  str x22,[x0, #0x28]!
02c36604  bl 0x029f59f4
02c36608  stp w21,w20,[x23, #0x30]
02c3660c  mov x0,x23
02c36610  str w19,[x23, #0x20]
02c36614  ldp x20,x19,[sp, #0x30]
02c36618  ldp x22,x21,[sp, #0x20]
02c3661c  ldp x24,x23,[sp, #0x10]
02c36620  ldr x30,[sp], #0x40
02c36624  ret
