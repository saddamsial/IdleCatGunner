02ca985c  sub sp,sp,#0x80
02ca9860  stp x30,x21,[sp, #0x60]
02ca9864  stp x20,x19,[sp, #0x70]
02ca9868  adrp x21,0x625c000
02ca986c  adrp x20,0x5e5d000
02ca9870  mov x19,x0
02ca9874  ldrb w8,[x21, #0x4fb]
02ca9878  ldr x20,[x20, #0x338]
02ca987c  tbnz w8,#0x0,0x02ca9894
02ca9880  adrp x0,0x5e5d000
02ca9884  ldr x0,[x0, #0x338]
02ca9888  bl 0x029f5a50
02ca988c  mov w8,#0x1
02ca9890  strb w8,[x21, #0x4fb]
02ca9894  movi v0.2D,#0x0
02ca9898  ldr x0,[x20]
02ca989c  ldr w8,[x0, #0xe4]
02ca98a0  stp q0,q0,[sp, #0x20]
02ca98a4  stp q0,q0,[sp, #0x40]
02ca98a8  cbnz w8,0x02ca98b0
02ca98ac  bl 0x029f5bd0
02ca98b0  mov x8,sp
02ca98b4  mov x0,xzr
02ca98b8  bl 0x02b808d4
02ca98bc  ldp q0,q1,[sp]
02ca98c0  add x8,sp,#0x20
02ca98c4  ldr w1,[x19, #0x30]
02ca98c8  stp q0,q1,[sp, #0x40]
02ca98cc  bl 0x02ca9510
02ca98d0  add x0,sp,#0x40
02ca98d4  add x1,sp,#0x20
02ca98d8  mov x2,xzr
02ca98dc  bl 0x04654530
02ca98e0  ldp x20,x19,[sp, #0x70]
02ca98e4  and w0,w0,#0x1
02ca98e8  ldp x30,x21,[sp, #0x60]
02ca98ec  add sp,sp,#0x80
02ca98f0  ret
