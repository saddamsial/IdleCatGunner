02c8d6f0  str x30,[sp, #-0x30]!
02c8d6f4  stp x22,x21,[sp, #0x10]
02c8d6f8  stp x20,x19,[sp, #0x20]
02c8d6fc  adrp x20,0x625c000
02c8d700  adrp x21,0x5e63000
02c8d704  mov x19,x0
02c8d708  ldrb w8,[x20, #0x3be]
02c8d70c  ldr x21,[x21, #0xf60]
02c8d710  tbnz w8,#0x0,0x02c8d74c
02c8d714  adrp x0,0x5e59000
02c8d718  ldr x0,[x0, #0x760]
02c8d71c  bl 0x029f5a50
02c8d720  adrp x0,0x5e59000
02c8d724  ldr x0,[x0, #0x7d0]
02c8d728  bl 0x029f5a50
02c8d72c  adrp x0,0x5e63000
02c8d730  ldr x0,[x0, #0xf60]
02c8d734  bl 0x029f5a50
02c8d738  adrp x0,0x5e62000
02c8d73c  ldr x0,[x0, #0x30]
02c8d740  bl 0x029f5a50
02c8d744  mov w8,#0x1
02c8d748  strb w8,[x20, #0x3be]
02c8d74c  ldr x0,[x21]
02c8d750  bl 0x029f5cec
02c8d754  mov x1,xzr
02c8d758  mov x20,x0
02c8d75c  bl 0x04893238
02c8d760  cbz x20,0x02c8d7ec
02c8d764  adrp x8,0x5e59000
02c8d768  adrp x21,0x5e59000
02c8d76c  ldr x8,[x8, #0x760]
02c8d770  ldr x0,[x8]
02c8d774  ldr w8,[x19, #0x20]
02c8d778  ldr w9,[x0, #0xe4]
02c8d77c  ldr x21,[x21, #0x7d0]
02c8d780  str w8,[x20, #0x10]
02c8d784  cbnz w9,0x02c8d78c
02c8d788  bl 0x029f5bd0
02c8d78c  adrp x22,0x5e62000
02c8d790  mov x0,xzr
02c8d794  ldr x22,[x22, #0x30]
02c8d798  bl 0x047e36ac
02c8d79c  ldr x8,[x21]
02c8d7a0  mov x21,x0
02c8d7a4  ldr w9,[x8, #0xe4]
02c8d7a8  cbnz w9,0x02c8d7b4
02c8d7ac  mov x0,x8
02c8d7b0  bl 0x029f5bd0
02c8d7b4  ldr x1,[x22]
02c8d7b8  add x0,x19,#0x38
02c8d7bc  mov x2,x21
02c8d7c0  mov x3,xzr
02c8d7c4  bl 0x04832440
02c8d7c8  mov x1,x0
02c8d7cc  mov x0,x20
02c8d7d0  str x1,[x0, #0x18]!
02c8d7d4  bl 0x029f59f4
02c8d7d8  mov x0,x20
02c8d7dc  ldp x20,x19,[sp, #0x20]
02c8d7e0  ldp x22,x21,[sp, #0x10]
02c8d7e4  ldr x30,[sp], #0x30
02c8d7e8  ret
02c8d7ec  bl 0x029f5cfc
