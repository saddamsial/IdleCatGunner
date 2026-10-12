02c5d6f8  stp x30,x21,[sp, #-0x20]!
02c5d6fc  stp x20,x19,[sp, #0x10]
02c5d700  adrp x21,0x625c000
02c5d704  adrp x20,0x5e59000
02c5d708  mov x19,x0
02c5d70c  ldrb w8,[x21, #0x204]
02c5d710  ldr x20,[x20, #0x7d0]
02c5d714  tbnz w8,#0x0,0x02c5d744
02c5d718  adrp x0,0x5e59000
02c5d71c  ldr x0,[x0, #0x7d0]
02c5d720  bl 0x029f5a50
02c5d724  adrp x0,0x5e5d000
02c5d728  ldr x0,[x0, #0x3c0]
02c5d72c  bl 0x029f5a50
02c5d730  adrp x0,0x5e63000
02c5d734  ldr x0,[x0, #0x808]
02c5d738  bl 0x029f5a50
02c5d73c  mov w8,#0x1
02c5d740  strb w8,[x21, #0x204]
02c5d744  ldr x0,[x20]
02c5d748  adrp x21,0x5e5d000
02c5d74c  ldr w8,[x0, #0xe4]
02c5d750  ldr x21,[x21, #0x3c0]
02c5d754  cbnz w8,0x02c5d75c
02c5d758  bl 0x029f5bd0
02c5d75c  add x0,x19,#0x70
02c5d760  mov x1,xzr
02c5d764  bl 0x04830b04
02c5d768  ldr x8,[x21]
02c5d76c  mov x20,x0
02c5d770  ldr w9,[x8, #0xe4]
02c5d774  cbnz w9,0x02c5d780
02c5d778  mov x0,x8
02c5d77c  bl 0x029f5bd0
02c5d780  mov x0,xzr
02c5d784  bl 0x02c25c90
02c5d788  mov x1,x0
02c5d78c  mov x0,x20
02c5d790  mov x2,xzr
02c5d794  bl 0x0483334c
02c5d798  tbnz w0,#0x0,0x02c5d7f4
02c5d79c  ldr x0,[x21]
02c5d7a0  adrp x20,0x5e63000
02c5d7a4  ldr w8,[x0, #0xe4]
02c5d7a8  ldr x20,[x20, #0x808]
02c5d7ac  cbnz w8,0x02c5d7b4
02c5d7b0  bl 0x029f5bd0
02c5d7b4  ldr x0,[x20]
02c5d7b8  mov w1,#0x3
02c5d7bc  mov x2,xzr
02c5d7c0  bl 0x02c23998
02c5d7c4  tbz w0,#0x0,0x02c5d7f4
02c5d7c8  ldr x0,[x21]
02c5d7cc  ldr w8,[x0, #0xe4]
02c5d7d0  cbnz w8,0x02c5d7d8
02c5d7d4  bl 0x029f5bd0
02c5d7d8  ldr x0,[x20]
02c5d7dc  mov x1,xzr
02c5d7e0  bl 0x02c25580
02c5d7e4  mov x0,xzr
02c5d7e8  bl 0x02c25c90
02c5d7ec  str wzr,[x19, #0x78]
02c5d7f0  str x0,[x19, #0x70]
02c5d7f4  ldp x20,x19,[sp, #0x10]
02c5d7f8  ldp x30,x21,[sp], #0x20
02c5d7fc  ret
