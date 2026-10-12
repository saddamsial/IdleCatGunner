02c26654  str x30,[sp, #-0x40]!
02c26658  stp x24,x23,[sp, #0x10]
02c2665c  stp x22,x21,[sp, #0x20]
02c26660  stp x20,x19,[sp, #0x30]
02c26664  adrp x20,0x625b000
02c26668  adrp x23,0x5e59000
02c2666c  adrp x22,0x5e62000
02c26670  adrp x21,0x5e5d000
02c26674  ldr x23,[x23, #0x288]
02c26678  ldrb w8,[x20, #0xfab]
02c2667c  ldr x22,[x22, #0xd18]
02c26680  ldr x21,[x21, #0x338]
02c26684  mov x19,x0
02c26688  tbnz w8,#0x0,0x02c266c4
02c2668c  adrp x0,0x5e59000
02c26690  ldr x0,[x0, #0x288]
02c26694  bl 0x029f5a50
02c26698  adrp x0,0x5e62000
02c2669c  ldr x0,[x0, #0xd18]
02c266a0  bl 0x029f5a50
02c266a4  adrp x0,0x5e5d000
02c266a8  ldr x0,[x0, #0x338]
02c266ac  bl 0x029f5a50
02c266b0  adrp x0,0x5e59000
02c266b4  ldr x0,[x0, #0x1c0]
02c266b8  bl 0x029f5a50
02c266bc  mov w8,#0x1
02c266c0  strb w8,[x20, #0xfab]
02c266c4  adrp x24,0x5e59000
02c266c8  ldr x24,[x24, #0x1c0]
02c266cc  ldr x0,[x23]
02c266d0  bl 0x029f5cec
02c266d4  ldr x2,[x22]
02c266d8  mov x1,x19
02c266dc  mov x3,xzr
02c266e0  mov x20,x0
02c266e4  bl 0x047b3618
02c266e8  ldr x0,[x21]
02c266ec  ldr w8,[x0, #0xe4]
02c266f0  cbnz w8,0x02c266f8
02c266f4  bl 0x029f5bd0
02c266f8  mov x0,x20
02c266fc  mov x1,xzr
02c26700  bl 0x02b7acfc
02c26704  ldr x0,[x23]
02c26708  bl 0x029f5cec
02c2670c  ldr x2,[x22]
02c26710  mov x1,x19
02c26714  mov x3,xzr
02c26718  mov x20,x0
02c2671c  bl 0x047b3618
02c26720  mov x0,x20
02c26724  mov x1,xzr
02c26728  bl 0x02b7aeb4
02c2672c  ldr x8,[x21]
02c26730  ldr x0,[x24]
02c26734  ldr x8,[x8, #0xb8]
02c26738  ldr w9,[x0, #0xe4]
02c2673c  ldr x20,[x8, #0xc8]
02c26740  cbnz w9,0x02c26748
02c26744  bl 0x029f5bd0
02c26748  mov x0,x20
02c2674c  mov x1,xzr
02c26750  mov x2,xzr
02c26754  bl 0x057dfa70
02c26758  tbz w0,#0x0,0x02c26774
02c2675c  mov x0,x19
02c26760  ldp x20,x19,[sp, #0x30]
02c26764  ldp x22,x21,[sp, #0x20]
02c26768  ldp x24,x23,[sp, #0x10]
02c2676c  ldr x30,[sp], #0x40
02c26770  b 0x02c2659c
02c26774  ldp x20,x19,[sp, #0x30]
02c26778  ldp x22,x21,[sp, #0x20]
02c2677c  ldp x24,x23,[sp, #0x10]
02c26780  ldr x30,[sp], #0x40
02c26784  ret
