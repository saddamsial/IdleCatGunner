02c1d6a8  str x30,[sp, #-0x40]!
02c1d6ac  stp x24,x23,[sp, #0x10]
02c1d6b0  stp x22,x21,[sp, #0x20]
02c1d6b4  stp x20,x19,[sp, #0x30]
02c1d6b8  adrp x20,0x625b000
02c1d6bc  adrp x22,0x5e59000
02c1d6c0  adrp x21,0x5e62000
02c1d6c4  adrp x24,0x5e5d000
02c1d6c8  ldr x22,[x22, #0x288]
02c1d6cc  ldrb w8,[x20, #0xf33]
02c1d6d0  ldr x21,[x21, #0x958]
02c1d6d4  ldr x24,[x24, #0x920]
02c1d6d8  mov x19,x0
02c1d6dc  tbnz w8,#0x0,0x02c1d718
02c1d6e0  adrp x0,0x5e59000
02c1d6e4  ldr x0,[x0, #0x288]
02c1d6e8  bl 0x029f5a50
02c1d6ec  adrp x0,0x5e62000
02c1d6f0  ldr x0,[x0, #0x958]
02c1d6f4  bl 0x029f5a50
02c1d6f8  adrp x0,0x5e5d000
02c1d6fc  ldr x0,[x0, #0x920]
02c1d700  bl 0x029f5a50
02c1d704  adrp x0,0x5e5d000
02c1d708  ldr x0,[x0, #0x4e8]
02c1d70c  bl 0x029f5a50
02c1d710  mov w8,#0x1
02c1d714  strb w8,[x20, #0xf33]
02c1d718  adrp x23,0x5e5d000
02c1d71c  ldr x23,[x23, #0x4e8]
02c1d720  ldr x0,[x22]
02c1d724  bl 0x029f5cec
02c1d728  ldr x2,[x21]
02c1d72c  mov x1,x19
02c1d730  mov x3,xzr
02c1d734  mov x20,x0
02c1d738  bl 0x047b3618
02c1d73c  ldr x0,[x24]
02c1d740  ldr w8,[x0, #0xe4]
02c1d744  cbnz w8,0x02c1d74c
02c1d748  bl 0x029f5bd0
02c1d74c  mov x0,x20
02c1d750  mov x1,xzr
02c1d754  bl 0x02c8da2c
02c1d758  ldr x0,[x22]
02c1d75c  bl 0x029f5cec
02c1d760  ldr x2,[x21]
02c1d764  mov x1,x19
02c1d768  mov x3,xzr
02c1d76c  mov x20,x0
02c1d770  bl 0x047b3618
02c1d774  ldr x0,[x23]
02c1d778  ldr w8,[x0, #0xe4]
02c1d77c  cbnz w8,0x02c1d784
02c1d780  bl 0x029f5bd0
02c1d784  mov x0,x20
02c1d788  ldp x20,x19,[sp, #0x30]
02c1d78c  ldp x22,x21,[sp, #0x20]
02c1d790  mov x1,xzr
02c1d794  ldp x24,x23,[sp, #0x10]
02c1d798  ldr x30,[sp], #0x40
02c1d79c  b 0x02cb32a0
