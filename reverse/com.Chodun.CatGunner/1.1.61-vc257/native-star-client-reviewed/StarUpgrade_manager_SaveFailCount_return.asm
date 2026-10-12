02c6e704  str x30,[sp, #-0x20]!
02c6e708  stp x20,x19,[sp, #0x10]
02c6e70c  adrp x20,0x625c000
02c6e710  mov x19,x0
02c6e714  ldrb w8,[x20, #0x2b2]
02c6e718  tbnz w8,#0x0,0x02c6e730
02c6e71c  adrp x0,0x5e5d000
02c6e720  ldr x0,[x0, #0x790]
02c6e724  bl 0x029f5a50
02c6e728  mov w8,#0x1
02c6e72c  strb w8,[x20, #0x2b2]
02c6e730  ldr x0,[x19, #0x38]
02c6e734  cbz x0,0x02c6e76c
02c6e738  mov x1,xzr
02c6e73c  bl 0x04874260
02c6e740  cbz x0,0x02c6e760
02c6e744  adrp x8,0x5e5d000
02c6e748  mov x19,x0
02c6e74c  ldr x8,[x8, #0x790]
02c6e750  ldr x20,[x8]
02c6e754  mov x1,x20
02c6e758  bl 0x029f5bd4
02c6e75c  cbz x0,0x02c6e770
02c6e760  ldp x20,x19,[sp, #0x10]
02c6e764  ldr x30,[sp], #0x20
02c6e768  ret
02c6e76c  bl 0x029f5cfc
02c6e770  mov x0,x19
02c6e774  mov x1,x20
02c6e778  bl 0x029f607c
