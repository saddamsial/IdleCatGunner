02c883a0  stp x30,x21,[sp, #-0x20]!
02c883a4  stp x20,x19,[sp, #0x10]
02c883a8  mov x19,x0
02c883ac  bl 0x02c882c0
02c883b0  mov x20,x19
02c883b4  mov x21,x0
02c883b8  mov x2,xzr
02c883bc  ldr x8,[x20, #0x58]!
02c883c0  mov x1,x21
02c883c4  mov x0,x8
02c883c8  bl 0x046bf4e4
02c883cc  tbz w0,#0x0,0x02c883e4
02c883d0  mov x0,x20
02c883d4  mov x1,x21
02c883d8  str x21,[x19, #0x58]
02c883dc  bl 0x029f59f4
02c883e0  stp wzr,wzr,[x19, #0x4c]
02c883e4  ldp x20,x19,[sp, #0x10]
02c883e8  ldp x30,x21,[sp], #0x20
02c883ec  ret
