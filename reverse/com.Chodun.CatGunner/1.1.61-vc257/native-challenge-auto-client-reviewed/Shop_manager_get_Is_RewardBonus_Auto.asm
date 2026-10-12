02c92704  str x30,[sp, #-0x20]!
02c92708  stp x20,x19,[sp, #0x10]
02c9270c  adrp x20,0x625c000
02c92710  adrp x19,0x5e5d000
02c92714  ldrb w8,[x20, #0x40a]
02c92718  ldr x19,[x19, #0x920]
02c9271c  tbnz w8,#0x0,0x02c92734
02c92720  adrp x0,0x5e5d000
02c92724  ldr x0,[x0, #0x920]
02c92728  bl 0x029f5a50
02c9272c  mov w8,#0x1
02c92730  strb w8,[x20, #0x40a]
02c92734  ldr x0,[x19]
02c92738  ldr w8,[x0, #0xe4]
02c9273c  cbnz w8,0x02c92748
02c92740  bl 0x029f5bd0
02c92744  ldr x0,[x19]
02c92748  ldr x8,[x0, #0xb8]
02c9274c  ldrb w8,[x8, #0x9]
02c92750  cbz w8,0x02c92764
02c92754  ldp x20,x19,[sp, #0x10]
02c92758  mov w0,#0x1
02c9275c  ldr x30,[sp], #0x20
02c92760  ret
02c92764  ldp x20,x19,[sp, #0x10]
02c92768  mov x0,xzr
02c9276c  ldr x30,[sp], #0x20
02c92770  b 0x02b93d0c
