02caa710  str x30,[sp, #-0x30]!
02caa714  stp x22,x21,[sp, #0x10]
02caa718  stp x20,x19,[sp, #0x20]
02caa71c  adrp x21,0x625c000
02caa720  adrp x22,0x5e64000
02caa724  adrp x20,0x5e64000
02caa728  ldrb w8,[x21, #0x504]
02caa72c  ldr x22,[x22, #0xa28]
02caa730  ldr x20,[x20, #0xa30]
02caa734  mov x19,x0
02caa738  tbnz w8,#0x0,0x02caa75c
02caa73c  adrp x0,0x5e64000
02caa740  ldr x0,[x0, #0xa30]
02caa744  bl 0x029f5a50
02caa748  adrp x0,0x5e64000
02caa74c  ldr x0,[x0, #0xa28]
02caa750  bl 0x029f5a50
02caa754  mov w8,#0x1
02caa758  strb w8,[x21, #0x504]
02caa75c  ldr x0,[x22]
02caa760  bl 0x029f5cec
02caa764  ldr x1,[x20]
02caa768  mov x20,x0
02caa76c  bl 0x0452c340
02caa770  mov x0,x19
02caa774  mov x1,x20
02caa778  str x20,[x0, #0x28]!
02caa77c  bl 0x029f59f4
02caa780  adrp x9,0x116f000
02caa784  mov w8,#0x42700000
02caa788  str wzr,[x19, #0x78]
02caa78c  ldr d0,[x9, #0xb78]
02caa790  adrp x9,0x116c000
02caa794  str w8,[x19, #0x64]
02caa798  ldr q1,[x9, #0x2b0]
02caa79c  mov w8,#0x1e
02caa7a0  mov x0,x19
02caa7a4  str w8,[x19, #0x88]
02caa7a8  ldp x22,x21,[sp, #0x10]
02caa7ac  str d0,[x19, #0x70]
02caa7b0  mov x1,xzr
02caa7b4  str q1,[x19, #0xe0]
02caa7b8  ldp x20,x19,[sp, #0x20]
02caa7bc  ldr x30,[sp], #0x30
02caa7c0  b 0x057e2ee0
