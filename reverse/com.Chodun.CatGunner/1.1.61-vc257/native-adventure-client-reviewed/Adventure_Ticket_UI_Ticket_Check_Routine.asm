02c2f5f8  stp x30,x21,[sp, #-0x20]!
02c2f5fc  stp x20,x19,[sp, #0x10]
02c2f600  adrp x20,0x625c000
02c2f604  adrp x21,0x5e63000
02c2f608  mov x19,x0
02c2f60c  ldrb w8,[x20, #0x1e]
02c2f610  ldr x21,[x21, #0x28]
02c2f614  tbnz w8,#0x0,0x02c2f62c
02c2f618  adrp x0,0x5e63000
02c2f61c  ldr x0,[x0, #0x28]
02c2f620  bl 0x029f5a50
02c2f624  mov w8,#0x1
02c2f628  strb w8,[x20, #0x1e]
02c2f62c  ldr x0,[x21]
02c2f630  bl 0x029f5cec
02c2f634  mov x1,xzr
02c2f638  mov x20,x0
02c2f63c  bl 0x04893238
02c2f640  mov x0,x20
02c2f644  mov x1,x19
02c2f648  str wzr,[x20, #0x10]
02c2f64c  str x19,[x0, #0x20]!
02c2f650  bl 0x029f59f4
02c2f654  mov x0,x20
02c2f658  ldp x20,x19,[sp, #0x10]
02c2f65c  ldp x30,x21,[sp], #0x20
02c2f660  ret
