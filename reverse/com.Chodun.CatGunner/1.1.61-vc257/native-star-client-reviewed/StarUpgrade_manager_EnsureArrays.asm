02c6d6e4  stp x30,x21,[sp, #-0x20]!
02c6d6e8  stp x20,x19,[sp, #0x10]
02c6d6ec  adrp x20,0x625c000
02c6d6f0  mov x19,x0
02c6d6f4  ldrb w8,[x20, #0x2a6]
02c6d6f8  tbnz w8,#0x0,0x02c6d710
02c6d6fc  adrp x0,0x5e5d000
02c6d700  ldr x0,[x0, #0x790]
02c6d704  bl 0x029f5a50
02c6d708  mov w8,#0x1
02c6d70c  strb w8,[x20, #0x2a6]
02c6d710  mov x20,x19
02c6d714  adrp x21,0x5e5d000
02c6d718  ldr x8,[x20, #0x30]!
02c6d71c  ldr x21,[x21, #0x790]
02c6d720  ldur w1,[x20, #-0x10]
02c6d724  cbz x8,0x02c6d734
02c6d728  ldr w8,[x8, #0x18]
02c6d72c  cmp w1,w8
02c6d730  b.eq 0x02c6d74c
02c6d734  ldr x0,[x21]
02c6d738  bl 0x029f5b40
02c6d73c  mov x1,x0
02c6d740  str x0,[x20]
02c6d744  mov x0,x20
02c6d748  bl 0x029f59f4
02c6d74c  ldr x8,[x19, #0x38]!
02c6d750  ldur w1,[x19, #-0x18]
02c6d754  cbz x8,0x02c6d770
02c6d758  ldr w8,[x8, #0x18]
02c6d75c  cmp w1,w8
02c6d760  b.ne 0x02c6d770
02c6d764  ldp x20,x19,[sp, #0x10]
02c6d768  ldp x30,x21,[sp], #0x20
02c6d76c  ret
02c6d770  ldr x0,[x21]
02c6d774  bl 0x029f5b40
02c6d778  mov x1,x0
02c6d77c  mov x0,x19
02c6d780  str x1,[x19]
02c6d784  ldp x20,x19,[sp, #0x10]
02c6d788  ldp x30,x21,[sp], #0x20
02c6d78c  b 0x029f59f4
