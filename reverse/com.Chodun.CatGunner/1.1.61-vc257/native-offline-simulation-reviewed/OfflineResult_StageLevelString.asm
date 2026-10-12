02c0b6fc  str x30,[sp, #-0x30]!
02c0b700  stp x22,x21,[sp, #0x10]
02c0b704  stp x20,x19,[sp, #0x20]
02c0b708  adrp x20,0x625b000
02c0b70c  adrp x21,0x5e62000
02c0b710  mov x19,x0
02c0b714  ldrb w8,[x20, #0xe98]
02c0b718  ldr x21,[x21, #0x140]
02c0b71c  tbnz w8,#0x0,0x02c0b734
02c0b720  adrp x0,0x5e62000
02c0b724  ldr x0,[x0, #0x140]
02c0b728  bl 0x029f5a50
02c0b72c  mov w8,#0x1
02c0b730  strb w8,[x20, #0xe98]
02c0b734  adrp x22,0x5e58000
02c0b738  add x1,sp,#0xc
02c0b73c  ldr x22,[x22, #0xa10]
02c0b740  ldr w8,[x19, #0x90]
02c0b744  ldr x0,[x22, #0x48]
02c0b748  str w8,[sp, #0xc]
02c0b74c  bl 0x029f5bd8
02c0b750  mov x20,x0
02c0b754  ldr w8,[x19, #0x94]
02c0b758  ldr x0,[x22, #0x48]
02c0b75c  add x1,sp,#0x8
02c0b760  str w8,[sp, #0x8]
02c0b764  bl 0x029f5bd8
02c0b768  ldr x8,[x21]
02c0b76c  mov x2,x0
02c0b770  mov x1,x20
02c0b774  mov x3,xzr
02c0b778  mov x0,x8
02c0b77c  bl 0x046c1d14
02c0b780  ldp x20,x19,[sp, #0x20]
02c0b784  ldp x22,x21,[sp, #0x10]
02c0b788  ldr x30,[sp], #0x30
02c0b78c  ret
